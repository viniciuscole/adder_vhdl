library ieee;
use ieee.std_logic_1164.all;
entity eq_top is
   port(
      sw  : in  std_logic_vector(15 downto 0);
      led : out std_logic_vector(15 downto 0) 
   );
end eq_top;

architecture struc_arch of eq_top is
signal b, s: std_logic_vector(3 downto 0);
signal overflow: std_logic;
begin
   mux : entity work.mux21
      port map(
         sub    => sw(15),
         b_in    => sw(7 downto 4),
         b_out => b
      );
   somador_4b : entity work.somador_4b
       port map(
         a => sw(3 downto 0),
         b => b,
         ci => sw(15),
         s=> s
       );
       
       overflow<= '1' when(sw(3)='1' and b(3)='1' and s(3)='0') else
                  '1' when(sw(3)='0' and b(3)='0' and s(3)='1') else
                  '0';
                  
       led(3 downto 0) <= s;
       led(4)<=overflow;
end struc_arch;
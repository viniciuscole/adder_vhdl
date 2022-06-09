library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity mux21 is
    port(
        sub: in std_logic;
        b_in: in std_logic_vector(3 downto 0);
        b_out: out std_logic_vector(3 downto 0)
    );
end mux21;

architecture mux_21_arch of mux21 is
begin

    b_out <= b_in when(sub = '0') else
            (not b_in) when(sub = '1');

end mux_21_arch;

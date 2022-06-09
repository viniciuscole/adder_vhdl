library ieee;
use ieee.std_logic_1164.all;

entity somador_b is
    port(
        a, b, sub: in std_logic;
        co, s: out std_logic
    );

end somador_c;


architecture somador_1b_arch of somador_b is
begin 

process(a, b, sub, co)
begin
    if   ((a='0' and b='1' and sub='1') or
         (a='1' and b='1' and sub='0') or
         (a='1' and b='0' and sub='1') or
         (a='1' and b='1' and sub='1')) then
         co <= '1';
    else co <= '0';
    end if;
end process;
                
    s <= (a xor b xor sub);
    
end somador_arch;
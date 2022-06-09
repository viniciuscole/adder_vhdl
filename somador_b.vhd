library ieee;
use ieee.std_logic_1164.all;

entity somador_b is
    port(
        a, b, ci: in std_logic;
        co, s: out std_logic
    );

end somador_b;


architecture somador_1b_arch of somador_b is
begin 

process(a, b, ci)
begin
    if   ((a='0' and b='1' and ci='1') or
         (a='1' and b='1' and ci='0') or
         (a='1' and b='0' and ci='1') or
         (a='1' and b='1' and ci='1')) then
         co <= '1';
    else co <= '0';
    end if;
end process;
                
    s <= (a xor b xor ci);
    
end somador_1b_arch;
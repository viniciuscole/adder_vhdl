library ieee;
use ieee.std_logic_1164.all;

entity somador_4b is
    port(
        a, b: in std_logic_vector(3 downto 0);
        ci: in std_logic;
        co: out std_logic;
        s: out std_logic_vector(3 downto 0)
    );

end somador_4b;


architecture somador_arch of somador_4b is
signal carryO1, carryO2, carryO3, carryO4: std_logic;
begin

     somador1: entity work.somador_b
     port map(
        a=>a(0),
        b=>b(0),
        ci=>ci,
        co=>carryO1,
        s=>s(0)
     );
     somador2: entity work.somador_b
     port map(
        a=>a(1),
        b=>b(1),
        ci=>carryO1,
        co=>carryO2,
        s=>s(1)  
     );
    somador3: entity work.somador_b
    port map(
        a=>a(2),
        b=>b(2),
        ci=>carryO2,
        co=>carryO3,
        s=>s(2)         
    );
    somador4: entity work.somador_b
    port map(
        a=>a(3),
        b=>b(3),
        ci=>carryO3,
        co=>carryO4,
        s=>s(3)          
    );
    
 

end somador_arch;
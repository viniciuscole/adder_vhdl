library ieee;
use ieee.std_logic_1164.all;

entity somador_4b is
    port(
        a, b: in std_logic_vector(3 downto 0);
        sub: in std_logic;
        co, overflow: out std_logic;
        s: out std_logic_vector(3 downto 0)
    );

end somador_c;


architecture somador_arch of somador_4b is
signal carryO1, carryO2, carryO3: std_logic;
begin

     somador1: entity work.somador_b
     port map(
        a=>a(0),
        b=>b(0),
        sub=>sub,
        co=>carryO1,
        s=>s(0)
     );
     somador2: entity work.somador_b
     port map(
        a=>a(1),
        b=>b(1),
        sub=>carryO1,
        co=>carryO2,
        s=>s(1)  
     );
    somador3: entity work.somador_b
    port map(
        a=>a(2),
        b=>b(2),
        sub=>carryO2,
        co=>carryO3,
        s=>s(2)         
    );
    somador4: entity work.somador_b
    port map(
        a=>a(3),
        b=>b(3),
        sub=>carry03,
        co=>co,
        s=>s(3)          
    );
    
    if not sub then overflow <= co;
    else
        if(

end somador_arch;
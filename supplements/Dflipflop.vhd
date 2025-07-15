library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Dflipflop is 
    port (
        d : in std_logic;
        clk : in std_logic;
        q : out std_logic
    );
end entity;

architecture RTL of Dflipflop is

begin

    prcDflipflop : process ( clk ) is 
    
    begin
    
        if rising_edge(clk) then
            q <= d;
        end if;
    
    end process;

end architecture;
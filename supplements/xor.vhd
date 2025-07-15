library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity x_or is
    port (
        a : in std_logic;
        b : in std_logic;
        y : out std_logic
    );
end entity;

architecture RTL of x_or is

begin

    prcX_or : process ( a, b ) is

    begin

        if a /= b then
            y <= '1';
        else
            y <= '0';
        end if;

    end process;

--    y <= a xor b;
y <= '0' when a = b else '1';

end architecture;

----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/16/2019 12:04:36 PM
-- Design Name: 
-- Module Name: PmodLs1 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity PmodLs1 is
  Port (signal clk : in std_logic;
        signal rst : in std_logic;
        signal s : in std_logic_vector(3 downto 0);
        signal q : out std_logic_vector(3 downto 0));
end PmodLs1;

architecture Behavioral of PmodLs1 is

signal tmp : std_logic_vector(3 downto 0);

begin

process(clk,rst)
begin
if rst = '1' then 
    tmp <= "0000";
    else
        if rising_edge(clk) then
            tmp <= s;
        end if;
    end if;
end process;

q <= tmp;

end Behavioral;

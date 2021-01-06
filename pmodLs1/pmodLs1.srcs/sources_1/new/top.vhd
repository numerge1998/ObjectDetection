----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/16/2019 12:17:39 PM
-- Design Name: 
-- Module Name: top - Behavioral
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

entity top is
  Port (clk:in std_logic;
        rst:in std_logic;
        an:out std_logic_vector(7 downto 0);
        seg:out std_logic_vector(7 downto 0);
        LED : out std_logic_vector(3 downto 0)); 
end top;



architecture Behavioral of top is

signal Data:std_logic_vector(31 downto 0):= (others => '0');
signal q : std_logic_vector(3 downto 0);
signal s : std_logic_vector(3 downto 0);

begin
PmodLs1 : entity WORK.PmodLs1 port map(
clk => clk,
rst => rst,
s => s,
q => q
);

    
    --Data(3 downto 0) <= q;
    LED(3 downto 0) <= q;
    --LED(5 downto 4) <="10";
    

end Behavioral;

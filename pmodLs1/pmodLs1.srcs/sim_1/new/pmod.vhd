----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/08/2020 02:24:58 PM
-- Design Name: 
-- Module Name: pmod - Behavioral
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

entity pmod is
--  Port ( );
end pmod;

architecture Behavioral of pmod is

signal clk : std_logic := '0';
constant clk_period : time := 1 sec;
signal rst : std_logic;
signal s : std_logic_vector(3 downto 0):="0000";
signal q : std_logic_vector(3 downto 0);



begin

PmodLS1 : entity Work.PmodLs1 port map(
clk => clk,
rst => rst,
s => s,
q => q
);

clock :process
   begin
        clk <= '0';
        wait for clk_period/2;  --for 0.5 ns signal is '0'.
        clk <= '1';
        wait for clk_period/2;  --for next 0.5 ns signal is '1'.
   end process;
   
PmodLs : process
    begin
        rst <= '1';
        wait for 2 sec;
        rst <= '0';
        wait for 2 sec;
        s <= "0011";
        wait for 4 sec;
        s <= "0010";
        wait for 3 sec;
        s <= "0001";
        wait for 6 sec;
        s <= "0011";
        wait for 2 sec;
        s <= "0000";
        wait for 5 sec;
    end process;
    
end Behavioral;

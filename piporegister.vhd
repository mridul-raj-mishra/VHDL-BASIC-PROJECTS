----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.10.2024 18:00:24
-- Design Name: 
-- Module Name: mypipo - Behavioral
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

entity mypipo is
    Port ( D : in STD_LOGIC_VECTOR (3 downto 0);
           clk : in STD_LOGIC;
           clr : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR (3 downto 0));
end mypipo;

architecture Behavioral of mypipo is

begin
process(D,clk,clr)
begin
if rising_edge(clk) then
if clr='1' then Q<="0000";
else 
Q<=D;
end if;
end if;
end process; 

end Behavioral;

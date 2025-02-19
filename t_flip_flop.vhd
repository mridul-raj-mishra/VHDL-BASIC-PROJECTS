----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 24.09.2024 17:37:26
-- Design Name: 
-- Module Name: TFLIPFLOPKK - Behavioral
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

entity TFLIPFLOPKK is
    Port ( T : in STD_LOGIC;
           clk : in STD_LOGIC;
           Q : out STD_LOGIC;
           Qb : out STD_LOGIC);
end TFLIPFLOPKK;

architecture Behavioral of TFLIPFLOPKK is

begin
process(T,clk)
variable m:STD_LOGIC;
begin
if rising_edge(clk) then
  if T='0' then m:=m;
  elsif T='1' then m:= not(m);
end if;
Q<=m;
Qb<=not(m);
end if;
end process;
end Behavioral;

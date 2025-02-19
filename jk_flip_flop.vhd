----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 24.09.2024 17:18:06
-- Design Name: 
-- Module Name: jkflipko - Behavioral
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

entity jkflipko is
    Port ( J : in STD_LOGIC;
           K : in STD_LOGIC;
           clk : in STD_LOGIC;
           Q : out STD_LOGIC;
           Qb : out STD_LOGIC);
end jkflipko;

architecture Behavioral of jkflipko is

begin
process(J,K,clk)
variable m:STD_LOGIC;
begin
if rising_edge(clk) then
  if(J='0'and K='0') then m:=m;
  elsif(J='0'and K='1') then m:='0';
  elsif(J='1'and K='0') then m:='1';
  else m:=not(m);
  end if;
  Q<=m;
  Qb<=not(m);
  end if;
  end process;
   
  



end Behavioral;

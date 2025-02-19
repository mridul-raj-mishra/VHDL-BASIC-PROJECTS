----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.10.2024 17:23:56
-- Design Name: 
-- Module Name: mysiso - Behavioral
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

entity mysiso is
    Port ( inp : in STD_LOGIC;
           clk : in STD_LOGIC;
           clr : in STD_LOGIC;
           Q : out STD_LOGIC);
end mysiso;

architecture Behavioral of mysiso is
constant num1:natural :=9999;
signal ncount:natural range 0 to 10000:=0;
signal mcount:STD_LOGIC;


begin
process(clk)
begin
if rising_edge(clk) then ncount<=ncount+1;
 if (ncount>num1) then mcount<=not(mcount);
                        ncount<=0;
            end if;
            end if;
 end process;
process(mcount,clr)
variable m:STD_LOGIC_VECTOR(3 downto 0);
begin
if rising_edge(mcount) then 
     if clr='1' then m:="0000";
     else
     m(3):=inp;
     m(2 downto 0):= m(3 downto 1);
     Q<=m(0);
     end if;
     end if;
     end process;
end Behavioral;

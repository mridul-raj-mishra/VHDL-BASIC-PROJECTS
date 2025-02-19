----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.09.2024 17:21:19
-- Design Name: 
-- Module Name: MYMUX4 - mystructural
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

entity MYMUX4 is
    Port ( I0 : in STD_LOGIC;
           I1 : in STD_LOGIC;
           I2 : in STD_LOGIC;
           I3 : in STD_LOGIC;
           A : in STD_LOGIC;
           B : in STD_LOGIC;
           Y : out STD_LOGIC);
end MYMUX4;

architecture mystructural of MYMUX4 is
component mymux2
port(i1:IN STD_LOGIC;i2: IN STD_LOGIC;s1: IN STD_LOGIC;y1:OUT STD_LOGIC);
end component;
signal t1:STD_LOGIC;
signal t2:STD_LOGIC;
begin
unit1: mymux2 port map(I0,I1,A,t1);
unit2: mymux2 port map(I2,I3,A,t2);
unit3: mymux2 port map(t1,t2,B,Y);

end mystructural;

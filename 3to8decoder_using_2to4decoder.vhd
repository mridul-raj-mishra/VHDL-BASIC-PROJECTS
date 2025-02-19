----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.09.2024 17:56:10
-- Design Name: 
-- Module Name: mydecoder3to81 - mystructural
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

entity mydecoder3to81 is
    Port ( A : in STD_LOGIC_VECTOR (2 downto 0);
           Y : out STD_LOGIC_VECTOR (7 downto 0));
end mydecoder3to81;

architecture mystructural of mydecoder3to81 is
component mydecoder port(i1 : in STD_LOGIC_VECTOR (1 downto 0);
           i2 : in STD_LOGIC;
           y1 : out STD_LOGIC_VECTOR (3 downto 0));
           end component;
signal h1,h2: STD_LOGIC_VECTOR(3 downto 0);
signal R:STD_LOGIC;
signal jh:STD_LOGIC_VECTOR(1 downto 0);
begin
R<=not A(2);
jh(0)<=A(0);
jh(1)<=A(1);
unit1: mydecoder port map(jh,R,h1);
unit2: mydecoder port map(jh,A(2),h2);
Y(0)<=h1(0);
Y(1)<=h1(1);
Y(2)<=h1(2);
Y(3)<=h1(3);
Y(4)<=h2(0);
Y(5)<=h2(1);
Y(6)<=h2(2);
Y(7)<=h2(3);


end mystructural;

----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.10.2024 17:13:27
-- Design Name: 
-- Module Name: bittadder - Behavioral
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

entity bittadder is
    Port ( a0 : in STD_LOGIC;
           a1 : in STD_LOGIC;
           a2 : in STD_LOGIC;
           a3 : in STD_LOGIC;
           b0 : in STD_LOGIC;
           b1 : in STD_LOGIC;
           b2 : in STD_LOGIC;
           b3 : in STD_LOGIC;
           s0 : out STD_LOGIC;
           s1 : out STD_LOGIC;
           s2 : out STD_LOGIC;
           s3 : out STD_LOGIC;
           cout : out STD_LOGIC);
end bittadder;

architecture Behavioral of bittadder is
component fulladder
port(a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : in STD_LOGIC;
           S : out STD_LOGIC;
           Cout : out STD_LOGIC);
           end component;
           signal i1,i2,i3:STD_LOGIC;
begin
unit1: fulladder port map(a0,b0,'0',s0,i1);
unit2: fulladder port map(a1,b1,i1,s1,i2);
unit3: fulladder port map(a2,b2,i2,s2,i3);
unit4: fulladder port map(a3,b3,i3,s3,cout);


end Behavioral;

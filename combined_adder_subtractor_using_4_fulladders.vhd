----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.10.2024 17:41:10
-- Design Name: 
-- Module Name: combinedadersubtract - structural
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

entity combinedadersubtract is
    Port ( a0 : in STD_LOGIC;
           a1 : in STD_LOGIC;
           a2 : in STD_LOGIC;
           a3 : in STD_LOGIC;
           b0 : in STD_LOGIC;
           b1 : in STD_LOGIC;
           b2 : in STD_LOGIC;
           b3 : in STD_LOGIC;
           Sd : in STD_LOGIC;
           s0 : out STD_LOGIC;
           s1 : out STD_LOGIC;
           s2 : out STD_LOGIC;
           s3 : out STD_LOGIC;
           cout : out STD_LOGIC);
end combinedadersubtract;

architecture structural of combinedadersubtract is
component fulladderjk
port(a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : in STD_LOGIC;
           S : out STD_LOGIC;
           Cout : out STD_LOGIC);
           end component;
           
signal lop, i1,i2,i3,i4,i5,i6,i7,i8,en,c1,c2,c3,c4,o1,o2,o3,o5,v1,v2,v3,v4:STD_LOGIC;
begin
i1<=b0 xor Sd;
i2<=b1 xor Sd;
i3<=b2 xor Sd;
i4<=b3 xor Sd;

unit1: fulladderjk port map(a0,i1,Sd,i5,c1);
unit2: fulladderjk port map(a1,i2,c1,i6,c2);
unit3: fulladderjk port map(a2,i3,c2,i7,c3);
unit4: fulladderjk port map(a3,i4,c3,i8,cout);
en<=(not cout)and Sd;
v1<=i5 xor en;
v2<=i6 xor en;
v3<=i7 xor en;
v4<=i8 xor en;
unit5: fulladderjk port map(v1,'0','0',s0,o1);
unit6: fulladderjk port map(v2,'0',o1,s1,o2);
unit7: fulladderjk port map(v3,'0',o2,s2,o3);
unit8: fulladderjk port map(v4,'0',o3,s3,o5);


end structural;

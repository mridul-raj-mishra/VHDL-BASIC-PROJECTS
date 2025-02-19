----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.02.2025 03:34:35
-- Design Name: 
-- Module Name: 8bit_alu - Behavioral
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

USE IEEE.NUMERIC_STD.ALL;
--we will design 8 bit alu and based upon combination it can do 7 operations ie:
-- if 000: addition 
-- if 000: subtraction
-- if 000: taking and of both 8 bit numbers
-- if 000: taking or ogf both 8 bit number
-- if 000: taking xor of bot numbers
-- if 000: taking not of first 8 bit number ie a
-- if 000: defaukt case just to avoid errors of VHDL
entity alu_8bit is
    port (
        a     : in  std_logic_vector(7 downto 0);
        b     : in  std_logic_vector(7 downto 0);
        sel      : in  std_logic_vector(2 downto 0);
        result   : out std_logic_vector(7 downto 0);
        carry, zero : out std_logic -- carry and zero flag are also used and will be only 1 bit
    );
end alu_8bit;

architecture behavioural of alu_8bit is -- will use behavioural architecture
    signal temp_store : std_logic_vector(7 downto 0);
begin
    process (a, b, sel)
        variable calc : unsigned(8 downto 0);
    begin
        case sel is
            when "000" =>
                calc := ('0' & unsigned(a)) + unsigned(b);
                temp_store <= std_logic_vector(calc(7 downto 0));
                carry <= calc(8);
            
            when "001" => 
                calc := ('0' & unsigned(a)) - unsigned(b);
                temp_store <= std_logic_vector(calc(7 downto 0));
                carry <= calc(8);
            
            when "010" =>
                temp_store <= a and b;
                carry <= '0';

            when "011" =>
                temp_store <= a or b;
                carry <= '0';

            when "100" =>
                temp_store <= a xor b;
                carry <= '0';

            when "101" =>
                temp_store <= not a;
                carry <= '0';

            when others =>
                temp_store <= (others => '0');
                carry <= '0';
        end case;

        if temp_store = "00000000" then -- if no changes in temporary varibale then update zero flag to 1
            zero <= '1';
        else
            zero <= '0';
        end if;

        result <= temp_store; -- store the result in original result vector
    end process;
end behavioural;

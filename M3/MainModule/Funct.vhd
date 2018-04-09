----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:26:21 04/29/2017 
-- Design Name: 
-- Module Name:    Funct - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Funct is
Port ( inputFromIM : in  STD_LOGIC_VECTOR (5 downto 0);
       outputToAlu : out STD_LOGIC_VECTOR (3 downto 0));
end Funct;

architecture Behavioral of Funct is
begin
 outputToAlu  <= ("0000") when (inputFromIM = "100100" ) else --and
	              ("0001") when (inputFromIM = "100101" ) else --or
					  ("0010") when (inputFromIM = "100000" ) else --add
					  ("0110") when (inputFromIM = "100010" ) else --sub
					  ("0111") when (inputFromIM = "101010" ) else --slt
					  ("1100") when (inputFromIM = "100111" ) else --nor
						 "ZZZZ";
end Behavioral;


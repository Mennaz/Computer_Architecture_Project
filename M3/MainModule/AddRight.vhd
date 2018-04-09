----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:26:21 05/01/2017 
-- Design Name: 
-- Module Name:    AddRight - Behavioral 
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
use IEEE.STD_LOGIC_unsigned.ALL;
use IEEE.STD_LOGIC_arith.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity AddRight is
 Port (      x : in  STD_LOGIC_VECTOR (31 downto 0);
	         y  : in  STD_LOGIC_VECTOR (31 downto 0);
			  sum : out  STD_LOGIC_VECTOR (31 downto 0));
end AddRight;

architecture Behavioral of AddRight is
begin

sum <= x + y ;
end Behavioral;



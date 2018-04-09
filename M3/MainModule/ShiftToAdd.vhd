----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:18:17 05/01/2017 
-- Design Name: 
-- Module Name:    ShiftToAdd - Behavioral 
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
use IEEE.STD_LOGIC_SIGNED.all;
use IEEE.STD_LOGIC_ARITH.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ShiftToAdd is
Port ( In32Bit : in  STD_LOGIC_VECTOR (31 downto 0);
		out32Bit : out  STD_LOGIC_VECTOR (31 downto 0));
end ShiftToAdd;

architecture Behavioral of ShiftToAdd is
begin
out32Bit<=In32Bit(29 downto 0)&"00"; -- 3shan atyr  bit rkm 30 w 31 w a3ml shift b 2 
end Behavioral;



----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:16:14 05/01/2017 
-- Design Name: 
-- Module Name:    Shift2 - Behavioral 
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

entity Shift2 is  -- shift fo2 
    Port ( In26Bit : in  STD_LOGIC_VECTOR (25 downto 0);
				out28Bit : out  STD_LOGIC_VECTOR (27 downto 0));
end Shift2;

architecture Behavioral of Shift2 is

begin
out28Bit<=(In26Bit&"00"); -- 28 bit k output 
end Behavioral;


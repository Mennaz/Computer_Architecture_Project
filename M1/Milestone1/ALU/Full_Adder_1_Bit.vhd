----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:53:12 04/06/2017 
-- Design Name: 
-- Module Name:    Full_Adder_1_Bit - Behavioral 
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

entity Full_Adder_1_Bit is
 Port  ( x : in  STD_LOGIC;
	      y : in  STD_LOGIC;
	  input : in  STD_LOGIC;
       sum : out  STD_LOGIC;
	 output : out  STD_LOGIC);
end Full_Adder_1_Bit;

architecture Behavioral of Full_Adder_1_Bit is

begin
sum <= x XOR y XOR input;
output <= (x AND y) OR (x AND input) OR (y AND input);

end Behavioral;


----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:23:54 04/29/2017 
-- Design Name: 
-- Module Name:    Condition - Behavioral 
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

entity Condition is
 Port ( op : in  STD_LOGIC_VECTOR (31 downto 26);
        wr : out  STD_LOGIC);
end Condition;

architecture Behavioral of Condition is
begin
		wr <= '1' when (op="000000") ELSE
		      '0';
end Behavioral;


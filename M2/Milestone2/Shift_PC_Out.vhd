----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:38:46 04/17/2017 
-- Design Name: 
-- Module Name:    Shift_PC_Out - Behavioral 
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

entity Shift_PC_Out is
 Port ( pc_in : in  STD_LOGIC_VECTOR (5 downto 0);
      addout : out  STD_LOGIC_VECTOR (31 downto 0));
end Shift_PC_Out;

architecture Behavioral of Shift_PC_Out is
begin
addout<=("000000000000000000000000"&pc_in&"00");

end Behavioral;


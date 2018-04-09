----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:21:09 04/06/2017 
-- Design Name: 
-- Module Name:    Mux_2_1 - Behavioral 
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

entity Mux_2_1 is
 Port ( input1 : in  STD_LOGIC;
        input2: in  STD_LOGIC;
        input2_inverted: in  STD_LOGIC;
       output : out  STD_LOGIC);
end Mux_2_1;

architecture Behavioral of Mux_2_1 is
begin
output<= input1 when input2_inverted='0' else
         input2 when input2_inverted ='1';
end Behavioral;


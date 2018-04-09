----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:51:22 04/17/2017 
-- Design Name: 
-- Module Name:    ALU1BitMSB - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU1BitMSB is
 Port (    input1 : in  STD_LOGIC;
           input2 : in  STD_LOGIC;
              cin : in  STD_LOGIC;
			      op : in  STD_LOGIC_vector(3 downto 0);
           output : out  STD_LOGIC;
             cout : out  STD_LOGIC;
             less : in  STD_LOGIC;
              set : out  STD_LOGIC);
end ALU1BitMSB;

architecture Behavioral of ALU1BitMSB is
signal a : std_logic;
signal b : std_logic;
signal res : std_logic_vector(1 downto 0);
signal temp1 : std_logic_vector(1 downto 0);
signal temp2 : std_logic_vector(1 downto 0);
signal temp3 :std_logic_vector(1 downto 0);

begin
a <= input1 when (op(3)='0') ELSE
	  not(input1) when (op(3)='1');
b <= input2 when (op(2)='0') ELSe
     not(input2) when (op(2)='1');
	  
temp1<=('0'&a);
temp2<=('0'&b);
temp3<=('0'&cin);
res <= temp1 + temp2 +temp3 ;

output <=  a and b when   op = "0000"  ELSE
			  a or b when    op = "0001"  ELSE
			  res (0) when   op = "0010"  ELSE
			  res (0) when   op = "0110"  ELSE
			  a and b when   op = "1100"  ELSE
			  less    when   op = "0111";
			 
set <= res(0);
cout <= res (1);
end Behavioral;


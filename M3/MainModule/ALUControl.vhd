----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:28:56 05/01/2017 
-- Design Name: 
-- Module Name:    ALUControl - Behavioral 
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
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_arith.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALUControl is
    Port ( F         : in  STD_LOGIC_VECTOR (5 downto 0);
           ALUOP     : in  STD_LOGIC_VECTOR (1 downto 0);
           Operation : out  STD_LOGIC_VECTOR (3 downto 0));
end ALUControl;

architecture Behavioral of ALUControl is
signal OP0 : STD_LOGIC ; 
signal OP1 : STD_LOGIC ;
signal OP2 : STD_LOGIC ;
signal OP3 : STD_LOGIC ;
signal temp1: STD_LOGIC ;
signal temp2: STD_LOGIC ;
signal temp3: STD_LOGIC ;
signal temp4: STD_LOGIC ;

begin
temp1 <= F(3) or F(0);
temp2 <= F(0) and F(1);
temp3 <= ALUOP(1) and F(1);
temp4 <= ALUOP(1) and temp1;
OP3 <= temp2 and ALUOP(1);
--OP3 <= ALUOP(0) and not(ALUOP(0));
OP2 <= ALUOP(0) or temp3;
OP1 <= (not ALUOP(1)) or (not F(2));
OP0 <= (not OP3) and temp4;


Operation(3) <= OP3 ; 
Operation(2) <= OP2 ;
Operation(1) <= OP1 ;
Operation(0) <= OP0 ;
--Operation(0) <= temp4 ;
--Operation <= OP3 & OP2 & OP1 & OP0;
end Behavioral;



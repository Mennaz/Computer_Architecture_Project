----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:35:42 05/01/2017 
-- Design Name: 
-- Module Name:    ControlUnit - Behavioral 
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

entity ControlUnit is
   Port ( Op : in  STD_LOGIC_VECTOR (5 downto 0);
          RegDst : out STD_LOGIC;
         JUMP : out STD_LOGIC;   
         Branch   : out STD_LOGIC; 
         Branchnot : out STD_LOGIC;
         MemRead : out STD_LOGIC;            
         MemtoReg : out STD_LOGIC;  
         ALUOp  : out STD_LOGIC_VECTOR (1 downto 0); 
         MemWrite : out STD_LOGIC;  
         ALUSrc : out STD_LOGIC;         
         RegWrite : out STD_LOGIC); 
end ControlUnit;

architecture Behavioral of ControlUnit is

signal R_Format: STD_LOGIC;
signal LW: STD_LOGIC;
signal SW: STD_LOGIC;
signal BEQ: STD_LOGIC;
signal BNE : STD_LOGIC;
Signal J : STD_LOGIC;
signal ALUOp0 : STD_LOGIC;
signal ALUOp1 : STD_LOGIC;

begin
R_Format <= ((not Op(0)) and (not Op(1)) and (not Op(2)) and (not Op(3)) and (not Op(4)) and (not Op(5)));

LW <= (Op(0) and Op(1) and (not Op(2)) and (not Op(3)) and (not Op(4)) and Op(5) );

SW <= (Op(0) and Op(1) and (not Op(2)) and Op(3) and (not Op(4)) and Op(5));

BEQ <= ((not Op(0)) and (not Op(1)) and Op(2) and (not Op(3)) and (not Op(4)) and (not Op(5)));

BNE <= ( Op(0) and (not Op(1)) and Op(2) and (not Op(3)) and (not Op(4)) and (not Op(5)));

J <= ( not (Op(0)) and ( Op(1)) and ( not Op(2)) and (not Op(3)) and (not Op(4)) and (not Op(5)));

RegDst <= R_Format;
JUMP <= J;
Branch <= BEQ ;
Branchnot <= BNE;
MemRead <= LW;
MemtoReg <= LW;
ALUOp(0) <= BEQ ;
ALUOp(1) <= R_Format;
MemWrite <= SW;
ALUSrc <= LW or SW;
RegWrite <= R_Format or LW;

end Behavioral;



----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:41:36 05/01/2017 
-- Design Name: 
-- Module Name:    MainModule - Behavioral 
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
use ieee.STD_LOGIC_arith.all;
use ieee.STD_LOGIC_unsigned.all;
use work.MyPack.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
entity MainModule is
    Port ( START : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           RegFileOut1 : out  STD_LOGIC_VECTOR (31 downto 0);
           RegFileOut2 : out  STD_LOGIC_VECTOR (31 downto 0);
           AluOut : out  STD_LOGIC_VECTOR (31 downto 0);
			  PCOut: OUT STD_LOGIC_VECTOR(31 downto 0);
           DataMemOut: OUT STD_LOGIC_VECTOR(31 downto 0));
end MainModule;


architecture Behavioral of MainModule is
signal pcoutput :std_logic_vector(5 downto 0);
signal outofpc :std_logic_vector(31 downto 0);
signal data :std_logic_vector(31 downto 0);
signal decision:std_logic;
signal write_datafromalu :std_logic_vector(31 downto 0);
signal outputToAlu1 :std_logic_vector(3 downto 0);
signal data1toalu :std_logic_vector(31 downto 0);
signal data2toalu :std_logic_vector(31 downto 0);
signal tmpout :std_logic_vector(31 downto 0);
signal cflag1 :std_logic;
signal zflag1 :std_logic;
signal oflag1 :std_logic;
signal rs :std_logic_vector(4 downto 0);
signal rt :std_logic_vector(4 downto 0);
signal rd :std_logic_vector(4 downto 0);
signal oop :std_logic_vector(5 downto 0);
signal addr :std_logic_vector(15 downto 0);
signal addtoshift :std_logic_vector(25 downto 0);
signal concate :std_logic_vector(31 downto 0);
signal inst :std_logic_vector(5 downto 0);
signal AddSeq :std_logic_vector(31 downto 0);
signal output :std_logic_vector(31 downto 0);
signal muxout1 :std_logic_vector(31 downto 0);
signal muxout2 :std_logic_vector(31 downto 0);
signal out28 :std_logic_vector(27 downto 0);
signal wr :std_logic_vector(4 downto 0);
signal seltomux1 :std_logic;
signal RegDst1 :std_logic;
signal JUMP1 :std_logic;
signal Branch1 :std_logic;
signal Branchnot1 :std_logic;
signal MemRead1 :std_logic;
signal MemtoReg1 :std_logic;

signal ALUOp1 :std_logic_vector(1 downto 0);
signal MemWrite1 :std_logic;
signal ALUSrc1 :std_logic;
signal RegWrite1 :std_logic;
signal output1 :std_logic_vector(31 downto 0);
signal OutOfExtend :std_logic_vector(31 downto 0);
signal outofDM :std_logic_vector(31 downto 0);
signal outofshift :std_logic_vector(31 downto 0);
signal addoutput :std_logic_vector(31 downto 0);


begin
oop<=data(31 downto 26) ; -- in to control 
rs<=data(25 downto 21);
rt<=data(20 downto 16);
rd<=data(15 downto 11);
addr<=data(15 downto 0);
addtoshift<=data(25 downto 0);
concate<=AddSeq(31 downto 28)& out28 ; --(out of shift & concated with 4 from add seq(28 to 31) 
inst<=data(5 downto 0);

--declared objects
addtoim    :INSTRMEMORY port map(not(START),data,outofpc,CLK); ---load,out,out of pc is input to it , clk
IMout      :MuxForRegFile port map(rt,rd,RegDst1,wr);
ALUC       :ALUControl port map(inst,ALUOp1,outputToAlu1);
extend     :SignExtention port map (addr,OutOfExtend);
MuxALUIn   :MuxForDataMem port map(OutOfExtend,data2toalu,ALUSrc1,output);
callalu    :ALU port map(data1toalu, output,outputToAlu1,outputToAlu1(2),tmpout,cflag1,zflag1,oflag1);  -- tani :D  
dm         :DATAMEMORY port map (not(start),data2toalu,outofDM,MemRead1,MemWrite1,tmpout,CLK); -- tani :D  
Muxout     :MuxForDataMem port map(outofDM,tmpout,MemtoReg1,output1);
returntoFR :RegisterFile Port map(rs,rt,wr,RegWrite1,CLK,output1,data1toalu,data2toalu);
-- wr 5areg mn mux (tanu mux t7t) elle by5tar ma ben rt w rd 
-- output1 5areg mn a5er mux t7t
shiftto    :ShiftToAdd port map(OutOfExtend,outofshift);
control    :ControlUnit port map(oop,RegDst1,JUMP1,Branch1,Branchnot1,MemRead1,MemtoReg1,ALUOp1,MemWrite1,ALUSrc1,RegWrite1);
seltomux1<=((Branch1 and zflag1) or (Branchnot1 and not(zflag1)));
PCunit             :reg port map (muxout2,CLK, START ,'0', not(START),outofpc);
addfrompc          :ADD_4_And_PC port map (outofpc,AddSeq); -- out 32 bit 
shifthigh26to28    :Shift2 port map(addtoshift,out28); -- in 0 to 25 (add to shift) , out 28 bit 
add2               :AddRight port map(AddSeq,outofshift,addoutput);
firstmuxfromleft   :MuxForDataMem port map(addoutput,Addseq,seltomux1,muxout1);
secondtmuxfromleft :MuxForDataMem port map(concate,muxout1,JUMP1,muxout2);
AluOut<=tmpout;
RegFileOut1<=data1toalu;
RegFileOut2<=data2toalu;
PCOut<=outofpc;
DataMemOut<=outofDM;
end Behavioral;

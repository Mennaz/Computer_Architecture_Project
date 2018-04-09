----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:39:14 04/29/2017 
-- Design Name: 
-- Module Name:    RegisterFile - Behavioral 
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
use work.MyPackage.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;


entity RegisterFile is
port(
read_sel1 : in std_logic_vector(4 downto 0); 
read_sel2 : in std_logic_vector(4 downto 0);
write_sel : in std_logic_vector(4 downto 0);
write_ena : in std_logic;
clk: in std_logic;
write_data: in std_logic_vector(31 downto 0);
data1: out std_logic_vector(31 downto 0);
data2: out std_logic_vector(31 downto 0));

end RegisterFile;

architecture Behavioral of RegisterFile is
-- 32 signal for register_output
signal R0_Out :std_logic_vector(31 downto 0);
signal R1_Out :std_logic_vector(31 downto 0);
signal R2_Out :std_logic_vector(31 downto 0);
signal R3_Out :std_logic_vector(31 downto 0);
signal R4_Out :std_logic_vector(31 downto 0);
signal R5_Out :std_logic_vector(31 downto 0);
signal R6_Out :std_logic_vector(31 downto 0);
signal R7_Out :std_logic_vector(31 downto 0);
signal R8_Out :std_logic_vector(31 downto 0);
signal R9_Out :std_logic_vector(31 downto 0);
signal R10_Out :std_logic_vector(31 downto 0);
signal R11_Out :std_logic_vector(31 downto 0);
signal R12_Out :std_logic_vector(31 downto 0);
signal R13_Out :std_logic_vector(31 downto 0);
signal R14_Out :std_logic_vector(31 downto 0);
signal R15_Out :std_logic_vector(31 downto 0);
signal R16_Out :std_logic_vector(31 downto 0);
signal R17_Out :std_logic_vector(31 downto 0);
signal R18_Out :std_logic_vector(31 downto 0);
signal R19_Out :std_logic_vector(31 downto 0);
signal R20_Out :std_logic_vector(31 downto 0);
signal R21_Out :std_logic_vector(31 downto 0);
signal R22_Out :std_logic_vector(31 downto 0);
signal R23_Out :std_logic_vector(31 downto 0);
signal R24_Out :std_logic_vector(31 downto 0);
signal R25_Out :std_logic_vector(31 downto 0);
signal R26_Out :std_logic_vector(31 downto 0);
signal R27_Out :std_logic_vector(31 downto 0);
signal R28_Out :std_logic_vector(31 downto 0);
signal R29_Out :std_logic_vector(31 downto 0);
signal R30_Out :std_logic_vector(31 downto 0);
signal R31_Out :std_logic_vector(31 downto 0);
--///////////////////////////////////////////
-- 32 signal for load
signal Load_signal :std_logic_vector(31 downto 0);
signal Load_out0 :std_logic;
signal Load_out1 :std_logic;
signal Load_out2 :std_logic;
signal Load_out3 :std_logic;
signal Load_out4 :std_logic;
signal Load_out5 :std_logic;
signal Load_out6 :std_logic;
signal Load_out7 :std_logic;
signal Load_out8 :std_logic;
signal Load_out9 :std_logic;
signal Load_out10 :std_logic;
signal Load_out11 :std_logic;
signal Load_out12 :std_logic;
signal Load_out13 :std_logic;
signal Load_out14 :std_logic;
signal Load_out15 :std_logic;
signal Load_out16 :std_logic;
signal Load_out17 :std_logic;
signal Load_out18 :std_logic;
signal Load_out19 :std_logic;
signal Load_out20 :std_logic;
signal Load_out21 :std_logic;
signal Load_out22 :std_logic;
signal Load_out23 :std_logic;
signal Load_out24 :std_logic;
signal Load_out25 :std_logic;
signal Load_out26 :std_logic;
signal Load_out27 :std_logic;
signal Load_out28 :std_logic;
signal Load_out29 :std_logic;
signal Load_out30 :std_logic;
signal Load_out31 :std_logic;
begin
Load_out0<=Load_signal(0) and write_ena ;
Load_out1<=Load_signal(1) and write_ena ;
Load_out2<=Load_signal(2) and write_ena ;
Load_out3<=Load_signal(3) and write_ena ;
Load_out4<=Load_signal(4) and write_ena ;
Load_out5<=Load_signal(5) and write_ena ;
Load_out6<=Load_signal(6) and write_ena ;
Load_out7<=Load_signal(7) and write_ena ;
Load_out8<=Load_signal(8) and write_ena ;
Load_out9<=Load_signal(9) and write_ena ;
Load_out10<=Load_signal(10) and write_ena ;
Load_out11<=Load_signal(11) and write_ena ;
Load_out12<=Load_signal(12) and write_ena ;
Load_out13<=Load_signal(13) and write_ena ;
Load_out14<=Load_signal(14) and write_ena ;
Load_out15<=Load_signal(15) and write_ena ;
Load_out16<=Load_signal(16) and write_ena ;
Load_out17<=Load_signal(17) and write_ena ;
Load_out18<=Load_signal(18) and write_ena ;
Load_out19<=Load_signal(19) and write_ena ;
Load_out20<=Load_signal(20) and write_ena ;
Load_out21<=Load_signal(21) and write_ena ;
Load_out22<=Load_signal(22) and write_ena ;
Load_out23<=Load_signal(23) and write_ena ;
Load_out24<=Load_signal(24) and write_ena ;
Load_out25<=Load_signal(25) and write_ena ;
Load_out26<=Load_signal(26) and write_ena ;
Load_out27<=Load_signal(27) and write_ena ;
Load_out28<=Load_signal(28) and write_ena ;
Load_out29<=Load_signal(29) and write_ena ;
Load_out30<=Load_signal(30) and write_ena ;
Load_out31<=Load_signal(31) and write_ena ;
--decoder_creaed objects
Dec  :Decoder port map ('1', write_sel ,Load_signal );
--32 register _creaed objects
Reg0:reg generic map(32) port map(write_data, CLK,  Load_out0, '0', '0', R0_Out);
Reg1:reg generic map(32) port map(write_data, CLK,  Load_out1, '0', '0', R1_Out);
Reg2:reg generic map(32) port map(write_data, CLK,  Load_out2, '0', '0', R2_Out);
Reg3:reg generic map(32) port map(write_data, CLK,  Load_out3, '0', '0', R3_Out);
Reg4:reg generic map(32) port map(write_data, CLK,  Load_out4, '0', '0', R4_Out);
Reg5:reg generic map(32) port map(write_data, CLK,  Load_out5, '0', '0', R5_Out);
Reg6:reg generic map(32) port map(write_data, CLK,  Load_out6, '0', '0', R6_Out);
Reg7:reg generic map(32) port map(write_data, CLK,  Load_out7, '0', '0', R7_Out);
Reg8:reg generic map(32) port map(write_data, CLK,  Load_out8, '0', '0', R8_Out);
Reg9:reg generic map(32) port map(write_data, CLK,  Load_out9, '0', '0', R9_Out);
Reg10:reg generic map(32) port map(write_data, CLK, Load_out10, '0', '0', R10_Out);
Reg11:reg generic map(32) port map(write_data, CLK, Load_out11, '0', '0', R11_Out);
Reg12:reg generic map(32) port map(write_data, CLK, Load_out12, '0', '0', R12_Out);
Reg13:reg generic map(32) port map(write_data, CLK, Load_out13, '0', '0', R13_Out);
Reg14:reg generic map(32) port map(write_data, CLK, Load_out14, '0', '0', R14_Out);
Reg15:reg generic map(32) port map(write_data, CLK, Load_out15, '0', '0', R15_Out);
Reg16:reg generic map(32) port map(write_data, CLK, Load_out16, '0', '0', R16_Out);
Reg17:reg generic map(32) port map(write_data, CLK, Load_out17, '0', '0', R17_Out);
Reg18:reg generic map(32) port map(write_data, CLK, Load_out18, '0', '0', R18_Out);
Reg19:reg generic map(32) port map(write_data, CLK, Load_out19, '0', '0', R19_Out);
Reg20:reg generic map(32) port map(write_data, CLK, Load_out20, '0', '0', R20_Out);
Reg21:reg generic map(32) port map(write_data, CLK, Load_out21, '0', '0', R21_Out);
Reg22:reg generic map(32) port map(write_data, CLK, Load_out22, '0', '0', R22_Out);
Reg23:reg generic map(32) port map(write_data, CLK, Load_out23, '0', '0', R23_Out);
Reg24:reg generic map(32) port map(write_data, CLK, Load_signal(24), '0', '0', R24_Out);
Reg25:reg generic map(32) port map(write_data, CLK, Load_signal(25), '0', '0', R25_Out);
Reg26:reg generic map(32) port map(write_data, CLK, Load_signal(26), '0', '0', R26_Out);
Reg27:reg generic map(32) port map(write_data, CLK, Load_signal(27), '0', '0', R27_Out);
Reg28:reg generic map(32) port map(write_data, CLK, Load_signal(28), '0', '0', R28_Out);
Reg29:reg generic map(32) port map(write_data, CLK, Load_signal(29), '0', '0', R29_Out);
Reg30:reg generic map(32) port map(write_data, CLK, Load_signal(30), '0', '0', R30_Out);
Reg31:reg generic map(32) port map(write_data, CLK,Load_signal(31), '0', '0', R31_Out);
--2 multiplexer _created objects
Mux_1:Mux port map (R0_Out,R1_Out,R2_Out,R3_Out,R4_Out,R5_Out,R6_Out,R7_Out,R8_Out,R9_Out,R10_Out,R11_Out,R12_Out,R13_Out,R14_Out,
R15_Out,R16_Out,R17_Out,R18_Out,R19_Out,R20_Out,R21_Out,R22_Out,R23_Out,R24_Out,R25_Out,R26_Out,R27_Out,R28_Out,R29_Out,R30_Out,R31_Out,read_sel1,data1);
Mux_2:Mux port map (R0_Out,R1_Out,R2_Out,R3_Out,R4_Out,R5_Out,R6_Out,R7_Out,R8_Out,R9_Out,R10_Out,R11_Out,R12_Out,R13_Out,R14_Out,
R15_Out,R16_Out,R17_Out,R18_Out,R19_Out,R20_Out,R21_Out,R22_Out,R23_Out,R24_Out,R25_Out,R26_Out,R27_Out,R28_Out,R29_Out,R30_Out,R31_Out,read_sel2,data2);
end Behavioral;

--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:47:15 02/13/2015
-- Design Name:   
-- Module Name:   /home/csmajs/rleun005/Desktop/Lab4/alu_control_tb.vhd
-- Project Name:  Lab4
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: alu_control
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use work.cpu_constant_library.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY alu_control_tb IS
END alu_control_tb;
 
ARCHITECTURE behavior OF alu_control_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT alu_control
    PORT(
         alu_op : IN  std_logic_vector(1 downto 0);
         instruction_5_0 : IN  std_logic_vector(5 downto 0);
         alu_out : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal alu_op : std_logic_vector(1 downto 0) := (others => '0');
   signal instruction_5_0 : std_logic_vector(5 downto 0) := (others => '0');

 	--Outputs
   signal alu_out : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
  -- Component Instantiation
          uut: alu_control 
			 PORT MAP(
                  alu_op => alu_op,
                  instruction_5_0 => instruction_5_0,
						alu_out => alu_out
          );
			 
  --  Test Bench Statements
     tb : PROCESS
     BEGIN

        --wait for 100 ns; -- wait until global set/reset completes
		  -- Add user defined stimulus here
		  
		  -- Test 1
		  report "Test #1: Load/Store alu_op";
		  alu_op <= "00";
        instruction_5_0 <= "111111";
		  wait for 100 ns;
		  
		  assert alu_out = "0010"  				    		report "Test #1: alu_out incorrect" 	Severity Warning;
		  
		  -- Test 2
		  report "Test #2: BranchEquals alu_op";
		  alu_op <= "01";
        instruction_5_0 <= "000000";
		  wait for 100 ns;
		  
		  assert alu_out = "0110" 								report "Test #2: alu_out incorrect" 	Severity Warning;
		  
		  -- Test 3
		  report "Test #3: ADD";
		  alu_op <= ALU_ADD_R_TYPE;
        instruction_5_0 <= FUNCT_ADD;
		  wait for 100 ns;
		   
		  assert alu_out = "0010"  							report "Test #3: alu_out incorrect" 	Severity Warning;
		  
		  -- Test 4
		  report "Test #4: AND";
		  alu_op <= ALU_AND_R_TYPE;
        instruction_5_0 <= FUNCT_AND;
		  wait for 100 ns;
		  
		  assert alu_out = "0000" 								report "Test #4: alu_out incorrect" 	Severity Warning;
		  
		  -- Test 5
		  report "Test #5: OR";
		  alu_op <= ALU_OR_R_TYPE;
        instruction_5_0 <= FUNCT_OR;
		  wait for 100 ns;
		  
		  assert alu_out = "0001"  							report "Test #5: alu_out incorrect" 	Severity Warning;
		  
		  -- Test 6	ADDU
		  report "Test #6: ADDU";
		  alu_op <= ALU_ADD_R_TYPE;
        instruction_5_0 <= FUNCT_ADDU;
		  wait for 100 ns;
		  
		  assert alu_out = "0010"  							report "Test #6: alu_out incorrect" 	Severity Warning;
		  
		  -- Test 7
		  report "Test #7: SUB";
		  alu_op <= ALU_SUB_R_TYPE;
        instruction_5_0 <= FUNCT_SUB;
		  wait for 100 ns;
		  
		  assert alu_out = "0110"  							report "Test #7: alu_out incorrect" 	Severity Warning;
		  
		  -- Test 8
		  report "Test #8: SLT";
		  alu_op <= ALU_SLT_R_TYPE;
        instruction_5_0 <= FUNCT_SLT;
		  wait for 100 ns;
		  
		  assert alu_out = "0111" 								report "Test #8: alu_out incorrect" 	Severity Warning;
		  
		  -- Test 9
		  report "Test #9: NOR";
		  alu_op <= ALU_OR_R_TYPE;  -- "10"
        instruction_5_0 <= FUNCT_NOR;
		  wait for 100 ns;
		  
		  assert alu_out = "1100" 								report "Test #9: alu_out incorrect" 	Severity Warning;
		  
		  
		  wait; -- will wait forever
     END PROCESS tb;
  --  End Test Bench 

END;

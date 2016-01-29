--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:37:28 01/19/2015
-- Design Name:   
-- Module Name:   F:/UCR/Winter 15/CS 161/Lab_1/my_alu_tb.vhd
-- Project Name:  Lab_1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: my_alu
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
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.ALL;
USE ieee.std_logic_arith.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY my_alu_tb IS
END my_alu_tb;
 
ARCHITECTURE behavior OF my_alu_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT my_alu
    PORT(
         A : IN  std_logic_vector(7 downto 0);
         B : IN  std_logic_vector(7 downto 0);
         opcode : IN  std_logic_vector(2 downto 0);
         result : OUT  std_logic_vector(7 downto 0);
         carryout : OUT  std_logic;
         overflow : OUT  std_logic;
         zero : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(7 downto 0) := (others => '0');
   signal B : std_logic_vector(7 downto 0) := (others => '0');
   signal opcode : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal result : std_logic_vector(7 downto 0);
   signal carryout : std_logic;
   signal overflow : std_logic;
   signal zero : std_logic;

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: my_alu PORT MAP (
          A => A,
          B => B,
          opcode => opcode,
          result => result,
          carryout => carryout,
          overflow => overflow,
          zero => zero
        );


 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 50 ns;	

      -- --------------------------------------------------------------------------------
		-- --------------------------------------------------------------------------------
		-- Testing Unsigned Add
		-- --------------------------------------------------------------------------------
		-- --------------------------------------------------------------------------------
		report "Testing Unsigned Add";
		opcode <= "000";
		
			-- Test 1
			A <= conv_std_logic_vector(2, 8);
			B <= conv_std_logic_vector(2, 8);
			
			wait for 10 ns;
			assert result = conv_std_logic_vector(4, 8) 	report "Test_1: result incorrect" 	severity Warning;
			assert carryout = '0' 								report "Test_1: carryout incorrect"	severity Warning;
			assert overflow = '0' 								report "Test_1: overflow incorrect"	severity Warning;
			assert zero = '0'										report "Test_1: zero incorrect"		severity Warning;
			
			
			-- Test 2
			A <= conv_std_logic_vector(0, 8);
			B <= conv_std_logic_vector(0, 8);

			wait for 10 ns;
			assert result = conv_std_logic_vector(0, 8) 	report "Test_2: result incorrect" 	severity Warning;
			assert carryout = '0' 								report "Test_2: carryout incorrect"	severity Warning;
			assert overflow = '0' 								report "Test_2: overflow incorrect"	severity Warning;
			assert zero = '1'										report "Test_2: zero incorrect"		severity Warning;
			
			-- Test 3
			A <= conv_std_logic_vector(128, 8);
			B <= conv_std_logic_vector(4, 8);

			wait for 10 ns;
			assert result = conv_std_logic_vector(132, 8) report "Test_3: result incorrect" 	severity Warning;
			assert carryout = '0' 								 report "Test_3: carryout incorrect"	severity Warning;
			assert overflow = '0' 								 report "Test_3: overflow incorrect"	severity Warning;
			assert zero = '0'										 report "Test_3: zero incorrect"		severity Warning;
		
			-- Test 4
			A <= conv_std_logic_vector(128, 8);
			B <= conv_std_logic_vector(128, 8);

			wait for 10 ns;
			assert result = conv_std_logic_vector(0, 8) 	report "Test_4: result incorrect" 	severity Warning;
			assert carryout = '1' 								report "Test_4: carryout incorrect"	severity Warning;
			assert overflow = '1' 								report "Test_4: overflow incorrect"	severity Warning;
			assert zero = '1'										report "Test_4: zero incorrect"		severity Warning;
			
			-- Test 5
			A <= conv_std_logic_vector(128, 8);
			B <= conv_std_logic_vector(132, 8);

			wait for 10 ns;
			assert result = conv_std_logic_vector(4, 8) 	report "Test_5: result incorrect" 	severity Warning;
			assert carryout = '1' 								report "Test_5: carryout incorrect"	severity Warning;
			assert overflow = '1' 								report "Test_5: overflow incorrect"	severity Warning;
			assert zero = '0'										report "Test_5: zero incorrect"		severity Warning;
			
			wait for 50 ns;
			
      -- --------------------------------------------------------------------------------
		-- --------------------------------------------------------------------------------
		-- Testing Signed Add
		-- --------------------------------------------------------------------------------
		-- --------------------------------------------------------------------------------
		report "Testing Signed Add";
		opcode <= "001";
		
			-- Test 1
			A <= conv_std_logic_vector(2, 8);
			B <= conv_std_logic_vector(2, 8);
			
			wait for 10 ns;
			assert result = conv_std_logic_vector(4, 8) 	report "Test_1: result incorrect" 	severity Warning;
			assert carryout = '0' 								report "Test_1: carryout incorrect"	severity Warning;
			assert overflow = '0' 								report "Test_1: overflow incorrect"	severity Warning;
			assert zero = '0'										report "Test_1: zero incorrect"		severity Warning;
			
			
			-- Test 2
			A <= conv_std_logic_vector(0, 8);
			B <= conv_std_logic_vector(0, 8);

			wait for 10 ns;
			assert result = conv_std_logic_vector(0, 8) 	report "Test_2: result incorrect" 	severity Warning;
			assert carryout = '0' 								report "Test_2: carryout incorrect"	severity Warning;
			assert overflow = '0' 								report "Test_2: overflow incorrect"	severity Warning;
			assert zero = '1'										report "Test_2: zero incorrect"		severity Warning;
			
			-- Test 3
			A <= conv_std_logic_vector(-128, 8);
			B <= conv_std_logic_vector(4, 8);

			wait for 10 ns;
			assert result = conv_std_logic_vector(-124, 8) report "Test_3: result incorrect" 	severity Warning;
			assert carryout = '0' 								 report "Test_3: carryout incorrect"	severity Warning;
			assert overflow = '0' 								 report "Test_3: overflow incorrect"	severity Warning;
			assert zero = '0'										 report "Test_3: zero incorrect"		severity Warning;
		
			-- Test 4
			A <= conv_std_logic_vector(-128, 8);
			B <= conv_std_logic_vector(-128, 8);

			wait for 10 ns;
			assert result = conv_std_logic_vector(0, 8) 	report "Test_4: result incorrect" 	severity Warning;
			assert carryout = '1' 								report "Test_4: carryout incorrect"	severity Warning;
			assert overflow = '1' 								report "Test_4: overflow incorrect"	severity Warning;
			assert zero = '1'										report "Test_4: zero incorrect"		severity Warning;
			
			-- Test 5
			A <= conv_std_logic_vector(-1, 8);
			B <= conv_std_logic_vector(-1, 8);

			wait for 10 ns;
			assert result = conv_std_logic_vector(-2, 8) 	report "Test_5: result incorrect" 	severity Warning;
			assert carryout = '1' 								report "Test_5: carryout incorrect"	severity Warning;
			assert overflow = '0' 								report "Test_5: overflow incorrect"	severity Warning;
			assert zero = '0'										report "Test_5: zero incorrect"		severity Warning;
			
			wait for 50 ns;
			
			
		-- --------------------------------------------------------------------------------
		-- --------------------------------------------------------------------------------
		-- Testing Unsigned Sub
		-- --------------------------------------------------------------------------------
		-- --------------------------------------------------------------------------------
		report "Testing Unsigned Sub";
		opcode <= "010";
		
			-- Test 1
			A <= conv_std_logic_vector(2, 8);
			B <= conv_std_logic_vector(2, 8);
			
			wait for 10 ns;
			assert result = conv_std_logic_vector(0, 8) 	report "Test_1: result incorrect" 	severity Warning;
			assert carryout = '0' 								report "Test_1: carryout incorrect"	severity Warning;
			assert overflow = '0' 								report "Test_1: overflow incorrect"	severity Warning;
			assert zero = '1'										report "Test_1: zero incorrect"		severity Warning;
			
			
			-- Test 2
			A <= conv_std_logic_vector(0, 8);
			B <= conv_std_logic_vector(0, 8);

			wait for 10 ns;
			assert result = conv_std_logic_vector(0, 8) 	report "Test_2: result incorrect" 	severity Warning;
			assert carryout = '0' 								report "Test_2: carryout incorrect"	severity Warning;
			assert overflow = '0' 								report "Test_2: overflow incorrect"	severity Warning;
			assert zero = '1'										report "Test_2: zero incorrect"		severity Warning;
			
			-- Test 3
			A <= conv_std_logic_vector(128, 8);
			B <= conv_std_logic_vector(4, 8);

			wait for 10 ns;
			assert result = conv_std_logic_vector(124, 8) report "Test_3: result incorrect" 	severity Warning;
			assert carryout = '0' 								 report "Test_3: carryout incorrect"	severity Warning;
			assert overflow = '0' 								 report "Test_3: overflow incorrect"	severity Warning;
			assert zero = '0'										 report "Test_3: zero incorrect"		severity Warning;
		
			-- Test 4
			A <= conv_std_logic_vector(0, 8);
			B <= conv_std_logic_vector(1, 8);

			wait for 10 ns;
			assert result = conv_std_logic_vector(-1, 8) 	report "Test_4: result incorrect" 	severity Warning;
			assert carryout = '1' 								report "Test_4: carryout incorrect"	severity Warning;
			assert overflow = '1' 								report "Test_4: overflow incorrect"	severity Warning;
			assert zero = '0'										report "Test_4: zero incorrect"		severity Warning;
			
			-- Test 5
			A <= conv_std_logic_vector(69, 8);
			B <= conv_std_logic_vector(100, 8);

			wait for 10 ns;
			assert result = conv_std_logic_vector(-31, 8) 	report "Test_5: result incorrect" 	severity Warning;
			assert carryout = '1' 								report "Test_5: carryout incorrect"	severity Warning;
			assert overflow = '1' 								report "Test_5: overflow incorrect"	severity Warning;
			assert zero = '0'										report "Test_5: zero incorrect"		severity Warning;
			
			wait for 50 ns;
			
			
		-- --------------------------------------------------------------------------------
		-- --------------------------------------------------------------------------------
		-- Testing Signed Sub
		-- --------------------------------------------------------------------------------
		-- --------------------------------------------------------------------------------
		report "Testing Signed Sub";
		opcode <= "011";
		
			-- Test 1
			A <= conv_std_logic_vector(2, 8);
			B <= conv_std_logic_vector(2, 8);
			
			wait for 10 ns;
			assert result = conv_std_logic_vector(0, 8) 	report "Test_1: result incorrect" 	severity Warning;
			assert carryout = '0' 								report "Test_1: carryout incorrect"	severity Warning;
			assert overflow = '0' 								report "Test_1: overflow incorrect"	severity Warning;
			assert zero = '1'										report "Test_1: zero incorrect"		severity Warning;
			
			
			-- Test 2
			A <= conv_std_logic_vector(0, 8);
			B <= conv_std_logic_vector(32, 8);

			wait for 10 ns;
			assert result = conv_std_logic_vector(-32, 8) 	report "Test_2: result incorrect" 	severity Warning;
			assert carryout = '1' 								report "Test_2: carryout incorrect"	severity Warning;
			assert overflow = '0' 								report "Test_2: overflow incorrect"	severity Warning;
			assert zero = '0'										report "Test_2: zero incorrect"		severity Warning;
			
			-- Test 3
			A <= conv_std_logic_vector(0, 8);
			B <= conv_std_logic_vector(-32, 8);

			wait for 10 ns;
			assert result = conv_std_logic_vector(32, 8) report "Test_3: result incorrect" 	severity Warning;
			assert carryout = '1' 								 report "Test_3: carryout incorrect"	severity Warning;
			assert overflow = '0' 								 report "Test_3: overflow incorrect"	severity Warning;
			assert zero = '0'										 report "Test_3: zero incorrect"		severity Warning;
		
			-- Test 4
			A <= conv_std_logic_vector(-127, 8);
			B <= conv_std_logic_vector(127, 8);

			wait for 10 ns;
			assert result = conv_std_logic_vector(-254, 8) 	report "Test_4: result incorrect" 	severity Warning;
			assert carryout = '0' 								report "Test_4: carryout incorrect"	severity Warning;
			assert overflow = '1' 								report "Test_4: overflow incorrect"	severity Warning;
			assert zero = '0'										report "Test_4: zero incorrect"		severity Warning;
			
			-- Test 5
			A <= conv_std_logic_vector(127, 8);
			B <= conv_std_logic_vector(-127, 8);

			wait for 10 ns;
			assert result = conv_std_logic_vector(254, 8) 	report "Test_5: result incorrect" 	severity Warning;
			assert carryout = '1' 								report "Test_5: carryout incorrect"	severity Warning;
			assert overflow = '1' 								report "Test_5: overflow incorrect"	severity Warning;
			assert zero = '0'										report "Test_5: zero incorrect"		severity Warning;
			
			wait for 50 ns;
      
		
		-- --------------------------------------------------------------------------------
		-- --------------------------------------------------------------------------------
		-- Testing Bit-wise AND
		-- --------------------------------------------------------------------------------
		-- --------------------------------------------------------------------------------
		report "Testing Bit-wise AND";
		opcode <= "100";
		
			-- Test 1
			A <= conv_std_logic_vector(2, 8);
			B <= conv_std_logic_vector(2, 8);
			
			wait for 10 ns;
			assert result = conv_std_logic_vector(2, 8) 	report "Test_1: result incorrect" 	severity Warning;
			assert carryout = '0' 								report "Test_1: carryout incorrect"	severity Warning;
			assert overflow = '0' 								report "Test_1: overflow incorrect"	severity Warning;
			assert zero = '0'										report "Test_1: zero incorrect"		severity Warning;
			
			
			-- Test 2
			A <= conv_std_logic_vector(0, 8);
			B <= conv_std_logic_vector(0, 8);

			wait for 10 ns;
			assert result = conv_std_logic_vector(0, 8) 	report "Test_2: result incorrect" 	severity Warning;
			assert carryout = '0' 								report "Test_2: carryout incorrect"	severity Warning;
			assert overflow = '0' 								report "Test_2: overflow incorrect"	severity Warning;
			assert zero = '1'										report "Test_2: zero incorrect"		severity Warning;
			
			-- Test 3
			A <= conv_std_logic_vector(255, 8);
			B <= conv_std_logic_vector(255, 8);

			wait for 10 ns;
			assert result = conv_std_logic_vector(255, 8) report "Test_3: result incorrect" 	severity Warning;
			assert carryout = '0' 								 report "Test_3: carryout incorrect"	severity Warning;
			assert overflow = '0' 								 report "Test_3: overflow incorrect"	severity Warning;
			assert zero = '0'										 report "Test_3: zero incorrect"		severity Warning;
		
			-- Test 4
			A <= conv_std_logic_vector(170, 8);
			B <= conv_std_logic_vector(85, 8);

			wait for 10 ns;
			assert result = conv_std_logic_vector(0, 8) 	report "Test_4: result incorrect" 	severity Warning;
			assert carryout = '0' 								report "Test_4: carryout incorrect"	severity Warning;
			assert overflow = '0' 								report "Test_4: overflow incorrect"	severity Warning;
			assert zero = '1'										report "Test_4: zero incorrect"		severity Warning;
			
			-- Test 5
			A <= conv_std_logic_vector(240, 8);
			B <= conv_std_logic_vector(15, 8);

			wait for 10 ns;
			assert result = conv_std_logic_vector(0, 8) 	report "Test_5: result incorrect" 	severity Warning;
			assert carryout = '0' 								report "Test_5: carryout incorrect"	severity Warning;
			assert overflow = '0' 								report "Test_5: overflow incorrect"	severity Warning;
			assert zero = '1'										report "Test_5: zero incorrect"		severity Warning;
			
			wait for 50 ns;
		
		
		-- --------------------------------------------------------------------------------
		-- --------------------------------------------------------------------------------
		-- Testing Bit-wise OR
		-- --------------------------------------------------------------------------------
		-- --------------------------------------------------------------------------------
		report "Testing Bit-wise OR";
		opcode <= "101";
		
			-- Test 1
			A <= conv_std_logic_vector(2, 8);
			B <= conv_std_logic_vector(2, 8);
			
			wait for 10 ns;
			assert result = conv_std_logic_vector(2, 8) 	report "Test_1: result incorrect" 	severity Warning;
			assert carryout = '0' 								report "Test_1: carryout incorrect"	severity Warning;
			assert overflow = '0' 								report "Test_1: overflow incorrect"	severity Warning;
			assert zero = '0'										report "Test_1: zero incorrect"		severity Warning;
			
			
			-- Test 2
			A <= conv_std_logic_vector(0, 8);
			B <= conv_std_logic_vector(0, 8);

			wait for 10 ns;
			assert result = conv_std_logic_vector(0, 8) 	report "Test_2: result incorrect" 	severity Warning;
			assert carryout = '0' 								report "Test_2: carryout incorrect"	severity Warning;
			assert overflow = '0' 								report "Test_2: overflow incorrect"	severity Warning;
			assert zero = '1'										report "Test_2: zero incorrect"		severity Warning;
			
			-- Test 3
			A <= conv_std_logic_vector(255, 8);
			B <= conv_std_logic_vector(255, 8);

			wait for 10 ns;
			assert result = conv_std_logic_vector(255, 8) report "Test_3: result incorrect" 	severity Warning;
			assert carryout = '0' 								 report "Test_3: carryout incorrect"	severity Warning;
			assert overflow = '0' 								 report "Test_3: overflow incorrect"	severity Warning;
			assert zero = '0'										 report "Test_3: zero incorrect"		severity Warning;
		
			-- Test 4
			A <= conv_std_logic_vector(170, 8);
			B <= conv_std_logic_vector(85, 8);

			wait for 10 ns;
			assert result = conv_std_logic_vector(255, 8) 	report "Test_4: result incorrect" 	severity Warning;
			assert carryout = '0' 								report "Test_4: carryout incorrect"	severity Warning;
			assert overflow = '0' 								report "Test_4: overflow incorrect"	severity Warning;
			assert zero = '0'										report "Test_4: zero incorrect"		severity Warning;
			
			-- Test 5
			A <= conv_std_logic_vector(240, 8);
			B <= conv_std_logic_vector(15, 8);

			wait for 10 ns;
			assert result = conv_std_logic_vector(255, 8) 	report "Test_5: result incorrect" 	severity Warning;
			assert carryout = '0' 								report "Test_5: carryout incorrect"	severity Warning;
			assert overflow = '0' 								report "Test_5: overflow incorrect"	severity Warning;
			assert zero = '0'										report "Test_5: zero incorrect"		severity Warning;
			
			wait for 50 ns;
		
		-- --------------------------------------------------------------------------------
		-- --------------------------------------------------------------------------------
		-- Testing Bit-wise XOR
		-- --------------------------------------------------------------------------------
		-- --------------------------------------------------------------------------------
		report "Testing Bit-wise XOR";
		opcode <= "110";
		
			-- Test 1
			A <= conv_std_logic_vector(2, 8);
			B <= conv_std_logic_vector(2, 8);
			
			wait for 10 ns;
			assert result = conv_std_logic_vector(0, 8) 	report "Test_1: result incorrect" 	severity Warning;
			assert carryout = '0' 								report "Test_1: carryout incorrect"	severity Warning;
			assert overflow = '0' 								report "Test_1: overflow incorrect"	severity Warning;
			assert zero = '1'										report "Test_1: zero incorrect"		severity Warning;
			
			
			-- Test 2
			A <= conv_std_logic_vector(0, 8);
			B <= conv_std_logic_vector(0, 8);

			wait for 10 ns;
			assert result = conv_std_logic_vector(0, 8) 	report "Test_2: result incorrect" 	severity Warning;
			assert carryout = '0' 								report "Test_2: carryout incorrect"	severity Warning;
			assert overflow = '0' 								report "Test_2: overflow incorrect"	severity Warning;
			assert zero = '1'										report "Test_2: zero incorrect"		severity Warning;
			
			-- Test 3
			A <= conv_std_logic_vector(255, 8);
			B <= conv_std_logic_vector(255, 8);

			wait for 10 ns;
			assert result = conv_std_logic_vector(0, 8) report "Test_3: result incorrect" 	severity Warning;
			assert carryout = '0' 								 report "Test_3: carryout incorrect"	severity Warning;
			assert overflow = '0' 								 report "Test_3: overflow incorrect"	severity Warning;
			assert zero = '1'										 report "Test_3: zero incorrect"		severity Warning;
		
			-- Test 4
			A <= conv_std_logic_vector(170, 8);
			B <= conv_std_logic_vector(85, 8);

			wait for 10 ns;
			assert result = conv_std_logic_vector(255, 8) 	report "Test_4: result incorrect" 	severity Warning;
			assert carryout = '0' 								report "Test_4: carryout incorrect"	severity Warning;
			assert overflow = '0' 								report "Test_4: overflow incorrect"	severity Warning;
			assert zero = '0'										report "Test_4: zero incorrect"		severity Warning;
			
			-- Test 5
			A <= conv_std_logic_vector(240, 8);
			B <= conv_std_logic_vector(15, 8);

			wait for 10 ns;
			assert result = conv_std_logic_vector(255, 8) 	report "Test_5: result incorrect" 	severity Warning;
			assert carryout = '0' 								report "Test_5: carryout incorrect"	severity Warning;
			assert overflow = '0' 								report "Test_5: overflow incorrect"	severity Warning;
			assert zero = '0'										report "Test_5: zero incorrect"		severity Warning;
			
			wait for 50 ns;
	

		-- --------------------------------------------------------------------------------
		-- --------------------------------------------------------------------------------
		-- Testing Divide A by 2
		-- --------------------------------------------------------------------------------
		-- --------------------------------------------------------------------------------
		report "Testing Divide A by 2";
		opcode <= "111";
		
			-- Test 1
			A <= conv_std_logic_vector(2, 8);
			
			
			wait for 10 ns;
			assert result = conv_std_logic_vector(1, 8) 	report "Test_1: result incorrect" 	severity Warning;
			assert carryout = '0' 								report "Test_1: carryout incorrect"	severity Warning;
			assert overflow = '0' 								report "Test_1: overflow incorrect"	severity Warning;
			assert zero = '0'										report "Test_1: zero incorrect"		severity Warning;
			
			
			-- Test 2
			A <= conv_std_logic_vector(0, 8);

			wait for 10 ns;
			assert result = conv_std_logic_vector(0, 8) 	report "Test_2: result incorrect" 	severity Warning;
			assert carryout = '0' 								report "Test_2: carryout incorrect"	severity Warning;
			assert overflow = '0' 								report "Test_2: overflow incorrect"	severity Warning;
			assert zero = '1'										report "Test_2: zero incorrect"		severity Warning;
			
			-- Test 3
			A <= conv_std_logic_vector(255, 8);

			wait for 10 ns;
			assert result = conv_std_logic_vector(127, 8) report "Test_3: result incorrect" 	severity Warning;
			assert carryout = '0' 								 report "Test_3: carryout incorrect"	severity Warning;
			assert overflow = '0' 								 report "Test_3: overflow incorrect"	severity Warning;
			assert zero = '0'										 report "Test_3: zero incorrect"		severity Warning;
		
			-- Test 4
			A <= conv_std_logic_vector(170, 8);

			wait for 10 ns;
			assert result = conv_std_logic_vector(85, 8) 	report "Test_4: result incorrect" 	severity Warning;
			assert carryout = '0' 								report "Test_4: carryout incorrect"	severity Warning;
			assert overflow = '0' 								report "Test_4: overflow incorrect"	severity Warning;
			assert zero = '0'										report "Test_4: zero incorrect"		severity Warning;
			
			-- Test 5
			A <= conv_std_logic_vector(240, 8);


			wait for 10 ns;
			assert result = conv_std_logic_vector(120, 8) 	report "Test_5: result incorrect" 	severity Warning;
			assert carryout = '0' 								report "Test_5: carryout incorrect"	severity Warning;
			assert overflow = '0' 								report "Test_5: overflow incorrect"	severity Warning;
			assert zero = '0'										report "Test_5: zero incorrect"		severity Warning;
			
			wait for 50 ns;
	

		
		-- insert stimulus here 

		

      wait;
   end process;

END;

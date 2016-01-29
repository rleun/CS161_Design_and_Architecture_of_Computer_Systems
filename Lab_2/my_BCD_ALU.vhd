----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:24:11 01/25/2015 
-- Design Name: 
-- Module Name:    my_alu - Behavioral 
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
--use IEEE.std_logic_arith.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity my_alu is
	 generic (NUMBITS : natural := 32);
    Port ( A : in  STD_LOGIC_VECTOR(NUMBITS-1 downto 0);
           B : in  STD_LOGIC_VECTOR(NUMBITS-1 downto 0);
           opcode : in  STD_LOGIC_VECTOR(3 downto 0);
           result : out  STD_LOGIC_VECTOR(NUMBITS+3 downto 0);
           carry_out : out  STD_LOGIC;
           overflow : out  STD_LOGIC;
           zero : out  STD_LOGIC);
end my_alu;

architecture Behavioral of my_alu is
--Signals for decoder
signal dig1_A : STD_LOGIC_VECTOR(3 downto 0);
signal dig2_A : STD_LOGIC_VECTOR(3 downto 0);
signal dig3_A : STD_LOGIC_VECTOR(3 downto 0);
signal dig4_A : STD_LOGIC_VECTOR(3 downto 0);
signal dig5_A : STD_LOGIC_VECTOR(3 downto 0);
signal dig6_A : STD_LOGIC_VECTOR(3 downto 0);
signal dig7_A : STD_LOGIC_VECTOR(3 downto 0);
signal dig8_A : STD_LOGIC_VECTOR(3 downto 0);

signal dig1_B : STD_LOGIC_VECTOR(3 downto 0);
signal dig2_B : STD_LOGIC_VECTOR(3 downto 0);
signal dig3_B : STD_LOGIC_VECTOR(3 downto 0);
signal dig4_B : STD_LOGIC_VECTOR(3 downto 0);
signal dig5_B : STD_LOGIC_VECTOR(3 downto 0);
signal dig6_B : STD_LOGIC_VECTOR(3 downto 0);
signal dig7_B : STD_LOGIC_VECTOR(3 downto 0);
signal dig8_B : STD_LOGIC_VECTOR(3 downto 0);

signal temp_A : STD_LOGIC_VECTOR(31 downto 0);
signal temp_B : STD_LOGIC_VECTOR(31 downto 0);

signal signed_temp_A : STD_LOGIC_VECTOR(31 downto 0);
signal signed_temp_B : STD_LOGIC_VECTOR(31 downto 0);


--Signals for ALU
signal total : STD_LOGIC_VECTOR(NUMBITS downto 0);
signal temp_result : STD_LOGIC_VECTOR(NUMBITS-1 downto 0);

--Signals for Encoder
signal r_1 : STD_LOGIC_VECTOR(3 downto 0);
signal r_2 : STD_LOGIC_VECTOR(3 downto 0);
signal r_3 : STD_LOGIC_VECTOR(3 downto 0);
signal r_4 : STD_LOGIC_VECTOR(3 downto 0);
signal r_5 : STD_LOGIC_VECTOR(3 downto 0);
signal r_6 : STD_LOGIC_VECTOR(3 downto 0);
signal r_7 : STD_LOGIC_VECTOR(3 downto 0);
signal r_8 : STD_LOGIC_VECTOR(3 downto 0);
signal r_9 : STD_LOGIC_VECTOR(3 downto 0);
signal signed_result : STD_LOGIC_VECTOR(NUMBITS-1 downto 0);

begin

	--Process for decoder
	process(dig1_A,dig2_A,dig3_A,dig4_A,dig5_A,dig6_A,dig7_A,dig8_A,
			  dig1_B,dig2_B,dig3_B,dig4_B,dig5_B,dig6_B,dig7_B,dig8_B, 
			  r_1,r_2,r_3,r_4,r_5,r_6,r_7,r_8,r_9,signed_result,
			  A,B,temp_A,temp_B,opcode,total,temp_result,signed_temp_A,signed_temp_B)
	begin
		--Convert BCD to Binary digits
		dig1_A <= A(3 downto 0);
		dig2_A <= A(7 downto 4);
		dig3_A <= A(11 downto 8);
		dig4_A <= A(15 downto 12);
		dig5_A <= A(19 downto 16);
		dig6_A <= A(23 downto 20);
		dig7_A <= A(27 downto 24);
		dig8_A <= A(31 downto 28);
		
		dig1_B <= B(3 downto 0);
		dig2_B <= B(7 downto 4);
		dig3_B <= B(11 downto 8);
		dig4_B <= B(15 downto 12);
		dig5_B <= B(19 downto 16);
		dig6_B <= B(23 downto 20);
		dig7_B <= B(27 downto 24);
		dig8_B <= B(31 downto 28);


		if( (unsigned(opcode) = 12) OR (unsigned(opcode) = 13) ) then
		
			signed_temp_A <= STD_LOGIC_VECTOR(to_unsigned((to_integer(unsigned(dig7_A))*1000000) +
												(to_integer(unsigned(dig6_A))*100000) +
												(to_integer(unsigned(dig5_A))*10000) +
												(to_integer(unsigned(dig4_A))*1000) +
												(to_integer(unsigned(dig3_A))*100) +
												(to_integer(unsigned(dig2_A))*10) +
												 to_integer(unsigned(dig1_A)),32));
												
			
			
			if ((unsigned(dig8_A) = 1)) then
				temp_A <= STD_LOGIC_VECTOR(unsigned(not signed_temp_A) + 1);
			else
				temp_A <= signed_temp_A;
			end if;
			
			
			signed_temp_B <= STD_LOGIC_VECTOR(to_unsigned((to_integer(unsigned(dig7_B))*1000000) +
												(to_integer(unsigned(dig6_B))*100000) +
												(to_integer(unsigned(dig5_B))*10000) +
												(to_integer(unsigned(dig4_B))*1000) +
												(to_integer(unsigned(dig3_B))*100) +
												(to_integer(unsigned(dig2_B))*10) +
												 to_integer(unsigned(dig1_B)),32));
												
			if ((unsigned(dig8_B) = 1)) then
				temp_B <= STD_LOGIC_VECTOR(unsigned(not signed_temp_B) +1 ); --Negate tempB if negative
			else
				temp_B <= signed_temp_B;
			end if;
			
		--If unsigned values
		else 
			temp_A <= STD_LOGIC_VECTOR(to_unsigned((to_integer(unsigned(dig8_A))*10000000) +
												(to_integer(unsigned(dig7_A))*1000000) +
												(to_integer(unsigned(dig6_A))*100000) +
												(to_integer(unsigned(dig5_A))*10000) +
												(to_integer(unsigned(dig4_A))*1000) +
												(to_integer(unsigned(dig3_A))*100) +
												(to_integer(unsigned(dig2_A))*10) +
												 to_integer(unsigned(dig1_A)),32));
			
			temp_B <= STD_LOGIC_VECTOR(to_unsigned((to_integer(unsigned(dig8_B))*10000000) +
												(to_integer(unsigned(dig7_B))*1000000) +
												(to_integer(unsigned(dig6_B))*100000) +
												(to_integer(unsigned(dig5_B))*10000) +
												(to_integer(unsigned(dig4_B))*1000) +
												(to_integer(unsigned(dig3_B))*100) +
												(to_integer(unsigned(dig2_B))*10) +
												 to_integer(unsigned(dig1_B)),32));
												
			
		end if;

		--ALU Code
		case opcode is
		
			--Unsigned add
			when "1000" =>
			
				total <= std_logic_vector(unsigned('0' & temp_A) + unsigned('0' & temp_B));
				temp_result <= total(NUMBITS-1 downto 0);
				if (unsigned(total(NUMBITS-1 downto 0)) = 0) then
					zero <= '1';
				else
					zero <= '0';
				end if;
				overflow <= total(NUMBITS);
				carry_out <= total(NUMBITS);
				
			--Signed add
			when "1100" =>	
				
				total <= std_logic_vector((signed('0' & temp_A) + signed('0' & temp_B)));
				temp_result <= total(NUMBITS-1 downto 0);
				
				if (signed(total(NUMBITS-1 downto 0)) = 0) then
					zero <= '1';
				else
					zero <= '0';
				end if;
				
				if( ((signed(temp_A) >= 0) and (signed(temp_B) >= 0) and (signed(total(NUMBITS-1 downto 0)) < 0)) or
					 ((signed(temp_A) < 0) and (signed(temp_B) < 0) and (signed(total(NUMBITS-1 downto 0)) >= 0)) ) then
					overflow <= '1';
					
				else
					overflow <= '0';
				end if;
				
				carry_out <= total(NUMBITS);
			
			--Unsiged sub
			when "1001" =>
				total <= std_logic_vector(unsigned('0' & temp_A) - unsigned('0' & temp_B));
				temp_result <= total(NUMBITS-1 downto 0);
				if (unsigned(total(NUMBITS-1 downto 0)) = 0) then
					zero <= '1';
				else
					zero <= '0';
				end if;
				if (total(NUMBITS) = '1') then
					overflow <= '1';
				else
					overflow <= '0';
				end if;
				carry_out <= total(NUMBITS);
			
			--Signed sub
			when "1101" =>
				total <= std_logic_vector(signed('0' & temp_A) - signed('0' & temp_B));
				temp_result <= total(NUMBITS-1 downto 0);
				
				if (signed(total(NUMBITS-1 downto 0)) = 0) then
					zero <= '1';
				else
					zero <= '0';
				end if;
				
				if( ((signed(temp_A) >= 0) and (signed(temp_B) < 0) and (signed(total(NUMBITS-1 downto 0)) < 0)) or
					 ((signed(temp_A) < 0) and (signed(temp_B) >= 0) and (signed(total(NUMBITS-1 downto 0)) >= 0)) ) then
					overflow <= '1';
				else
					overflow <= '0';
				end if;
				
				carry_out <= total(NUMBITS);
			
			when others =>
		end case;
		
		
		--Code for encoder
		
		if (temp_result(NUMBITS-1) = '1') then
			r_9 <= "0001";
			signed_result <= STD_LOGIC_VECTOR(unsigned(not temp_result) + 1);
		else
			r_9 <= "0000";
			signed_result <= temp_result;
		end if;
		
		r_1 <= STD_LOGIC_VECTOR(to_unsigned(to_integer(unsigned(signed_result)) mod 10,4));
		r_2 <= STD_LOGIC_VECTOR(to_unsigned((to_integer(unsigned(signed_result))/10) mod 10, 4));
		r_3 <= STD_LOGIC_VECTOR(to_unsigned((to_integer(unsigned(signed_result))/100) mod 10, 4));
		r_4 <= STD_LOGIC_VECTOR(to_unsigned((to_integer(unsigned(signed_result))/1000) mod 10, 4));
		r_5 <= STD_LOGIC_VECTOR(to_unsigned((to_integer(unsigned(signed_result))/10000) mod 10, 4));
		r_6 <= STD_LOGIC_VECTOR(to_unsigned((to_integer(unsigned(signed_result))/100000) mod 10, 4));
		r_7 <= STD_LOGIC_VECTOR(to_unsigned((to_integer(unsigned(signed_result))/1000000) mod 10, 4));
		r_8 <= STD_LOGIC_VECTOR(to_unsigned((to_integer(unsigned(signed_result))/10000000) mod 10, 4));
		
		result <= r_9 & r_8 & r_7 & r_6 & r_5 & r_4 & r_3 & r_2 & r_1 ;
		
		
	end process;
	
	
end Behavioral;


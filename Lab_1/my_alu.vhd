----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:24:04 01/19/2015 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity my_alu is
	 generic (NUMBITS : natural := 8);
    Port ( A : in  STD_LOGIC_VECTOR(NUMBITS-1 downto 0);
           B : in  STD_LOGIC_VECTOR(NUMBITS-1 downto 0);
           opcode : in  STD_LOGIC_VECTOR(2 downto 0);
           result : out  STD_LOGIC_VECTOR(NUMBITS-1 downto 0);
           carryout : out  STD_LOGIC;
           overflow : out  STD_LOGIC;
           zero : out  STD_LOGIC);
end my_alu;

architecture arch_alu of my_alu is
signal total : STD_LOGIC_VECTOR(NUMBITS downto 0);

begin
	process(A,B,opcode,total)
	begin
		
		case opcode is
		
			--Unsigned add
			when "000" =>
				total <= std_logic_vector(unsigned('0' & A) + unsigned('0' & B));
				result <= total(NUMBITS-1 downto 0);
				if (unsigned(total(NUMBITS-1 downto 0)) = 0) then
					zero <= '1';
				else
					zero <= '0';
				end if;
				overflow <= total(NUMBITS);
				carryout <= total(NUMBITS);
				
			--Signed add
			--is carryout just equal to overflow? <- carryout tells nothing interesting
			when "001" =>	
				total <= std_logic_vector(signed('0' & A) + signed('0' & B));
				result <= total(NUMBITS-1 downto 0);
				
				if (signed(total(NUMBITS-1 downto 0)) = 0) then
					zero <= '1';
				else
					zero <= '0';
				end if;
				
				if( ((signed(A) >= 0) and (signed(B) >= 0) and (signed(total(NUMBITS-1 downto 0)) < 0)) or
					 ((signed(A) < 0) and (signed(B) < 0) and (signed(total(NUMBITS-1 downto 0)) >= 0)) ) then
					overflow <= '1';
					
				else
					overflow <= '0';
				end if;
				
				carryout <= total(NUMBITS);
			
			--Unsiged sub
			
			--Are the tb values going to be valid?
			when "010" =>
				total <= std_logic_vector(unsigned('0' & A) - unsigned('0' & B));
				result <= total(NUMBITS-1 downto 0);
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
				carryout <= total(NUMBITS);
			
			--Signed sub
			when "011" =>
				total <= std_logic_vector(signed('0' & A) - signed('0' & B));
				result <= total(NUMBITS-1 downto 0);
				
				if (signed(total(NUMBITS-1 downto 0)) = 0) then
					zero <= '1';
				else
					zero <= '0';
				end if;
				
				if( ((signed(A) >= 0) and (signed(B) < 0) and (signed(total(NUMBITS-1 downto 0)) < 0)) or
					 ((signed(A) < 0) and (signed(B) >= 0) and (signed(total(NUMBITS-1 downto 0)) >= 0)) ) then
					overflow <= '1';
				else
					overflow <= '0';
				end if;
				
				carryout <= total(NUMBITS);
			
			--Bit-wise AND
			when "100" =>
				total <= std_logic_vector(unsigned('0' & A) and unsigned('0' & B));
				result <= total(NUMBITS-1 downto 0);
				if (unsigned(total(NUMBITS-1 downto 0)) = 0) then
					zero <= '1';
				else
					zero <= '0';
				end if;
				overflow <= total(NUMBITS);
				carryout <= total(NUMBITS);
			
			--Bit-wise OR
			when "101" =>
				total <= std_logic_vector(unsigned('0' & A) or unsigned('0' & B));
				result <= total(NUMBITS-1 downto 0);
				if (unsigned(total(NUMBITS-1 downto 0)) = 0) then
					zero <= '1';
				else
					zero <= '0';
				end if;
				overflow <= total(NUMBITS);
				carryout <= total(NUMBITS);
			
			--Bit-wise XOR
			when "110" =>
				total <= std_logic_vector(unsigned('0' & A) xor unsigned('0' & B));
				result <= total(NUMBITS-1 downto 0);
				if (unsigned(total(NUMBITS-1 downto 0)) = 0) then
					zero <= '1';
				else
					zero <= '0';
				end if;
				overflow <= total(NUMBITS);
				carryout <= total(NUMBITS);
			
			--Divide A by 2
			-- signed or unsigned?
			when "111" =>
				total <= std_logic_vector(unsigned("00" & A(NUMBITS-1 downto 1)));
				result <= total(NUMBITS-1 downto 0);
				if (unsigned(total(NUMBITS-1 downto 0)) = 0) then
					zero <= '1';
				else
					zero <= '0';
				end if;
				overflow <= '0';
				carryout <= '0';
				
				
			
			when others =>
		end case;
	end process;
end arch_alu;


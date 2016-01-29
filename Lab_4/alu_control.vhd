library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.cpu_constant_library.all;

entity alu_control is
  port (
    alu_op            : in std_logic_vector(1 downto 0);
    instruction_5_0   : in std_logic_vector(5 downto 0);
    alu_out           : out std_logic_vector(3 downto 0)
    );
end alu_control;

architecture Behavioral of alu_control is

begin

process(alu_op, instruction_5_0)
begin

	if(alu_op = "00") then			--LW/SW
		alu_out <= "0010";
	elsif(alu_op(0) = '1') then	--BEQ
		alu_out <= "0110";
	elsif(alu_op(1) = '1') then
		if(instruction_5_0(3 downto 0) = FUNCT_ADD(3 downto 0)) then
			alu_out <= "0010";
		end if;
		if(instruction_5_0(3 downto 0) = FUNCT_ADDU(3 downto 0)) then
			alu_out <= "0010";
		end if;
		if(instruction_5_0(3 downto 0) = FUNCT_SUB(3 downto 0)) then
			alu_out <= "0110";
		end if;
		if(instruction_5_0(3 downto 0) = FUNCT_SLT(3 downto 0)) then
			alu_out <= "0111";
		end if;
		if(instruction_5_0(3 downto 0) = FUNCT_NOR(3 downto 0)) then
			alu_out <= "1100";
		end if;
		if(instruction_5_0(3 downto 0) = FUNCT_AND(3 downto 0)) then
			alu_out <= "0000";
		end if;
		if(instruction_5_0(3 downto 0) = FUNCT_OR(3 downto 0)) then
			alu_out <= "0001";
		end if;
	end if;
end process;

end Behavioral;

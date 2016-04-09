--------------------------------------------------------------------------------
--                       Maria Alejandra Gomez Montoya                        --
--                       Juan Sebastian Herrera Giraldo                       --
--                       Cristhian Andrés Rivera Osorio                       --
--------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ALU is
    Port ( ALUOp : in  STD_LOGIC_VECTOR (5 downto 0);
           in1 : in  STD_LOGIC_VECTOR (31 downto 0);
           in2 : in  STD_LOGIC_VECTOR (31 downto 0);
           ALUResult : out  STD_LOGIC_VECTOR (31 downto 0));
end ALU;

architecture Behavioral of ALU is

begin
	process(in1,in2,ALUOp)
	begin
	   case (ALUOp) is 
			when "000001" => -- Add
				ALUResult <= in1 + in2;
			when "000010" => -- Sub
				ALUResult <= in1 - in2;
			when "000011" => -- And
				ALUResult <= in1 and in2;
			when "000100" => -- Nand
				ALUResult <= in1 nand in2;
			when "000101" => -- Or
				ALUResult <= in1 or in2;
			when "000110" => -- Nor
				ALUResult <= in1 nor in2;
			when "000111" => -- Xor
				ALUResult <= in1 xor in2;
			when "001000" => -- Xnor
				ALUResult <= in1 xnor in2;
			when others => 
				ALUResult <= (others=>'0');
		end case;
	end process;

end Behavioral;
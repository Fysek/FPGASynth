library IEEE;                 
use IEEE.STD_LOGIC_1164.all;
use ieee.std_logic_arith.all;
use IEEE.STD_LOGIC_UNSIGNED.all;
use IEEE.numeric_std.all; 


entity terc4_encoder is 
	port( 

			data_in          		: in  std_logic_vector(3 downto 0);
			data_out          		: out std_logic_vector(9 downto 0);
	    );                          
end entity;

architecture terc4_encoder_arch of terc4_encoder is

begin						       
	case data_in is
		when "0000" => data_out <="1010011100";
		when "0001" => data_out <="1001100011";
		when "0010" => data_out <="1011100100";
		when "0011" => data_out <="1011100010";
		when "0100" => data_out <="0101110001";
		when "0101" => data_out <="0100011110";
		when "0110" => data_out <="0110001110";
		when "0111" => data_out <="0100111100";
		when "1000" => data_out <="1011001100";
		when "1001" => data_out <="0100111001";
		when "1010" => data_out <="0110011100";
		when "1011" => data_out <="1011000110";
		when "1100" => data_out <="1010001110";
		when "1101" => data_out <="1001110001";
		when "1110" => data_out <="0101100011";
		when "1111" => data_out <="1011000011";	
	end case;
end architecture;

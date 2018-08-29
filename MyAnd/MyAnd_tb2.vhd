----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:08:45 07/05/2018 
-- Design Name: 
-- Module Name:    MyAnd_tb2 - Behavioral 
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MyAnd_tb2 is
end MyAnd_tb2;

architecture Behavioral of MyAnd_tb2 is

	COMPONENT TestMyAnd
		 PORT(
				a : IN  std_logic;
				b : IN  std_logic;
				z : OUT  std_logic
			  );
	END COMPONENT;

	signal e1 : STD_LOGIC;
	signal e2 : STD_LOGIC;
	signal sal : STD_LOGIC;
	
	
begin

	--Instanciar:
	Instancia : TestMyAnd PORT MAP(
		A	=>	e1,
		B	=>	e2,
		Z	=>	sal
	);
	
	--Estimulos:
	process
		begin		
		e1 <= '0';
		e2 <= '0';
		wait for 20 ns;
		
		e1 <= '0';
		e2 <= '1';
		wait for 20 ns;
		
		e1 <= '1';
		e2 <= '0';
		wait for 20 ns;
		
		e1 <= '1';
		e2 <= '1';
		
		WAIT;
	end PROCESS;
	
end Behavioral;


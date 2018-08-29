----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:43:44 07/05/2018 
-- Design Name: 
-- Module Name:    TestMyMux - Behavioral 
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

entity TestMyMux is
    Port ( I0 : in  STD_LOGIC;
           I1 : in  STD_LOGIC;
           I2 : in  STD_LOGIC;
           I3 : in  STD_LOGIC;
           Z : out  STD_LOGIC;
           S0 : in  STD_LOGIC;
           S1 : in  STD_LOGIC);
end TestMyMux;

architecture Behavioral of TestMyMux is

begin

Z <= 	(I0 AND ( NOT(S0) 	AND 	NOT(S1)	)) 	OR 
		(I1 AND ( NOT(S0) 	AND 		 S1	)) 	OR 
		(I2 AND ( S0 			AND 	NOT(S1)	)) 	OR 
		(I3 AND ( S0 			AND 		 S1));

end Behavioral;


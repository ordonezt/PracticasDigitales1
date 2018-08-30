--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:33:03 08/22/2018
-- Design Name:   
-- Module Name:   /home/ise/ProyectosIse/MyAnd/myAnd_tb.vhd
-- Project Name:  MyAnd
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: myAnd
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
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY myAnd_tb IS
END myAnd_tb;
 
ARCHITECTURE behavior OF myAnd_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT myAnd
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         C : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic := '0';
   signal B : std_logic := '0';

 	--Outputs
   signal C : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: myAnd PORT MAP (
          A => A,
          B => B,
          C => C
        );

 

   -- Stimulus process
   stim_proc: process
   begin		
      
		a <= '0';
      b <= '0';
		wait for 100 ns;	
		
		a <= '0';
      b <= '1';
		wait for 100 ns;	
		
		a <= '1';
      b <= '0';
		wait for 100 ns;	
		
		a <= '1';
      b <= '1';
		wait for 100 ns;	

   end process;

END;

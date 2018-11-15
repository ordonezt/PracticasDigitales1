--Guia 3, test bench ejercicio 2
--Alumno: Tomás Bautista Ordóñez
--Legajo: 1595659
--GitLab User: toordonez
--Mail: tomasbautista.o@gmail.com


LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY guiaDeClase03_02_tb IS
END guiaDeClase03_02_tb;
 
ARCHITECTURE behavior OF guiaDeClase03_02_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT guiaDeClase03_02
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         t : IN  std_logic;
         q : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal t : std_logic := '0';

 	--Outputs
   signal q : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: guiaDeClase03_02 PORT MAP (
          clk => clk,
          rst => rst,
          t => t,
          q => q
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      
		t <= '0';
		wait until Falling_Edge(clk);wait until Falling_Edge(clk);wait until Falling_Edge(clk);
		t <= '1';
		wait until Falling_Edge(clk);
		t <= '0';
		wait until Falling_Edge(clk);wait until Falling_Edge(clk);wait until Falling_Edge(clk);
		t <= '1';

      wait;
   end process;

END;

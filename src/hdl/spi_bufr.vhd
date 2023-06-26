----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/27/2023 09:45:55 PM
-- Design Name: 
-- Module Name: spi_bufr - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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

--    BUFR     : In order to incorporate this function into the design,
--    VHDL     : the following instance declaration needs to be placed
--  instance   : in the body of the design code.  The instance name
-- declaration : (BUFR_inst) and/or the port declarations after the
--    code     : "=>" declaration maybe changed to properly reference and
--             : connect this function to the design.  All inputs and outputs
--             : must be connected.

--   Library   : In addition to adding the instance declaration, a use
-- declaration : statement for the UNISIM.vcomponents library needs to be
--     for     : added before the entity declaration.  This library
--   Xilinx    : contains the component declarations for all Xilinx
-- primitives  : primitives and points to the models that will be used
--             : for simulation.

--  Copy the following two statements and paste them before the
--  Entity declaration, unless they already exist.

Library UNISIM;
use UNISIM.vcomponents.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity spi_bufr is
  Port (
  O : out std_logic;
  CLR : in std_logic;
  CE : in std_logic;
  I : in std_logic
  );
end spi_bufr;

architecture Behavioral of spi_bufr is

begin
    -- <-----Cut code below this line and paste into the architecture body---->

   -- BUFR: Regional Clock Buffer for I/O and Logic Resources within a Clock Region
   --       Artix-7
   -- Xilinx HDL Language Template, version 2022.1

   BUFR_inst : BUFR
   generic map (
      BUFR_DIVIDE => "1",   -- Values: "BYPASS, 1, 2, 3, 4, 5, 6, 7, 8" 
      SIM_DEVICE => "7SERIES"  -- Must be set to "7SERIES" 
   )
   port map (
      O => O,     -- 1-bit output: Clock output port
      CE => CE,   -- 1-bit input: Active high, clock enable (Divided modes only)
      CLR => CLR, -- 1-bit input: Active high, asynchronous clear (Divided modes only)
      I => I      -- 1-bit input: Clock buffer input driven by an IBUF, MMCM or local interconnect
   );

   -- End of BUFR_inst instantiation
end Behavioral;

--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
--Date        : Mon Jan 13 12:08:14 2020
--Host        : DESKTOP-FB5RMBS running 64-bit major release  (build 9200)
--Command     : generate_target echo_wrapper.bd
--Design      : echo_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity echo_wrapper is
  port (
    DDR2_0_addr : out STD_LOGIC_VECTOR ( 12 downto 0 );
    DDR2_0_ba : out STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR2_0_cas_n : out STD_LOGIC;
    DDR2_0_ck_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR2_0_ck_p : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR2_0_cke : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR2_0_cs_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR2_0_dm : out STD_LOGIC_VECTOR ( 1 downto 0 );
    DDR2_0_dq : inout STD_LOGIC_VECTOR ( 15 downto 0 );
    DDR2_0_dqs_n : inout STD_LOGIC_VECTOR ( 1 downto 0 );
    DDR2_0_dqs_p : inout STD_LOGIC_VECTOR ( 1 downto 0 );
    DDR2_0_odt : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR2_0_ras_n : out STD_LOGIC;
    DDR2_0_we_n : out STD_LOGIC;
    eth_mdio_mdc_mdc : out STD_LOGIC;
    eth_mdio_mdc_mdio_io : inout STD_LOGIC;
    eth_rmii_crs_dv : in STD_LOGIC;
    eth_rmii_rx_er : in STD_LOGIC;
    eth_rmii_rxd : in STD_LOGIC_VECTOR ( 1 downto 0 );
    eth_rmii_tx_en : out STD_LOGIC;
    eth_rmii_txd : out STD_LOGIC_VECTOR ( 1 downto 0 );
    reset : in STD_LOGIC;
    sys_clock : in STD_LOGIC;
    usb_uart_rxd : in STD_LOGIC;
    usb_uart_txd : out STD_LOGIC
  );
end echo_wrapper;

architecture STRUCTURE of echo_wrapper is
  component echo is
  port (
    sys_clock : in STD_LOGIC;
    reset : in STD_LOGIC;
    DDR2_0_dq : inout STD_LOGIC_VECTOR ( 15 downto 0 );
    DDR2_0_dqs_p : inout STD_LOGIC_VECTOR ( 1 downto 0 );
    DDR2_0_dqs_n : inout STD_LOGIC_VECTOR ( 1 downto 0 );
    DDR2_0_addr : out STD_LOGIC_VECTOR ( 12 downto 0 );
    DDR2_0_ba : out STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR2_0_ras_n : out STD_LOGIC;
    DDR2_0_cas_n : out STD_LOGIC;
    DDR2_0_we_n : out STD_LOGIC;
    DDR2_0_ck_p : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR2_0_ck_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR2_0_cke : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR2_0_cs_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR2_0_dm : out STD_LOGIC_VECTOR ( 1 downto 0 );
    DDR2_0_odt : out STD_LOGIC_VECTOR ( 0 to 0 );
    eth_rmii_crs_dv : in STD_LOGIC;
    eth_rmii_rx_er : in STD_LOGIC;
    eth_rmii_rxd : in STD_LOGIC_VECTOR ( 1 downto 0 );
    eth_rmii_tx_en : out STD_LOGIC;
    eth_rmii_txd : out STD_LOGIC_VECTOR ( 1 downto 0 );
    eth_mdio_mdc_mdc : out STD_LOGIC;
    eth_mdio_mdc_mdio_i : in STD_LOGIC;
    eth_mdio_mdc_mdio_o : out STD_LOGIC;
    eth_mdio_mdc_mdio_t : out STD_LOGIC;
    usb_uart_rxd : in STD_LOGIC;
    usb_uart_txd : out STD_LOGIC
  );
  end component echo;
  component IOBUF is
  port (
    I : in STD_LOGIC;
    O : out STD_LOGIC;
    T : in STD_LOGIC;
    IO : inout STD_LOGIC
  );
  end component IOBUF;
  signal eth_mdio_mdc_mdio_i : STD_LOGIC;
  signal eth_mdio_mdc_mdio_o : STD_LOGIC;
  signal eth_mdio_mdc_mdio_t : STD_LOGIC;
begin
echo_i: component echo
     port map (
      DDR2_0_addr(12 downto 0) => DDR2_0_addr(12 downto 0),
      DDR2_0_ba(2 downto 0) => DDR2_0_ba(2 downto 0),
      DDR2_0_cas_n => DDR2_0_cas_n,
      DDR2_0_ck_n(0) => DDR2_0_ck_n(0),
      DDR2_0_ck_p(0) => DDR2_0_ck_p(0),
      DDR2_0_cke(0) => DDR2_0_cke(0),
      DDR2_0_cs_n(0) => DDR2_0_cs_n(0),
      DDR2_0_dm(1 downto 0) => DDR2_0_dm(1 downto 0),
      DDR2_0_dq(15 downto 0) => DDR2_0_dq(15 downto 0),
      DDR2_0_dqs_n(1 downto 0) => DDR2_0_dqs_n(1 downto 0),
      DDR2_0_dqs_p(1 downto 0) => DDR2_0_dqs_p(1 downto 0),
      DDR2_0_odt(0) => DDR2_0_odt(0),
      DDR2_0_ras_n => DDR2_0_ras_n,
      DDR2_0_we_n => DDR2_0_we_n,
      eth_mdio_mdc_mdc => eth_mdio_mdc_mdc,
      eth_mdio_mdc_mdio_i => eth_mdio_mdc_mdio_i,
      eth_mdio_mdc_mdio_o => eth_mdio_mdc_mdio_o,
      eth_mdio_mdc_mdio_t => eth_mdio_mdc_mdio_t,
      eth_rmii_crs_dv => eth_rmii_crs_dv,
      eth_rmii_rx_er => eth_rmii_rx_er,
      eth_rmii_rxd(1 downto 0) => eth_rmii_rxd(1 downto 0),
      eth_rmii_tx_en => eth_rmii_tx_en,
      eth_rmii_txd(1 downto 0) => eth_rmii_txd(1 downto 0),
      reset => reset,
      sys_clock => sys_clock,
      usb_uart_rxd => usb_uart_rxd,
      usb_uart_txd => usb_uart_txd
    );
eth_mdio_mdc_mdio_iobuf: component IOBUF
     port map (
      I => eth_mdio_mdc_mdio_o,
      IO => eth_mdio_mdc_mdio_io,
      O => eth_mdio_mdc_mdio_i,
      T => eth_mdio_mdc_mdio_t
    );
end STRUCTURE;

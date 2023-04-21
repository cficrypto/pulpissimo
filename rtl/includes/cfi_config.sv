// File: cfi_config.sv
// Constants for the Crypto CFI extension 

`ifndef CFI_CONFIG_SV
	`define CFI_CONFIG_SV

	`define CFI_ENABLE_DEF        1
	`define CFI_INSTR_WIDTH_DEF  40
	`define CFI_CAPACITY_DEF    160  
	`define CFI_CFG_BITS_DEF      4
	`define CFI_KEY_DEF         160'hefcdab9078563412000000000000000000000000
	`define CFI_FILL_DEF          8'b0 //used as padding when extending from 32 to CFI bus

`endif

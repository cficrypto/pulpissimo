// File: cfi_config.sv
// Constants for the Crypto CFI extension 

`ifndef CFI_CONFIG_SV
`define CFI_CONFIG_SV

`define CFI_INSTR_WIDTH_DEF 40
`define CFI_CAPACITY_DEF 160

// this value is used to fill the additional bits when extending from the 32 to CFI bus
`define CFI_FILL_DEF 8'b0

`endif

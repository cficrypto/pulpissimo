# add cfi signals
set rvcores [find instances -recursive -bydu riscv_core -nodu]

if {$rvcores ne ""} {

  add wave -group "CFI"                                     $rvcores/cs_registers_i/CFI_en_o
  add wave -group "CFI"                                     $rvcores/cs_registers_i/CFI_tag_o
  
}

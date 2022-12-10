  onerror {resume}

set rvcores [find instances -recursive -bydu riscv_core -nodu]

# if {$rvcores ne ""} {
  add wave -group "CFI" $rvcores/clk_i
  add wave -group "CFI" $rvcores/cs_registers_i/CFI_CFG_o
  add wave -group "CFI" $rvcores/cs_registers_i/CFI_tag_o
  add wave -group "CFI" $rvcores/if_stage_i/riscv_decrypt_i/data_in
  add wave -group "CFI" $rvcores/if_stage_i/riscv_decrypt_i/active
  add wave -group "CFI" $rvcores/if_stage_i/riscv_decrypt_i/key
  add wave -group "CFI" $rvcores/if_stage_i/riscv_decrypt_i/tag
  add wave -group "CFI" $rvcores/if_stage_i/riscv_decrypt_i/if_valid
  add wave -group "CFI" $rvcores/if_stage_i/riscv_decrypt_i/csr
  add wave -group "CFI" $rvcores/if_stage_i/riscv_decrypt_i/busy
  add wave -group "CFI" $rvcores/if_stage_i/riscv_decrypt_i/decrypt_valid
  add wave -group "CFI" $rvcores/if_stage_i/riscv_decrypt_i/data_out
  add wave -group "CFI" $rvcores/if_stage_i/riscv_decrypt_i/perm_state
  add wave -group "CFI" $rvcores/if_stage_i/riscv_decrypt_i/perm_state_n
  add wave -group "CFI" $rvcores/if_stage_i/riscv_decrypt_i/inv_perm_state
  add wave -group "CFI" $rvcores/if_stage_i/riscv_decrypt_i/fsm_state
  add wave -group "CFI" $rvcores/if_stage_i/riscv_decrypt_i/fsm_state_n
  add wave -group "CFI" $rvcores/if_stage_i/riscv_decrypt_i/decrypt_out
  add wave -group "CFI" $rvcores/if_stage_i/riscv_decrypt_i/decrypter/decrypt_inst/fsm_state
  add wave -group "CFI" $rvcores/if_stage_i/riscv_decrypt_i/decrypter/decrypt_inst/state
  add wave -group "CFI" $rvcores/if_stage_i/riscv_decrypt_i/decrypter/riscv_decrypt_inst/fsm_state
  add wave -group "CFI" $rvcores/if_stage_i/riscv_decrypt_i/decrypter/riscv_decrypt_inst/inv_perm_state
# }

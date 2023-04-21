  onerror {resume}

set rvcores [find instances -recursive -bydu riscv_core -nodu]

# if {$rvcores ne ""} {
  add wave -group "CFI" $rvcores/clk_i
  add wave -group "CFI" $rvcores/cs_registers_i/CFI_CFG_o
  add wave -group "CFI" $rvcores/cs_registers_i/CFI_tag_o
  add wave -group "CFI" $rvcores/if_stage_i/CFI_DECRYPT/riscv_decrypt_i/data_in
  add wave -group "CFI" $rvcores/if_stage_i/CFI_DECRYPT/riscv_decrypt_i/active
  add wave -group "CFI" $rvcores/if_stage_i/CFI_DECRYPT/riscv_decrypt_i/key
  add wave -group "CFI" $rvcores/if_stage_i/CFI_DECRYPT/riscv_decrypt_i/tag
  add wave -group "CFI" $rvcores/if_stage_i/CFI_DECRYPT/riscv_decrypt_i/if_valid
  add wave -group "CFI" $rvcores/if_stage_i/CFI_DECRYPT/riscv_decrypt_i/csr
  add wave -group "CFI" $rvcores/if_stage_i/CFI_DECRYPT/riscv_decrypt_i/busy
  add wave -group "CFI" $rvcores/if_stage_i/CFI_DECRYPT/riscv_decrypt_i/decrypt_valid
  add wave -group "CFI" $rvcores/if_stage_i/CFI_DECRYPT/riscv_decrypt_i/data_out
  add wave -group "CFI" $rvcores/if_stage_i/CFI_DECRYPT/riscv_decrypt_i/perm_state
  add wave -group "CFI" $rvcores/if_stage_i/CFI_DECRYPT/riscv_decrypt_i/perm_state_n
  add wave -group "CFI" $rvcores/if_stage_i/CFI_DECRYPT/riscv_decrypt_i/inv_perm_state
  add wave -group "CFI" $rvcores/if_stage_i/CFI_DECRYPT/riscv_decrypt_i/fsm_state
  add wave -group "CFI" $rvcores/if_stage_i/CFI_DECRYPT/riscv_decrypt_i/fsm_state_n
  add wave -group "CFI" $rvcores/if_stage_i/CFI_DECRYPT/riscv_decrypt_i/decrypt_out
  add wave -group "CFI" $rvcores/if_stage_i/CFI_DECRYPT/riscv_decrypt_i/decrypter/decrypt_inst/fsm_state
  add wave -group "CFI" $rvcores/if_stage_i/CFI_DECRYPT/riscv_decrypt_i/decrypter/decrypt_inst/state
  add wave -group "CFI" $rvcores/if_stage_i/CFI_DECRYPT/riscv_decrypt_i/decrypter/riscv_decrypt_inst/fsm_state
  add wave -group "CFI" $rvcores/if_stage_i/CFI_DECRYPT/riscv_decrypt_i/decrypter/riscv_decrypt_inst/inv_perm_state
  add wave -group "CFI" $rvcores/if_stage_i/CFI_DECRYPT/riscv_decrypt_i/decrypter/riscv_decrypt_inst/perm_state
  add wave -group "CFI" $rvcores/if_stage_i/CFI_DECRYPT/riscv_decrypt_i/decrypter/riscv_decrypt_inst/perm_state_n

  # DEBUG memory
  add wave -group priv1 {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/i_soc_interconnect_wrap/l2_private_slaves[1]/req}
  add wave -group priv1 {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/i_soc_interconnect_wrap/l2_private_slaves[1]/add}
  add wave -group priv1 {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/i_soc_interconnect_wrap/l2_private_slaves[1]/wen}
  add wave -group priv1 {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/i_soc_interconnect_wrap/l2_private_slaves[1]/wdata}
  add wave -group priv1 {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/i_soc_interconnect_wrap/l2_private_slaves[1]/be}
  add wave -group priv1 {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/i_soc_interconnect_wrap/l2_private_slaves[1]/gnt}
  add wave -group priv1 {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/i_soc_interconnect_wrap/l2_private_slaves[1]/r_opc}
  add wave -group priv1 {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/i_soc_interconnect_wrap/l2_private_slaves[1]/r_rdata}
  add wave -group priv1 {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/i_soc_interconnect_wrap/l2_private_slaves[1]/r_valid}

  add wave -group priv0 {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/i_soc_interconnect_wrap/l2_private_slaves[0]/req}
  add wave -group priv0 {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/i_soc_interconnect_wrap/l2_private_slaves[0]/add}
  add wave -group priv0 {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/i_soc_interconnect_wrap/l2_private_slaves[0]/wen}
  add wave -group priv0 {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/i_soc_interconnect_wrap/l2_private_slaves[0]/wdata}
  add wave -group priv0 {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/i_soc_interconnect_wrap/l2_private_slaves[0]/be}
  add wave -group priv0 {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/i_soc_interconnect_wrap/l2_private_slaves[0]/gnt}
  add wave -group priv0 {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/i_soc_interconnect_wrap/l2_private_slaves[0]/r_opc}
  add wave -group priv0 {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/i_soc_interconnect_wrap/l2_private_slaves[0]/r_rdata}
  add wave -group priv0 {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/i_soc_interconnect_wrap/l2_private_slaves[0]/r_valid}
  add wave -group mem3 {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/mem_slave[3]/req}
  add wave -group mem3 {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/mem_slave[3]/add}
  add wave -group mem3 {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/mem_slave[3]/wen}
  add wave -group mem3 {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/mem_slave[3]/wdata}
  add wave -group mem3 {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/mem_slave[3]/be}
  add wave -group mem3 {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/mem_slave[3]/gnt}
  add wave -group mem3 {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/mem_slave[3]/r_opc}
  add wave -group mem3 {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/mem_slave[3]/r_rdata}
  add wave -group mem3 {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/mem_slave[3]/r_valid}
  add wave -group mem2 {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/mem_slave[2]/req}
  add wave -group mem2 {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/mem_slave[2]/add}
  add wave -group mem2 {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/mem_slave[2]/wen}
  add wave -group mem2 {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/mem_slave[2]/wdata}
  add wave -group mem2 {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/mem_slave[2]/be}
  add wave -group mem2 {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/mem_slave[2]/gnt}
  add wave -group mem2 {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/mem_slave[2]/r_opc}
  add wave -group mem2 {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/mem_slave[2]/r_rdata}
  add wave -group mem2 {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/mem_slave[2]/r_valid}
  add wave -group mem1 {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/mem_slave[1]/req}
  add wave -group mem1 {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/mem_slave[1]/add}
  add wave -group mem1 {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/mem_slave[1]/wen}
  add wave -group mem1 {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/mem_slave[1]/wdata}
  add wave -group mem1 {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/mem_slave[1]/be}
  add wave -group mem1 {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/mem_slave[1]/gnt}
  add wave -group mem1 {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/mem_slave[1]/r_opc}
  add wave -group mem1 {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/mem_slave[1]/r_rdata}
  add wave -group mem1 {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/mem_slave[1]/r_valid}
  add wave -group mem0 {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/mem_slave[0]/req}
  add wave -group mem0 {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/mem_slave[0]/add}
  add wave -group mem0 {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/mem_slave[0]/wen}
  add wave -group mem0 {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/mem_slave[0]/wdata}
  add wave -group mem0 {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/mem_slave[0]/be}
  add wave -group mem0 {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/mem_slave[0]/gnt}
  add wave -group mem0 {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/mem_slave[0]/r_opc}
  add wave -group mem0 {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/mem_slave[0]/r_rdata}
  add wave -group mem0 {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/l2_ram_i/mem_slave[0]/r_valid}
  add wave -group {tcdm debug} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/i_soc_interconnect_wrap/tcdm_debug/req
  add wave -group {tcdm debug} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/i_soc_interconnect_wrap/tcdm_debug/add
  add wave -group {tcdm debug} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/i_soc_interconnect_wrap/tcdm_debug/wen
  add wave -group {tcdm debug} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/i_soc_interconnect_wrap/tcdm_debug/wdata
  add wave -group {tcdm debug} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/i_soc_interconnect_wrap/tcdm_debug/be
  add wave -group {tcdm debug} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/i_soc_interconnect_wrap/tcdm_debug/gnt
  add wave -group {tcdm debug} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/i_soc_interconnect_wrap/tcdm_debug/r_opc
  add wave -group {tcdm debug} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/i_soc_interconnect_wrap/tcdm_debug/r_rdata
  add wave -group {tcdm debug} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/i_soc_interconnect_wrap/tcdm_debug/r_valid

# }

#****************************************************************************************
#
# ntps.tcl: Tcl script for re-creating project 'ntps'
#
# Generated by Vivado on Fri Feb 17 17:39:25 CET 2017
# IP Build 1264090 on Wed Jun 24 14:22:01 MDT 2015
#
# This file contains the Vivado Tcl commands for re-creating the project to the state*
# when this script was generated. In order to re-create the project, please source this
# file in the Vivado Tcl Shell.
#
#*****************************************************************************************

# Set the reference directory for source file relative paths (by default the value is script directory path)
set origin_dir "."

# Set the directory path for the original project from where this script was exported
set orig_proj_dir "[file normalize "$origin_dir/ntps"]"

# Create project
create_project -force ntps ./ntps

# Set the directory path for the new project
set proj_dir [get_property directory [current_project]]

# Set project properties
set obj [get_projects ntps]
set_property "board_part" "xilinx.com:vc709:part0:1.6" $obj
set_property "default_lib" "xil_defaultlib" $obj
set_property "simulator_language" "Mixed" $obj

# Create 'sources_1' fileset (if not found)
if {[string equal [get_filesets -quiet sources_1] ""]} {
  create_fileset -srcset sources_1
}

# Set 'sources_1' fileset object
set obj [get_filesets sources_1]
set files [list \
 "[file normalize "$origin_dir/../xilinx/v7_xt_conn_trd/hardware/sources/hdl/clock_control/clock_control_program.v"]"\
 "[file normalize "$origin_dir/../xilinx/v7_xt_conn_trd/hardware/sources/hdl/common/synchronizer_simple.v"]"\
 "[file normalize "$origin_dir/../xilinx/v7_xt_conn_trd/hardware/sources/hdl/pvtmon/power_test_control_program.v"]"\
 "[file normalize "$origin_dir/../xilinx/v7_xt_conn_trd/hardware/sources/hdl/clock_control/kcpsm6.v"]"\
 "[file normalize "$origin_dir/../xilinx/v7_xt_conn_trd/hardware/sources/hdl/common/synchronizer_vector.v"]"\
 "[file normalize "$origin_dir/../xilinx/v7_xt_conn_trd/hardware/sources/hdl/pvtmon/power_test_control.v"]"\
 "[file normalize "$origin_dir/../xilinx/v7_xt_conn_trd/hardware/sources/hdl/pvtmon/vc709_power_monitor.v"]"\
 "[file normalize "$origin_dir/../xilinx/v7_xt_conn_trd/hardware/sources/hdl/clock_control/clock_control.v"]"\
 "[file normalize "$origin_dir/../network_path/GMAC/hdl/oc_mac_crc_func.h"]"\
 "[file normalize "$origin_dir/../network_path/GMAC/hdl/oc_mac.h"]"\
 "[file normalize "$origin_dir/../network_path/GMAC/hdl/tx_dequeue.v"]"\
 "[file normalize "$origin_dir/../network_path/GMAC/hdl/tx_control.v"]"\
 "[file normalize "$origin_dir/../network_path/GMAC/hdl/rx_enqueue.v"]"\
 "[file normalize "$origin_dir/../network_path/GMAC/hdl/rx_control.v"]"\
 "[file normalize "$origin_dir/../network_path/GMAC/hdl/oc_mac.v"]"\
 "[file normalize "$origin_dir/../ntp_clock/ip/ntp_clock_pll/ntp_clock_pll.xci"]"\
 "[file normalize "$origin_dir/../ntp_clock/ip/ntp_clock_ds_buf/ntp_clock_ds_buf.xci"]"\
 "[file normalize "$origin_dir/../ntp_clock/hdl/pll_sync.v"]"\
 "[file normalize "$origin_dir/../ntp_clock/hdl/pps_test.v"]"\
 "[file normalize "$origin_dir/../ntp_clock/hdl/ntp_counters.v"]"\
 "[file normalize "$origin_dir/../ntp_clock/hdl/ntp_clock_axi_slave.v"]"\
 "[file normalize "$origin_dir/../ntp_clock/hdl/pps_gen.v"]"\
 "[file normalize "$origin_dir/../ntp_clock/hdl/ntp_clock.v"]"\
 "[file normalize "$origin_dir/../ntp_clock/hdl/ntp_clock_top.v"]"\
 "[file normalize "$origin_dir/../ntp_clock/hdl/time_sel_sync.v"]"\
 "[file normalize "$origin_dir/../ntp_clock/hdl/ntp_clock_select.v"]"\
 "[file normalize "$origin_dir/../network_path/ip/ten_gig_eth_pcs_pma_ip_shared_logic/ten_gig_eth_pcs_pma_ip_shared_logic_in_core.xci"]"\
 "[file normalize "$origin_dir/../network_path/ip/ten_gig_eth_pcs_pma_ip/ten_gig_eth_pcs_pma_ip.xci"]"\
 "[file normalize "$origin_dir/../pvtmon/pvtmon_axi_slave.v"]"\
 "[file normalize "$origin_dir/../ip/ntps_top_xbar_0/ntps_top_xbar_0.xci"]"\
 "[file normalize "$origin_dir/../ip/ntps_top_s00_data_fifo_0/ntps_top_s00_data_fifo_0.xci"]"\
 "[file normalize "$origin_dir/../ip/ntps_top_auto_pc_0/ntps_top_auto_pc_0.xci"]"\
 "[file normalize "$origin_dir/../ip/ntps_top_auto_ds_0/ntps_top_auto_ds_0.xci"]"\
 "[file normalize "$origin_dir/../network_path/hdl/network_path_axi_slave.v"]"\
 "[file normalize "$origin_dir/../pvtmon/pvtmon_top.v"]"\
 "[file normalize "$origin_dir/../hdl/pcie_axi.v"]"\
 "[file normalize "$origin_dir/../network_path/packet_proc/hdl/pp_api.v"]"\
 "[file normalize "$origin_dir/../network_path/packet_proc/hdl/pp_top.v"]"\
 "[file normalize "$origin_dir/../network_path/packet_proc/hdl/pp_mac_top.v"]"\
 "[file normalize "$origin_dir/../network_path/hdl/network_path_shared.v"]"\
 "[file normalize "$origin_dir/../network_path/hdl/network_path.v"]"\
 "[file normalize "$origin_dir/../hdl/clk50_gen.v"]"\
 "[file normalize "$origin_dir/../hdl/ntps_top.v"]"\
 "[file normalize "$origin_dir/../hdl/ntps_clocks.v"]"\
 "[file normalize "$origin_dir/../hdl/ntps_interfaces.v"]"\
 "[file normalize "$origin_dir/../hdl/ntps_phys.v"]"\
 "[file normalize "$origin_dir/../nts/api_extension/src/rtl/api_extension.v"]"\
 "[file normalize "$origin_dir/../nts/rosc_entropy/src/rtl/rosc_entropy.v"]"\
 "[file normalize "$origin_dir/../nts/rosc_entropy/src/rtl/rosc_entropy_core.v"]"\
 "[file normalize "$origin_dir/../nts/rosc_entropy/src/rtl/rosc.v"]"\
 "[file normalize "$origin_dir/../nts/nts-poc-verilog/sub/keymem/src/rtl/ntp_auth_keymem.v"]"\
 "[file normalize "$origin_dir/../nts/nts-poc-verilog/sub/keymem/src/rtl/nts_keymem.v"]"\
 "[file normalize "$origin_dir/../nts/nts-poc-verilog/sub/aes/src/rtl/aes_core.v"]"\
 "[file normalize "$origin_dir/../nts/nts-poc-verilog/sub/aes/src/rtl/aes_encipher_block.v"]"\
 "[file normalize "$origin_dir/../nts/nts-poc-verilog/sub/aes/src/rtl/aes_key_mem.v"]"\
 "[file normalize "$origin_dir/../nts/nts-poc-verilog/sub/aes/src/rtl/aes_sbox.v"]"\
 "[file normalize "$origin_dir/../nts/nts-poc-verilog/sub/cmac/src/rtl/cmac_core.v"]"\
 "[file normalize "$origin_dir/../nts/nts-poc-verilog/sub/aes-siv/src/rtl/aes_siv_core.v"]"\
 "[file normalize "$origin_dir/../nts/nts-poc-verilog/sub/siphash/src/rtl/siphash_core.v"]"\
 "[file normalize "$origin_dir/../nts/nts-poc-verilog/sub/nts_noncegen/src/rtl/nts_noncegen.v"]"\
 "[file normalize "$origin_dir/../nts/nts-poc-verilog/sub/md5/src/rtl/md5_core.v"]"\
 "[file normalize "$origin_dir/../nts/nts-poc-verilog/sub/sha1/src/rtl/sha1_w_mem.v"]"\
 "[file normalize "$origin_dir/../nts/nts-poc-verilog/sub/sha1/src/rtl/sha1_core.v"]"\
 "[file normalize "$origin_dir/../nts/nts-poc-verilog/src/rtl/misc/counter64.v"]"\
 "[file normalize "$origin_dir/../nts/nts-poc-verilog/src/rtl/memory/bram.v"]"\
 "[file normalize "$origin_dir/../nts/nts-poc-verilog/src/rtl/memory/bram_dpge.v"]"\
 "[file normalize "$origin_dir/../nts/nts-poc-verilog/src/rtl/memory/bram_dp2w.v"]"\
 "[file normalize "$origin_dir/../nts/nts-poc-verilog/src/rtl/memory/memory_ctrl.v"]"\
 "[file normalize "$origin_dir/../nts/nts-poc-verilog/src/rtl/nts_engine/ctrl_gre.v"]"\
 "[file normalize "$origin_dir/../nts/nts-poc-verilog/src/rtl/nts_engine/icmp.v"]"\
 "[file normalize "$origin_dir/../nts/nts-poc-verilog/src/rtl/nts_engine/ntp_auth.v"]"\
 "[file normalize "$origin_dir/../nts/nts-poc-verilog/src/rtl/nts_engine/nts_api.v"]"\
 "[file normalize "$origin_dir/../nts/nts-poc-verilog/src/rtl/nts_engine/nts_engine.v"]"\
 "[file normalize "$origin_dir/../nts/nts-poc-verilog/src/rtl/nts_engine/nts_parser_ctrl.v"]"\
 "[file normalize "$origin_dir/../nts/nts-poc-verilog/src/rtl/nts_engine/nts_rx_buffer.v"]"\
 "[file normalize "$origin_dir/../nts/nts-poc-verilog/src/rtl/nts_engine/nts_timestamp.v"]"\
 "[file normalize "$origin_dir/../nts/nts-poc-verilog/src/rtl/nts_engine/nts_tx_buffer.v"]"\
 "[file normalize "$origin_dir/../nts/nts-poc-verilog/src/rtl/nts_engine/nts_verify_secure.v"]"\
 "[file normalize "$origin_dir/../nts/nts-poc-verilog/src/rtl/nts_dispatcher.v"]"\
 "[file normalize "$origin_dir/../nts/nts-poc-verilog/src/rtl/nts_dispatcher_mux.v"]"\
 "[file normalize "$origin_dir/../nts/nts-poc-verilog/src/rtl/preprocessor.v"]"\
 "[file normalize "$origin_dir/../nts/nts-poc-verilog/src/rtl/nts_extractor.v"]"\
 "[file normalize "$origin_dir/../nts/nts-poc-verilog/src/rtl/nts_extractor_tx.v"]"\
 "[file normalize "$origin_dir/../nts/nts-poc-verilog/src/rtl/nts_extractor_mux.v"]"\
 "[file normalize "$origin_dir/../nts/nts-poc-verilog/src/rtl/nts_top.v"]"\
]
add_files -norecurse -fileset $obj $files

# Set 'sources_1' fileset file properties for remote files
set file "$origin_dir/../network_path/GMAC/hdl/oc_mac_crc_func.h"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property "file_type" "Verilog Header" $file_obj

set file "$origin_dir/../network_path/GMAC/hdl/oc_mac.h"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property "file_type" "Verilog Header" $file_obj

set file "$origin_dir/../network_path/ip/ten_gig_eth_pcs_pma_ip_shared_logic/ten_gig_eth_pcs_pma_ip_shared_logic_in_core.xci"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
if { ![get_property "is_locked" $file_obj] } {
  set_property "generate_synth_checkpoint" "0" $file_obj
}

set file "$origin_dir/../network_path/ip/ten_gig_eth_pcs_pma_ip/ten_gig_eth_pcs_pma_ip.xci"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
if { ![get_property "is_locked" $file_obj] } {
  set_property "generate_synth_checkpoint" "0" $file_obj
}

set file "$origin_dir/../ntp_clock/ip/ntp_clock_pll/ntp_clock_pll.xci"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
if { ![get_property "is_locked" $file_obj] } {
  set_property "synth_checkpoint_mode" "Singular" $file_obj
}

set file "$origin_dir/../ntp_clock/ip/ntp_clock_ds_buf/ntp_clock_ds_buf.xci"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
if { ![get_property "is_locked" $file_obj] } {
  set_property "synth_checkpoint_mode" "Singular" $file_obj
}

set file "$origin_dir/../ip/ntps_top_xbar_0/ntps_top_xbar_0.xci"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
if { ![get_property "is_locked" $file_obj] } {
  set_property "synth_checkpoint_mode" "Singular" $file_obj
}

set file "$origin_dir/../ip/ntps_top_s00_data_fifo_0/ntps_top_s00_data_fifo_0.xci"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
if { ![get_property "is_locked" $file_obj] } {
  set_property "synth_checkpoint_mode" "Singular" $file_obj
}

set file "$origin_dir/../ip/ntps_top_auto_pc_0/ntps_top_auto_pc_0.xci"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
if { ![get_property "is_locked" $file_obj] } {
  set_property "synth_checkpoint_mode" "Singular" $file_obj
}

set file "$origin_dir/../ip/ntps_top_auto_ds_0/ntps_top_auto_ds_0.xci"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
if { ![get_property "is_locked" $file_obj] } {
  set_property "synth_checkpoint_mode" "Singular" $file_obj
}

# Set 'sources_1' fileset properties
set obj [get_filesets sources_1]
set_property "top" "ntps_top" $obj


# Set 'sources_1' fileset object
set obj [get_filesets sources_1]
set files [list \
 "[file normalize "$origin_dir/../ip/ntps_top_axi_pcie3_0_0/ntps_top_axi_pcie3_0_0.xci"]"\
]
add_files -norecurse -fileset $obj $files

# Set 'sources_1' fileset file properties for remote files
set file "$origin_dir/../ip/ntps_top_axi_pcie3_0_0/ntps_top_axi_pcie3_0_0.xci"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
if { ![get_property "is_locked" $file_obj] } {
  set_property "synth_checkpoint_mode" "Singular" $file_obj
}

# Set 'sources_1' fileset object
set obj [get_filesets sources_1]
set files [list \
 "[file normalize "$origin_dir/../ip/ntps_top_rst_axi_pcie3_0_250M_0/ntps_top_rst_axi_pcie3_0_250M_0.xci"]"\
]
add_files -norecurse -fileset $obj $files

# Set 'sources_1' fileset file properties for remote files
set file "$origin_dir/../ip/ntps_top_rst_axi_pcie3_0_250M_0/ntps_top_rst_axi_pcie3_0_250M_0.xci"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
if { ![get_property "is_locked" $file_obj] } {
  set_property "synth_checkpoint_mode" "Singular" $file_obj
}

# Set 'sources_1' fileset object
set obj [get_filesets sources_1]
set files [list \
 "[file normalize "$origin_dir/../ip/ntps_top_axi_ethernetlite_0_0/ntps_top_axi_ethernetlite_0_0.xci"]"\
]
add_files -norecurse -fileset $obj $files

# Set 'sources_1' fileset file properties for remote files
set file "$origin_dir/../ip/ntps_top_axi_ethernetlite_0_0/ntps_top_axi_ethernetlite_0_0.xci"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
if { ![get_property "is_locked" $file_obj] } {
  set_property "synth_checkpoint_mode" "Singular" $file_obj
}

# Set 'sources_1' fileset object
set obj [get_filesets sources_1]
set files [list \
 "[file normalize "$origin_dir/../ip/ntps_top_util_ds_buf_0_0/ntps_top_util_ds_buf_0_0.xci"]"\
]
add_files -norecurse -fileset $obj $files

# Set 'sources_1' fileset file properties for remote files
set file "$origin_dir/../ip/ntps_top_util_ds_buf_0_0/ntps_top_util_ds_buf_0_0.xci"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
if { ![get_property "is_locked" $file_obj] } {
  set_property "synth_checkpoint_mode" "Singular" $file_obj
}


# Set 'sources_1' fileset object
set obj [get_filesets sources_1]
set files [list \
 "[file normalize "$origin_dir/../ip/ntps_top_util_ds_buf_0_3/ntps_top_util_ds_buf_0_3.xci"]"\
]
add_files -norecurse -fileset $obj $files

# Set 'sources_1' fileset file properties for remote files
set file "$origin_dir/../ip/ntps_top_util_ds_buf_0_3/ntps_top_util_ds_buf_0_3.xci"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
if { ![get_property "is_locked" $file_obj] } {
  set_property "synth_checkpoint_mode" "Singular" $file_obj
}

# Set 'sources_1' fileset object
set obj [get_filesets sources_1]
set files [list \
 "[file normalize "$origin_dir/../ntp_clock/ip/ntps_top_clk_wiz_0_1/ntps_top_clk_wiz_0_1.xci"]"\
]
add_files -norecurse -fileset $obj $files

# Set 'sources_1' fileset file properties for remote files
set file "$origin_dir/../ntp_clock/ip/ntps_top_clk_wiz_0_1/ntps_top_clk_wiz_0_1.xci"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
if { ![get_property "is_locked" $file_obj] } {
  set_property "synth_checkpoint_mode" "Singular" $file_obj
}

# Create 'constrs_1' fileset (if not found)
if {[string equal [get_filesets -quiet constrs_1] ""]} {
  create_fileset -constrset constrs_1
}

# Set 'constrs_1' fileset object
set obj [get_filesets constrs_1]

# Add/Import constrs file and set constrs file properties
set file "[file normalize "$origin_dir/../constr/ntps_top_constr.xdc"]"
set file_added [add_files -norecurse -fileset $obj $file]
set file "$origin_dir/../constr/ntps_top_constr.xdc"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets constrs_1] [list "*$file"]]
set_property "file_type" "XDC" $file_obj

# Add/Import constrs file and set constrs file properties
set file "[file normalize "$origin_dir/../constr/clock_control.xdc"]"
set file_added [add_files -norecurse -fileset $obj $file]
set file "$origin_dir/../constr/clock_control.xdc"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets constrs_1] [list "*$file"]]
set_property "file_type" "XDC" $file_obj

# Add/Import constrs file and set constrs file properties
set file "[file normalize "$origin_dir/../constr/v7_xt_xgemac_xphy.xdc"]"
set file_added [add_files -norecurse -fileset $obj $file]
set file "$origin_dir/../constr/v7_xt_xgemac_xphy.xdc"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets constrs_1] [list "*$file"]]
set_property "file_type" "XDC" $file_obj

# Add/Import constrs file and set constrs file properties
set file "[file normalize "$origin_dir/../constr/ntp_io_loc.xdc"]"
set file_added [add_files -norecurse -fileset $obj $file]
set file "$origin_dir/../constr/ntp_io_loc.xdc"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets constrs_1] [list "*$file"]]
set_property "file_type" "XDC" $file_obj

# Add/Import constrs file and set constrs file properties
set file "[file normalize "$origin_dir/../constr/clock_groups.xdc"]"
set file_added [add_files -norecurse -fileset $obj $file]
set file "$origin_dir/../constr/clock_groups.xdc"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets constrs_1] [list "*$file"]]
set_property "file_type" "XDC" $file_obj

# Add/Import constrs file and set constrs file properties
set file "[file normalize "$origin_dir/../constr/debug.xdc"]"
set file_added [add_files -norecurse -fileset $obj $file]
set file "$origin_dir/../constr/debug.xdc"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets constrs_1] [list "*$file"]]
set_property "file_type" "XDC" $file_obj

# Add/Import constrs file and set constrs file properties
set file "[file normalize "$origin_dir/../constr/network_path_except.xdc"]"
set file_added [add_files -norecurse -fileset $obj $file]
set file "$origin_dir/../constr/network_path_except.xdc"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets constrs_1] [list "*$file"]]
set_property "file_type" "XDC" $file_obj

# Add/Import constrs file and set constrs file properties
set file "[file normalize "$origin_dir/../constr/clock_cross.xdc"]"
set file_added [add_files -norecurse -fileset $obj $file]
set file "$origin_dir/../constr/clock_cross.xdc"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets constrs_1] [list "*$file"]]
set_property "file_type" "XDC" $file_obj

# Set 'constrs_1' fileset properties
set obj [get_filesets constrs_1]
set_property "target_constrs_file" "[file normalize "$origin_dir/../constr/v7_xt_xgemac_xphy.xdc"]" $obj

# Create 'sim_1' fileset (if not found)
if {[string equal [get_filesets -quiet sim_1] ""]} {
  create_fileset -simset sim_1
}

# Set 'sim_1' fileset object
set obj [get_filesets sim_1]
# Empty (no sources present)

# Set 'sim_1' fileset properties
set obj [get_filesets sim_1]
set_property "top" "ntps_top" $obj
set_property "xelab.nosort" "1" $obj
set_property "xelab.unifast" "" $obj

# Create 'synth_1' run (if not found)
if {[string equal [get_runs -quiet synth_1] ""]} {
  create_run -name synth_1 -part xc7vx690tffg1761-2 -flow {Vivado Synthesis 2019} -strategy "Vivado Synthesis Defaults" -constrset constrs_1
} else {
  set_property strategy "Vivado Synthesis Defaults" [get_runs synth_1]
  set_property flow "Vivado Synthesis 2019" [get_runs synth_1]
}
set obj [get_runs synth_1]
set_property "steps.synth_design.tcl.pre" "[file normalize "$origin_dir/pre_synt.tcl"]" $obj

# set the current synth run
current_run -synthesis [get_runs synth_1]

# Create 'impl_1' run (if not found)
if {[string equal [get_runs -quiet impl_1] ""]} {
  create_run -name impl_1 -part xc7vx690tffg1761-2 -flow {Vivado Implementation 2019} -strategy "Performance_Explore" -constrset constrs_1 -parent_run synth_1
} else {
  set_property strategy "Performance_Explore" [get_runs impl_1]
  set_property flow "Vivado Implementation 2019" [get_runs impl_1]
}
set obj [get_runs impl_1]
set_property "steps.opt_design.args.directive" "Explore" $obj
set_property "steps.place_design.args.directive" "Explore" $obj
set_property "steps.phys_opt_design.is_enabled" "1" $obj
set_property "steps.phys_opt_design.args.directive" "Explore" $obj
set_property "steps.route_design.args.directive" "Explore" $obj
set_property "steps.post_route_phys_opt_design.is_enabled" "1" $obj
set_property "steps.write_bitstream.args.readback_file" "0" $obj
set_property "steps.write_bitstream.args.verbose" "0" $obj

# set the current impl run
current_run -implementation [get_runs impl_1]

puts "INFO: Project created:ntps"

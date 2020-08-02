# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config -msgmgr_mode ooc_run
create_project -in_memory -part xc7vx485tffg1761-2

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir D:/my/Vivado/PID_Controller/PID_Controller.cache/wt [current_project]
set_property parent.project_path D:/my/Vivado/PID_Controller/PID_Controller.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part xilinx.com:vc707:part0:1.3 [current_project]
set_property ip_output_repo d:/my/Vivado/PID_Controller/PID_Controller.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_ip -quiet D:/my/Vivado/PID_Controller/PID_Controller.srcs/sources_1/ip/adder_core/adder_core.xci
set_property is_locked true [get_files D:/my/Vivado/PID_Controller/PID_Controller.srcs/sources_1/ip/adder_core/adder_core.xci]

foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]

set cached_ip [config_ip_cache -export -no_bom -use_project_ipc -dir D:/my/Vivado/PID_Controller/PID_Controller.runs/adder_core_synth_1 -new_name adder_core -ip [get_ips adder_core]]

if { $cached_ip eq {} } {

synth_design -top adder_core -part xc7vx485tffg1761-2 -mode out_of_context

#---------------------------------------------------------
# Generate Checkpoint/Stub/Simulation Files For IP Cache
#---------------------------------------------------------
catch {
 write_checkpoint -force -noxdef -rename_prefix adder_core_ adder_core.dcp

 set ipCachedFiles {}
 write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ adder_core_stub.v
 lappend ipCachedFiles adder_core_stub.v

 write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ adder_core_stub.vhdl
 lappend ipCachedFiles adder_core_stub.vhdl

 write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ adder_core_sim_netlist.v
 lappend ipCachedFiles adder_core_sim_netlist.v

 write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ adder_core_sim_netlist.vhdl
 lappend ipCachedFiles adder_core_sim_netlist.vhdl

 config_ip_cache -add -dcp adder_core.dcp -move_files $ipCachedFiles -use_project_ipc -ip [get_ips adder_core]
}

rename_ref -prefix_all adder_core_

write_checkpoint -force -noxdef adder_core.dcp

catch { report_utilization -file adder_core_utilization_synth.rpt -pb adder_core_utilization_synth.pb }

if { [catch {
  file copy -force D:/my/Vivado/PID_Controller/PID_Controller.runs/adder_core_synth_1/adder_core.dcp D:/my/Vivado/PID_Controller/PID_Controller.srcs/sources_1/ip/adder_core/adder_core.dcp
} _RESULT ] } { 
  send_msg_id runtcl-3 error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}

if { [catch {
  write_verilog -force -mode synth_stub D:/my/Vivado/PID_Controller/PID_Controller.srcs/sources_1/ip/adder_core/adder_core_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode synth_stub D:/my/Vivado/PID_Controller/PID_Controller.srcs/sources_1/ip/adder_core/adder_core_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_verilog -force -mode funcsim D:/my/Vivado/PID_Controller/PID_Controller.srcs/sources_1/ip/adder_core/adder_core_sim_netlist.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode funcsim D:/my/Vivado/PID_Controller/PID_Controller.srcs/sources_1/ip/adder_core/adder_core_sim_netlist.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}


} else {


if { [catch {
  file copy -force D:/my/Vivado/PID_Controller/PID_Controller.runs/adder_core_synth_1/adder_core.dcp D:/my/Vivado/PID_Controller/PID_Controller.srcs/sources_1/ip/adder_core/adder_core.dcp
} _RESULT ] } { 
  send_msg_id runtcl-3 error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}

if { [catch {
  file rename -force D:/my/Vivado/PID_Controller/PID_Controller.runs/adder_core_synth_1/adder_core_stub.v D:/my/Vivado/PID_Controller/PID_Controller.srcs/sources_1/ip/adder_core/adder_core_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  file rename -force D:/my/Vivado/PID_Controller/PID_Controller.runs/adder_core_synth_1/adder_core_stub.vhdl D:/my/Vivado/PID_Controller/PID_Controller.srcs/sources_1/ip/adder_core/adder_core_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  file rename -force D:/my/Vivado/PID_Controller/PID_Controller.runs/adder_core_synth_1/adder_core_sim_netlist.v D:/my/Vivado/PID_Controller/PID_Controller.srcs/sources_1/ip/adder_core/adder_core_sim_netlist.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if { [catch {
  file rename -force D:/my/Vivado/PID_Controller/PID_Controller.runs/adder_core_synth_1/adder_core_sim_netlist.vhdl D:/my/Vivado/PID_Controller/PID_Controller.srcs/sources_1/ip/adder_core/adder_core_sim_netlist.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

}; # end if cached_ip 

if {[file isdir D:/my/Vivado/PID_Controller/PID_Controller.ip_user_files/ip/adder_core]} {
  catch { 
    file copy -force D:/my/Vivado/PID_Controller/PID_Controller.srcs/sources_1/ip/adder_core/adder_core_stub.v D:/my/Vivado/PID_Controller/PID_Controller.ip_user_files/ip/adder_core
  }
}

if {[file isdir D:/my/Vivado/PID_Controller/PID_Controller.ip_user_files/ip/adder_core]} {
  catch { 
    file copy -force D:/my/Vivado/PID_Controller/PID_Controller.srcs/sources_1/ip/adder_core/adder_core_stub.vhdl D:/my/Vivado/PID_Controller/PID_Controller.ip_user_files/ip/adder_core
  }
}

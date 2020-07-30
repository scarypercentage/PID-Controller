# 
# Synthesis run script generated by Vivado
# 

set_param general.maxThreads 8
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
read_ip -quiet d:/my/Vivado/PID_Controller/PID_Controller.srcs/sources_1/ip/fixed_to_float/fixed_to_float.xci
set_property is_locked true [get_files d:/my/Vivado/PID_Controller/PID_Controller.srcs/sources_1/ip/fixed_to_float/fixed_to_float.xci]

foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]

set cached_ip [config_ip_cache -export -no_bom -use_project_ipc -dir D:/my/Vivado/PID_Controller/PID_Controller.runs/fixed_to_float_synth_1 -new_name fixed_to_float -ip [get_ips fixed_to_float]]

if { $cached_ip eq {} } {

synth_design -top fixed_to_float -part xc7vx485tffg1761-2 -mode out_of_context

#---------------------------------------------------------
# Generate Checkpoint/Stub/Simulation Files For IP Cache
#---------------------------------------------------------
catch {
 write_checkpoint -force -noxdef -rename_prefix fixed_to_float_ fixed_to_float.dcp

 set ipCachedFiles {}
 write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ fixed_to_float_stub.v
 lappend ipCachedFiles fixed_to_float_stub.v

 write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ fixed_to_float_stub.vhdl
 lappend ipCachedFiles fixed_to_float_stub.vhdl

 write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ fixed_to_float_sim_netlist.v
 lappend ipCachedFiles fixed_to_float_sim_netlist.v

 write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ fixed_to_float_sim_netlist.vhdl
 lappend ipCachedFiles fixed_to_float_sim_netlist.vhdl

 config_ip_cache -add -dcp fixed_to_float.dcp -move_files $ipCachedFiles -use_project_ipc -ip [get_ips fixed_to_float]
}

rename_ref -prefix_all fixed_to_float_

write_checkpoint -force -noxdef fixed_to_float.dcp

catch { report_utilization -file fixed_to_float_utilization_synth.rpt -pb fixed_to_float_utilization_synth.pb }

if { [catch {
  file copy -force D:/my/Vivado/PID_Controller/PID_Controller.runs/fixed_to_float_synth_1/fixed_to_float.dcp d:/my/Vivado/PID_Controller/PID_Controller.srcs/sources_1/ip/fixed_to_float/fixed_to_float.dcp
} _RESULT ] } { 
  send_msg_id runtcl-3 error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}

if { [catch {
  write_verilog -force -mode synth_stub d:/my/Vivado/PID_Controller/PID_Controller.srcs/sources_1/ip/fixed_to_float/fixed_to_float_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode synth_stub d:/my/Vivado/PID_Controller/PID_Controller.srcs/sources_1/ip/fixed_to_float/fixed_to_float_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_verilog -force -mode funcsim d:/my/Vivado/PID_Controller/PID_Controller.srcs/sources_1/ip/fixed_to_float/fixed_to_float_sim_netlist.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode funcsim d:/my/Vivado/PID_Controller/PID_Controller.srcs/sources_1/ip/fixed_to_float/fixed_to_float_sim_netlist.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}


} else {


if { [catch {
  file copy -force D:/my/Vivado/PID_Controller/PID_Controller.runs/fixed_to_float_synth_1/fixed_to_float.dcp d:/my/Vivado/PID_Controller/PID_Controller.srcs/sources_1/ip/fixed_to_float/fixed_to_float.dcp
} _RESULT ] } { 
  send_msg_id runtcl-3 error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}

if { [catch {
  file rename -force D:/my/Vivado/PID_Controller/PID_Controller.runs/fixed_to_float_synth_1/fixed_to_float_stub.v d:/my/Vivado/PID_Controller/PID_Controller.srcs/sources_1/ip/fixed_to_float/fixed_to_float_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  file rename -force D:/my/Vivado/PID_Controller/PID_Controller.runs/fixed_to_float_synth_1/fixed_to_float_stub.vhdl d:/my/Vivado/PID_Controller/PID_Controller.srcs/sources_1/ip/fixed_to_float/fixed_to_float_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  file rename -force D:/my/Vivado/PID_Controller/PID_Controller.runs/fixed_to_float_synth_1/fixed_to_float_sim_netlist.v d:/my/Vivado/PID_Controller/PID_Controller.srcs/sources_1/ip/fixed_to_float/fixed_to_float_sim_netlist.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if { [catch {
  file rename -force D:/my/Vivado/PID_Controller/PID_Controller.runs/fixed_to_float_synth_1/fixed_to_float_sim_netlist.vhdl d:/my/Vivado/PID_Controller/PID_Controller.srcs/sources_1/ip/fixed_to_float/fixed_to_float_sim_netlist.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

}; # end if cached_ip 

if {[file isdir D:/my/Vivado/PID_Controller/PID_Controller.ip_user_files/ip/fixed_to_float]} {
  catch { 
    file copy -force d:/my/Vivado/PID_Controller/PID_Controller.srcs/sources_1/ip/fixed_to_float/fixed_to_float_stub.v D:/my/Vivado/PID_Controller/PID_Controller.ip_user_files/ip/fixed_to_float
  }
}

if {[file isdir D:/my/Vivado/PID_Controller/PID_Controller.ip_user_files/ip/fixed_to_float]} {
  catch { 
    file copy -force d:/my/Vivado/PID_Controller/PID_Controller.srcs/sources_1/ip/fixed_to_float/fixed_to_float_stub.vhdl D:/my/Vivado/PID_Controller/PID_Controller.ip_user_files/ip/fixed_to_float
  }
}
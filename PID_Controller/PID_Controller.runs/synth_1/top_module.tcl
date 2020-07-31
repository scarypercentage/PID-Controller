# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config -id {Synth 8-256} -limit 10000
set_msg_config -id {Synth 8-638} -limit 10000
create_project -in_memory -part xc7vx485tffg1761-2

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir {C:/Users/90534/Desktop/sum proj/PID_Controller/PID_Controller.cache/wt} [current_project]
set_property parent.project_path {C:/Users/90534/Desktop/sum proj/PID_Controller/PID_Controller.xpr} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part xilinx.com:vc707:part0:1.3 [current_project]
set_property ip_output_repo {c:/Users/90534/Desktop/sum proj/PID_Controller/PID_Controller.cache/ip} [current_project]
set_property ip_cache_permissions {read write} [current_project]
add_files -quiet {{C:/Users/90534/Desktop/sum proj/PID_Controller/PID_Controller.srcs/sources_1/ip/fixed_to_float/fixed_to_float.dcp}}
set_property used_in_implementation false [get_files {{C:/Users/90534/Desktop/sum proj/PID_Controller/PID_Controller.srcs/sources_1/ip/fixed_to_float/fixed_to_float.dcp}}]
add_files -quiet {{C:/Users/90534/Desktop/sum proj/PID_Controller/PID_Controller.srcs/sources_1/ip/multiplier_core/multiplier_core.dcp}}
set_property used_in_implementation false [get_files {{C:/Users/90534/Desktop/sum proj/PID_Controller/PID_Controller.srcs/sources_1/ip/multiplier_core/multiplier_core.dcp}}]
add_files -quiet {{C:/Users/90534/Desktop/sum proj/PID_Controller/PID_Controller.srcs/sources_1/ip/adder_core/adder_core.dcp}}
set_property used_in_implementation false [get_files {{C:/Users/90534/Desktop/sum proj/PID_Controller/PID_Controller.srcs/sources_1/ip/adder_core/adder_core.dcp}}]
add_files -quiet {{C:/Users/90534/Desktop/sum proj/PID_Controller/PID_Controller.srcs/sources_1/ip/accumulator_core/accumulator_core.dcp}}
set_property used_in_implementation false [get_files {{C:/Users/90534/Desktop/sum proj/PID_Controller/PID_Controller.srcs/sources_1/ip/accumulator_core/accumulator_core.dcp}}]
add_files -quiet {{C:/Users/90534/Desktop/sum proj/PID_Controller/PID_Controller.srcs/sources_1/ip/float_to_fixed/float_to_fixed.dcp}}
set_property used_in_implementation false [get_files {{C:/Users/90534/Desktop/sum proj/PID_Controller/PID_Controller.srcs/sources_1/ip/float_to_fixed/float_to_fixed.dcp}}]
add_files -quiet {{C:/Users/90534/Desktop/sum proj/PID_Controller/PID_Controller.srcs/sources_1/ip/subtractor_core/subtractor_core.dcp}}
set_property used_in_implementation false [get_files {{C:/Users/90534/Desktop/sum proj/PID_Controller/PID_Controller.srcs/sources_1/ip/subtractor_core/subtractor_core.dcp}}]
read_vhdl -library xil_defaultlib {
  {C:/Users/90534/Desktop/sum proj/PID_Controller/PID_Controller.srcs/sources_1/imports/new/proportional.vhd}
  {C:/Users/90534/Desktop/sum proj/PID_Controller/PID_Controller.srcs/sources_1/imports/new/PID_to_output.vhd}
  {C:/Users/90534/Desktop/sum proj/PID_Controller/PID_Controller.srcs/sources_1/imports/new/integral.vhd}
  {C:/Users/90534/Desktop/sum proj/PID_Controller/PID_Controller.srcs/sources_1/imports/new/derivative.vhd}
  {C:/Users/90534/Desktop/sum proj/PID_Controller/PID_Controller.srcs/sources_1/imports/new/top_module.vhd}
}
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}

synth_design -top top_module -part xc7vx485tffg1761-2


write_checkpoint -force -noxdef top_module.dcp

catch { report_utilization -file top_module_utilization_synth.rpt -pb top_module_utilization_synth.pb }

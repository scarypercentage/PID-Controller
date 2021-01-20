@echo off
set xv_path=D:\\Xilinx\\Vivado\\2016.4\\bin
call %xv_path%/xsim top_module_tb_behav -key {Behavioral:sim_1:Functional:top_module_tb} -tclbatch top_module_tb.tcl -view C:/Users/ahmet/Desktop/test_code/PID_tb_behav.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
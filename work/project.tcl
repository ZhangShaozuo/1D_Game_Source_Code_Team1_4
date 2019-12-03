set projDir "C:/Users/liyiw/Desktop/HARDMODEv2/1D game mojo(hard mode)v4/work/planAhead"
set projName "ALU16"
set topName top
set device xc6slx9-2tqg144
if {[file exists "$projDir/$projName"]} { file delete -force "$projDir/$projName" }
create_project $projName "$projDir/$projName" -part $device
set_property design_mode RTL [get_filesets sources_1]
set verilogSources [list "C:/Users/liyiw/Desktop/HARDMODEv2/1D game mojo(hard mode)v4/work/verilog/mojo_top_0.v" "C:/Users/liyiw/Desktop/HARDMODEv2/1D game mojo(hard mode)v4/work/verilog/game_miniBeta_1.v" "C:/Users/liyiw/Desktop/HARDMODEv2/1D game mojo(hard mode)v4/work/verilog/display_2.v" "C:/Users/liyiw/Desktop/HARDMODEv2/1D game mojo(hard mode)v4/work/verilog/display_2.v" "C:/Users/liyiw/Desktop/HARDMODEv2/1D game mojo(hard mode)v4/work/verilog/turn_util_4.v" "C:/Users/liyiw/Desktop/HARDMODEv2/1D game mojo(hard mode)v4/work/verilog/mode_util_5.v" "C:/Users/liyiw/Desktop/HARDMODEv2/1D game mojo(hard mode)v4/work/verilog/reset_conditioner_6.v" "C:/Users/liyiw/Desktop/HARDMODEv2/1D game mojo(hard mode)v4/work/verilog/edge_detector_7.v" "C:/Users/liyiw/Desktop/HARDMODEv2/1D game mojo(hard mode)v4/work/verilog/edge_detector_7.v" "C:/Users/liyiw/Desktop/HARDMODEv2/1D game mojo(hard mode)v4/work/verilog/edge_detector_7.v" "C:/Users/liyiw/Desktop/HARDMODEv2/1D game mojo(hard mode)v4/work/verilog/edge_detector_7.v" "C:/Users/liyiw/Desktop/HARDMODEv2/1D game mojo(hard mode)v4/work/verilog/edge_detector_7.v" "C:/Users/liyiw/Desktop/HARDMODEv2/1D game mojo(hard mode)v4/work/verilog/button_conditioner_12.v" "C:/Users/liyiw/Desktop/HARDMODEv2/1D game mojo(hard mode)v4/work/verilog/button_conditioner_12.v" "C:/Users/liyiw/Desktop/HARDMODEv2/1D game mojo(hard mode)v4/work/verilog/button_conditioner_12.v" "C:/Users/liyiw/Desktop/HARDMODEv2/1D game mojo(hard mode)v4/work/verilog/button_conditioner_12.v" "C:/Users/liyiw/Desktop/HARDMODEv2/1D game mojo(hard mode)v4/work/verilog/button_conditioner_12.v" "C:/Users/liyiw/Desktop/HARDMODEv2/1D game mojo(hard mode)v4/work/verilog/alu16_17.v" "C:/Users/liyiw/Desktop/HARDMODEv2/1D game mojo(hard mode)v4/work/verilog/game_CU_18.v" "C:/Users/liyiw/Desktop/HARDMODEv2/1D game mojo(hard mode)v4/work/verilog/game_miniRegfiles_19.v" "C:/Users/liyiw/Desktop/HARDMODEv2/1D game mojo(hard mode)v4/work/verilog/pipeline_20.v" "C:/Users/liyiw/Desktop/HARDMODEv2/1D game mojo(hard mode)v4/work/verilog/pipeline_20.v" "C:/Users/liyiw/Desktop/HARDMODEv2/1D game mojo(hard mode)v4/work/verilog/pipeline_20.v" "C:/Users/liyiw/Desktop/HARDMODEv2/1D game mojo(hard mode)v4/work/verilog/pipeline_20.v" "C:/Users/liyiw/Desktop/HARDMODEv2/1D game mojo(hard mode)v4/work/verilog/pipeline_20.v" "C:/Users/liyiw/Desktop/HARDMODEv2/1D game mojo(hard mode)v4/work/verilog/shift16_25.v" "C:/Users/liyiw/Desktop/HARDMODEv2/1D game mojo(hard mode)v4/work/verilog/adder16_26.v" "C:/Users/liyiw/Desktop/HARDMODEv2/1D game mojo(hard mode)v4/work/verilog/boole16_27.v" "C:/Users/liyiw/Desktop/HARDMODEv2/1D game mojo(hard mode)v4/work/verilog/compare16_28.v"]
import_files -fileset [get_filesets sources_1] -force -norecurse $verilogSources
set ucfSources [list "C:/Users/liyiw/Desktop/HARDMODEv2/1D\ game\ mojo(hard\ mode)v4/constraint/custom.ucf" "C:/Program\ Files/Mojo\ IDE/library/components/mojo.ucf"]
import_files -fileset [get_filesets constrs_1] -force -norecurse $ucfSources
set_property -name {steps.bitgen.args.More Options} -value {-g Binary:Yes -g Compress} -objects [get_runs impl_1]
set_property steps.map.args.mt on [get_runs impl_1]
set_property steps.map.args.pr b [get_runs impl_1]
set_property steps.par.args.mt on [get_runs impl_1]
update_compile_order -fileset sources_1
launch_runs -runs synth_1
wait_on_run synth_1
launch_runs -runs impl_1
wait_on_run impl_1
launch_runs impl_1 -to_step Bitgen
wait_on_run impl_1

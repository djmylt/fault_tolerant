read netlist ./verilog_simulation_models/*.v
read netlist  /home/abc/Desktop/Lab2/full_add_syn.v
run build_model fulladder
return
write drc_file ./test1.spf -replace
run drc ./test1.spf 
set faults -model stuck
add faults -all
set atpg -abort 300 -merge high -coverage 100 -DEcision NORandom  -norandom_fille
run atpg
#eport patterns -all -typehttp://toolbox.xilinx.com/docsan/xilinx4/data/docs/sim/vtex9.html
write patterns ./c171.stil -replace -format stil



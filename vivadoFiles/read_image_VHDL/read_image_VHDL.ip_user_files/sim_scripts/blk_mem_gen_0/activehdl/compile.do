vlib work
vlib activehdl

vlib activehdl/xpm
vlib activehdl/xil_defaultlib

vmap xpm activehdl/xpm
vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xpm  -sv2k12 \
"D:/XilinxDONOTPUSH/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"D:/XilinxDONOTPUSH/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../read_image_VHDL.gen/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.vhdl" \


vlog -work xil_defaultlib \
"glbl.v"


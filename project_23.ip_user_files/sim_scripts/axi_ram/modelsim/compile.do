vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/blk_mem_gen_v8_4_6
vlib modelsim_lib/msim/xil_defaultlib

vmap xpm modelsim_lib/msim/xpm
vmap blk_mem_gen_v8_4_6 modelsim_lib/msim/blk_mem_gen_v8_4_6
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xpm  -incr -mfcu  -sv \
"F:/MyVivado/Vivado/2023.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"F:/MyVivado/Vivado/2023.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93  \
"F:/MyVivado/Vivado/2023.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work blk_mem_gen_v8_4_6  -incr -mfcu  \
"../../../ipstatic/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -incr -mfcu  \
"../../../../../exp23/exp23/mycpu_env/soc_verify/soc_axi/rtl/xilinx_ip/axi_ram/sim/axi_ram.v" \

vlog -work xil_defaultlib \
"glbl.v"

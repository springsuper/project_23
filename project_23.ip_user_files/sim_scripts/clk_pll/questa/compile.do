vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xpm
vlib questa_lib/msim/xil_defaultlib

vmap xpm questa_lib/msim/xpm
vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xpm  -incr -mfcu  -sv "+incdir+../../../ipstatic" \
"F:/MyVivado/Vivado/2023.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"F:/MyVivado/Vivado/2023.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93  \
"F:/MyVivado/Vivado/2023.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../ipstatic" \
"../../../../../exp23/exp23/mycpu_env/soc_verify/soc_axi/rtl/xilinx_ip/clk_pll/clk_pll_clk_wiz.v" \
"../../../../../exp23/exp23/mycpu_env/soc_verify/soc_axi/rtl/xilinx_ip/clk_pll/clk_pll.v" \

vlog -work xil_defaultlib \
"glbl.v"

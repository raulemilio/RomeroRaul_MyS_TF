vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/xpm
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_vip_v1_1_4
vlib questa_lib/msim/processing_system7_vip_v1_0_6
vlib questa_lib/msim/generic_baseblocks_v2_1_0
vlib questa_lib/msim/fifo_generator_v13_2_3
vlib questa_lib/msim/axi_data_fifo_v2_1_17
vlib questa_lib/msim/axi_register_slice_v2_1_18
vlib questa_lib/msim/axi_protocol_converter_v2_1_18
vlib questa_lib/msim/lib_cdc_v1_0_2
vlib questa_lib/msim/proc_sys_reset_v5_0_13

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap xpm questa_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_4 questa_lib/msim/axi_vip_v1_1_4
vmap processing_system7_vip_v1_0_6 questa_lib/msim/processing_system7_vip_v1_0_6
vmap generic_baseblocks_v2_1_0 questa_lib/msim/generic_baseblocks_v2_1_0
vmap fifo_generator_v13_2_3 questa_lib/msim/fifo_generator_v13_2_3
vmap axi_data_fifo_v2_1_17 questa_lib/msim/axi_data_fifo_v2_1_17
vmap axi_register_slice_v2_1_18 questa_lib/msim/axi_register_slice_v2_1_18
vmap axi_protocol_converter_v2_1_18 questa_lib/msim/axi_protocol_converter_v2_1_18
vmap lib_cdc_v1_0_2 questa_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 questa_lib/msim/proc_sys_reset_v5_0_13

vlog -work xilinx_vip -64 -sv -L axi_vip_v1_1_4 -L processing_system7_vip_v1_0_6 -L xilinx_vip "+incdir+/home/rome/opt/xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"/home/rome/opt/xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/home/rome/opt/xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/home/rome/opt/xilinx/Vivado/2018.3/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/home/rome/opt/xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/home/rome/opt/xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/home/rome/opt/xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/home/rome/opt/xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/home/rome/opt/xilinx/Vivado/2018.3/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/home/rome/opt/xilinx/Vivado/2018.3/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xil_defaultlib -64 -sv -L axi_vip_v1_1_4 -L processing_system7_vip_v1_0_6 -L xilinx_vip "+incdir+../../../../contador.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../contador.srcs/sources_1/bd/system/ipshared/70cf/hdl" "+incdir+../../../../contador.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+../../../../contador.srcs/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../contador.srcs/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../contador.srcs/sources_1/bd/system/ipshared/46fd/hdl" "+incdir+/home/rome/opt/xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"/home/rome/opt/xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/home/rome/opt/xilinx/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"/home/rome/opt/xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0 -64 "+incdir+../../../../contador.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../contador.srcs/sources_1/bd/system/ipshared/70cf/hdl" "+incdir+../../../../contador.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+../../../../contador.srcs/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../contador.srcs/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../contador.srcs/sources_1/bd/system/ipshared/46fd/hdl" "+incdir+/home/rome/opt/xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../contador.srcs/sources_1/bd/system/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_4 -64 -sv -L axi_vip_v1_1_4 -L processing_system7_vip_v1_0_6 -L xilinx_vip "+incdir+../../../../contador.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../contador.srcs/sources_1/bd/system/ipshared/70cf/hdl" "+incdir+../../../../contador.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+../../../../contador.srcs/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../contador.srcs/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../contador.srcs/sources_1/bd/system/ipshared/46fd/hdl" "+incdir+/home/rome/opt/xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../contador.srcs/sources_1/bd/system/ipshared/98af/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_6 -64 -sv -L axi_vip_v1_1_4 -L processing_system7_vip_v1_0_6 -L xilinx_vip "+incdir+../../../../contador.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../contador.srcs/sources_1/bd/system/ipshared/70cf/hdl" "+incdir+../../../../contador.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+../../../../contador.srcs/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../contador.srcs/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../contador.srcs/sources_1/bd/system/ipshared/46fd/hdl" "+incdir+/home/rome/opt/xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../contador.srcs/sources_1/bd/system/ipshared/70cf/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 "+incdir+../../../../contador.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../contador.srcs/sources_1/bd/system/ipshared/70cf/hdl" "+incdir+../../../../contador.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+../../../../contador.srcs/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../contador.srcs/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../contador.srcs/sources_1/bd/system/ipshared/46fd/hdl" "+incdir+/home/rome/opt/xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/system/ip/system_processing_system7_0_0/sim/system_processing_system7_0_0.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/system/ipshared/08f9/src/and_bit_component.vhd" \
"../../../bd/system/ipshared/08f9/src/bcd_up_down_counter.vhd" \
"../../../bd/system/ipshared/08f9/src/caracter_uart_detector.vhd" \
"../../../bd/system/ipshared/08f9/src/counter.vhd" \
"../../../bd/system/ipshared/08f9/hdl/counter_ip_v1_0_S_AXI.vhd" \
"../../../bd/system/ipshared/08f9/src/enable_generator.vhd" \
"../../../bd/system/ipshared/08f9/src/meta_harden.vhd" \
"../../../bd/system/ipshared/08f9/hdl/counter_ip_v1_0.vhd" \
"../../../bd/system/ip/system_counter_ip_0_0/sim/system_counter_ip_0_0.vhd" \

vlog -work generic_baseblocks_v2_1_0 -64 "+incdir+../../../../contador.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../contador.srcs/sources_1/bd/system/ipshared/70cf/hdl" "+incdir+../../../../contador.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+../../../../contador.srcs/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../contador.srcs/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../contador.srcs/sources_1/bd/system/ipshared/46fd/hdl" "+incdir+/home/rome/opt/xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../contador.srcs/sources_1/bd/system/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_3 -64 "+incdir+../../../../contador.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../contador.srcs/sources_1/bd/system/ipshared/70cf/hdl" "+incdir+../../../../contador.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+../../../../contador.srcs/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../contador.srcs/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../contador.srcs/sources_1/bd/system/ipshared/46fd/hdl" "+incdir+/home/rome/opt/xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../contador.srcs/sources_1/bd/system/ipshared/64f4/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_3 -64 -93 \
"../../../../contador.srcs/sources_1/bd/system/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_3 -64 "+incdir+../../../../contador.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../contador.srcs/sources_1/bd/system/ipshared/70cf/hdl" "+incdir+../../../../contador.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+../../../../contador.srcs/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../contador.srcs/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../contador.srcs/sources_1/bd/system/ipshared/46fd/hdl" "+incdir+/home/rome/opt/xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../contador.srcs/sources_1/bd/system/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_17 -64 "+incdir+../../../../contador.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../contador.srcs/sources_1/bd/system/ipshared/70cf/hdl" "+incdir+../../../../contador.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+../../../../contador.srcs/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../contador.srcs/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../contador.srcs/sources_1/bd/system/ipshared/46fd/hdl" "+incdir+/home/rome/opt/xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../contador.srcs/sources_1/bd/system/ipshared/c4fd/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_18 -64 "+incdir+../../../../contador.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../contador.srcs/sources_1/bd/system/ipshared/70cf/hdl" "+incdir+../../../../contador.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+../../../../contador.srcs/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../contador.srcs/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../contador.srcs/sources_1/bd/system/ipshared/46fd/hdl" "+incdir+/home/rome/opt/xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../contador.srcs/sources_1/bd/system/ipshared/cc23/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_protocol_converter_v2_1_18 -64 "+incdir+../../../../contador.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../contador.srcs/sources_1/bd/system/ipshared/70cf/hdl" "+incdir+../../../../contador.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+../../../../contador.srcs/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../contador.srcs/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../contador.srcs/sources_1/bd/system/ipshared/46fd/hdl" "+incdir+/home/rome/opt/xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../contador.srcs/sources_1/bd/system/ipshared/7a04/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../contador.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../contador.srcs/sources_1/bd/system/ipshared/70cf/hdl" "+incdir+../../../../contador.srcs/sources_1/bd/system/ip/system_processing_system7_0_0" "+incdir+../../../../contador.srcs/sources_1/bd/system/ipshared/1b7e/hdl/verilog" "+incdir+../../../../contador.srcs/sources_1/bd/system/ipshared/122e/hdl/verilog" "+incdir+../../../../contador.srcs/sources_1/bd/system/ipshared/46fd/hdl" "+incdir+/home/rome/opt/xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/system/ip/system_auto_pc_0/sim/system_auto_pc_0.v" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../contador.srcs/sources_1/bd/system/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -64 -93 \
"../../../../contador.srcs/sources_1/bd/system/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/system/ip/system_rst_ps7_0_100M_0/sim/system_rst_ps7_0_100M_0.vhd" \
"../../../bd/system/ip/system_vio_0_0/sim/system_vio_0_0.vhd" \
"../../../bd/system/sim/system.vhd" \

vlog -work xil_defaultlib \
"glbl.v"


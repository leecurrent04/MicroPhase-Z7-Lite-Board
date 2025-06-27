transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib activehdl/xilinx_vip
vlib activehdl/xpm
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_vip_v1_1_19
vlib activehdl/processing_system7_vip_v1_0_21
vlib activehdl/xil_defaultlib
vlib activehdl/blk_mem_gen_v8_4_9
vlib activehdl/generic_baseblocks_v2_1_2
vlib activehdl/fifo_generator_v13_2_11
vlib activehdl/axi_data_fifo_v2_1_32
vlib activehdl/axi_register_slice_v2_1_33
vlib activehdl/axi_protocol_converter_v2_1_33
vlib activehdl/axi_clock_converter_v2_1_32
vlib activehdl/axi_dwidth_converter_v2_1_33
vlib activehdl/lib_cdc_v1_0_3
vlib activehdl/proc_sys_reset_v5_0_16
vlib activehdl/xlconstant_v1_1_9
vlib activehdl/smartconnect_v1_0

vmap xilinx_vip activehdl/xilinx_vip
vmap xpm activehdl/xpm
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_19 activehdl/axi_vip_v1_1_19
vmap processing_system7_vip_v1_0_21 activehdl/processing_system7_vip_v1_0_21
vmap xil_defaultlib activehdl/xil_defaultlib
vmap blk_mem_gen_v8_4_9 activehdl/blk_mem_gen_v8_4_9
vmap generic_baseblocks_v2_1_2 activehdl/generic_baseblocks_v2_1_2
vmap fifo_generator_v13_2_11 activehdl/fifo_generator_v13_2_11
vmap axi_data_fifo_v2_1_32 activehdl/axi_data_fifo_v2_1_32
vmap axi_register_slice_v2_1_33 activehdl/axi_register_slice_v2_1_33
vmap axi_protocol_converter_v2_1_33 activehdl/axi_protocol_converter_v2_1_33
vmap axi_clock_converter_v2_1_32 activehdl/axi_clock_converter_v2_1_32
vmap axi_dwidth_converter_v2_1_33 activehdl/axi_dwidth_converter_v2_1_33
vmap lib_cdc_v1_0_3 activehdl/lib_cdc_v1_0_3
vmap proc_sys_reset_v5_0_16 activehdl/proc_sys_reset_v5_0_16
vmap xlconstant_v1_1_9 activehdl/xlconstant_v1_1_9
vmap smartconnect_v1_0 activehdl/smartconnect_v1_0

vlog -work xilinx_vip  -sv2k12 "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l blk_mem_gen_v8_4_9 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_11 -l axi_data_fifo_v2_1_32 -l axi_register_slice_v2_1_33 -l axi_protocol_converter_v2_1_33 -l axi_clock_converter_v2_1_32 -l axi_dwidth_converter_v2_1_33 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/86fe/hdl" "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/0127/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l blk_mem_gen_v8_4_9 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_11 -l axi_data_fifo_v2_1_32 -l axi_register_slice_v2_1_33 -l axi_protocol_converter_v2_1_33 -l axi_clock_converter_v2_1_32 -l axi_dwidth_converter_v2_1_33 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 \
"C:/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  \
"C:/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/86fe/hdl" "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/0127/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l blk_mem_gen_v8_4_9 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_11 -l axi_data_fifo_v2_1_32 -l axi_register_slice_v2_1_33 -l axi_protocol_converter_v2_1_33 -l axi_clock_converter_v2_1_32 -l axi_dwidth_converter_v2_1_33 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 \
"../../../../edt_zc702.gen/sources_1/bd/system/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_19  -sv2k12 "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/86fe/hdl" "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/0127/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l blk_mem_gen_v8_4_9 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_11 -l axi_data_fifo_v2_1_32 -l axi_register_slice_v2_1_33 -l axi_protocol_converter_v2_1_33 -l axi_clock_converter_v2_1_32 -l axi_dwidth_converter_v2_1_33 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 \
"../../../../edt_zc702.gen/sources_1/bd/system/ipshared/8c45/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_21  -sv2k12 "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/86fe/hdl" "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/0127/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l blk_mem_gen_v8_4_9 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_11 -l axi_data_fifo_v2_1_32 -l axi_register_slice_v2_1_33 -l axi_protocol_converter_v2_1_33 -l axi_clock_converter_v2_1_32 -l axi_dwidth_converter_v2_1_33 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 \
"../../../../edt_zc702.gen/sources_1/bd/system/ipshared/86fe/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/86fe/hdl" "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/0127/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l blk_mem_gen_v8_4_9 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_11 -l axi_data_fifo_v2_1_32 -l axi_register_slice_v2_1_33 -l axi_protocol_converter_v2_1_33 -l axi_clock_converter_v2_1_32 -l axi_dwidth_converter_v2_1_33 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 \
"../../../bd/system/ip/system_processing_system7_0_0/sim/system_processing_system7_0_0.v" \
"../../../../edt_zc702.gen/sources_1/bd/system/ipshared/c4a1/hdl/verilog/axi_master_pl.v" \
"../../../../edt_zc702.gen/sources_1/bd/system/ipshared/c4a1/hdl/verilog/axi_master_pl_AXILiteS_s_axi.v" \
"../../../../edt_zc702.gen/sources_1/bd/system/ipshared/c4a1/hdl/verilog/axi_master_pl_a_m_axi.v" \
"../../../bd/system/ip/system_axi_master_pl_0_0/sim/system_axi_master_pl_0_0.v" \

vlog -work blk_mem_gen_v8_4_9  -v2k5 "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/86fe/hdl" "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/0127/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l blk_mem_gen_v8_4_9 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_11 -l axi_data_fifo_v2_1_32 -l axi_register_slice_v2_1_33 -l axi_protocol_converter_v2_1_33 -l axi_clock_converter_v2_1_32 -l axi_dwidth_converter_v2_1_33 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 \
"../../../../edt_zc702.gen/sources_1/bd/system/ipshared/5ec1/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/86fe/hdl" "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/0127/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l blk_mem_gen_v8_4_9 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_11 -l axi_data_fifo_v2_1_32 -l axi_register_slice_v2_1_33 -l axi_protocol_converter_v2_1_33 -l axi_clock_converter_v2_1_32 -l axi_dwidth_converter_v2_1_33 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 \
"../../../bd/system/ip/system_axi_master_pl_0_bram_0/sim/system_axi_master_pl_0_bram_0.v" \

vlog -work generic_baseblocks_v2_1_2  -v2k5 "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/86fe/hdl" "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/0127/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l blk_mem_gen_v8_4_9 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_11 -l axi_data_fifo_v2_1_32 -l axi_register_slice_v2_1_33 -l axi_protocol_converter_v2_1_33 -l axi_clock_converter_v2_1_32 -l axi_dwidth_converter_v2_1_33 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 \
"../../../../edt_zc702.gen/sources_1/bd/system/ipshared/0c28/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_11  -v2k5 "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/86fe/hdl" "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/0127/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l blk_mem_gen_v8_4_9 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_11 -l axi_data_fifo_v2_1_32 -l axi_register_slice_v2_1_33 -l axi_protocol_converter_v2_1_33 -l axi_clock_converter_v2_1_32 -l axi_dwidth_converter_v2_1_33 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 \
"../../../../edt_zc702.gen/sources_1/bd/system/ipshared/6080/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_11 -93  \
"../../../../edt_zc702.gen/sources_1/bd/system/ipshared/6080/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_11  -v2k5 "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/86fe/hdl" "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/0127/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l blk_mem_gen_v8_4_9 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_11 -l axi_data_fifo_v2_1_32 -l axi_register_slice_v2_1_33 -l axi_protocol_converter_v2_1_33 -l axi_clock_converter_v2_1_32 -l axi_dwidth_converter_v2_1_33 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 \
"../../../../edt_zc702.gen/sources_1/bd/system/ipshared/6080/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_32  -v2k5 "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/86fe/hdl" "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/0127/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l blk_mem_gen_v8_4_9 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_11 -l axi_data_fifo_v2_1_32 -l axi_register_slice_v2_1_33 -l axi_protocol_converter_v2_1_33 -l axi_clock_converter_v2_1_32 -l axi_dwidth_converter_v2_1_33 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 \
"../../../../edt_zc702.gen/sources_1/bd/system/ipshared/65ce/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_33  -v2k5 "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/86fe/hdl" "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/0127/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l blk_mem_gen_v8_4_9 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_11 -l axi_data_fifo_v2_1_32 -l axi_register_slice_v2_1_33 -l axi_protocol_converter_v2_1_33 -l axi_clock_converter_v2_1_32 -l axi_dwidth_converter_v2_1_33 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 \
"../../../../edt_zc702.gen/sources_1/bd/system/ipshared/3ee4/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_protocol_converter_v2_1_33  -v2k5 "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/86fe/hdl" "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/0127/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l blk_mem_gen_v8_4_9 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_11 -l axi_data_fifo_v2_1_32 -l axi_register_slice_v2_1_33 -l axi_protocol_converter_v2_1_33 -l axi_clock_converter_v2_1_32 -l axi_dwidth_converter_v2_1_33 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 \
"../../../../edt_zc702.gen/sources_1/bd/system/ipshared/27ae/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/86fe/hdl" "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/0127/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l blk_mem_gen_v8_4_9 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_11 -l axi_data_fifo_v2_1_32 -l axi_register_slice_v2_1_33 -l axi_protocol_converter_v2_1_33 -l axi_clock_converter_v2_1_32 -l axi_dwidth_converter_v2_1_33 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 \
"../../../bd/system/ip/system_axi_mem_intercon_imp_auto_pc_0/sim/system_axi_mem_intercon_imp_auto_pc_0.v" \

vlog -work axi_clock_converter_v2_1_32  -v2k5 "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/86fe/hdl" "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/0127/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l blk_mem_gen_v8_4_9 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_11 -l axi_data_fifo_v2_1_32 -l axi_register_slice_v2_1_33 -l axi_protocol_converter_v2_1_33 -l axi_clock_converter_v2_1_32 -l axi_dwidth_converter_v2_1_33 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 \
"../../../../edt_zc702.gen/sources_1/bd/system/ipshared/a4e8/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work axi_dwidth_converter_v2_1_33  -v2k5 "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/86fe/hdl" "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/0127/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l blk_mem_gen_v8_4_9 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_11 -l axi_data_fifo_v2_1_32 -l axi_register_slice_v2_1_33 -l axi_protocol_converter_v2_1_33 -l axi_clock_converter_v2_1_32 -l axi_dwidth_converter_v2_1_33 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 \
"../../../../edt_zc702.gen/sources_1/bd/system/ipshared/d794/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/86fe/hdl" "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/0127/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l blk_mem_gen_v8_4_9 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_11 -l axi_data_fifo_v2_1_32 -l axi_register_slice_v2_1_33 -l axi_protocol_converter_v2_1_33 -l axi_clock_converter_v2_1_32 -l axi_dwidth_converter_v2_1_33 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 \
"../../../bd/system/ip/system_axi_mem_intercon_imp_auto_us_0/sim/system_axi_mem_intercon_imp_auto_us_0.v" \

vcom -work lib_cdc_v1_0_3 -93  \
"../../../../edt_zc702.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_16 -93  \
"../../../../edt_zc702.gen/sources_1/bd/system/ipshared/0831/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/system/ip/system_rst_ps7_0_100M_0/sim/system_rst_ps7_0_100M_0.vhd" \

vlog -work xlconstant_v1_1_9  -v2k5 "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/86fe/hdl" "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/0127/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l blk_mem_gen_v8_4_9 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_11 -l axi_data_fifo_v2_1_32 -l axi_register_slice_v2_1_33 -l axi_protocol_converter_v2_1_33 -l axi_clock_converter_v2_1_32 -l axi_dwidth_converter_v2_1_33 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 \
"../../../../edt_zc702.gen/sources_1/bd/system/ipshared/e2d2/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/86fe/hdl" "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/0127/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l blk_mem_gen_v8_4_9 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_11 -l axi_data_fifo_v2_1_32 -l axi_register_slice_v2_1_33 -l axi_protocol_converter_v2_1_33 -l axi_clock_converter_v2_1_32 -l axi_dwidth_converter_v2_1_33 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 \
"../../../bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_0/sim/bd_919a_one_0.v" \

vcom -work xil_defaultlib -93  \
"../../../bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_1/sim/bd_919a_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/86fe/hdl" "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/0127/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l blk_mem_gen_v8_4_9 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_11 -l axi_data_fifo_v2_1_32 -l axi_register_slice_v2_1_33 -l axi_protocol_converter_v2_1_33 -l axi_clock_converter_v2_1_32 -l axi_dwidth_converter_v2_1_33 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 \
"../../../../edt_zc702.gen/sources_1/bd/system/ipshared/f0b6/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../edt_zc702.gen/sources_1/bd/system/ipshared/3718/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/86fe/hdl" "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/0127/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l blk_mem_gen_v8_4_9 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_11 -l axi_data_fifo_v2_1_32 -l axi_register_slice_v2_1_33 -l axi_protocol_converter_v2_1_33 -l axi_clock_converter_v2_1_32 -l axi_dwidth_converter_v2_1_33 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 \
"../../../bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_2/sim/bd_919a_arinsw_0.sv" \
"../../../bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_3/sim/bd_919a_rinsw_0.sv" \
"../../../bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_4/sim/bd_919a_awinsw_0.sv" \
"../../../bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_5/sim/bd_919a_winsw_0.sv" \
"../../../bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_6/sim/bd_919a_binsw_0.sv" \
"../../../bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_7/sim/bd_919a_aroutsw_0.sv" \
"../../../bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_8/sim/bd_919a_routsw_0.sv" \
"../../../bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_9/sim/bd_919a_awoutsw_0.sv" \
"../../../bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_10/sim/bd_919a_woutsw_0.sv" \
"../../../bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_11/sim/bd_919a_boutsw_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/86fe/hdl" "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/0127/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l blk_mem_gen_v8_4_9 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_11 -l axi_data_fifo_v2_1_32 -l axi_register_slice_v2_1_33 -l axi_protocol_converter_v2_1_33 -l axi_clock_converter_v2_1_32 -l axi_dwidth_converter_v2_1_33 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 \
"../../../../edt_zc702.gen/sources_1/bd/system/ipshared/0127/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/86fe/hdl" "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/0127/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l blk_mem_gen_v8_4_9 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_11 -l axi_data_fifo_v2_1_32 -l axi_register_slice_v2_1_33 -l axi_protocol_converter_v2_1_33 -l axi_clock_converter_v2_1_32 -l axi_dwidth_converter_v2_1_33 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 \
"../../../bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_12/sim/bd_919a_arni_0.sv" \
"../../../bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_13/sim/bd_919a_rni_0.sv" \
"../../../bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_14/sim/bd_919a_awni_0.sv" \
"../../../bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_15/sim/bd_919a_wni_0.sv" \
"../../../bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_16/sim/bd_919a_bni_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/86fe/hdl" "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/0127/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l blk_mem_gen_v8_4_9 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_11 -l axi_data_fifo_v2_1_32 -l axi_register_slice_v2_1_33 -l axi_protocol_converter_v2_1_33 -l axi_clock_converter_v2_1_32 -l axi_dwidth_converter_v2_1_33 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 \
"../../../../edt_zc702.gen/sources_1/bd/system/ipshared/f49a/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/86fe/hdl" "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/0127/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l blk_mem_gen_v8_4_9 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_11 -l axi_data_fifo_v2_1_32 -l axi_register_slice_v2_1_33 -l axi_protocol_converter_v2_1_33 -l axi_clock_converter_v2_1_32 -l axi_dwidth_converter_v2_1_33 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 \
"../../../bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_17/sim/bd_919a_s00mmu_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/86fe/hdl" "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/0127/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l blk_mem_gen_v8_4_9 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_11 -l axi_data_fifo_v2_1_32 -l axi_register_slice_v2_1_33 -l axi_protocol_converter_v2_1_33 -l axi_clock_converter_v2_1_32 -l axi_dwidth_converter_v2_1_33 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 \
"../../../../edt_zc702.gen/sources_1/bd/system/ipshared/2da8/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/86fe/hdl" "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/0127/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l blk_mem_gen_v8_4_9 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_11 -l axi_data_fifo_v2_1_32 -l axi_register_slice_v2_1_33 -l axi_protocol_converter_v2_1_33 -l axi_clock_converter_v2_1_32 -l axi_dwidth_converter_v2_1_33 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 \
"../../../bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_18/sim/bd_919a_s00tr_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/86fe/hdl" "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/0127/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l blk_mem_gen_v8_4_9 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_11 -l axi_data_fifo_v2_1_32 -l axi_register_slice_v2_1_33 -l axi_protocol_converter_v2_1_33 -l axi_clock_converter_v2_1_32 -l axi_dwidth_converter_v2_1_33 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 \
"../../../../edt_zc702.gen/sources_1/bd/system/ipshared/63ed/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/86fe/hdl" "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/0127/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l blk_mem_gen_v8_4_9 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_11 -l axi_data_fifo_v2_1_32 -l axi_register_slice_v2_1_33 -l axi_protocol_converter_v2_1_33 -l axi_clock_converter_v2_1_32 -l axi_dwidth_converter_v2_1_33 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 \
"../../../bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_19/sim/bd_919a_s00sic_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/86fe/hdl" "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/0127/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l blk_mem_gen_v8_4_9 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_11 -l axi_data_fifo_v2_1_32 -l axi_register_slice_v2_1_33 -l axi_protocol_converter_v2_1_33 -l axi_clock_converter_v2_1_32 -l axi_dwidth_converter_v2_1_33 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 \
"../../../../edt_zc702.gen/sources_1/bd/system/ipshared/cef3/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/86fe/hdl" "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/0127/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l blk_mem_gen_v8_4_9 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_11 -l axi_data_fifo_v2_1_32 -l axi_register_slice_v2_1_33 -l axi_protocol_converter_v2_1_33 -l axi_clock_converter_v2_1_32 -l axi_dwidth_converter_v2_1_33 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 \
"../../../bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_20/sim/bd_919a_s00a2s_0.sv" \
"../../../bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_21/sim/bd_919a_sarn_0.sv" \
"../../../bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_22/sim/bd_919a_srn_0.sv" \
"../../../bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_23/sim/bd_919a_sawn_0.sv" \
"../../../bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_24/sim/bd_919a_swn_0.sv" \
"../../../bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_25/sim/bd_919a_sbn_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/86fe/hdl" "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/0127/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l blk_mem_gen_v8_4_9 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_11 -l axi_data_fifo_v2_1_32 -l axi_register_slice_v2_1_33 -l axi_protocol_converter_v2_1_33 -l axi_clock_converter_v2_1_32 -l axi_dwidth_converter_v2_1_33 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 \
"../../../../edt_zc702.gen/sources_1/bd/system/ipshared/7f4f/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/86fe/hdl" "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/0127/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l blk_mem_gen_v8_4_9 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_11 -l axi_data_fifo_v2_1_32 -l axi_register_slice_v2_1_33 -l axi_protocol_converter_v2_1_33 -l axi_clock_converter_v2_1_32 -l axi_dwidth_converter_v2_1_33 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 \
"../../../bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_26/sim/bd_919a_m00s2a_0.sv" \
"../../../bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_27/sim/bd_919a_m00arn_0.sv" \
"../../../bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_28/sim/bd_919a_m00rn_0.sv" \
"../../../bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_29/sim/bd_919a_m00awn_0.sv" \
"../../../bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_30/sim/bd_919a_m00wn_0.sv" \
"../../../bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_31/sim/bd_919a_m00bn_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/86fe/hdl" "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/0127/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l blk_mem_gen_v8_4_9 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_11 -l axi_data_fifo_v2_1_32 -l axi_register_slice_v2_1_33 -l axi_protocol_converter_v2_1_33 -l axi_clock_converter_v2_1_32 -l axi_dwidth_converter_v2_1_33 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 \
"../../../../edt_zc702.gen/sources_1/bd/system/ipshared/37bc/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/86fe/hdl" "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/0127/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l blk_mem_gen_v8_4_9 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_11 -l axi_data_fifo_v2_1_32 -l axi_register_slice_v2_1_33 -l axi_protocol_converter_v2_1_33 -l axi_clock_converter_v2_1_32 -l axi_dwidth_converter_v2_1_33 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 \
"../../../bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_32/sim/bd_919a_m00e_0.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/86fe/hdl" "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../edt_zc702.gen/sources_1/bd/system/ipshared/0127/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l blk_mem_gen_v8_4_9 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_11 -l axi_data_fifo_v2_1_32 -l axi_register_slice_v2_1_33 -l axi_protocol_converter_v2_1_33 -l axi_clock_converter_v2_1_32 -l axi_dwidth_converter_v2_1_33 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 \
"../../../bd/system/ip/system_smartconnect_0_0/bd_0/sim/bd_919a.v" \
"../../../bd/system/ip/system_smartconnect_0_0/sim/system_smartconnect_0_0.v" \
"../../../bd/system/sim/system.v" \

vlog -work xil_defaultlib \
"glbl.v"


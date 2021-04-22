// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Wed Apr 14 22:23:40 2021
// Host        : kolibri running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/DSDFP/vivadoFiles/read_image_VHDL/read_image_VHDL.gen/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module blk_mem_gen_0
   (clka,
    ena,
    wea,
    addra,
    dina,
    clkb,
    enb,
    addrb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [3:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [7:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [3:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [7:0]doutb;

  wire [3:0]addra;
  wire [3:0]addrb;
  wire clka;
  wire [7:0]dina;
  wire [7:0]doutb;
  wire ena;
  wire enb;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [7:0]NLW_U0_douta_UNCONNECTED;
  wire [3:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "4" *) 
  (* C_ADDRB_WIDTH = "4" *) 
  (* C_ALGORITHM = "2" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "1" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.4787 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "1" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "16" *) 
  (* C_READ_DEPTH_B = "16" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "8" *) 
  (* C_READ_WIDTH_B = "8" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "16" *) 
  (* C_WRITE_DEPTH_B = "16" *) 
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
  (* C_WRITE_MODE_B = "READ_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  blk_mem_gen_0_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(NLW_U0_douta_UNCONNECTED[7:0]),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[3:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[3:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[7:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
QGLtnqZzRetDH6gCWT4Js6wuLlZfrNx/VJp3sfR2NF+cxypO5AxN0oDKLJJtmdrtE/ueNDg+Qf7Z
TqBNRojORA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
B6Ger3hRvfjHkaJ+W8639Kl3TzC9TogLuklOXEiMNdc4Im+DjEUzxb3DKlzu0VW3zxZqjJ3+wsW/
LnRmPCESi5Y9eRJaLFXg79EMfoj4X+nTdHAP6yCfltBADKegZ12gpnB/8ey5yn2KA74LUtPC7jna
iyjqSfsWLGnz6UdXzwk=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BX+DxgMPRyZbYojCUR9Sk8Lq+3ZigBz4yMFHQkmurfdfDzyTPJCE827eGiPyTenK1QPVhEtf9g06
0BFXq/0COPuU1BWJwdkz1c4dE6/exDwhvEh+hPx3vRY6z8fDEf6aGVIXrHDvrmddehe7yMSIpo+k
aXHR06EEdfHCFY4TggYwhcJVXjkE+ApsVuyfmEfPmYjo8hCWyQyBsUWIOY03q1+MvUjjsmTwgs9g
fh5MY9ToaLfoJxPKdCpsqrBX4LJ+VDGFlAqIcqHTE2jCmPiToZAFXB7fzf1wDjFCBlJyFVDBGi0i
m+CouLSb7X1mvVhdDZgNrZDJMV688Bu3o54vew==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DaIU/Ddc8USbZ2mURzujJDWDH1JbHl5tFVOOQ2aVaUPIA71yyE38OXVLEtF8rNmujYH30nEeQ+FV
LVJ16aaHw+iiuaqorTM3K5KLohVlN+WlcEtSXHuPNHjw8ddqtzpaX7pH1zqZH+YmfCL5oaNLqDH4
rkBnUl0/Gm/hzSwKjYhXGQFYQ+gGP99OjXakzrAqZzp/Iq4gt+Z5902/JV9thd/isHQImJ0QyK8M
EKM579iPAfXGes2mbiNYHcvDmSPYmW1zlhOE++N1EKeea7j/msnKeyhlC+hGE4Xfn4TVvqgQexCT
rp/wS/MosY6WH1aKFQlFH2hEppA7KXUaQlvG+w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
XmWoAt4X8hrCJ5yTyug4ajJW5UhfkLNibzjihWzZ4Cr9hQSvWZoTc8rjGsLPbz6Le+/9iI5KxecS
eR0wiAO+G2IkwhZgVBeZdKoFnlnTVAyLjk9wMAFXNyJZM6b1NDbfXlPcUsC6JePvPlwwdWknkSsC
r3KvgkWAS+O3xvRmaNw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Hw3Y+rShKrXiUViyNU1/O2qv6TgheLHBnFMj1i9MUGrHYqh9pLfLYUgWR7S2vj4jv4S+Ks0BpP4p
dKEqVAFmTCfQNEUHaVcFPkOHgig6L4mhLY6HUUKJoRgiQepgLi/W3V+ZZPQSQFkB3CU4MsJzhXvR
yLcpDriZy8cnAHD87Zi5DrNGBzj3kigJeM0du6lCQbxtF5aEdoaNP+YTnIFtcqYhoYnswQlYt0sV
HKgFA8VzqzL5WYnpH7+1IKmFkJBHkyqHCa9wPK0qCKnxkuDj70YzPVqQ+cocdKU+/gNdpCOdZlci
F2HTxrgfrXndJru3TiDqu4UavqAe0MNuFp3t0w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XPVggoWL6aXz+MpODTOZhEUQDa0vfEnUDaYeEHXm2vGyqKJujN2c/FFAFBeBYdJATLsIsQ+BqoPc
pBbcFYXDBfOtFIW2dH6Y1OoD65KyJ/hAq8coa21kFgq4hFat5vzZ2iIfkCpTUr4vDZO7Xne8cZO9
WsHffoTCt5rS59wWm2b8I5R8Eh2TUbQg3RCyrcnD66cvcEnlXe1CNMQ4/loVJpA4IBinBf820Wjc
vw2fZbGI0jXC+ACSHOviH63Xwmn+aRV5Ppkup7IYoon/ieKapRQeASu3TTY37xSBXiInSdtMTzJ6
+4GfO4eSHVriCk/sWbuTBzfRzoSShrnHjzz5LA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
L78XuiswVcgO2gtebzL7SA9BC/jJGAM0v6S9pzmyqL+QYzRneiYeGyDmsW33jEVVSTuNjTXkBLY7
yTOKQruatwe4V0OLi6174saSAmPgerSV1GyLP7KhmusLV/N61avC9TPam+tekhKeE0tds4EnJ3et
4JdLh+SE4Z4pcuqCjB5MFneIYKKWDx7siU6oesAQtoSJOesfMchX63MhOjOHFP/ch+1gHv3T45hg
IGF7V7TrdREVE4f9631tlVJ1o2Dypsmo/76Itz5WCGlTMjAnWXN8IXxKN+PZ3dyt1wjrZm2P/td+
xiGszFnSLrRvw/HferwtSmRx8q0fiHZ88roGTw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kDX5kq2QEe25429T6vQqBCFvV1McKTJRYfK99ymVNK2GGvGLXSzgwJHwB2fj9rM0wme3zYYY0vQR
x+9F4L7KLlOVY6qY3LB59uDzyXBI3mMZaS905HXHJkdZHWtQWpfHhl27LqL+8FSluaD6F+KFfYOV
CwIOVuCIp/XjxFXpNBik7YiPt4kHOlDA97IXNLnYUn/g1csGqeNWce4UTne50ggWvLYGbTFGmTjT
N67TpUiGRVRCSv8Tax72GWFIMFZk3Tlp68ZUSQEybZMWX1U9XdMdtxfvNGhf8mi5jQJ2SupSzKu4
T/+53IN9T8aLePAiGBKKG1ZBj4y1ZyYA7XYvjw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18768)
`pragma protect data_block
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
08gXaRd39MQsI9CQT0KR
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif

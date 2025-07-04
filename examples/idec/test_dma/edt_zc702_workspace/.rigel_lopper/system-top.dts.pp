# 0 "C:\\lab1\\MicroPhase-Z7-Lite-Board\\examples\\idec\\lab3\\edt_zc702_workspace\\edt_zc702\\hw\\sdt\\system-top.dts"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "C:\\lab1\\MicroPhase-Z7-Lite-Board\\examples\\idec\\lab3\\edt_zc702_workspace\\edt_zc702\\hw\\sdt\\system-top.dts"
/dts-v1/;
# 1 "C:\\lab1\\MicroPhase-Z7-Lite-Board\\examples\\idec\\lab3\\edt_zc702_workspace\\edt_zc702\\hw\\sdt\\zynq-7000.dtsi" 1
# 10 "C:\\lab1\\MicroPhase-Z7-Lite-Board\\examples\\idec\\lab3\\edt_zc702_workspace\\edt_zc702\\hw\\sdt\\zynq-7000.dtsi"
/ {
 #address-cells = <1>;
 #size-cells = <1>;
 compatible = "xlnx,zynq-7000";
 model = "Xilinx Zynq";

 options {
  u-boot {
   compatible = "u-boot,config";
   bootscr-address = /bits/ 64 <0x3000000>;
  };
 };

 cpus_a9: cpus-a9@0 {
  #address-cells = <1>;
  #size-cells = <0>;

  ps7_cortexa9_0: cpu@0 {
   compatible = "arm,cortex-a9";
   device_type = "cpu";
   reg = <0>;
   clocks = <&clkc 3>;
   clock-latency = <1000>;
   cpu0-supply = <&regulator_vccpint>;
   operating-points = <
    666667 1000000
    333334 1000000
   >;
  };

  ps7_cortexa9_1: cpu@1 {
   compatible = "arm,cortex-a9";
   device_type = "cpu";
   reg = <1>;
   clocks = <&clkc 3>;
  };
 };

 fpga_full: fpga-region {
  compatible = "fpga-region";
  fpga-mgr = <&devcfg>;
  #address-cells = <1>;
  #size-cells = <1>;
  ranges;
 };

 pmu@f8891000 {
  compatible = "arm,cortex-a9-pmu";
  interrupts = <0 5 4>, <0 6 4>;
  interrupt-parent = <&intc>;
  reg = <0xf8891000 0x1000>,
    <0xf8893000 0x1000>;
 };

 regulator_vccpint: fixedregulator {
  compatible = "regulator-fixed";
  regulator-name = "VCCPINT";
  regulator-min-microvolt = <1000000>;
  regulator-max-microvolt = <1000000>;
  regulator-boot-on;
  regulator-always-on;
 };

 replicator {
  compatible = "arm,coresight-static-replicator";
  clocks = <&clkc 27>, <&clkc 46>, <&clkc 47>;
  clock-names = "apb_pclk", "dbg_trc", "dbg_apb";

  out-ports {
   #address-cells = <1>;
   #size-cells = <0>;


   port@0 {
    reg = <0>;
    replicator_out_port0: endpoint {
     remote-endpoint = <&tpiu_in_port>;
    };
   };
   port@1 {
    reg = <1>;
    replicator_out_port1: endpoint {
     remote-endpoint = <&etb_in_port>;
    };
   };
  };
  in-ports {

   port {
    replicator_in_port0: endpoint {
     remote-endpoint = <&funnel_out_port>;
    };
   };
  };
 };

 amba: axi {
  bootph-all;
  compatible = "simple-bus";
  #address-cells = <1>;
  #size-cells = <1>;
  interrupt-parent = <&intc>;
  ranges;

  adc: adc@f8007100 {
   compatible = "xlnx,zynq-xadc-1.00.a";
   reg = <0xf8007100 0x20>;
   interrupts = <0 7 4>;
   interrupt-parent = <&intc>;
   clocks = <&clkc 12>;
  };

  can0: can@e0008000 {
   compatible = "xlnx,zynq-can-1.0";
   status = "disabled";
   clocks = <&clkc 19>, <&clkc 36>;
   clock-names = "can_clk", "pclk";
   reg = <0xe0008000 0x1000>;
   interrupts = <0 28 4>;
   interrupt-parent = <&intc>;
   tx-fifo-depth = <0x40>;
   rx-fifo-depth = <0x40>;
  };

  can1: can@e0009000 {
   compatible = "xlnx,zynq-can-1.0";
   status = "disabled";
   clocks = <&clkc 20>, <&clkc 37>;
   clock-names = "can_clk", "pclk";
   reg = <0xe0009000 0x1000>;
   interrupts = <0 51 4>;
   interrupt-parent = <&intc>;
   tx-fifo-depth = <0x40>;
   rx-fifo-depth = <0x40>;
  };

  gpio0: gpio@e000a000 {
   compatible = "xlnx,zynq-gpio-1.0";
   #gpio-cells = <2>;
   clocks = <&clkc 42>;
   gpio-controller;
   interrupt-controller;
   #interrupt-cells = <2>;
   interrupt-parent = <&intc>;
   interrupts = <0 20 4>;
   reg = <0xe000a000 0x1000>;
  };

  i2c0: i2c@e0004000 {
   compatible = "cdns,i2c-r1p10";
   status = "disabled";
   clocks = <&clkc 38>;
   interrupt-parent = <&intc>;
   interrupts = <0 25 4>;
   clock-frequency = <400000>;
   reg = <0xe0004000 0x1000>;
   #address-cells = <1>;
   #size-cells = <0>;
  };

  i2c1: i2c@e0005000 {
   compatible = "cdns,i2c-r1p10";
   status = "disabled";
   clocks = <&clkc 39>;
   interrupt-parent = <&intc>;
   interrupts = <0 48 4>;
   clock-frequency = <400000>;
   reg = <0xe0005000 0x1000>;
   #address-cells = <1>;
   #size-cells = <0>;
  };

  intc: interrupt-controller@f8f01000 {
   compatible = "arm,cortex-a9-gic";
   #interrupt-cells = <3>;
   interrupt-controller;
   reg = <0xF8F01000 0x1000>,
         <0xF8F00100 0x100>;
  };

  L2: cache-controller@f8f02000 {
   compatible = "arm,pl310-cache";
   reg = <0xF8F02000 0x1000>;
   interrupts = <0 2 4>;
   arm,data-latency = <3 2 2>;
   arm,tag-latency = <2 2 2>;
   cache-unified;
   cache-level = <2>;
  };

  mc: memory-controller@f8006000 {
   compatible = "xlnx,zynq-ddrc-a05";
   reg = <0xf8006000 0x1000>;
  };

  ocm: sram@fffc0000 {
   compatible = "mmio-sram";
   reg = <0xfffc0000 0x10000>;
   #address-cells = <1>;
   #size-cells = <1>;
   ranges = <0 0xfffc0000 0x10000>;
   ocm-sram@0 {
    reg = <0x0 0x10000>;
   };
  };

  uart0: serial@e0000000 {
   compatible = "xlnx,xuartps", "cdns,uart-r1p8";
   status = "disabled";
   clocks = <&clkc 23>, <&clkc 40>;
   clock-names = "uart_clk", "pclk";
   reg = <0xE0000000 0x1000>;
   interrupts = <0 27 4>;
   interrupt-parent = <&intc>;
  };

  uart1: serial@e0001000 {
   compatible = "xlnx,xuartps", "cdns,uart-r1p8";
   status = "disabled";
   clocks = <&clkc 24>, <&clkc 41>;
   clock-names = "uart_clk", "pclk";
   reg = <0xE0001000 0x1000>;
   interrupts = <0 50 4>;
   interrupt-parent = <&intc>;
  };

  spi0: spi@e0006000 {
   compatible = "xlnx,zynq-spi-r1p6";
   reg = <0xe0006000 0x1000>;
   status = "disabled";
   interrupt-parent = <&intc>;
   interrupts = <0 26 4>;
   clocks = <&clkc 25>, <&clkc 34>;
   clock-names = "ref_clk", "pclk";
   #address-cells = <1>;
   #size-cells = <0>;
  };

  spi1: spi@e0007000 {
   compatible = "xlnx,zynq-spi-r1p6";
   reg = <0xe0007000 0x1000>;
   status = "disabled";
   interrupt-parent = <&intc>;
   interrupts = <0 49 4>;
   clocks = <&clkc 26>, <&clkc 35>;
   clock-names = "ref_clk", "pclk";
   #address-cells = <1>;
   #size-cells = <0>;
  };

  qspi: spi@e000d000 {
   compatible = "xlnx,zynq-qspi-1.0";
   reg = <0xe000d000 0x1000>;
   interrupt-parent = <&intc>;
   interrupts = <0 19 4>;
   clocks = <&clkc 10>, <&clkc 43>;
   clock-names = "ref_clk", "pclk";
   status = "disabled";
   #address-cells = <1>;
   #size-cells = <0>;
  };

  gem0: ethernet@e000b000 {
   compatible = "xlnx,zynq-gem", "cdns,gem";
   reg = <0xe000b000 0x1000>;
   status = "disabled";
   interrupts = <0 22 4>;
   interrupt-parent = <&intc>;
   clocks = <&clkc 30>, <&clkc 30>, <&clkc 13>;
   clock-names = "pclk", "hclk", "tx_clk";
   #address-cells = <1>;
   #size-cells = <0>;
  };

  gem1: ethernet@e000c000 {
   compatible = "xlnx,zynq-gem", "cdns,gem";
   reg = <0xe000c000 0x1000>;
   status = "disabled";
   interrupts = <0 45 4>;
   interrupt-parent = <&intc>;
   clocks = <&clkc 31>, <&clkc 31>, <&clkc 14>;
   clock-names = "pclk", "hclk", "tx_clk";
   #address-cells = <1>;
   #size-cells = <0>;
  };

  smcc: memory-controller@e000e000 {
   compatible = "arm,pl353-smc-r2p1", "arm,primecell";
   reg = <0xe000e000 0x0001000>;
   status = "disabled";
   clock-names = "memclk", "apb_pclk";
   clocks = <&clkc 11>, <&clkc 44>;
   ranges = <0x0 0x0 0xe1000000 0x1000000
      0x1 0x0 0xe2000000 0x2000000
      0x2 0x0 0xe4000000 0x2000000>;
   #address-cells = <2>;
   #size-cells = <1>;
   interrupt-parent = <&intc>;
   interrupts = <0 18 4>;
   nfc0: nand-controller@0,0 {
    compatible = "arm,pl353-nand-r2p1";
    reg = <0 0 0x1000000>;
    status = "disabled";
   };
   nor0: flash@1,0 {
    status = "disabled";
    compatible = "cfi-flash";
    reg = <1 0 0x2000000>;
   };
  };

  sdhci0: mmc@e0100000 {
   compatible = "arasan,sdhci-8.9a";
   status = "disabled";
   clock-names = "clk_xin", "clk_ahb";
   clocks = <&clkc 21>, <&clkc 32>;
   interrupt-parent = <&intc>;
   interrupts = <0 24 4>;
   reg = <0xe0100000 0x1000>;
  };

  sdhci1: mmc@e0101000 {
   compatible = "arasan,sdhci-8.9a";
   status = "disabled";
   clock-names = "clk_xin", "clk_ahb";
   clocks = <&clkc 22>, <&clkc 33>;
   interrupt-parent = <&intc>;
   interrupts = <0 47 4>;
   reg = <0xe0101000 0x1000>;
  };

  slcr: slcr@f8000000 {
   bootph-all;
   #address-cells = <1>;
   #size-cells = <1>;
   compatible = "xlnx,zynq-slcr", "syscon", "simple-mfd";
   reg = <0xF8000000 0x1000>;
   ranges;
   clkc: clkc@100 {
    bootph-all;
    #clock-cells = <1>;
    compatible = "xlnx,ps7-clkc";
    fclk-enable = <0xf>;
    clock-output-names = "armpll", "ddrpll", "iopll", "cpu_6or4x",
      "cpu_3or2x", "cpu_2x", "cpu_1x", "ddr2x", "ddr3x",
      "dci", "lqspi", "smc", "pcap", "gem0", "gem1",
      "fclk0", "fclk1", "fclk2", "fclk3", "can0", "can1",
      "sdio0", "sdio1", "uart0", "uart1", "spi0", "spi1",
      "dma", "usb0_aper", "usb1_aper", "gem0_aper",
      "gem1_aper", "sdio0_aper", "sdio1_aper",
      "spi0_aper", "spi1_aper", "can0_aper", "can1_aper",
      "i2c0_aper", "i2c1_aper", "uart0_aper", "uart1_aper",
      "gpio_aper", "lqspi_aper", "smc_aper", "swdt",
      "dbg_trc", "dbg_apb";
    reg = <0x100 0x100>;
   };

   rstc: rstc@200 {
    compatible = "xlnx,zynq-reset";
    reg = <0x200 0x48>;
    #reset-cells = <1>;
    syscon = <&slcr>;
   };

   pinctrl0: pinctrl@700 {
    compatible = "xlnx,pinctrl-zynq";
    reg = <0x700 0x200>;
    syscon = <&slcr>;
   };
  };

  dmac_s: dma-controller@f8003000 {
   compatible = "arm,pl330", "arm,primecell";
   reg = <0xf8003000 0x1000>;
   interrupt-parent = <&intc>;




   interrupts = <0 13 4>,
                <0 14 4>, <0 15 4>,
                <0 16 4>, <0 17 4>,
                <0 40 4>, <0 41 4>,
                <0 42 4>, <0 43 4>;
   #dma-cells = <1>;
   clocks = <&clkc 27>;
   clock-names = "apb_pclk";
  };

  devcfg: devcfg@f8007000 {
   compatible = "xlnx,zynq-devcfg-1.0";
   reg = <0xf8007000 0x100>;
   interrupt-parent = <&intc>;
   interrupts = <0 8 4>;
   clocks = <&clkc 12>, <&clkc 15>, <&clkc 16>, <&clkc 17>, <&clkc 18>;
   clock-names = "ref_clk", "fclk0", "fclk1", "fclk2", "fclk3";
   syscon = <&slcr>;
  };

  efuse: efuse@f800d000 {
   compatible = "xlnx,zynq-efuse";
   reg = <0xf800d000 0x20>;
  };

  global_timer: timer@f8f00200 {
   compatible = "arm,cortex-a9-global-timer";
   reg = <0xf8f00200 0x20>;
   interrupts = <1 11 0x301>;
   interrupt-parent = <&intc>;
   clocks = <&clkc 4>;
  };

  ttc0: timer@f8001000 {
   interrupt-parent = <&intc>;
   interrupts = <0 10 4>, <0 11 4>, <0 12 4>;
   compatible = "cdns,ttc";
   clocks = <&clkc 6>;
   reg = <0xF8001000 0x1000>;
  };

  ttc1: timer@f8002000 {
   interrupt-parent = <&intc>;
   interrupts = <0 37 4>, <0 38 4>, <0 39 4>;
   compatible = "cdns,ttc";
   clocks = <&clkc 6>;
   reg = <0xF8002000 0x1000>;
  };

  scutimer: timer@f8f00600 {
   bootph-all;
   interrupt-parent = <&intc>;
   interrupts = <1 13 0x301>;
   compatible = "arm,cortex-a9-twd-timer";
   reg = <0xf8f00600 0x20>;
   clocks = <&clkc 4>;
  };

  scuwdt: scuwatchdog@f8f00620 {
   interrupt-parent = <&intc>;
   interrupts = <1 14 4>;
   compatible = "xlnx,ps7-scuwdt-1.00.a";
   reg = <0xf8f00620 0xe0>;
  };

  usb0: usb@e0002000 {
   compatible = "xlnx,zynq-usb-2.20a", "chipidea,usb2";
   status = "disabled";
   clocks = <&clkc 28>;
   interrupt-parent = <&intc>;
   interrupts = <0 21 4>;
   reg = <0xe0002000 0x1000>;
   phy_type = "ulpi";
  };

  usb1: usb@e0003000 {
   compatible = "xlnx,zynq-usb-2.20a", "chipidea,usb2";
   status = "disabled";
   clocks = <&clkc 29>;
   interrupt-parent = <&intc>;
   interrupts = <0 44 4>;
   reg = <0xe0003000 0x1000>;
   phy_type = "ulpi";
  };

  watchdog0: watchdog@f8005000 {
   clocks = <&clkc 45>;
   compatible = "cdns,wdt-r1p2";
   interrupt-parent = <&intc>;
   interrupts = <0 9 1>;
   reg = <0xf8005000 0x1000>;
   timeout-sec = <10>;
  };

  coresight: coresight@f8800000 {
   compatible = "xlnx,ps7-coresight-comp-1.00.a";
   status = "disabled";
   reg = <0xf8800000 0x100000>;
  };

  etb@f8801000 {
   compatible = "arm,coresight-etb10", "arm,primecell";
   reg = <0xf8801000 0x1000>;
   clocks = <&clkc 27>, <&clkc 46>, <&clkc 47>;
   clock-names = "apb_pclk", "dbg_trc", "dbg_apb";
   in-ports {
    port {
     etb_in_port: endpoint {
      remote-endpoint = <&replicator_out_port1>;
     };
    };
   };
  };

  tpiu@f8803000 {
   compatible = "arm,coresight-tpiu", "arm,primecell";
   reg = <0xf8803000 0x1000>;
   clocks = <&clkc 27>, <&clkc 46>, <&clkc 47>;
   clock-names = "apb_pclk", "dbg_trc", "dbg_apb";
   in-ports {
    port {
     tpiu_in_port: endpoint {
      remote-endpoint = <&replicator_out_port0>;
     };
    };
   };
  };

  funnel@f8804000 {
   compatible = "arm,coresight-static-funnel", "arm,primecell";
   reg = <0xf8804000 0x1000>;
   clocks = <&clkc 27>, <&clkc 46>, <&clkc 47>;
   clock-names = "apb_pclk", "dbg_trc", "dbg_apb";


   out-ports {
    port {
     funnel_out_port: endpoint {
      remote-endpoint =
       <&replicator_in_port0>;
     };
    };
   };

   in-ports {
    #address-cells = <1>;
    #size-cells = <0>;


    port@0 {
     reg = <0>;
     funnel0_in_port0: endpoint {
      remote-endpoint = <&ptm0_out_port>;
     };
    };

    port@1 {
     reg = <1>;
     funnel0_in_port1: endpoint {
      remote-endpoint = <&ptm1_out_port>;
     };
    };

    port@2 {
     reg = <2>;
    };

   };
  };

  ptm@f889c000 {
   compatible = "arm,coresight-etm3x", "arm,primecell";
   reg = <0xf889c000 0x1000>;
   clocks = <&clkc 27>, <&clkc 46>, <&clkc 47>;
   clock-names = "apb_pclk", "dbg_trc", "dbg_apb";
   cpu = <&ps7_cortexa9_0>;
   out-ports {
    port {
     ptm0_out_port: endpoint {
      remote-endpoint = <&funnel0_in_port0>;
     };
    };
   };
  };

  ptm@f889d000 {
   compatible = "arm,coresight-etm3x", "arm,primecell";
   reg = <0xf889d000 0x1000>;
   clocks = <&clkc 27>, <&clkc 46>, <&clkc 47>;
   clock-names = "apb_pclk", "dbg_trc", "dbg_apb";
   cpu = <&ps7_cortexa9_1>;
   out-ports {
    port {
     ptm1_out_port: endpoint {
      remote-endpoint = <&funnel0_in_port1>;
     };
    };
   };
  };
 };
};
# 3 "C:\\lab1\\MicroPhase-Z7-Lite-Board\\examples\\idec\\lab3\\edt_zc702_workspace\\edt_zc702\\hw\\sdt\\system-top.dts" 2
# 1 "C:\\lab1\\MicroPhase-Z7-Lite-Board\\examples\\idec\\lab3\\edt_zc702_workspace\\edt_zc702\\hw\\sdt\\pl.dtsi" 1
/ {
 amba_pl: amba_pl {
  ranges;
  compatible = "simple-bus";
  #address-cells = <1>;
  #size-cells = <1>;
  firmware-name = "system_wrapper.bit.bin";
  clocking0: clocking0 {
   compatible = "xlnx,fclk";
   assigned-clocks = <&clkc 15>;
   assigned-clock-rates = <100000000>;
   #clock-cells = <0>;
   clock-output-names = "fabric_clk";
   clocks = <&clkc 15>;
  };
  afi0: afi0@f8008000 {
   status = "okay";
   compatible = "xlnx,afi-fpga";
   #address-cells = <1>;
   reg = <0xF8008000 0x1000>;
   #size-cells = <0>;
   xlnx,afi-width = <0>;
  };
  axi_master_pl_0: axi_master_pl@43c00000 {
   compatible = "xlnx,axi-master-pl-1.0";
   xlnx,ii = "x";
   xlnx,machine = <64>;
   xlnx,rable = <0>;
   xlnx,s-axi-axilites-data-width = <32>;
   xlnx,ip-name = "axi_master_pl";
   reg = <0x43c00000 0x10000>;
   clocks = <&clkc 15>;
   xlnx,clk-period = <10>;
   xlnx,edk-iptype = "PERIPHERAL";
   status = "okay";
   clock-names = "ap_clk";
   xlnx,s-axi-axilites-addr-width = <6>;
   xlnx,combinational = <0>;
   xlnx,latency = <2>;
   xlnx,name = "axi_master_pl_0";
  };
 };
};
# 4 "C:\\lab1\\MicroPhase-Z7-Lite-Board\\examples\\idec\\lab3\\edt_zc702_workspace\\edt_zc702\\hw\\sdt\\system-top.dts" 2
# 1 "C:\\lab1\\MicroPhase-Z7-Lite-Board\\examples\\idec\\lab3\\edt_zc702_workspace\\edt_zc702\\hw\\sdt\\pcw.dtsi" 1
 &ps7_cortexa9_0 {
  xlnx,rable = <0>;
  xlnx,i-cache-size = <0x8000>;
  xlnx,d-cache-line-size = <20>;
  xlnx,i-cache-line-size = <20>;
  xlnx,cpu-1x-clk-freq-hz = <111111115>;
  xlnx,ip-name = "ps7_cortexa9";
  xlnx,d-cache-size = <0x8000>;
  xlnx,num-cores = <2>;
  xlnx,cpu-clk-freq-hz = <666666687>;
  bus-handle = <&amba>;
 };
 &ps7_cortexa9_1 {
  xlnx,rable = <0>;
  xlnx,i-cache-size = <0x8000>;
  xlnx,d-cache-line-size = <20>;
  xlnx,i-cache-line-size = <20>;
  xlnx,cpu-1x-clk-freq-hz = <111111115>;
  xlnx,ip-name = "ps7_cortexa9";
  xlnx,d-cache-size = <0x8000>;
  xlnx,cpu-clk-freq-hz = <666666687>;
  bus-handle = <&amba>;
 };
 &amba {
  processing_system7_0: processing_system7@0 {
   xlnx,pcw-act-enet0-peripheral-freqmhz = <125>;
   xlnx,pcw-nor-grp-sram-cs1-io = "<Select>";
   xlnx,num-f2p-intr-inputs = <1>;
   reg = <0x00000000 0x20000000>;
   xlnx,pcw-mio-18-direction = "inout";
   xlnx,pcw-nand-cycles-t-ar = <1>;
   xlnx,pcw-p2f-dmac7-intr = <0>;
   xlnx,pcw-en-clk1-port = <0>;
   xlnx,pcw-crystal-peripheral-freqmhz = <0x1fca055>;
   xlnx,pcw-nor-grp-sram-cs1-enable = <0>;
   xlnx,pcw-uiparam-ddr-dq-1-package-length = <0x416881c>;
   xlnx,pcw-act-wdt-peripheral-freqmhz = <0x69f6bcb>;
   xlnx,pcw-p2f-dmac4-intr = <0>;
   xlnx,pcw-s-axi-hp3-id-width = <6>;
   xlnx,pcw-en-emio-uart0 = <0>;
   xlnx,pcw-en-emio-uart1 = <0>;
   xlnx,pcw-ddr-hpr-to-critical-priority-level = <15>;
   xlnx,pcw-enet-reset-polarity = "Active , Low";
   xlnx,pcw-mio-5-direction = "inout";
   xlnx,pcw-p2f-dmac1-intr = <0>;
   xlnx,pcw-sd0-grp-cd-enable = <1>;
   xlnx,pcw-act-fpga1-peripheral-freqmhz = <10>;
   xlnx,pcw-mio-24-iotype = "LVCMOS , 1.8V";
   xlnx,pcw-ddr-port1-hpr-enable = <0>;
   xlnx,pcw-cpu-peripheral-clksrc = "ARM , PLL";
   xlnx,pcw-mio-53-pullup = "disabled";
   xlnx,pcw-use-axi-nonsecure = <0>;
   xlnx,pcw-spi1-grp-ss0-io = "<Select>";
   xlnx,pcw-uiparam-ddr-dqs-1-propogation-delay = <160>;
   xlnx,pcw-nor-cs1-t-pc = <1>;
   xlnx,pcw-s-axi-gp0-id-width = <6>;
   xlnx,pcw-trace-grp-8bit-io = "<Select>";
   xlnx,pcw-ttc-peripheral-freqmhz = <50>;
   xlnx,pcw-ftm-cti-out0 = "DISABLED";
   xlnx,pcw-ttc1-clk0-peripheral-divisor0 = <1>;
   xlnx,pcw-uiparam-ddr-clock-stop-en = <0>;
   xlnx,pcw-ftm-cti-out1 = "DISABLED";
   xlnx,pcw-mio-28-direction = "inout";
   xlnx,pcw-en-ttc0 = <0>;
   xlnx,pcw-ftm-cti-out2 = "DISABLED";
   xlnx,pcw-mio-11-pullup = "disabled";
   xlnx,pcw-en-ttc1 = <0>;
   xlnx,pcw-ftm-cti-out3 = "DISABLED";
   xlnx,pcw-m-axi-gp0-thread-id-width = <12>;
   xlnx,pcw-nor-sram-cs1-t-ceoe = <1>;
   xlnx,pcw-nor-grp-sram-int-enable = <0>;
   xlnx,pcw-can-peripheral-clksrc = "IO , PLL";
   xlnx,pcw-ttc1-clk0-peripheral-clksrc = "CPU_1X";
   xlnx,mio-primitive = <54>;
   xlnx,pcw-gp0-num-write-threads = <4>;
   xlnx,pcw-mio-4-iotype = "LVCMOS , 3.3V";
   xlnx,pcw-mio-41-iotype = "LVCMOS , 1.8V";
   xlnx,pcw-nor-cs1-t-rc = <11>;
   xlnx,pcw-i2c0-grp-int-enable = <0>;
   xlnx,pcw-ddr-port2-hpr-enable = <0>;
   xlnx,pcw-act-tpiu-peripheral-freqmhz = <200>;
   xlnx,pcw-package-name = "clg400";
   xlnx,pcw-s-axi-hp0-id-width = <6>;
   xlnx,pcw-package-ddr-dqs-to-clk-delay-0 = <0xffff9e58>;
   xlnx,pcw-uiparam-ddr-dqs-3-length-mm = <0>;
   xlnx,pcw-package-ddr-dqs-to-clk-delay-1 = <0x36b0>;
   xlnx,pcw-qspi-grp-single-ss-enable = <1>;
   xlnx,pcw-act-usb0-peripheral-freqmhz = <60>;
   xlnx,pcw-mio-27-pullup = "disabled";
   xlnx,pcw-package-ddr-dqs-to-clk-delay-2 = <0xffffdcd8>;
   xlnx,pcw-mio-38-direction = "inout";
   xlnx,pcw-package-ddr-dqs-to-clk-delay-3 = <0xffff7f18>;
   xlnx,pcw-en-spi0 = <0>;
   xlnx,pcw-en-spi1 = <0>;
   xlnx,pcw-include-acp-trans-check = <0>;
   xlnx,pcw-ttc1-clk1-peripheral-divisor0 = <1>;
   xlnx,en-emio-pjtag = <0>;
   xlnx,pcw-nor-sram-cs0-we-time = <0>;
   xlnx,pcw-uiparam-ddr-speed-bin = "DDR3_1066F";
   xlnx,pcw-ddr-port3-hpr-enable = <0>;
   xlnx,pcw-irq-f2p-intr = <0>;
   xlnx,pcw-trace-peripheral-enable = <0>;
   xlnx,pcw-enet0-grp-mdio-io = "<Select>";
   xlnx,pcw-mio-15-iotype = "LVCMOS , 3.3V";
   xlnx,pcw-nor-cs1-t-tr = <1>;
   xlnx,pcw-mio-7-pullup = "disabled";
   xlnx,pcw-mio-44-pullup = "disabled";
   xlnx,pcw-uiparam-act-ddr-freq-mhz = <0x1fca057e>;
   xlnx,pcw-use-ps-slcr-registers = <0>;
   xlnx,pcw-mio-48-direction = "inout";
   xlnx,pcw-ttc0-clk0-peripheral-divisor0 = <1>;
   xlnx,pcw-trace-grp-4bit-io = "<Select>";
   xlnx,pcw-nor-cs1-t-wc = <11>;
   xlnx,pcw-gpio-peripheral-enable = <1>;
   xlnx,pcw-nor-cs0-t-ceoe = <1>;
   xlnx,pcw-spi-peripheral-clksrc = "IO , PLL";
   xlnx,pcw-p2f-i2c0-intr = <0>;
   xlnx,pcw-uiparam-ddr-clock-2-package-length = <0x4cb9f7c>;
   status = "okay";
   xlnx,pcw-act-can-peripheral-freqmhz = <10>;
   xlnx,pcw-ttc1-clk2-peripheral-divisor0 = <1>;
   xlnx,pcw-mio-32-iotype = "LVCMOS , 1.8V";
   xlnx,pcw-p2f-gpio-intr = <0>;
   xlnx,pcw-ttc0-clk1-peripheral-freqmhz = <0x7f28155>;
   xlnx,pcw-value-silversion = <3>;
   xlnx,pcw-nor-cs1-t-wp = <1>;
   xlnx,pcw-pcap-peripheral-divisor0 = <7>;
   xlnx,pcw-spi1-spi1-io = "MIO , 10 , .. , 15";
   xlnx,pcw-wdt-peripheral-freqmhz = <0x7f28155>;
   xlnx,pcw-mio-18-pullup = "disabled";
   xlnx,pcw-uart1-baud-rate = <115200>;
   xlnx,pcw-mio-17-direction = "inout";
   xlnx,pcw-trace-grp-2bit-io = "<Select>";
   xlnx,pcw-ttc0-clk1-peripheral-divisor0 = <1>;
   xlnx,pcw-spi0-grp-ss2-enable = <0>;
   xlnx,pcw-mio-48-iotype = "LVCMOS , 1.8V";
   xlnx,pcw-gp1-num-read-threads = <4>;
   xlnx,pcw-i2c1-i2c1-io = "<Select>";
   xlnx,pcw-sd0-sd0-io = "MIO , 40 , .. , 45";
   xlnx,pcw-can0-grp-clk-enable = <0>;
   xlnx,pcw-mio-4-direction = "inout";
   xlnx,pcw-use-s-axi-acp = <0>;
   xlnx,pcw-uart-peripheral-freqmhz = <50>;
   xlnx,pcw-mio-35-pullup = "disabled";
   xlnx,pcw-uiparam-ddr-partno = "MT41K256M16 , RE-125";
   xlnx,pcw-qspi-peripheral-freqmhz = <200>;
   xlnx,pcw-mio-27-direction = "inout";
   xlnx,pcw-mio-52-slew = "slow";
   xlnx,pcw-can0-peripheral-clksrc = "External";
   xlnx,pcw-uiparam-ddr-dram-width = "16 , Bits";
   xlnx,pcw-nand-cycles-t-rc = <11>;
   xlnx,pcw-nand-nand-io = "<Select>";
   xlnx,pcw-nor-grp-sram-cs0-enable = <0>;
   xlnx,pcw-clk1-freq = <10000000>;
   xlnx,pcw-mio-48-slew = "slow";
   xlnx,pcw-m-axi-gp0-freqmhz = <100>;
   xlnx,pcw-ttc0-clk2-peripheral-divisor0 = <1>;
   xlnx,pcw-mio-45-slew = "slow";
   xlnx,pcw-mio-23-iotype = "LVCMOS , 1.8V";
   xlnx,pcw-mio-42-slew = "slow";
   xlnx,pcw-mio-52-pullup = "disabled";
   xlnx,m-axi-gp1-id-width = <12>;
   xlnx,pcw-fclk-clk1-buf;
   xlnx,pcw-dual-parallel-qspi-data-mode = "<Select>";
   xlnx,pcw-nand-cycles-t-rr = <1>;
   xlnx,pcw-en-rst1-port = <0>;
   xlnx,pcw-mio-38-slew = "slow";
   xlnx,pcw-uiparam-ddr-dqs-2-length-mm = <0>;
   xlnx,pcw-mio-10-pullup = "disabled";
   xlnx,pcw-mio-35-slew = "slow";
   xlnx,pcw-mio-37-direction = "inout";
   xlnx,pcw-nor-sram-cs0-t-ceoe = <1>;
   xlnx,pcw-usb0-usb0-io = "<Select>";
   xlnx,pcw-mio-32-slew = "slow";
   xlnx,pcw-usb1-reset-io = "<Select>";
   xlnx,pcw-enet1-peripheral-freqmhz = "1000 , Mbps";
   xlnx,pcw-uiparam-ddr-clock-2-propogation-delay = <160>;
   xlnx,pcw-qspi-grp-single-ss-io = "MIO , 1 , .. , 6";
   xlnx,pcw-mio-28-slew = "slow";
   xlnx,pcw-mio-3-iotype = "LVCMOS , 3.3V";
   xlnx,pcw-mio-39-iotype = "LVCMOS , 1.8V";
   xlnx,pcw-mio-40-iotype = "LVCMOS , 1.8V";
   xlnx,pcw-nor-cs1-we-time = <0>;
   xlnx,pcw-enet1-reset-enable = <0>;
   xlnx,pcw-mio-25-slew = "slow";
   xlnx,pcw-can0-grp-clk-io = "<Select>";
   xlnx,pcw-uiparam-ddr-dq-3-length-mm = <0>;
   xlnx,pcw-mio-22-slew = "slow";
   xlnx,pcw-mio-26-pullup = "disabled";
   xlnx,pcw-nand-cycles-t-wc = <11>;
   xlnx,pcw-fpga2-peripheral-freqmhz = <0x1fca055>;
   xlnx,pcw-mio-18-slew = "slow";
   xlnx,pcw-mio-47-direction = "inout";
   xlnx,pcw-nor-sram-cs0-t-pc = <1>;
   xlnx,pcw-can-peripheral-freqmhz = <100>;
   xlnx,pcw-uiparam-ddr-dq-2-package-length = <0x561cad8>;
   xlnx,pcw-mio-15-slew = "slow";
   xlnx,emio-gpio-width = <64>;
   xlnx,fclk-clk2-buf;
   xlnx,s-axi-hp0-data-width = <64>;
   xlnx,pcw-mio-12-slew = "slow";
   xlnx,pcw-en-emio-wdt = <0>;
   xlnx,pcw-nand-cycles-t-wp = <1>;
   xlnx,pcw-ttc1-clk0-peripheral-freqmhz = <0x7f28155>;
   xlnx,pcw-ddr-ddr-pll-freqmhz = <0x3f940bf7>;
   xlnx,pcw-enet0-reset-enable = <0>;
   xlnx,pcw-preset-bank1-voltage = "LVCMOS , 1.8V";
   xlnx,pcw-can1-grp-clk-io = "<Select>";
   xlnx,pcw-nor-sram-cs0-t-rc = <11>;
   xlnx,pcw-mio-14-iotype = "LVCMOS , 3.3V";
   xlnx,pcw-mio-6-pullup = "disabled";
   xlnx,pcw-enet-reset-enable = <0>;
   xlnx,pcw-mio-43-pullup = "disabled";
   xlnx,pcw-spi0-peripheral-enable = <0>;
   xlnx,pcw-act-ttc0-clk0-peripheral-freqmhz = <0x69f6bcb>;
   xlnx,pcw-nor-grp-a25-enable = <0>;
   xlnx,trace-buffer-fifo-size = <128>;
   xlnx,pcw-uiparam-ddr-dq-1-propogation-delay = <160>;
   xlnx,pcw-trace-grp-4bit-enable = <0>;
   xlnx,pcw-qspi-peripheral-enable = <1>;
   xlnx,pcw-dual-stack-qspi-data-mode = "<Select>";
   xlnx,pcw-package-ddr-board-delay0 = <0x15ba8>;
   xlnx,pcw-wdt-peripheral-divisor0 = <1>;
   xlnx,s-axi-hp1-data-width = <64>;
   xlnx,pcw-package-ddr-board-delay1 = <0x124f8>;
   xlnx,pcw-package-ddr-board-delay2 = <0x14c08>;
   xlnx,pcw-uart0-baud-rate = <115200>;
   xlnx,pcw-en-wdt = <0>;
   xlnx,pcw-include-trace-buffer = <0>;
   xlnx,pcw-m-axi-gp0-id-width = <12>;
   xlnx,pcw-mio-16-direction = "inout";
   xlnx,pcw-package-ddr-board-delay3 = <0x16760>;
   xlnx,pcw-dci-peripheral-clksrc = "DDR , PLL";
   xlnx,pcw-i2c1-grp-int-enable = <0>;
   xlnx,pcw-p2f-uart1-intr = <0>;
   xlnx,pcw-mio-31-iotype = "LVCMOS , 1.8V";
   xlnx,pcw-usb1-peripheral-enable = <0>;
   xlnx,pcw-act-can0-peripheral-freqmhz = <0x16b4ddc>;
   xlnx,pcw-mio-3-direction = "inout";
   xlnx,pcw-s-axi-hp3-freqmhz = <10>;
   xlnx,pcw-m-axi-gp0-support-narrow-burst = <0>;
   xlnx,pcw-nor-sram-cs0-t-tr = <1>;
   xlnx,pcw-usb1-reset-enable = <0>;
   xlnx,pcw-can1-can1-io = "<Select>";
   xlnx,pcw-mio-17-pullup = "disabled";
   xlnx,pcw-uiparam-ddr-clock-3-length-mm = <0>;
   xlnx,pcw-sd1-peripheral-enable = <0>;
   xlnx,s-axi-hp2-data-width = <64>;
   xlnx,pcw-en-trace = <0>;
   xlnx,pcw-mio-26-direction = "inout";
   xlnx,pcw-nor-sram-cs0-t-wc = <11>;
   xlnx,pcw-spi0-grp-ss1-enable = <0>;
   xlnx,pcw-ttc0-clk1-peripheral-clksrc = "CPU_1X";
   xlnx,pcw-mio-47-iotype = "LVCMOS , 1.8V";
   xlnx,pcw-nand-grp-d8-io = "<Select>";
   xlnx,pcw-nor-grp-cs1-io = "<Select>";
   xlnx,pcw-en-clktrig1-port = <0>;
   xlnx,pcw-i2c-reset-select = "<Select>";
   xlnx,pcw-act-uart-peripheral-freqmhz = <50>;
   xlnx,pcw-nor-grp-cs1-enable = <0>;
   xlnx,pcw-usb1-peripheral-freqmhz = <60>;
   xlnx,pcw-usb0-reset-enable = <0>;
   xlnx,m-axi-gp1-thread-id-width = <12>;
   xlnx,pcw-nor-sram-cs0-t-wp = <1>;
   xlnx,pcw-mio-34-pullup = "disabled";
   xlnx,pcw-act-qspi-peripheral-freqmhz = <200>;
   xlnx,pcw-sdio-peripheral-valid = <1>;
   xlnx,pcw-en-emio-trace = <0>;
   xlnx,pcw-uart0-grp-full-enable = <0>;
   xlnx,pcw-uiparam-ddr-dqs-1-length-mm = <0>;
   xlnx,pcw-uiparam-ddr-clock-3-package-length = <0x4cb9f7c>;
   xlnx,s-axi-hp3-data-width = <64>;
   xlnx,pcw-mio-36-direction = "inout";
   xlnx,pcw-qspi-qspi-io = "MIO , 1 , .. , 6";
   xlnx,pcw-fclk0-peripheral-clksrc = "IO , PLL";
   xlnx,pcw-nand-cycles-t-clr = <1>;
   xlnx,pcw-pll-bypassmode-enable = <0>;
   xlnx,s-axi-acp-aruser-val = <31>;
   xlnx,pcw-io-io-pll-freqmhz = <1400>;
   xlnx,pcw-mio-22-iotype = "LVCMOS , 1.8V";
   xlnx,pcw-mio-51-pullup = "disabled";
   xlnx,pcw-p2f-sdio1-intr = <0>;
   xlnx,pcw-qspi-grp-fbclk-io = "<Select>";
   xlnx,use-s-axi-gp0 = <0>;
   xlnx,use-s-axi-gp1 = <0>;
   xlnx,pcw-i2c0-peripheral-enable = <0>;
   xlnx,pcw-uiparam-ddr-dq-2-length-mm = <0>;
   xlnx,pcw-nor-grp-sram-cs0-io = "<Select>";
   xlnx,pcw-enet1-grp-mdio-io = "<Select>";
   xlnx,pcw-enet0-peripheral-enable = <0>;
   xlnx,pcw-p2f-usb0-intr = <0>;
   xlnx,pcw-enet1-reset-io = "<Select>";
   xlnx,pcw-mio-46-direction = "inout";
   xlnx,pcw-spi1-grp-ss2-enable = <0>;
   xlnx,pcw-nor-grp-a25-io = "<Select>";
   xlnx,pcw-en-emio-can0 = <0>;
   xlnx,pcw-core1-fiq-intr = <0>;
   xlnx,s-axi-hp2-id-width = <6>;
   xlnx,pcw-en-emio-can1 = <0>;
   xlnx,pcw-mio-2-iotype = "LVCMOS , 3.3V";
   xlnx,pcw-use-dma0 = <0>;
   xlnx,pcw-can1-grp-clk-enable = <0>;
   xlnx,pcw-mio-38-iotype = "LVCMOS , 1.8V";
   xlnx,pcw-use-dma1 = <0>;
   xlnx,pcw-use-dma2 = <0>;
   xlnx,pcw-use-dma3 = <0>;
   xlnx,pcw-usb-reset-select = "<Select>";
   xlnx,pcw-mio-7-slew = "slow";
   xlnx,pcw-ttc1-peripheral-enable = <0>;
   xlnx,use-axi-nonsecure = <0>;
   xlnx,pcw-sd0-grp-pow-enable = <0>;
   xlnx,pcw-mio-4-slew = "slow";
   xlnx,pcw-mio-25-pullup = "disabled";
   xlnx,pcw-uiparam-ddr-dqs-0-propogation-delay = <160>;
   xlnx,pcw-mio-1-slew = "slow";
   xlnx,pcw-trace-grp-32bit-io = "<Select>";
   xlnx,pcw-act-ttc1-clk2-peripheral-freqmhz = <0x69f6bcb>;
   xlnx,pcw-spi-peripheral-valid = <0>;
   xlnx,pcw-mio-15-direction = "out";
   xlnx,pcw-act-enet1-peripheral-freqmhz = <10>;
   xlnx,pcw-en-ptp-enet0 = <0>;
   xlnx,pcw-mio-13-iotype = "LVCMOS , 3.3V";
   xlnx,pcw-en-ptp-enet1 = <0>;
   xlnx,pcw-mio-5-pullup = "disabled";
   xlnx,pcw-en-clk3-port = <0>;
   xlnx,pcw-mio-42-pullup = "disabled";
   xlnx,pcw-sd1-grp-wp-io = "<Select>";
   xlnx,pcw-fpga-fclk3-enable = <0>;
   xlnx,pcw-mio-2-direction = "inout";
   xlnx,pcw-p2f-dmac6-intr = <0>;
   xlnx,pcw-en-clk0-port = <1>;
   xlnx,pcw-s-axi-gp1-id-width = <6>;
   xlnx,pcw-p2f-dmac3-intr = <0>;
   xlnx,s-axi-acp-awuser-val = <31>;
   xlnx,pcw-uiparam-ddr-clock-2-length-mm = <0>;
   xlnx,pcw-p2f-dmac0-intr = <0>;
   xlnx,pcw-uiparam-ddr-bank-addr-count = <3>;
   xlnx,edk-iptype = "PERIPHERAL";
   xlnx,pcw-en-emio-gpio = <0>;
   xlnx,pcw-act-apu-peripheral-freqmhz = <0x27bc86bf>;
   xlnx,pcw-trace-internal-width = <2>;
   xlnx,pcw-mio-25-direction = "inout";
   xlnx,pcw-act-fpga2-peripheral-freqmhz = <10>;
   xlnx,pcw-uiparam-ddr-row-addr-count = <15>;
   xlnx,pcw-trace-grp-32bit-enable = <0>;
   xlnx,pcw-nor-cs0-t-pc = <1>;
   xlnx,en-emio-enet0 = <0>;
   xlnx,pcw-mio-29-iotype = "LVCMOS , 1.8V";
   xlnx,pcw-mio-30-iotype = "LVCMOS , 1.8V";
   xlnx,en-emio-enet1 = <0>;
   xlnx,pcw-nor-cs0-we-time = <0>;
   xlnx,use-s-axi-hp0 = <1>;
   xlnx,use-s-axi-hp1 = <0>;
   xlnx,use-s-axi-hp2 = <0>;
   xlnx,use-s-axi-hp3 = <0>;
   xlnx,pcw-enet1-peripheral-clksrc = "IO , PLL";
   xlnx,pcw-s-axi-hp1-id-width = <6>;
   xlnx,pcw-uiparam-ddr-dq-3-package-length = <0x6329028>;
   xlnx,pcw-mio-16-pullup = "disabled";
   xlnx,pcw-trace-trace-io = "<Select>";
   xlnx,pcw-use-trace = <0>;
   xlnx,pcw-cpu-cpu-6x4x-max-range = <767>;
   xlnx,pcw-p2f-enet1-intr = <0>;
   xlnx,pcw-nor-cs0-t-rc = <11>;
   xlnx,pcw-single-qspi-data-mode = "x4";
   xlnx,pcw-uiparam-ddr-dqs-0-length-mm = <0>;
   xlnx,pcw-uiparam-ddr-dqs-0-package-length = <0x6430700>;
   xlnx,pcw-mio-35-direction = "inout";
   xlnx,pcw-gpio-mio-gpio-enable = <1>;
   xlnx,pcw-spi0-grp-ss0-enable = <0>;
   xlnx,fclk-clk0-buf;
   xlnx,pcw-mio-9-iotype = "LVCMOS , 3.3V";
   xlnx,pcw-m-axi-gp0-enable-static-remap = <0>;
   xlnx,pcw-mio-46-iotype = "LVCMOS , 1.8V";
   xlnx,pcw-nand-cycles-t-rea = <1>;
   xlnx,pcw-act-usb1-peripheral-freqmhz = <60>;
   compatible = "xlnx,processing-system7-5.5";
   xlnx,pcw-fclk3-peripheral-clksrc = "IO , PLL";
   xlnx,pcw-preset-bank0-voltage = "LVCMOS , 3.3V";
   xlnx,pcw-nor-grp-cs0-enable = <0>;
   xlnx,pcw-mio-33-pullup = "disabled";
   xlnx,pcw-trace-pipeline-width = <8>;
   xlnx,pcw-ftm-cti-in0 = "DISABLED";
   xlnx,pcw-ftm-cti-in1 = "DISABLED";
   xlnx,pcw-ftm-cti-in2 = "DISABLED";
   xlnx,pcw-ftm-cti-in3 = "DISABLED";
   xlnx,pcw-uiparam-ddr-dq-1-length-mm = <0>;
   xlnx,pcw-mio-45-direction = "inout";
   xlnx,pcw-uart-peripheral-divisor0 = <28>;
   xlnx,use-m-axi-gp0 = <1>;
   xlnx,pcw-mio-primitive = <54>;
   xlnx,pcw-ddr-priority-readport-0 = "<Select>";
   xlnx,use-m-axi-gp1 = <0>;
   xlnx,pcw-ddr-priority-readport-1 = "<Select>";
   xlnx,pcw-ddr-priority-readport-2 = "<Select>";
   xlnx,pcw-en-pjtag = <0>;
   xlnx,pcw-fclk0-peripheral-divisor0 = <7>;
   xlnx,pcw-nor-cs0-t-tr = <1>;
   xlnx,pcw-ddr-priority-readport-3 = "<Select>";
   xlnx,pcw-fclk0-peripheral-divisor1 = <2>;
   xlnx,pcw-gpio-emio-gpio-io = "<Select>";
   xlnx,pcw-smc-peripheral-valid = <0>;
   xlnx,pcw-uart1-peripheral-enable = <0>;
   xlnx,pcw-act-smc-peripheral-freqmhz = <10>;
   xlnx,pcw-m-axi-gp1-enable-static-remap = <0>;
   xlnx,pcw-mio-21-iotype = "LVCMOS , 1.8V";
   xlnx,pcw-mio-49-pullup = "disabled";
   xlnx,pcw-mio-50-pullup = "disabled";
   xlnx,pcw-p2f-cti-intr = <0>;
   xlnx,pcw-mio-tree-signals = "gpio[0]#qspi0_ss_b#qspi0_io[0]#qspi0_io[1]#qspi0_io[2]#qspi0_io[3]/HOLD_B#qspi0_sclk#gpio[7]#qspi_fbclk#gpio[9]#gpio[10]#gpio[11]#gpio[12]#gpio[13]#rx#tx#gpio[16]#gpio[17]#gpio[18]#gpio[19]#gpio[20]#gpio[21]#gpio[22]#gpio[23]#gpio[24]#gpio[25]#gpio[26]#gpio[27]#gpio[28]#gpio[29]#gpio[30]#gpio[31]#gpio[32]#gpio[33]#gpio[34]#gpio[35]#gpio[36]#gpio[37]#gpio[38]#gpio[39]#clk#cmd#data[0]#data[1]#data[2]#data[3]#gpio[46]#gpio[47]#gpio[48]#gpio[49]#gpio[50]#gpio[51]#gpio[52]#gpio[53]";
   xlnx,pcw-nor-cs0-t-wc = <11>;
   xlnx,pcw-p2f-smc-intr = <0>;
   xlnx,pcw-qspi-grp-ss1-enable = <0>;
   xlnx,pcw-s-axi-hp2-freqmhz = <10>;
   xlnx,pcw-spi0-grp-ss2-io = "<Select>";
   xlnx,pcw-uiparam-ddr-col-addr-count = <10>;
   xlnx,pcw-ddr-lpr-to-critical-priority-level = <2>;
   xlnx,pcw-armpll-ctrl-fbdiv = <40>;
   xlnx,pcw-spi1-grp-ss1-enable = <0>;
   xlnx,pcw-en-emio-pjtag = <0>;
   xlnx,pcw-uiparam-ddr-high-temp = "Normal , (0-85)";
   xlnx,pcw-uiparam-ddr-dqs-3-propogation-delay = <160>;
   xlnx,pcw-nor-cs0-t-wp = <1>;
   xlnx,pcw-trace-grp-2bit-enable = <0>;
   xlnx,pcw-ttc0-clk2-peripheral-freqmhz = <0x7f28155>;
   xlnx,pcw-mio-1-iotype = "LVCMOS , 3.3V";
   xlnx,pcw-mio-37-iotype = "LVCMOS , 1.8V";
   xlnx,pcw-use-cross-trigger = <0>;
   xlnx,pcw-mio-14-direction = "in";
   xlnx,pcw-s-axi-acp-freqmhz = <10>;
   xlnx,pcw-fclk1-peripheral-divisor0 = <1>;
   xlnx,pcw-fclk1-peripheral-divisor1 = <1>;
   xlnx,pcw-ttc0-ttc0-io = "<Select>";
   xlnx,pcw-spi1-grp-ss2-io = "<Select>";
   xlnx,pcw-ttc1-clk2-peripheral-clksrc = "CPU_1X";
   xlnx,pcw-sd0-grp-wp-io = "EMIO";
   xlnx,pcw-i2c-reset-polarity = "Active , Low";
   xlnx,pcw-mio-24-pullup = "disabled";
   xlnx,pcw-ddr-hprlpr-queue-partition = "HPR(0)/LPR(32)";
   xlnx,pcw-apu-peripheral-freqmhz = <667>;
   xlnx,pcw-mio-1-direction = "out";
   xlnx,pcw-tpiu-peripheral-clksrc = "External";
   xlnx,pcw-core0-irq-intr = <0>;
   xlnx,pcw-uiparam-ddr-memory-type = "DDR , 3";
   xlnx,pcw-uiparam-ddr-clock-1-length-mm = <0>;
   xlnx,s-axi-acp-id-width = <3>;
   xlnx,pcw-mio-24-direction = "inout";
   xlnx,pcw-gpio-emio-gpio-width = <64>;
   xlnx,pcw-uiparam-ddr-clock-1-propogation-delay = <160>;
   xlnx,irq-f2p-mode = "DIRECT";
   xlnx,pcw-mio-12-iotype = "LVCMOS , 3.3V";
   xlnx,pcw-mio-4-pullup = "disabled";
   xlnx,pcw-mio-41-pullup = "disabled";
   xlnx,pcw-clk3-freq = <10000000>;
   xlnx,pcw-can1-peripheral-enable = <0>;
   xlnx,pcw-fclk2-peripheral-divisor0 = <1>;
   xlnx,pcw-mio-51-slew = "slow";
   xlnx,pcw-fclk2-peripheral-divisor1 = <1>;
   xlnx,pcw-fpga-fclk2-enable = <0>;
   xlnx,pcw-clk0-freq = <100000000>;
   xlnx,pcw-mio-47-slew = "slow";
   xlnx,pcw-sdio-peripheral-divisor0 = <56>;
   xlnx,pcw-use-expanded-iop = <0>;
   xlnx,pcw-mio-44-slew = "slow";
   xlnx,pcw-qspi-peripheral-divisor0 = <7>;
   xlnx,pcw-gp0-num-read-threads = <4>;
   xlnx,pcw-en-rst3-port = <0>;
   xlnx,pcw-mio-34-direction = "inout";
   xlnx,pcw-mio-41-slew = "slow";
   xlnx,pcw-tpiu-peripheral-divisor0 = <1>;
   xlnx,pcw-en-rst0-port = <1>;
   xlnx,pcw-mio-28-iotype = "LVCMOS , 1.8V";
   xlnx,pcw-mio-37-slew = "slow";
   xlnx,pcw-sd1-grp-pow-enable = <0>;
   xlnx,pcw-mio-34-slew = "slow";
   xlnx,pcw-en-emio-sram-int = <0>;
   xlnx,pcw-uiparam-ddr-dqs-to-clk-delay-0 = <0>;
   xlnx,pcw-uiparam-ddr-dqs-to-clk-delay-1 = <0>;
   xlnx,pcw-uiparam-ddr-dqs-to-clk-delay-2 = <0>;
   xlnx,pcw-uiparam-ddr-dqs-to-clk-delay-3 = <0>;
   xlnx,pcw-mio-31-slew = "slow";
   xlnx,pcw-sd1-grp-wp-enable = <0>;
   xlnx,pcw-mio-15-pullup = "disabled";
   xlnx,pcw-fclk3-peripheral-divisor0 = <1>;
   xlnx,pcw-fclk3-peripheral-divisor1 = <1>;
   xlnx,pcw-uiparam-ddr-dq-0-length-mm = <0>;
   xlnx,pcw-mio-27-slew = "slow";
   xlnx,pcw-smc-peripheral-freqmhz = <100>;
   xlnx,pcw-num-f2p-intr-inputs = <1>;
   xlnx,pcw-wdt-wdt-io = "<Select>";
   xlnx,pcw-uiparam-ddr-dq-0-propogation-delay = <160>;
   xlnx,pcw-mio-24-slew = "slow";
   xlnx,pcw-mio-44-direction = "inout";
   xlnx,pcw-fpga0-peripheral-freqmhz = <100>;
   xlnx,pcw-mio-8-iotype = "LVCMOS , 3.3V";
   xlnx,pcw-iopll-ctrl-fbdiv = <42>;
   xlnx,pcw-mio-45-iotype = "LVCMOS , 1.8V";
   xlnx,pcw-p2f-can1-intr = <0>;
   xlnx,pcw-ddr-priority-writeport-0 = "<Select>";
   xlnx,pcw-i2c0-reset-io = "<Select>";
   xlnx,pcw-ddr-priority-writeport-1 = "<Select>";
   xlnx,pcw-ddr-priority-writeport-2 = "<Select>";
   xlnx,pcw-mio-21-slew = "slow";
   xlnx,pcw-ddr-priority-writeport-3 = "<Select>";
   xlnx,pcw-en-can0 = <0>;
   xlnx,pcw-mio-17-slew = "slow";
   xlnx,pcw-en-can1 = <0>;
   xlnx,pcw-fpga3-peripheral-freqmhz = <50>;
   xlnx,pcw-trace-grp-16bit-io = "<Select>";
   xlnx,pcw-cpu-peripheral-divisor0 = <2>;
   xlnx,pcw-m-axi-gp1-support-narrow-burst = <0>;
   xlnx,pcw-mio-32-pullup = "disabled";
   xlnx,pcw-usb0-peripheral-enable = <0>;
   xlnx,pcw-mio-14-slew = "slow";
   xlnx,pcw-uiparam-ddr-train-read-gate = <1>;
   xlnx,gp1-en-modifiable-txn = <1>;
   xlnx,name = "processing_system7_0";
   xlnx,pcw-act-spi-peripheral-freqmhz = <10>;
   xlnx,pcw-mio-11-slew = "slow";
   xlnx,pcw-ttc1-clk1-peripheral-freqmhz = <0x7f28155>;
   xlnx,pcw-en-emio-modem-uart0 = <0>;
   xlnx,pcw-dq-width = <32>;
   xlnx,pcw-en-emio-modem-uart1 = <0>;
   xlnx,pcw-sd0-peripheral-enable = <1>;
   xlnx,pcw-nor-grp-cs0-io = "<Select>";
   xlnx,pcw-can-peripheral-valid = <0>;
   xlnx,pcw-m-axi-gp1-id-width = <12>;
   xlnx,pcw-ttc0-clk0-peripheral-clksrc = "CPU_1X";
   xlnx,pcw-act-ttc0-clk1-peripheral-freqmhz = <0x69f6bcb>;
   xlnx,pcw-mio-19-iotype = "LVCMOS , 1.8V";
   xlnx,pcw-mio-20-iotype = "LVCMOS , 1.8V";
   xlnx,pcw-wdt-peripheral-enable = <0>;
   xlnx,pcw-mio-13-direction = "inout";
   xlnx,pcw-enet1-grp-mdio-enable = <0>;
   xlnx,pcw-mio-48-pullup = "disabled";
   xlnx,pcw-sdio-peripheral-clksrc = "IO , PLL";
   xlnx,pcw-p2f-dmac-abort-intr = <0>;
   xlnx,pcw-nor-peripheral-enable = <0>;
   xlnx,pcw-en-sdio0 = <1>;
   xlnx,pcw-ddr-peripheral-divisor0 = <2>;
   xlnx,pcw-en-sdio1 = <0>;
   xlnx,pcw-mio-0-direction = "inout";
   xlnx,pcw-uiparam-ddr-dqs-1-package-length = <0x3fcdfc0>;
   xlnx,pcw-uiparam-ddr-enable = <1>;
   xlnx,pcw-spi1-grp-ss0-enable = <0>;
   xlnx,pcw-usb-reset-polarity = "Active , Low";
   xlnx,pcw-fclk-clk2-buf;
   xlnx,pcw-p2f-uart0-intr = <0>;
   xlnx,pcw-uiparam-ddr-t-rcd = <7>;
   xlnx,ps7-si-rev = "PRODUCTION";
   xlnx,pcw-mio-0-iotype = "LVCMOS , 3.3V";
   xlnx,pcw-uiparam-ddr-clock-0-length-mm = <0>;
   xlnx,pcw-mio-36-iotype = "LVCMOS , 1.8V";
   xlnx,pcw-act-can1-peripheral-freqmhz = <0x16b4ddc>;
   xlnx,pcw-cpu-cpu-pll-freqmhz = <0x4f790c08>;
   xlnx,pcw-mio-23-direction = "inout";
   xlnx,pcw-uiparam-ddr-train-write-level = <1>;
   xlnx,pcw-ddr-write-to-critical-priority-level = <2>;
   xlnx,pcw-nand-peripheral-enable = <0>;
   xlnx,pcw-en-gpio = <1>;
   xlnx,pcw-spi0-spi0-io = "<Select>";
   xlnx,pcw-use-high-ocm = <0>;
   xlnx,pcw-en-emio-sdio0 = <0>;
   xlnx,pcw-mio-23-pullup = "disabled";
   xlnx,pcw-en-emio-sdio1 = <0>;
   xlnx,pcw-gp1-en-modifiable-txn = <1>;
   xlnx,pcw-mio-9-direction = "inout";
   xlnx,pcw-uart-peripheral-clksrc = "IO , PLL";
   xlnx,pcw-en-clktrig3-port = <0>;
   xlnx,pcw-qspi-peripheral-clksrc = "IO , PLL";
   xlnx,pcw-uiparam-ddr-board-delay0 = <0x3d090>;
   xlnx,pcw-uiparam-ddr-board-delay1 = <0x3d090>;
   xlnx,pcw-uiparam-ddr-board-delay2 = <0x3d090>;
   xlnx,pcw-mio-53-iotype = "LVCMOS , 1.8V";
   xlnx,pcw-uiparam-ddr-board-delay3 = <0x3d090>;
   xlnx,pcw-en-clktrig0-port = <0>;
   xlnx,pcw-dm-width = <4>;
   xlnx,pcw-i2c0-i2c0-io = "<Select>";
   xlnx,pcw-mio-33-direction = "inout";
   xlnx,pcw-mio-11-iotype = "LVCMOS , 3.3V";
   xlnx,pcw-mio-3-pullup = "disabled";
   xlnx,fclk-clk3-buf;
   xlnx,pcw-mio-39-pullup = "disabled";
   xlnx,pcw-mio-40-pullup = "disabled";
   xlnx,pcw-uart0-grp-full-io = "<Select>";
   xlnx,pcw-fpga-fclk1-enable = <0>;
   xlnx,pcw-ttc0-peripheral-enable = <0>;
   xlnx,pcw-uiparam-ddr-t-rc = <0x2e7ddb0>;
   xlnx,pcw-uiparam-ddr-adv-enable = <0>;
   xlnx,pcw-i2c-reset-enable = <0>;
   xlnx,pcw-s-axi-hp1-freqmhz = <10>;
   xlnx,use-default-acp-user-val = <0>;
   xlnx,pcw-act-i2c-peripheral-freqmhz = <50>;
   xlnx,pcw-uiparam-ddr-t-faw = <40>;
   xlnx,preset = "None";
   xlnx,pcw-use-proc-event-bus = <0>;
   xlnx,pcw-uiparam-ddr-t-rp = <7>;
   xlnx,pcw-p2f-sdio0-intr = <0>;
   xlnx,pcw-mio-43-direction = "inout";
   xlnx,s-axi-hp3-id-width = <6>;
   xlnx,pcw-mio-27-iotype = "LVCMOS , 1.8V";
   xlnx,pcw-uiparam-ddr-dq-3-propogation-delay = <160>;
   xlnx,pcw-p2f-spi1-intr = <0>;
   xlnx,pcw-spi-peripheral-freqmhz = <0x9ef21aa>;
   xlnx,m-axi-gp0-thread-id-width = <12>;
   xlnx,s-axi-gp0-id-width = <6>;
   xlnx,pcw-mio-14-pullup = "disabled";
   xlnx,pcw-mio-9-slew = "slow";
   xlnx,m-axi-gp0-enable-static-remap = <0>;
   xlnx,pcw-mio-53-direction = "inout";
   xlnx,pcw-mio-6-slew = "slow";
   xlnx,pcw-mio-7-iotype = "LVCMOS , 3.3V";
   xlnx,pcw-mio-44-iotype = "LVCMOS , 1.8V";
   xlnx,pcw-use-fabric-interrupt = <0>;
   xlnx,pcw-act-ttc1-clk0-peripheral-freqmhz = <0x69f6bcb>;
   xlnx,pcw-mio-3-slew = "slow";
   xlnx,pcw-sd1-grp-cd-io = "<Select>";
   xlnx,pcw-use-s-axi-gp0 = <0>;
   xlnx,pcw-use-s-axi-gp1 = <0>;
   xlnx,pcw-en-usb0 = <0>;
   xlnx,pcw-mio-0-slew = "slow";
   xlnx,pcw-nor-grp-sram-int-io = "<Select>";
   xlnx,pcw-en-usb1 = <0>;
   xlnx,pcw-mio-12-direction = "inout";
   xlnx,pcw-pjtag-peripheral-enable = <0>;
   xlnx,pcw-pcap-peripheral-clksrc = "IO , PLL";
   xlnx,pcw-m-axi-gp1-thread-id-width = <12>;
   xlnx,pcw-mio-31-pullup = "disabled";
   xlnx,pcw-usb-reset-enable = <0>;
   xlnx,pcw-mio-tree-peripherals = "GPIO#Quad , SPI , Flash#Quad , SPI , Flash#Quad , SPI , Flash#Quad , SPI , Flash#Quad , SPI , Flash#Quad , SPI , Flash#GPIO#Quad , SPI , Flash#GPIO#GPIO#GPIO#GPIO#GPIO#UART , 0#UART , 0#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#SD , 0#SD , 0#SD , 0#SD , 0#SD , 0#SD , 0#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO";
   xlnx,s-axi-hp0-id-width = <6>;
   xlnx,include-trace-buffer = <0>;
   xlnx,pcw-use-cr-fabric = <1>;
   xlnx,pcw-enet0-peripheral-clksrc = "External";
   xlnx,package-name = "clg400";
   xlnx,m-axi-gp1-enable-static-remap = <0>;
   xlnx,pcw-en-clk2-port = <0>;
   xlnx,pcw-p2f-dmac5-intr = <0>;
   xlnx,pcw-mio-18-iotype = "LVCMOS , 1.8V";
   xlnx,pcw-mio-22-direction = "inout";
   xlnx,pcw-mio-47-pullup = "disabled";
   xlnx,pcw-apu-clk-ratio-enable = "6:2:1";
   xlnx,pcw-act-fpga0-peripheral-freqmhz = <100>;
   xlnx,pcw-p2f-dmac2-intr = <0>;
   xlnx,pcw-fclk2-peripheral-clksrc = "IO , PLL";
   xlnx,rable = <1>;
   xlnx,pcw-usb1-usb1-io = "<Select>";
   xlnx,ip-name = "processing_system7";
   xlnx,pcw-mio-8-direction = "out";
   xlnx,pcw-s-axi-hp2-id-width = <6>;
   xlnx,pcw-act-fpga3-peripheral-freqmhz = <10>;
   xlnx,pcw-qspi-grp-fbclk-enable = <1>;
   xlnx,pcw-qspi-grp-io1-io = "<Select>";
   xlnx,pcw-trace-buffer-fifo-size = <128>;
   xlnx,pcw-use-trace-data-edge-detector = <0>;
   xlnx,pcw-mio-35-iotype = "LVCMOS , 1.8V";
   xlnx,pcw-sd1-sd1-io = "<Select>";
   xlnx,pcw-en-enet0 = <0>;
   xlnx,pcw-en-enet1 = <0>;
   xlnx,pcw-mio-32-direction = "inout";
   xlnx,pcw-sd0-grp-wp-enable = <1>;
   xlnx,include-acp-trans-check = <0>;
   xlnx,pcw-i2c-peripheral-freqmhz = <25>;
   xlnx,pcw-uart0-peripheral-enable = <1>;
   xlnx,pcw-p2f-enet0-intr = <0>;
   xlnx,pcw-spi0-grp-ss1-io = "<Select>";
   xlnx,pcw-mio-22-pullup = "disabled";
   xlnx,pcw-can0-can0-io = "<Select>";
   xlnx,pcw-s-axi-gp1-freqmhz = <10>;
   xlnx,pcw-en-ddr = <1>;
   xlnx,pcw-qspi-internal-highaddress = <0xfcffffff>;
   xlnx,pcw-mio-52-iotype = "LVCMOS , 1.8V";
   xlnx,pcw-en-emio-enet0 = <0>;
   xlnx,pcw-uiparam-ddr-clock-0-package-length = <0x4cb9f7c>;
   xlnx,pcw-en-emio-enet1 = <0>;
   xlnx,pcw-uiparam-ddr-dqs-2-propogation-delay = <160>;
   xlnx,pcw-mio-42-direction = "inout";
   xlnx,pcw-use-s-axi-hp0 = <1>;
   xlnx,pcw-use-s-axi-hp1 = <0>;
   xlnx,pcw-enet0-peripheral-divisor0 = <1>;
   xlnx,pcw-mio-10-iotype = "LVCMOS , 3.3V";
   xlnx,pcw-use-s-axi-hp2 = <0>;
   xlnx,pcw-enet0-peripheral-divisor1 = <1>;
   xlnx,pcw-mio-2-pullup = "disabled";
   xlnx,pcw-use-s-axi-hp3 = <0>;
   xlnx,pcw-mio-38-pullup = "disabled";
   xlnx,pcw-spi1-grp-ss1-io = "<Select>";
   xlnx,pcw-fpga-fclk0-enable = <1>;
   xlnx,pcw-uiparam-ddr-dqs-2-package-length = <0x550a62c>;
   xlnx,pcw-p2f-qspi-intr = <0>;
   xlnx,pcw-ttc1-clk1-peripheral-clksrc = "CPU_1X";
   xlnx,pcw-gp1-num-write-threads = <4>;
   xlnx,pcw-fclk-clk0-buf;
   xlnx,pcw-uiparam-ddr-use-internal-vref = <0>;
   xlnx,trace-buffer-clock-delay = <12>;
   xlnx,pcw-en-4k-timer = <0>;
   xlnx,pcw-p2f-i2c1-intr = <0>;
   xlnx,pcw-mio-52-direction = "inout";
   xlnx,pcw-override-basic-clock = <0>;
   xlnx,pcw-mio-26-iotype = "LVCMOS , 1.8V";
   xlnx,dq-width = <32>;
   xlnx,pcw-s-axi-hp0-data-width = <64>;
   xlnx,pcw-en-emio-i2c0 = <0>;
   xlnx,pcw-ttc0-clk0-peripheral-freqmhz = <0x7f28155>;
   xlnx,pcw-en-emio-i2c1 = <0>;
   xlnx,use-s-axi-acp = <0>;
   xlnx,pcw-sd0-grp-cd-io = "EMIO";
   xlnx,pcw-uiparam-ddr-clock-0-propogation-delay = <160>;
   xlnx,pcw-pcap-peripheral-freqmhz = <200>;
   xlnx,pcw-act-dci-peripheral-freqmhz = <0x9b028a>;
   xlnx,pcw-mio-11-direction = "inout";
   xlnx,pcw-enet1-peripheral-divisor0 = <1>;
   xlnx,pcw-use-default-acp-user-val = <0>;
   xlnx,pcw-ddrpll-ctrl-fbdiv = <32>;
   xlnx,pcw-enet1-peripheral-divisor1 = <1>;
   xlnx,pcw-mio-13-pullup = "disabled";
   xlnx,pcw-ps7-si-rev = "PRODUCTION";
   xlnx,pcw-can0-peripheral-enable = <0>;
   xlnx,pcw-use-m-axi-gp0 = <1>;
   xlnx,pcw-en-emio-cd-sdio0 = <1>;
   xlnx,pcw-uart0-uart0-io = "MIO , 14 , .. , 15";
   xlnx,pcw-use-m-axi-gp1 = <0>;
   xlnx,pcw-en-emio-cd-sdio1 = <0>;
   xlnx,pcw-core1-irq-intr = <0>;
   xlnx,pcw-mio-6-iotype = "LVCMOS , 3.3V";
   xlnx,pcw-mio-43-iotype = "LVCMOS , 1.8V";
   xlnx,pcw-i2c1-reset-enable = <0>;
   xlnx,pcw-s-axi-hp1-data-width = <64>;
   xlnx,pcw-trace-grp-8bit-enable = <0>;
   xlnx,dqs-width = <4>;
   xlnx,fclk-clk1-buf;
   xlnx,pcw-mio-21-direction = "inout";
   xlnx,pcw-mio-29-pullup = "disabled";
   xlnx,pcw-mio-30-pullup = "disabled";
   xlnx,trace-internal-width = <2>;
   xlnx,pcw-s-axi-hp0-freqmhz = <100>;
   xlnx,pcw-mio-7-direction = "out";
   xlnx,pcw-i2c0-reset-enable = <0>;
   xlnx,pcw-mio-53-slew = "slow";
   xlnx,pcw-sdio-peripheral-freqmhz = <25>;
   xlnx,pcw-uart1-uart1-io = "<Select>";
   xlnx,pcw-dqs-width = <4>;
   xlnx,pcw-s-axi-hp2-data-width = <64>;
   xlnx,pcw-clk2-freq = <10000000>;
   xlnx,pcw-mio-49-slew = "slow";
   xlnx,pcw-mio-50-slew = "slow";
   xlnx,pcw-mio-17-iotype = "LVCMOS , 1.8V";
   xlnx,pcw-en-emio-ttc0 = <0>;
   xlnx,pcw-mio-9-pullup = "disabled";
   xlnx,pcw-en-emio-ttc1 = <0>;
   xlnx,pcw-mio-46-pullup = "disabled";
   xlnx,pcw-mio-31-direction = "inout";
   xlnx,pcw-mio-46-slew = "slow";
   xlnx,pcw-sd1-grp-cd-enable = <0>;
   xlnx,dm-width = <4>;
   xlnx,pcw-i2c0-grp-int-io = "<Select>";
   xlnx,pcw-mio-43-slew = "slow";
   xlnx,pcw-use-axi-fabric-idle = <0>;
   xlnx,pcw-en-rst2-port = <0>;
   xlnx,pcw-gpio-emio-gpio-enable = <0>;
   xlnx,pcw-mio-39-slew = "slow";
   xlnx,pcw-mio-40-slew = "slow";
   xlnx,gp0-en-modifiable-txn = <1>;
   xlnx,pcw-uart1-grp-full-io = "<Select>";
   xlnx,pcw-uart-peripheral-valid = <1>;
   xlnx,pcw-mio-36-slew = "slow";
   xlnx,pcw-uiparam-ddr-dq-0-package-length = <0x5df0958>;
   xlnx,pcw-s-axi-hp3-data-width = <64>;
   xlnx,pcw-enet0-peripheral-freqmhz = "1000 , Mbps";
   xlnx,trace-pipeline-width = <8>;
   xlnx,m-axi-gp0-id-width = <12>;
   xlnx,pcw-mio-33-slew = "slow";
   xlnx,pcw-mio-34-iotype = "LVCMOS , 1.8V";
   xlnx,pcw-use-coresight = <0>;
   xlnx,pcw-uiparam-ddr-bus-width = "16 , Bit";
   xlnx,pcw-en-emio-spi0 = <0>;
   xlnx,pcw-en-emio-spi1 = <0>;
   xlnx,pcw-i2c1-reset-io = "<Select>";
   xlnx,pcw-mio-29-slew = "slow";
   xlnx,pcw-mio-30-slew = "slow";
   xlnx,pcw-mio-41-direction = "inout";
   xlnx,pcw-use-debug = <0>;
   xlnx,pcw-smc-peripheral-divisor0 = <1>;
   xlnx,pcw-i2c1-grp-int-io = "<Select>";
   xlnx,pcw-mio-26-slew = "slow";
   xlnx,pcw-s-axi-acp-aruser-val = <31>;
   xlnx,pcw-uiparam-ddr-t-ras-min = <35>;
   xlnx,pcw-can1-peripheral-clksrc = "External";
   xlnx,pcw-irq-f2p-mode = "DIRECT";
   xlnx,pcw-mio-21-pullup = "disabled";
   xlnx,pcw-usb0-reset-io = "<Select>";
   xlnx,pcw-mio-23-slew = "slow";
   xlnx,pcw-uiparam-ddr-train-data-eye = <1>;
   xlnx,pcw-p2f-can0-intr = <0>;
   xlnx,pcw-fpga1-peripheral-freqmhz = <100>;
   xlnx,pcw-s-axi-acp-id-width = <3>;
   xlnx,pcw-smc-peripheral-clksrc = "IO , PLL";
   xlnx,pcw-mio-19-slew = "slow";
   xlnx,pcw-mio-20-slew = "slow";
   xlnx,pcw-nand-grp-d8-enable = <0>;
   xlnx,pcw-nor-sram-cs1-t-pc = <1>;
   xlnx,pcw-mio-51-iotype = "LVCMOS , 1.8V";
   xlnx,pcw-enet-reset-select = "<Select>";
   xlnx,pcw-mio-16-slew = "slow";
   xlnx,pcw-dci-peripheral-freqmhz = <0x9b0398>;
   xlnx,pcw-mio-13-slew = "slow";
   xlnx,pcw-mio-51-direction = "inout";
   xlnx,pcw-mio-1-pullup = "disabled";
   xlnx,pcw-mio-10-slew = "slow";
   xlnx,pcw-mio-37-pullup = "disabled";
   xlnx,pcw-nor-sram-cs1-t-rc = <11>;
   xlnx,pcw-ttc1-clk2-peripheral-freqmhz = <0x7f28155>;
   xlnx,pcw-mio-10-direction = "inout";
   xlnx,pcw-uiparam-ddr-clock-3-propogation-delay = <160>;
   xlnx,pcw-use-ddr-bypass = <0>;
   xlnx,pcw-en-modem-uart0 = <0>;
   xlnx,pcw-en-modem-uart1 = <0>;
   xlnx,pcw-trace-grp-16bit-enable = <0>;
   xlnx,pcw-uiparam-ddr-freq-mhz = <0x1fca0555>;
   xlnx,pcw-gp0-en-modifiable-txn = <1>;
   xlnx,pcw-nor-sram-cs1-we-time = <0>;
   xlnx,pcw-act-ttc0-clk2-peripheral-freqmhz = <0x69f6bcb>;
   xlnx,pcw-uiparam-ddr-ecc = "Disabled";
   xlnx,pcw-mio-25-iotype = "LVCMOS , 1.8V";
   xlnx,pcw-act-pcap-peripheral-freqmhz = <200>;
   xlnx,pcw-uart1-grp-full-enable = <0>;
   xlnx,pcw-ddr-peripheral-clksrc = "DDR , PLL";
   xlnx,pcw-mio-19-direction = "inout";
   xlnx,pcw-mio-20-direction = "inout";
   xlnx,pcw-mio-12-pullup = "disabled";
   xlnx,en-emio-trace = <0>;
   xlnx,pcw-nor-sram-cs1-t-tr = <1>;
   xlnx,pcw-nor-nor-io = "<Select>";
   xlnx,pcw-s-axi-gp0-freqmhz = <10>;
   xlnx,pcw-spi-peripheral-divisor0 = <1>;
   xlnx,pcw-trace-buffer-clock-delay = <12>;
   xlnx,pcw-uiparam-ddr-clock-1-package-length = <0x4cb9f7c>;
   xlnx,pcw-mio-5-iotype = "LVCMOS , 3.3V";
   xlnx,pcw-mio-6-direction = "out";
   xlnx,pcw-mio-42-iotype = "LVCMOS , 1.8V";
   xlnx,pcw-s-axi-acp-awuser-val = <31>;
   xlnx,pcw-use-expanded-ps-slcr-registers = <0>;
   xlnx,pcw-uiparam-ddr-cwl = <6>;
   xlnx,pcw-spi1-peripheral-enable = <0>;
   xlnx,pcw-nor-sram-cs1-t-wc = <11>;
   xlnx,pcw-tpiu-peripheral-freqmhz = <200>;
   xlnx,pcw-pjtag-pjtag-io = "<Select>";
   xlnx,pcw-wdt-peripheral-clksrc = "CPU_1X";
   xlnx,pcw-uiparam-ddr-dq-2-propogation-delay = <160>;
   xlnx,pcw-uiparam-ddr-dqs-3-package-length = <0x6c5db30>;
   xlnx,pcw-mio-28-pullup = "disabled";
   xlnx,pcw-mio-29-direction = "inout";
   xlnx,pcw-mio-30-direction = "inout";
   xlnx,pcw-en-clktrig2-port = <0>;
   xlnx,pcw-enet0-grp-mdio-enable = <0>;
   xlnx,pcw-usb0-peripheral-freqmhz = <60>;
   xlnx,pcw-nor-sram-cs1-t-wp = <1>;
   xlnx,pcw-act-ttc-peripheral-freqmhz = <50>;
   xlnx,pcw-act-sdio-peripheral-freqmhz = <25>;
   xlnx,pcw-import-board-preset = "None";
   xlnx,pcw-mio-16-iotype = "LVCMOS , 1.8V";
   xlnx,pcw-mio-8-pullup = "disabled";
   xlnx,pcw-enet0-enet0-io = "<Select>";
   xlnx,pcw-mio-45-pullup = "disabled";
   xlnx,pcw-mio-39-direction = "inout";
   xlnx,pcw-mio-40-direction = "inout";
   xlnx,pcw-uiparam-ddr-device-capacity = "4096 , MBits";
   xlnx,pcw-uiparam-ddr-al = <0>;
   xlnx,pcw-can-peripheral-divisor0 = <1>;
   xlnx,pcw-can-peripheral-divisor1 = <1>;
   xlnx,use-trace-data-edge-detector = <0>;
   xlnx,pcw-ttc0-clk2-peripheral-clksrc = "CPU_1X";
   xlnx,pcw-nor-cs1-t-ceoe = <1>;
   xlnx,pcw-qspi-grp-io1-enable = <0>;
   xlnx,s-axi-gp1-id-width = <6>;
   xlnx,pcw-uiparam-ddr-bl = <8>;
   xlnx,pcw-peripheral-board-preset = "part0";
   xlnx,pcw-en-emio-wp-sdio0 = <1>;
   xlnx,pcw-p2f-usb1-intr = <0>;
   xlnx,pcw-en-emio-wp-sdio1 = <0>;
   xlnx,pcw-m-axi-gp1-freqmhz = <10>;
   xlnx,pcw-p2f-spi0-intr = <0>;
   xlnx,pcw-sd0-grp-pow-io = "<Select>";
   xlnx,pcw-mio-33-iotype = "LVCMOS , 1.8V";
   xlnx,pcw-uiparam-ddr-cl = <7>;
   xlnx,pcw-ttc1-ttc1-io = "<Select>";
   xlnx,pcw-en-smc = <1>;
   xlnx,pcw-fclk-clk3-buf;
   xlnx,pcw-mio-49-direction = "inout";
   xlnx,pcw-mio-50-direction = "inout";
   xlnx,pcw-enet0-reset-io = "<Select>";
   xlnx,pcw-mio-8-slew = "slow";
   xlnx,pcw-mio-19-pullup = "disabled";
   xlnx,pcw-mio-20-pullup = "disabled";
   xlnx,pcw-enet1-enet1-io = "<Select>";
   xlnx,pcw-qspi-grp-ss1-io = "<Select>";
   xlnx,pcw-en-i2c0 = <0>;
   xlnx,pcw-dci-peripheral-divisor0 = <15>;
   xlnx,pcw-en-i2c1 = <0>;
   xlnx,pcw-dci-peripheral-divisor1 = <7>;
   xlnx,pcw-mio-5-slew = "slow";
   xlnx,pcw-core0-fiq-intr = <0>;
   xlnx,s-axi-hp1-id-width = <6>;
   xlnx,pcw-fclk1-peripheral-clksrc = "IO , PLL";
   xlnx,pcw-act-ttc1-clk1-peripheral-freqmhz = <0x69f6bcb>;
   xlnx,pcw-mio-2-slew = "slow";
   xlnx,pcw-en-qspi = <0>;
   xlnx,pcw-mio-49-iotype = "LVCMOS , 1.8V";
   xlnx,pcw-mio-50-iotype = "LVCMOS , 1.8V";
   xlnx,pcw-sd1-grp-pow-io = "<Select>";
   xlnx,pcw-en-uart0 = <1>;
   xlnx,pcw-i2c1-peripheral-enable = <0>;
   xlnx,pcw-en-uart1 = <0>;
   xlnx,pcw-ddr-port0-hpr-enable = <0>;
   xlnx,pcw-mio-0-pullup = "disabled";
   xlnx,pcw-enet1-peripheral-enable = <0>;
   xlnx,pcw-gpio-mio-gpio-io = "MIO";
   xlnx,pcw-mio-36-pullup = "disabled";
   xlnx,pcw-spi0-grp-ss0-io = "<Select>";
  };
  ps7_pmu_0: ps7_pmu@f8891000 {
   xlnx,rable = <0>;
   compatible = "xlnx,ps7-pmu-1.00.a";
   status = "okay";
   xlnx,ip-name = "ps7_pmu";
   reg = <0xf8891000 0x1000 0xf8893000 0x1000>;
   xlnx,name = "ps7_pmu_0";
  };
  ps7_ddr_0: ps7_ddr@100000 {
   xlnx,rable = <0>;
   compatible = "xlnx,ps7-ddr-1.00.a";
   status = "okay";
   xlnx,ip-name = "ps7_ddr";
   reg = <0x00100000 0x1ff00000>;
   xlnx,name = "ps7_ddr_0";
  };
  ps7_ocmc_0: ps7_ocmc@f800c000 {
   xlnx,rable = <0>;
   compatible = "xlnx,ps7-ocmc-1.00.a";
   status = "okay";
   xlnx,ip-name = "ps7_ocmc";
   reg = <0xf800c000 0x1000>;
   xlnx,name = "ps7_ocmc_0";
  };
  ps7_gpv_0: ps7_gpv@f8900000 {
   xlnx,rable = <0>;
   compatible = "xlnx,ps7-gpv-1.00.a";
   status = "okay";
   xlnx,ip-name = "ps7_gpv";
   reg = <0xf8900000 0x100000>;
   xlnx,name = "ps7_gpv_0";
  };
  ps7_scuc_0: ps7_scuc@f8f00000 {
   xlnx,rable = <0>;
   compatible = "xlnx,ps7-scuc-1.00.a";
   status = "okay";
   xlnx,ip-name = "ps7_scuc";
   reg = <0xf8f00000 0xfd>;
   xlnx,name = "ps7_scuc_0";
  };
  ps7_iop_bus_config_0: ps7_iop_bus_config@e0200000 {
   xlnx,rable = <0>;
   compatible = "xlnx,ps7-iop-bus-config-1.00.a";
   status = "okay";
   xlnx,ip-name = "ps7_iop_bus_config";
   reg = <0xe0200000 0x1000>;
   xlnx,name = "ps7_iop_bus_config_0";
  };
  ps7_ram_0: ps7_ram@0 {
   xlnx,rable = <0>;
   compatible = "xlnx,ps7-ram-1.00.a";
   status = "okay";
   xlnx,ip-name = "ps7_ram";
   reg = <0x00000000 0x30000 0x00000000 0x40000>;
   xlnx,name = "ps7_ram_0";
  };
  ps7_ram_1: ps7_ram@ffff0000 {
   xlnx,rable = <0>;
   compatible = "xlnx,ps7-ram-1.00.a";
   status = "okay";
   xlnx,ip-name = "ps7_ram";
   reg = <0xffff0000 0xfe00>;
   xlnx,name = "ps7_ram_1";
  };
  ps7_dma_ns: ps7_dma@f8004000 {
   xlnx,rable = <0>;
   compatible = "xlnx,ps7-dma-1.00.a";
   status = "okay";
   xlnx,ip-name = "ps7_dma";
   xlnx,is-secure;
   reg = <0xf8004000 0x1000>;
   xlnx,name = "ps7_dma_ns";
  };
  ps7_afi_0: ps7_afi@f8008000 {
   xlnx,rable = <0>;
   compatible = "xlnx,ps7-afi-1.00.a";
   status = "okay";
   xlnx,ip-name = "ps7_afi";
   reg = <0xf8008000 0x1000>;
   xlnx,name = "ps7_afi_0";
  };
  ps7_afi_1: ps7_afi@f8009000 {
   xlnx,rable = <0>;
   compatible = "xlnx,ps7-afi-1.00.a";
   status = "okay";
   xlnx,ip-name = "ps7_afi";
   reg = <0xf8009000 0x1000>;
   xlnx,name = "ps7_afi_1";
  };
  ps7_afi_2: ps7_afi@f800a000 {
   xlnx,rable = <0>;
   compatible = "xlnx,ps7-afi-1.00.a";
   status = "okay";
   xlnx,ip-name = "ps7_afi";
   reg = <0xf800a000 0x1000>;
   xlnx,name = "ps7_afi_2";
  };
  ps7_afi_3: ps7_afi@f800b000 {
   xlnx,rable = <0>;
   compatible = "xlnx,ps7-afi-1.00.a";
   status = "okay";
   xlnx,ip-name = "ps7_afi";
   reg = <0xf800b000 0x1000>;
   xlnx,name = "ps7_afi_3";
  };
  ps7_m_axi_gp0: ps7_m_axi_gp@40000000 {
   xlnx,rable = <0>;
   compatible = "xlnx,ps7-m-axi-gp-1.00.a";
   status = "okay";
   xlnx,ip-name = "ps7_m_axi_gp";
   xlnx,is-hierarchy;
   reg = <0x40000000 0x40000000>;
   xlnx,name = "ps7_m_axi_gp0";
  };
  ps7_qspi_linear_0: ps7_qspi_linear@fc000000 {
   reg = <0xfc000000 0x1000000>;
  };
 };
 &uart0 {
  xlnx,rable = <0>;
  status = "okay";
  xlnx,clock-freq = <50000000>;
  xlnx,has-modem = <0>;
  xlnx,ip-name = "ps7_uart";
  cts-override;
  port-number = <0>;
  xlnx,uart-clk-freq-hz = <50000000>;
  xlnx,name = "ps7_uart_0";
 };
 &qspi {
  num-cs = <1>;
  xlnx,qspi-clk-freq-hz = <200000000>;
  xlnx,rable = <0>;
  xlnx,bus-width = <2>;
  xlnx,ip-name = "ps7_qspi";
  spi-rx-bus-width = <4>;
  xlnx,connection-mode = <0>;
  spi-tx-bus-width = <4>;
  status = "okay";
  qspi-fbclk = <0>;
  xlnx,clock-freq = <200000000>;
  xlnx,fb-clk = <1>;
  xlnx,qspi-mode = <0>;
  xlnx,name = "ps7_qspi_0";
  xlnx,qspi-bus-width = <2>;
  is-dual = <0>;
 };
 &sdhci0 {
  xlnx,rable = <0>;
  xlnx,has-power = <0>;
  status = "okay";
  xlnx,ip-name = "ps7_sdio";
  xlnx,sdio-clk-freq-hz = <25000000>;
  xlnx,has-wp = <1>;
  xlnx,has-cd = <1>;
  xlnx,name = "ps7_sd_0";
 };
 &gpio0 {
  xlnx,rable = <0>;
  xlnx,mio-gpio-mask = <0x5600>;
  status = "okay";
  gpio-mask-high = <0>;
  xlnx,emio-gpio-width = <64>;
  xlnx,ip-name = "ps7_gpio";
  gpio-mask-low = <22016>;
  emio-gpio-width = <0x40>;
  xlnx,name = "ps7_gpio_0";
 };
 &mc {
  xlnx,rable = <0>;
  status = "okay";
  xlnx,ddr-clk-freq-hz = <533333374>;
  xlnx,ip-name = "ps7_ddrc";
  xlnx,has-ecc = <0>;
  xlnx,name = "ps7_ddrc_0";
 };
 &devcfg {
  xlnx,rable = <0>;
  status = "okay";
  xlnx,ip-name = "ps7_dev_cfg";
  xlnx,name = "ps7_dev_cfg_0";
 };
 &adc {
  xlnx,rable = <0>;
  status = "okay";
  xlnx,ip-name = "ps7_xadc";
  xlnx,name = "ps7_xadc_0";
 };
 &coresight {
  xlnx,rable = <0>;
  status = "okay";
  xlnx,ip-name = "ps7_coresight_comp";
  xlnx,name = "ps7_coresight_comp_0";
 };
 &global_timer {
  xlnx,rable = <0>;
  status = "okay";
  xlnx,ip-name = "ps7_globaltimer";
  xlnx,name = "ps7_globaltimer_0";
 };
 &L2 {
  xlnx,rable = <0>;
  status = "okay";
  xlnx,ip-name = "ps7_pl310";
  xlnx,name = "ps7_pl310_0";
 };
 &dmac_s {
  xlnx,rable = <0>;
  status = "okay";
  xlnx,ip-name = "ps7_dma";
  xlnx,is-secure;
  xlnx,name = "ps7_dma_s";
 };
 &intc {
  xlnx,rable = <0>;
  status = "okay";
  xlnx,irq-f2p-mode = "DIRECT";
  xlnx,ip-name = "ps7_intc_dist";
  xlnx,name = "ps7_intc_dist_0";
 };
 &scutimer {
  xlnx,rable = <0>;
  status = "okay";
  xlnx,ip-name = "ps7_scutimer";
  xlnx,name = "ps7_scutimer_0";
 };
 &scuwdt {
  xlnx,rable = <0>;
  status = "okay";
  xlnx,ip-name = "ps7_scuwdt";
  xlnx,name = "ps7_scuwdt_0";
 };
 &slcr {
  xlnx,rable = <0>;
  status = "okay";
  xlnx,ip-name = "ps7_slcr";
  xlnx,name = "ps7_slcr_0";
 };
 &clkc {
  fclk-enable = <0x1>;
  ps-clk-frequency = <33333333>;
 };
# 5 "C:\\lab1\\MicroPhase-Z7-Lite-Board\\examples\\idec\\lab3\\edt_zc702_workspace\\edt_zc702\\hw\\sdt\\system-top.dts" 2
/ {
 board = "z7_lite_z7020";
 compatible = "xlnx,z7_lite_z7020";
 device_id = "7z020";
 slrcount = <1>;
 family = "Zynq";
 ps7_qspi_linear_0_memory: memory@fc000000 {
  compatible = "xlnx,ps7-qspi-linear-1.00.a-memory";
  xlnx,ip-name = "ps7_qspi_linear";
  device_type = "memory";
  memory_type = "linear_flash";
  reg = <0xfc000000 0x1000000>;
 };
 ps7_ddr_0_memory: memory@00100000 {
  compatible = "xlnx,ps7-ddr-1.00.a";
  xlnx,ip-name = "ps7_ddr";
  device_type = "memory";
  memory_type = "memory";
  reg = <0x00100000 0x1FF00000>;
 };
 ps7_ram_0_memory: memory@0 {
  compatible = "xlnx,ps7-ram-1.00.a";
  xlnx,ip-name = "ps7_ram";
  device_type = "memory";
  memory_type = "memory";
  reg = <0x0 0x30000>;
 };
 ps7_ram_1_memory: memory@ffff0000 {
  compatible = "xlnx,ps7-ram-1.00.a";
  xlnx,ip-name = "ps7_ram";
  device_type = "memory";
  memory_type = "memory";
  reg = <0xffff0000 0xfe00>;
 };
 chosen {
  stdout-path = "serial0:115200n8";
 };
 aliases {
  serial0 = &uart0;
  spi0 = &qspi;
  serial1 = &coresight;
 };
 cpus_a9: cpus-a9@0 {
  compatible = "cpus,cluster";
  address-map = <0xf0000000 &amba 0xf0000000 0x10000000>,
         <0x00100000 &ps7_ddr_0_memory 0x00100000 0x1FF00000>,
         <0x0 &ps7_ram_0_memory 0x0 0x30000>,
         <0xffff0000 &ps7_ram_1_memory 0xffff0000 0xfe00>,
         <0x43c00000 &axi_master_pl_0 0x43c00000 0x10000>,
         <0xf8008000 &ps7_afi_0 0xf8008000 0x1000>,
         <0xf8009000 &ps7_afi_1 0xf8009000 0x1000>,
         <0xf800a000 &ps7_afi_2 0xf800a000 0x1000>,
         <0xf800b000 &ps7_afi_3 0xf800b000 0x1000>,
         <0xf8800000 &coresight 0xf8800000 0x100000>,
         <0xf8006000 &mc 0xf8006000 0x1000>,
         <0xf8007000 &devcfg 0xf8007000 0x100>,
         <0xf8004000 &ps7_dma_ns 0xf8004000 0x1000>,
         <0xf8003000 &dmac_s 0xf8003000 0x1000>,
         <0xf8f00200 &global_timer 0xf8f00200 0x100>,
         <0xe000a000 &gpio0 0xe000a000 0x1000>,
         <0xf8900000 &ps7_gpv_0 0xf8900000 0x100000>,
         <0xf8f01000 &intc 0xf8f01000 0x1000>,
         <0xe0200000 &ps7_iop_bus_config_0 0xe0200000 0x1000>,
         <0xf8f02000 &L2 0xf8f02000 0x1000>,
         <0xf800c000 &ps7_ocmc_0 0xf800c000 0x1000>,
         <0xf8891000 &ps7_pmu_0 0xf8891000 0x1000>,
         <0xe000d000 &qspi 0xe000d000 0x1000>,
         <0xfc000000 &ps7_qspi_linear_0_memory 0xfc000000 0x1000000>,
         <0xf8f00000 &ps7_scuc_0 0xf8f00000 0xfd>,
         <0xf8f00600 &scutimer 0xf8f00600 0x20>,
         <0xf8f00620 &scuwdt 0xf8f00620 0xe0>,
         <0xe0100000 &sdhci0 0xe0100000 0x1000>,
         <0xf8000000 &slcr 0xf8000000 0x1000>,
         <0xe0000000 &uart0 0xe0000000 0x1000>,
         <0xf8007100 &adc 0xf8007100 0x21>;
  #ranges-address-cells = <0x1>;
  #ranges-size-cells = <0x1>;
 };
};

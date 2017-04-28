Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d4768-0005BR-W2
 for barebox@lists.infradead.org; Fri, 28 Apr 2017 14:42:33 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Fri, 28 Apr 2017 16:41:43 +0200
Message-Id: <986f3304de6e87182f79273efe3529bf4e0c7289.1493390425.git-series.s.trumtrar@pengutronix.de>
In-Reply-To: <cover.b17594671f0f1ee5a936d08ad9512705c8fa52e5.1493390425.git-series.s.trumtrar@pengutronix.de>
References: <cover.b17594671f0f1ee5a936d08ad9512705c8fa52e5.1493390425.git-series.s.trumtrar@pengutronix.de>
In-Reply-To: <cover.b17594671f0f1ee5a936d08ad9512705c8fa52e5.1493390425.git-series.s.trumtrar@pengutronix.de>
References: <cover.b17594671f0f1ee5a936d08ad9512705c8fa52e5.1493390425.git-series.s.trumtrar@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v2 7/8] ARM: socfpga: add support for reflex achilles board
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/boards/Makefile                                |   1 +-
 arch/arm/boards/reflex-achilles/Makefile                |   2 +-
 arch/arm/boards/reflex-achilles/hps.xml                 | 351 +++++++++-
 arch/arm/boards/reflex-achilles/lowlevel.c              |  48 +-
 arch/arm/boards/reflex-achilles/pinmux-config-arria10.c | 102 +++-
 arch/arm/boards/reflex-achilles/pll-config-arria10.c    |  54 +-
 arch/arm/dts/Makefile                                   |   1 +-
 arch/arm/dts/socfpga_arria10_achilles.dts               | 124 +++-
 arch/arm/mach-socfpga/Kconfig                           |   5 +-
 images/Makefile.socfpga                                 |   4 +-
 10 files changed, 692 insertions(+)
 create mode 100644 arch/arm/boards/reflex-achilles/Makefile
 create mode 100644 arch/arm/boards/reflex-achilles/hps.xml
 create mode 100644 arch/arm/boards/reflex-achilles/lowlevel.c
 create mode 100644 arch/arm/boards/reflex-achilles/pinmux-config-arria10.c
 create mode 100644 arch/arm/boards/reflex-achilles/pll-config-arria10.c
 create mode 100644 arch/arm/dts/socfpga_arria10_achilles.dts

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index 250ccb88896f..bcd94a05694e 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -110,6 +110,7 @@ obj-$(CONFIG_MACH_SAMA5D4EK)			+= sama5d4ek/
 obj-$(CONFIG_MACH_SCB9328)			+= scb9328/
 obj-$(CONFIG_MACH_SOCFPGA_ALTERA_SOCDK)		+= altera-socdk/
 obj-$(CONFIG_MACH_SOCFPGA_EBV_SOCRATES)		+= ebv-socrates/
+obj-$(CONFIG_MACH_SOCFPGA_REFLEX_ACHILLES)	+= reflex-achilles/
 obj-$(CONFIG_MACH_SOCFPGA_TERASIC_DE0_NANO_SOC)	+= terasic-de0-nano-soc/
 obj-$(CONFIG_MACH_SOCFPGA_TERASIC_SOCKIT)	+= terasic-sockit/
 obj-$(CONFIG_MACH_SOLIDRUN_CUBOX)		+= solidrun-cubox/
diff --git a/arch/arm/boards/reflex-achilles/Makefile b/arch/arm/boards/reflex-achilles/Makefile
new file mode 100644
index 000000000000..6b4214115300
--- /dev/null
+++ b/arch/arm/boards/reflex-achilles/Makefile
@@ -0,0 +1,2 @@
+obj-y += lowlevel.o
+pbl-y += lowlevel.o
diff --git a/arch/arm/boards/reflex-achilles/hps.xml b/arch/arm/boards/reflex-achilles/hps.xml
new file mode 100644
index 000000000000..d719ca00587c
--- /dev/null
+++ b/arch/arm/boards/reflex-achilles/hps.xml
@@ -0,0 +1,351 @@
+<hps>
+  <system>
+    <config name='VERSION' value='16.1' />
+    <config name='DEVICE_FAMILY' value='Arria 10' />
+    <config name='TIME_AND_DATE' value='Tuesday December, 06, 2016 - 03:45:21 PM CET' />
+    <config name='DMA_Enable' value='No No No No No No No No' />
+    <config name='eosc1_clk_hz' value='25000000.0' />
+    <config name='emac0_clk_hz' value='250000000' />
+    <config name='emac1_clk_hz' value='250000000' />
+    <config name='emac2_clk_hz' value='250000000' />
+    <config name='sdmmc_clk_hz' value='200000000' />
+    <config name='l3_main_free_clk_hz' value='400000000' />
+    <config name='h2f_user0_clk_hz' value='100000000' />
+    <config name='h2f_user1_clk_hz' value='100000000' />
+    <config name='tpiu_clk_hz' value='100000000' />
+    <config name='f2h_free_clk_hz' value='200000000' />
+    <config name='cb_intosc_ls_clk_hz' value='60000000' />
+  </system>
+  <fpga_interfaces>
+    <config name='F2H_AXI_SLAVE' used='false' />
+    <config name='H2F_AXI_MASTER' used='false' />
+    <config name='LWH2F_AXI_MASTER' used='true' />
+    <config name='F2SDRAM0_AXI_SLAVE' used='false' />
+    <config name='F2SDRAM1_AXI_SLAVE' used='false' />
+    <config name='F2SDRAM2_AXI_SLAVE' used='false' />
+  </fpga_interfaces>
+  <peripherals>
+    <peripheral name='rgmii0' used='false' />
+    <peripheral name='rgmii1' used='true' />
+    <peripheral name='rgmii2' used='true' />
+    <peripheral name='nand' used='false' />
+    <peripheral name='qspi' used='false'>
+      <config name='CONFIG_HPS_QSPI_CS2' value='0' />
+      <config name='CONFIG_HPS_QSPI_CS3' value='0' />
+      <config name='CONFIG_HPS_QSPI_CS4' value='0' />
+      <config name='CONFIG_HPS_QSPI_CS0' value='0' />
+      <config name='CONFIG_HPS_QSPI_CS1' value='0' />
+    </peripheral>
+    <peripheral name='sdmmc' used='true'>
+      <config name='CONFIG_HPS_SDMMC_BUSWIDTH' value='8' />
+    </peripheral>
+    <peripheral name='usb0' used='false' />
+    <peripheral name='usb1' used='true' />
+    <peripheral name='spim0' used='true' />
+    <peripheral name='spim1' used='false' />
+    <peripheral name='spis0' used='false' />
+    <peripheral name='spis1' used='false' />
+    <peripheral name='uart0' used='true'>
+      <config name='CONFIG_HPS_UART0_TX' value='1' />
+      <config name='CONFIG_HPS_UART0_RTS' value='1' />
+      <config name='CONFIG_HPS_UART0_CTS' value='1' />
+      <config name='CONFIG_HPS_UART0_RX' value='1' />
+    </peripheral>
+    <peripheral name='uart1' used='false'>
+      <config name='CONFIG_HPS_UART1_TX' value='0' />
+      <config name='CONFIG_HPS_UART1_RTS' value='0' />
+      <config name='CONFIG_HPS_UART1_CTS' value='0' />
+      <config name='CONFIG_HPS_UART1_RX' value='0' />
+    </peripheral>
+    <peripheral name='i2c0' used='true' />
+    <peripheral name='i2c1' used='false' />
+    <peripheral name='i2cemac0' used='false' />
+    <peripheral name='i2cemac1' used='false' />
+    <peripheral name='i2cemac2' used='false' />
+    <peripheral name='trace' used='false' />
+    <peripheral name='pll_clock_out' used='false' />
+  </peripherals>
+  <csr>
+    <config name='i_io48_pin_mux_shared_3v_io_grp.pinmux_shared_io_q4_12.sel' value='8' />
+    <config name='i_io48_pin_mux_shared_3v_io_grp.pinmux_shared_io_q4_11.sel' value='8' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.pinmux_dedicated_io_4.sel' value='8' />
+    <config name='i_io48_pin_mux_shared_3v_io_grp.pinmux_shared_io_q4_10.sel' value='8' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.pinmux_dedicated_io_5.sel' value='8' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.pinmux_dedicated_io_6.sel' value='8' />
+    <config name='i_io48_pin_mux_shared_3v_io_grp.pinmux_shared_io_q4_9.sel' value='8' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.pinmux_dedicated_io_7.sel' value='8' />
+    <config name='i_io48_pin_mux_shared_3v_io_grp.pinmux_shared_io_q4_8.sel' value='8' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.pinmux_dedicated_io_8.sel' value='8' />
+    <config name='i_io48_pin_mux_shared_3v_io_grp.pinmux_shared_io_q4_6.sel' value='8' />
+    <config name='i_io48_pin_mux_shared_3v_io_grp.pinmux_shared_io_q4_7.sel' value='8' />
+    <config name='i_io48_pin_mux_shared_3v_io_grp.pinmux_shared_io_q4_5.sel' value='8' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.pinmux_dedicated_io_9.sel' value='8' />
+    <config name='i_io48_pin_mux_shared_3v_io_grp.pinmux_shared_io_q4_4.sel' value='8' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.pinmux_dedicated_io_10.sel' value='10' />
+    <config name='i_io48_pin_mux_shared_3v_io_grp.pinmux_shared_io_q4_3.sel' value='8' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.pinmux_dedicated_io_11.sel' value='10' />
+    <config name='i_io48_pin_mux_shared_3v_io_grp.pinmux_shared_io_q4_2.sel' value='8' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.pinmux_dedicated_io_12.sel' value='8' />
+    <config name='i_io48_pin_mux_shared_3v_io_grp.pinmux_shared_io_q4_1.sel' value='8' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.pinmux_dedicated_io_13.sel' value='8' />
+    <config name='i_io48_pin_mux_shared_3v_io_grp.pinmux_shared_io_q3_12.sel' value='8' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.pinmux_dedicated_io_14.sel' value='8' />
+    <config name='i_io48_pin_mux_shared_3v_io_grp.pinmux_shared_io_q3_11.sel' value='8' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.pinmux_dedicated_io_15.sel' value='8' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.pinmux_dedicated_io_16.sel' value='15' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.pinmux_dedicated_io_17.sel' value='15' />
+    <config name='i_io48_pin_mux_shared_3v_io_grp.pinmux_shared_io_q3_10.sel' value='8' />
+    <config name='i_io48_pin_mux_shared_3v_io_grp.pinmux_shared_io_q3_8.sel' value='8' />
+    <config name='i_io48_pin_mux_shared_3v_io_grp.pinmux_shared_io_q3_9.sel' value='8' />
+    <config name='i_io48_pin_mux_shared_3v_io_grp.pinmux_shared_io_q3_7.sel' value='8' />
+    <config name='i_io48_pin_mux_shared_3v_io_grp.pinmux_shared_io_q3_6.sel' value='8' />
+    <config name='i_io48_pin_mux_shared_3v_io_grp.pinmux_shared_io_q3_5.sel' value='8' />
+    <config name='i_io48_pin_mux_shared_3v_io_grp.pinmux_shared_io_q3_4.sel' value='8' />
+    <config name='i_io48_pin_mux_shared_3v_io_grp.pinmux_shared_io_q3_3.sel' value='8' />
+    <config name='i_io48_pin_mux_shared_3v_io_grp.pinmux_shared_io_q3_2.sel' value='8' />
+    <config name='i_io48_pin_mux_shared_3v_io_grp.pinmux_shared_io_q3_1.sel' value='8' />
+    <config name='i_io48_pin_mux_shared_3v_io_grp.pinmux_shared_io_q2_12.sel' value='8' />
+    <config name='i_io48_pin_mux_shared_3v_io_grp.pinmux_shared_io_q2_10.sel' value='8' />
+    <config name='i_io48_pin_mux_shared_3v_io_grp.pinmux_shared_io_q2_11.sel' value='8' />
+    <config name='i_io48_pin_mux_shared_3v_io_grp.pinmux_shared_io_q2_9.sel' value='8' />
+    <config name='i_io48_pin_mux_shared_3v_io_grp.pinmux_shared_io_q2_8.sel' value='8' />
+    <config name='i_io48_pin_mux_shared_3v_io_grp.pinmux_shared_io_q2_7.sel' value='8' />
+    <config name='i_io48_pin_mux_shared_3v_io_grp.pinmux_shared_io_q2_6.sel' value='8' />
+    <config name='i_io48_pin_mux_shared_3v_io_grp.pinmux_shared_io_q2_5.sel' value='8' />
+    <config name='i_io48_pin_mux_shared_3v_io_grp.pinmux_shared_io_q2_4.sel' value='8' />
+    <config name='i_io48_pin_mux_shared_3v_io_grp.pinmux_shared_io_q2_3.sel' value='8' />
+    <config name='i_io48_pin_mux_shared_3v_io_grp.pinmux_shared_io_q2_2.sel' value='8' />
+    <config name='i_io48_pin_mux_shared_3v_io_grp.pinmux_shared_io_q2_1.sel' value='8' />
+    <config name='i_io48_pin_mux_shared_3v_io_grp.pinmux_shared_io_q1_12.sel' value='10' />
+    <config name='i_io48_pin_mux_shared_3v_io_grp.pinmux_shared_io_q1_11.sel' value='10' />
+    <config name='i_io48_pin_mux_shared_3v_io_grp.pinmux_shared_io_q1_10.sel' value='1' />
+    <config name='i_io48_pin_mux_shared_3v_io_grp.pinmux_shared_io_q1_9.sel' value='1' />
+    <config name='i_io48_pin_mux_shared_3v_io_grp.pinmux_shared_io_q1_8.sel' value='1' />
+    <config name='i_io48_pin_mux_shared_3v_io_grp.pinmux_shared_io_q1_7.sel' value='1' />
+    <config name='i_io48_pin_mux_shared_3v_io_grp.pinmux_shared_io_q1_6.sel' value='0' />
+    <config name='i_io48_pin_mux_shared_3v_io_grp.pinmux_shared_io_q1_5.sel' value='0' />
+    <config name='i_io48_pin_mux_shared_3v_io_grp.pinmux_shared_io_q1_4.sel' value='13' />
+    <config name='i_io48_pin_mux_shared_3v_io_grp.pinmux_shared_io_q1_3.sel' value='13' />
+    <config name='i_io48_pin_mux_shared_3v_io_grp.pinmux_shared_io_q1_2.sel' value='13' />
+    <config name='i_io48_pin_mux_shared_3v_io_grp.pinmux_shared_io_q1_1.sel' value='13' />
+    <config name='i_io48_pin_mux_fpga_interface_grp.pinmux_rgmii0_usefpga.sel' value='0' />
+    <config name='i_io48_pin_mux_fpga_interface_grp.pinmux_rgmii1_usefpga.sel' value='0' />
+    <config name='i_io48_pin_mux_fpga_interface_grp.pinmux_rgmii2_usefpga.sel' value='0' />
+    <config name='i_io48_pin_mux_fpga_interface_grp.pinmux_nand_usefpga.sel' value='0' />
+    <config name='i_io48_pin_mux_fpga_interface_grp.pinmux_qspi_usefpga.sel' value='0' />
+    <config name='i_io48_pin_mux_fpga_interface_grp.pinmux_sdmmc_usefpga.sel' value='0' />
+    <config name='i_io48_pin_mux_fpga_interface_grp.pinmux_usb0_usefpga.sel' value='0' />
+    <config name='i_io48_pin_mux_fpga_interface_grp.pinmux_usb1_usefpga.sel' value='0' />
+    <config name='i_io48_pin_mux_fpga_interface_grp.pinmux_spim0_usefpga.sel' value='1' />
+    <config name='i_io48_pin_mux_fpga_interface_grp.pinmux_spim1_usefpga.sel' value='0' />
+    <config name='i_io48_pin_mux_fpga_interface_grp.pinmux_spis0_usefpga.sel' value='0' />
+    <config name='i_io48_pin_mux_fpga_interface_grp.pinmux_spis1_usefpga.sel' value='0' />
+    <config name='i_io48_pin_mux_fpga_interface_grp.pinmux_uart0_usefpga.sel' value='0' />
+    <config name='i_io48_pin_mux_fpga_interface_grp.pinmux_uart1_usefpga.sel' value='0' />
+    <config name='i_io48_pin_mux_fpga_interface_grp.pinmux_i2c0_usefpga.sel' value='0' />
+    <config name='i_io48_pin_mux_fpga_interface_grp.pinmux_i2c1_usefpga.sel' value='0' />
+    <config name='i_io48_pin_mux_fpga_interface_grp.pinmux_i2cemac0_usefpga.sel' value='0' />
+    <config name='i_io48_pin_mux_fpga_interface_grp.pinmux_i2cemac1_usefpga.sel' value='0' />
+    <config name='i_io48_pin_mux_fpga_interface_grp.pinmux_i2cemac2_usefpga.sel' value='0' />
+    <config name='i_io48_pin_mux_fpga_interface_grp.pinmux_pll_clock_out_usefpga.sel' value='0' />
+    <config name='i_clk_mgr_alteragrp.nocclk.maincnt' value='3' />
+    <config name='i_clk_mgr_perpllgrp.vco1.denom' value='1' />
+    <config name='i_clk_mgr_mainpllgrp.cntr8clk.cnt' value='900' />
+    <config name='i_clk_mgr_perpllgrp.emacctl.emac2sel' value='0' />
+    <config name='i_clk_mgr_mainpllgrp.cntr9clk.cnt' value='900' />
+    <config name='i_clk_mgr_mainpllgrp.cntr6clk.cnt' value='7' />
+    <config name='i_clk_mgr_alteragrp.mpuclk.pericnt' value='900' />
+    <config name='i_clk_mgr_alteragrp.mpuclk.maincnt' value='1' />
+    <config name='i_clk_mgr_perpllgrp.cntr3clk.cnt' value='900' />
+    <config name='i_clk_mgr_perpllgrp.cntr6clk.src' value='0' />
+    <config name='i_clk_mgr_mainpllgrp.cntr2clk.cnt' value='900' />
+    <config name='i_clk_mgr_mainpllgrp.nocdiv.l4mpclk' value='2' />
+    <config name='i_clk_mgr_perpllgrp.cntr4clk.src' value='1' />
+    <config name='i_clk_mgr_perpllgrp.emacctl.emac0sel' value='0' />
+    <config name='i_clk_mgr_mainpllgrp.nocclk.cnt' value='0' />
+    <config name='i_clk_mgr_mainpllgrp.nocdiv.l4spclk' value='2' />
+    <config name='i_clk_mgr_perpllgrp.gpiodiv.gpiodbclk' value='32000' />
+    <config name='i_clk_mgr_perpllgrp.cntr3clk.src' value='1' />
+    <config name='i_clk_mgr_perpllgrp.cntr8clk.src' value='0' />
+    <config name='i_clk_mgr_mainpllgrp.vco1.numer' value='127' />
+    <config name='i_clk_mgr_perpllgrp.cntr8clk.cnt' value='900' />
+    <config name='i_clk_mgr_mainpllgrp.nocdiv.csatclk' value='2' />
+    <config name='i_clk_mgr_mainpllgrp.nocdiv.cspdbgclk' value='0' />
+    <config name='i_clk_mgr_mainpllgrp.mpuclk.cnt' value='0' />
+    <config name='i_clk_mgr_perpllgrp.cntr5clk.cnt' value='374' />
+    <config name='i_clk_mgr_perpllgrp.cntr6clk.cnt' value='900' />
+    <config name='i_clk_mgr_perpllgrp.cntr5clk.src' value='1' />
+    <config name='i_clk_mgr_perpllgrp.cntr2clk.src' value='1' />
+    <config name='i_clk_mgr_mainpllgrp.nocdiv.cstraceclk' value='0' />
+    <config name='i_clk_mgr_mainpllgrp.nocdiv.l4mainclk' value='2' />
+    <config name='i_clk_mgr_clkmgr.testioctrl.periclksel' value='8' />
+    <config name='i_clk_mgr_mainpllgrp.cntr7clk.src' value='0' />
+    <config name='i_clk_mgr_mainpllgrp.cntr7clk.cnt' value='900' />
+    <config name='i_clk_mgr_mainpllgrp.mpuclk.src' value='0' />
+    <config name='i_clk_mgr_mainpllgrp.cntr5clk.cnt' value='900' />
+    <config name='i_clk_mgr_mainpllgrp.vco1.denom' value='1' />
+    <config name='i_clk_mgr_mainpllgrp.cntr9clk.src' value='0' />
+    <config name='i_clk_mgr_clkmgr.testioctrl.debugclksel' value='16' />
+    <config name='i_clk_mgr_mainpllgrp.nocclk.src' value='0' />
+    <config name='i_clk_mgr_perpllgrp.cntr2clk.cnt' value='5' />
+    <config name='i_clk_mgr_perpllgrp.emacctl.emac1sel' value='0' />
+    <config name='i_clk_mgr_mainpllgrp.cntr3clk.cnt' value='900' />
+    <config name='i_clk_mgr_perpllgrp.vco0.psrc' value='0' />
+    <config name='i_clk_mgr_mainpllgrp.cntr4clk.cnt' value='900' />
+    <config name='i_clk_mgr_mainpllgrp.cntr15clk.cnt' value='900' />
+    <config name='i_clk_mgr_perpllgrp.vco1.numer' value='119' />
+    <config name='i_clk_mgr_clkmgr.testioctrl.mainclksel' value='8' />
+    <config name='i_clk_mgr_mainpllgrp.vco0.psrc' value='0' />
+    <config name='i_clk_mgr_alteragrp.nocclk.pericnt' value='900' />
+    <config name='i_clk_mgr_perpllgrp.cntr4clk.cnt' value='14' />
+    <config name='i_clk_mgr_perpllgrp.cntr7clk.cnt' value='900' />
+    <config name='i_clk_mgr_perpllgrp.cntr9clk.cnt' value='900' />
+  </csr>
+  <csr />
+  <!-- This section was added by Quartus Prime Version 16.1.0 Build 196 10/24/2016 SJ Standard Edition -->
+  <!-- Generated on Tue Dec 13 10:34:43 2016 -->
+  <csr>
+    <!-- OSC_CLK_1_HPS -->
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_1.rtrim'        value='1' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_1.input_buf_en' value='1' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_1.wk_pu_en'     value='1' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_1.pu_slw_rt'    value='0' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_1.pd_slw_rt'    value='0' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_1.pu_drv_strg'  value='8' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_1.pd_drv_strg'  value='10' />
+    <!-- nPOR_HPS -->
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_2.rtrim'        value='1' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_2.input_buf_en' value='1' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_2.wk_pu_en'     value='1' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_2.pu_slw_rt'    value='0' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_2.pd_slw_rt'    value='0' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_2.pu_drv_strg'  value='8' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_2.pd_drv_strg'  value='10' />
+    <!-- nRST_HPS -->
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_3.rtrim'        value='1' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_3.input_buf_en' value='1' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_3.wk_pu_en'     value='1' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_3.pu_slw_rt'    value='0' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_3.pd_slw_rt'    value='0' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_3.pu_drv_strg'  value='8' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_3.pd_drv_strg'  value='10' />
+    <!-- hps_io_phery_sdmmc_D0, HPS_DEDICATED_4, input, weak pull up disable, is output, Fast Slew, 1_8 -->
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_4.rtrim'        value='1' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_4.input_buf_en' value='1' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_4.wk_pu_en'     value='0' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_4.pu_slw_rt'    value='1' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_4.pd_slw_rt'    value='1' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_4.pu_drv_strg'  value='8' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_4.pd_drv_strg'  value='10' />
+    <!-- hps_io_phery_sdmmc_CMD, HPS_DEDICATED_5, input, weak pull up disable, is output, Fast Slew, 1_8 -->
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_5.rtrim'        value='1' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_5.input_buf_en' value='1' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_5.wk_pu_en'     value='0' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_5.pu_slw_rt'    value='1' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_5.pd_slw_rt'    value='1' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_5.pu_drv_strg'  value='8' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_5.pd_drv_strg'  value='10' />
+    <!-- hps_io_phery_sdmmc_CCLK, BOOTSEL2/HPS_DEDICATED_6, NOT input, weak pull up disable, is output, Fast Slew, 1_8 -->
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_6.rtrim'        value='1' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_6.input_buf_en' value='0' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_6.wk_pu_en'     value='0' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_6.pu_slw_rt'    value='1' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_6.pd_slw_rt'    value='1' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_6.pu_drv_strg'  value='8' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_6.pd_drv_strg'  value='10' />
+    <!-- hps_io_phery_sdmmc_D1, HPS_DEDICATED_7, input, weak pull up disable, is output, Fast Slew, 1_8 -->
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_7.rtrim'        value='1' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_7.input_buf_en' value='1' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_7.wk_pu_en'     value='0' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_7.pu_slw_rt'    value='1' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_7.pd_slw_rt'    value='1' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_7.pu_drv_strg'  value='8' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_7.pd_drv_strg'  value='10' />
+    <!-- hps_io_phery_sdmmc_D2, HPS_DEDICATED_8, input, weak pull up disable, is output, Fast Slew, 1_8 -->
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_8.rtrim'        value='1' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_8.input_buf_en' value='1' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_8.wk_pu_en'     value='0' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_8.pu_slw_rt'    value='1' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_8.pd_slw_rt'    value='1' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_8.pu_drv_strg'  value='8' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_8.pd_drv_strg'  value='10' />
+    <!-- hps_io_phery_sdmmc_D3, HPS_DEDICATED_9, input, weak pull up disable, is output, Fast Slew, 1_8 -->
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_9.rtrim'        value='1' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_9.input_buf_en' value='1' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_9.wk_pu_en'     value='0' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_9.pu_slw_rt'    value='1' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_9.pd_slw_rt'    value='1' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_9.pu_drv_strg'  value='8' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_9.pd_drv_strg'  value='10' />
+    <!-- Unused pin 10 -->
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_10.rtrim'        value='1' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_10.input_buf_en' value='0' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_10.wk_pu_en'     value='1' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_10.pu_slw_rt'    value='0' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_10.pd_slw_rt'    value='0' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_10.pu_drv_strg'  value='0' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_10.pd_drv_strg'  value='0' />
+    <!-- Unused pin 11 -->
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_11.rtrim'        value='1' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_11.input_buf_en' value='0' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_11.wk_pu_en'     value='1' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_11.pu_slw_rt'    value='0' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_11.pd_slw_rt'    value='0' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_11.pu_drv_strg'  value='0' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_11.pd_drv_strg'  value='0' />
+    <!-- hps_io_phery_sdmmc_D4, HPS_DEDICATED_12, input, weak pull up disable, is output, Fast Slew, 1_8 -->
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_12.rtrim'        value='1' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_12.input_buf_en' value='1' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_12.wk_pu_en'     value='0' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_12.pu_slw_rt'    value='1' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_12.pd_slw_rt'    value='1' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_12.pu_drv_strg'  value='8' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_12.pd_drv_strg'  value='10' />
+    <!-- hps_io_phery_sdmmc_D5, HPS_DEDICATED_13, input, weak pull up disable, is output, Fast Slew, 1_8 -->
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_13.rtrim'        value='1' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_13.input_buf_en' value='1' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_13.wk_pu_en'     value='0' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_13.pu_slw_rt'    value='1' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_13.pd_slw_rt'    value='1' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_13.pu_drv_strg'  value='8' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_13.pd_drv_strg'  value='10' />
+    <!-- hps_io_phery_sdmmc_D6, HPS_DEDICATED_14, input, weak pull up disable, is output, Fast Slew, 1_8 -->
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_14.rtrim'        value='1' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_14.input_buf_en' value='1' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_14.wk_pu_en'     value='0' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_14.pu_slw_rt'    value='1' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_14.pd_slw_rt'    value='1' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_14.pu_drv_strg'  value='8' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_14.pd_drv_strg'  value='10' />
+    <!-- hps_io_phery_sdmmc_D7, HPS_DEDICATED_15, input, weak pull up disable, is output, Fast Slew, 1_8 -->
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_15.rtrim'        value='1' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_15.input_buf_en' value='1' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_15.wk_pu_en'     value='0' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_15.pu_slw_rt'    value='1' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_15.pd_slw_rt'    value='1' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_15.pu_drv_strg'  value='8' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_15.pd_drv_strg'  value='10' />
+    <!-- hps_usr_led_g, HPS_DEDICATED_16, input, weak pull up disable, is output, Fast Slew, 1_8 -->
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_16.rtrim'        value='1' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_16.input_buf_en' value='1' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_16.wk_pu_en'     value='0' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_16.pu_slw_rt'    value='1' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_16.pd_slw_rt'    value='1' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_16.pu_drv_strg'  value='8' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_16.pd_drv_strg'  value='10' />
+    <!-- hps_usr_led_r, HPS_DEDICATED_17, input, weak pull up disable, is output, Fast Slew, 1_8 -->
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_17.rtrim'        value='1' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_17.input_buf_en' value='1' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_17.wk_pu_en'     value='0' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_17.pu_slw_rt'    value='1' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_17.pd_slw_rt'    value='1' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_17.pu_drv_strg'  value='8' />
+    <config name='i_io48_pin_mux_dedicated_io_grp.configuration_dedicated_io_17.pd_drv_strg'  value='10' />
+    <config name='i_io48_pin_mux.configuration_dedicated_io_bank.voltage_sel_clkrst_io' value='1' />
+    <config name='i_io48_pin_mux.configuration_dedicated_io_bank.voltage_sel_peri_io'   value='1' />
+  </csr>
+  <option_flags>
+    <config name='chosen.early-release-fpga-config'  value='0' />
+  </option_flags>
+ <!-- End of the section generated by Quartus Prime -->
+</hps>
diff --git a/arch/arm/boards/reflex-achilles/lowlevel.c b/arch/arm/boards/reflex-achilles/lowlevel.c
new file mode 100644
index 000000000000..12994177ccc6
--- /dev/null
+++ b/arch/arm/boards/reflex-achilles/lowlevel.c
@@ -0,0 +1,48 @@
+#include <common.h>
+#include <linux/sizes.h>
+#include <io.h>
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
+#include <asm/cache.h>
+#include <debug_ll.h>
+#include <mach/arria10-sdram.h>
+#include <mach/arria10-regs.h>
+#include <mach/arria10-reset-manager.h>
+#include <mach/arria10-clock-manager.h>
+#include <mach/arria10-pinmux.h>
+#include "pll-config-arria10.c"
+#include "pinmux-config-arria10.c"
+#include <mach/generic.h>
+
+extern char __dtb_socfpga_arria10_achilles_start[];
+
+static noinline void achilles_entry(void)
+{
+	void *fdt;
+
+	arm_early_mmu_cache_invalidate();
+
+	relocate_to_current_adr();
+	setup_c();
+
+	arria10_init(&mainpll_cfg, &perpll_cfg, pinmux);
+
+	puts_ll("lowlevel init done\n");
+
+	arria10_ddr_calibration_sequence();
+
+	puts_ll("SDRAM setup done\n");
+
+	fdt = __dtb_socfpga_arria10_achilles_start - get_runtime_offset();
+
+	barebox_arm_entry(0x0, SZ_2G + SZ_1G, fdt);
+}
+
+ENTRY_FUNCTION(start_socfpga_achilles, r0, r1, r2)
+{
+	arm_cpu_lowlevel_init();
+
+	arm_setup_stack(0xffe00000 + SZ_256K - SZ_32K - SZ_4K - 16);
+
+	achilles_entry();
+}
diff --git a/arch/arm/boards/reflex-achilles/pinmux-config-arria10.c b/arch/arm/boards/reflex-achilles/pinmux-config-arria10.c
new file mode 100644
index 000000000000..246838a2285d
--- /dev/null
+++ b/arch/arm/boards/reflex-achilles/pinmux-config-arria10.c
@@ -0,0 +1,102 @@
+#include <mach/arria10-pinmux.h>
+
+static uint32_t pinmux[] = {
+[arria10_pinmux_shared_io_q4_12] = 8,
+[arria10_pinmux_shared_io_q4_11] = 8,
+[arria10_pinmux_shared_io_q4_10] = 8,
+[arria10_pinmux_shared_io_q4_9] = 8,
+[arria10_pinmux_shared_io_q4_8] = 8,
+[arria10_pinmux_shared_io_q4_6] = 8,
+[arria10_pinmux_shared_io_q4_7] = 8,
+[arria10_pinmux_shared_io_q4_5] = 8,
+[arria10_pinmux_shared_io_q4_4] = 8,
+[arria10_pinmux_shared_io_q4_3] = 8,
+[arria10_pinmux_shared_io_q4_2] = 8,
+[arria10_pinmux_shared_io_q4_1] = 8,
+[arria10_pinmux_shared_io_q3_12] = 8,
+[arria10_pinmux_shared_io_q3_11] = 8,
+[arria10_pinmux_shared_io_q3_10] = 8,
+[arria10_pinmux_shared_io_q3_8] = 8,
+[arria10_pinmux_shared_io_q3_9] = 8,
+[arria10_pinmux_shared_io_q3_7] = 8,
+[arria10_pinmux_shared_io_q3_6] = 8,
+[arria10_pinmux_shared_io_q3_5] = 8,
+[arria10_pinmux_shared_io_q3_4] = 8,
+[arria10_pinmux_shared_io_q3_3] = 8,
+[arria10_pinmux_shared_io_q3_2] = 8,
+[arria10_pinmux_shared_io_q3_1] = 8,
+[arria10_pinmux_shared_io_q2_12] = 8,
+[arria10_pinmux_shared_io_q2_10] = 8,
+[arria10_pinmux_shared_io_q2_11] = 8,
+[arria10_pinmux_shared_io_q2_9] = 8,
+[arria10_pinmux_shared_io_q2_8] = 8,
+[arria10_pinmux_shared_io_q2_7] = 8,
+[arria10_pinmux_shared_io_q2_6] = 8,
+[arria10_pinmux_shared_io_q2_5] = 8,
+[arria10_pinmux_shared_io_q2_4] = 8,
+[arria10_pinmux_shared_io_q2_3] = 8,
+[arria10_pinmux_shared_io_q2_2] = 8,
+[arria10_pinmux_shared_io_q2_1] = 8,
+[arria10_pinmux_shared_io_q1_12] = 10,
+[arria10_pinmux_shared_io_q1_11] = 10,
+[arria10_pinmux_shared_io_q1_10] = 1,
+[arria10_pinmux_shared_io_q1_9] = 1,
+[arria10_pinmux_shared_io_q1_8] = 1,
+[arria10_pinmux_shared_io_q1_7] = 1,
+[arria10_pinmux_shared_io_q1_6] = 0,
+[arria10_pinmux_shared_io_q1_5] = 0,
+[arria10_pinmux_shared_io_q1_4] = 13,
+[arria10_pinmux_shared_io_q1_3] = 13,
+[arria10_pinmux_shared_io_q1_2] = 13,
+[arria10_pinmux_shared_io_q1_1] = 13,
+[arria10_pinmux_dedicated_io_4] = 8,
+[arria10_pinmux_dedicated_io_5] = 8,
+[arria10_pinmux_dedicated_io_6] = 8,
+[arria10_pinmux_dedicated_io_7] = 8,
+[arria10_pinmux_dedicated_io_8] = 8,
+[arria10_pinmux_dedicated_io_9] = 8,
+[arria10_pinmux_dedicated_io_10] = 10,
+[arria10_pinmux_dedicated_io_11] = 10,
+[arria10_pinmux_dedicated_io_12] = 8,
+[arria10_pinmux_dedicated_io_13] = 8,
+[arria10_pinmux_dedicated_io_14] = 8,
+[arria10_pinmux_dedicated_io_15] = 8,
+[arria10_pinmux_dedicated_io_16] = 15,
+[arria10_pinmux_dedicated_io_17] = 15,
+[arria10_pincfg_dedicated_io_bank] = 0x101,
+[arria10_pincfg_dedicated_io_1] = 0xb080a,
+[arria10_pincfg_dedicated_io_2] = 0xb080a,
+[arria10_pincfg_dedicated_io_3] = 0xb080a,
+[arria10_pincfg_dedicated_io_4] = 0xa282a,
+[arria10_pincfg_dedicated_io_5] = 0xa282a,
+[arria10_pincfg_dedicated_io_6] = 0xa282a,
+[arria10_pincfg_dedicated_io_7] = 0xa282a,
+[arria10_pincfg_dedicated_io_8] = 0xa282a,
+[arria10_pincfg_dedicated_io_9] = 0xa282a,
+[arria10_pincfg_dedicated_io_10] = 0x90000,
+[arria10_pincfg_dedicated_io_11] = 0x90000,
+[arria10_pincfg_dedicated_io_12] = 0xa282a,
+[arria10_pincfg_dedicated_io_13] = 0xa282a,
+[arria10_pincfg_dedicated_io_14] = 0xa282a,
+[arria10_pincfg_dedicated_io_15] = 0xa282a,
+[arria10_pincfg_dedicated_io_16] = 0xa282a,
+[arria10_pincfg_dedicated_io_17] = 0xa282a,
+[arria10_pinmux_rgmii0_usefpga] = 0,
+[arria10_pinmux_rgmii1_usefpga] = 0,
+[arria10_pinmux_rgmii2_usefpga] = 0,
+[arria10_pinmux_nand_usefpga] = 0,
+[arria10_pinmux_qspi_usefpga] = 0,
+[arria10_pinmux_sdmmc_usefpga] = 0,
+[arria10_pinmux_spim0_usefpga] = 1,
+[arria10_pinmux_spim1_usefpga] = 0,
+[arria10_pinmux_spis0_usefpga] = 0,
+[arria10_pinmux_spis1_usefpga] = 0,
+[arria10_pinmux_uart0_usefpga] = 0,
+[arria10_pinmux_uart1_usefpga] = 0,
+[arria10_pinmux_i2c0_usefpga] = 0,
+[arria10_pinmux_i2c1_usefpga] = 0,
+[arria10_pinmux_i2cemac0_usefpga] = 0,
+[arria10_pinmux_i2cemac1_usefpga] = 0,
+[arria10_pinmux_i2cemac2_usefpga] = 0,
+};
+
diff --git a/arch/arm/boards/reflex-achilles/pll-config-arria10.c b/arch/arm/boards/reflex-achilles/pll-config-arria10.c
new file mode 100644
index 000000000000..94d596606e4d
--- /dev/null
+++ b/arch/arm/boards/reflex-achilles/pll-config-arria10.c
@@ -0,0 +1,54 @@
+#include <mach/arria10-clock-manager.h>
+
+static struct arria10_mainpll_cfg mainpll_cfg = {
+	.cntr15clk_cnt = 900,
+	.cntr2clk_cnt = 900,
+	.cntr3clk_cnt = 900,
+	.cntr4clk_cnt = 900,
+	.cntr5clk_cnt = 900,
+	.cntr6clk_cnt = 7,
+	.cntr7clk_cnt = 900,
+	.cntr7clk_src = 0,
+	.cntr8clk_cnt = 900,
+	.cntr9clk_cnt = 900,
+	.cntr9clk_src = 0,
+	.mpuclk_cnt = 0,
+	.mpuclk_src = 0,
+	.nocclk_cnt = 0,
+	.nocclk_src = 0,
+	.nocdiv_csatclk = 2,
+	.nocdiv_cspdbgclk = 0,
+	.nocdiv_cstraceclk = 0,
+	.nocdiv_l4mainclk = 2,
+	.nocdiv_l4mpclk = 2,
+	.nocdiv_l4spclk = 2,
+	.vco0_psrc = 0,
+	.vco1_denom = 1,
+	.vco1_numer = 127,
+	.mpuclk = 0x3840001,
+	.nocclk = 0x3840003,
+};
+
+static struct arria10_perpll_cfg perpll_cfg = {
+	.cntr2clk_cnt = 5,
+	.cntr2clk_src = 1,
+	.cntr3clk_cnt = 900,
+	.cntr3clk_src = 1,
+	.cntr4clk_cnt = 14,
+	.cntr4clk_src = 1,
+	.cntr5clk_cnt = 374,
+	.cntr5clk_src = 1,
+	.cntr6clk_cnt = 900,
+	.cntr6clk_src = 0,
+	.cntr7clk_cnt = 900,
+	.cntr8clk_cnt = 900,
+	.cntr8clk_src = 0,
+	.cntr9clk_cnt = 900,
+	.emacctl_emac0sel = 0,
+	.emacctl_emac1sel = 0,
+	.emacctl_emac2sel = 0,
+	.gpiodiv_gpiodbclk = 32000,
+	.vco0_psrc = 0,
+	.vco1_denom = 1,
+	.vco1_numer = 119,
+};
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 0c9e0e8dadb9..afb81b38ad87 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -65,6 +65,7 @@ pbl-dtb-$(CONFIG_MACH_SABRESD) += imx6q-sabresd.dtb.o
 pbl-dtb-$(CONFIG_MACH_FREESCALE_IMX6SX_SABRESDB) += imx6sx-sdb.dtb.o
 pbl-dtb-$(CONFIG_MACH_SOCFPGA_ALTERA_SOCDK) += socfpga_cyclone5_socdk.dtb.o
 pbl-dtb-$(CONFIG_MACH_SOCFPGA_EBV_SOCRATES) += socfpga_cyclone5_socrates.dtb.o
+pbl-dtb-$(CONFIG_MACH_SOCFPGA_REFLEX_ACHILLES) += socfpga_arria10_achilles.dtb.o
 pbl-dtb-$(CONFIG_MACH_SOCFPGA_TERASIC_DE0_NANO_SOC) += socfpga_cyclone5_de0_nano_soc.dtb.o
 pbl-dtb-$(CONFIG_MACH_SOCFPGA_TERASIC_SOCKIT) += socfpga_cyclone5_sockit.dtb.o
 pbl-dtb-$(CONFIG_MACH_SOLIDRUN_CUBOX) += dove-cubox-bb.dtb.o
diff --git a/arch/arm/dts/socfpga_arria10_achilles.dts b/arch/arm/dts/socfpga_arria10_achilles.dts
new file mode 100644
index 000000000000..dd991318e249
--- /dev/null
+++ b/arch/arm/dts/socfpga_arria10_achilles.dts
@@ -0,0 +1,124 @@
+/*
+ * Copyright (C) 2015 Altera Corporation <www.altera.com>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program.  If not, see <http://www.gnu.org/licenses/>.
+ */
+/dts-v1/;
+#include <arm/socfpga_arria10.dtsi>
+
+/ {
+	model = "Reflex SOCFPGA Arria 10 Achilles";
+	compatible = "reflex,achilles", "altr,socfpga-arria10", "altr,socfpga";
+
+	aliases {
+		serial0 = &uart0;
+	};
+
+	chosen {
+		linux,stdout-path = &uart0;
+
+		environment@0 {
+			compatible = "barebox,environment";
+			device-path = &mmc, "partname:1";
+			file-path = "barebox.env";
+		};
+	};
+
+	memory {
+		name = "memory";
+		device_type = "memory";
+		reg = <0x0 0xc0000000>;
+	};
+
+	soc {
+		clkmgr@ffd04000 {
+			clocks {
+				osc1 {
+					clock-frequency = <25000000>;
+				};
+
+				cb_intosc_hs_div2_clk {
+					clock-frequency = <0>;
+				};
+				cb_intosc_ls_clk {
+					clock-frequency = <60000000>;
+				};
+				f2s_free_clk {
+					clock-frequency = <200000000>;
+				};
+			};
+		};
+	};
+};
+
+&gmac1 {
+	phy-mode = "rgmii";
+	phy-addr = <0x00fffff0>; /* probe for phy addr */
+
+	/*
+	 * These skews assume the user's FPGA design is adding 600ps of delay
+	 * for TX_CLK on Arria 10.
+	 *
+	 * All skews are offset since hardware skew values for the ksz9031
+	 * range from a negative skew to a positive skew.
+	 * See the micrel-ksz90x1.txt Documentation file for details.
+	 */
+	txd0-skew-ps = <0>; /* -420ps */
+	txd1-skew-ps = <0>; /* -420ps */
+	txd2-skew-ps = <0>; /* -420ps */
+	txd3-skew-ps = <0>; /* -420ps */
+	rxd0-skew-ps = <420>; /* 0ps */
+	rxd1-skew-ps = <420>; /* 0ps */
+	rxd2-skew-ps = <420>; /* 0ps */
+	rxd3-skew-ps = <420>; /* 0ps */
+	txen-skew-ps = <0>; /* -420ps */
+	txc-skew-ps = <1860>; /* 960ps */
+	rxdv-skew-ps = <420>; /* 0ps */
+	rxc-skew-ps = <1680>; /* 780ps */
+	max-frame-size = <3800>;
+	status = "okay";
+};
+
+&i2c0 {
+	status = "okay";
+
+	tempsensor: ti,tmp102@0x48 {
+		compatible = "ti,tmp102";
+		reg = <0x48>;
+	};
+
+	rtc: nxp,pcf8563@0x51 {
+		compatible = "nxp,pcf8563";
+		reg = <0x51>;
+	};
+
+	eeprom: at24@0x54 {
+		compatible = "at24";
+		reg = <0x54>;
+		bytelen = <256>;
+		pagesize = <16>;
+	};
+};
+
+&mmc {
+	supports-highspeed;
+	broken-cd;
+	bus-width = <1>;
+	status = "okay";
+};
+
+&uart0 {
+	reg-io-width = <4>;
+	status = "okay";
+};
diff --git a/arch/arm/mach-socfpga/Kconfig b/arch/arm/mach-socfpga/Kconfig
index 0a33e886449c..caff566bdc31 100644
--- a/arch/arm/mach-socfpga/Kconfig
+++ b/arch/arm/mach-socfpga/Kconfig
@@ -33,6 +33,11 @@ config MACH_SOCFPGA_EBV_SOCRATES
 	select ARCH_SOCFPGA_CYCLONE5
 	bool "EBV Socrates"
 
+config MACH_SOCFPGA_REFLEX_ACHILLES
+	select HAVE_DEFAULT_ENVIRONMENT_NEW
+	select ARCH_SOCFPGA_ARRIA10
+	bool "Reflex Achilles"
+
 config MACH_SOCFPGA_TERASIC_DE0_NANO_SOC
 	select HAVE_DEFAULT_ENVIRONMENT_NEW
 	select ARCH_SOCFPGA_CYCLONE5
diff --git a/images/Makefile.socfpga b/images/Makefile.socfpga
index a764b1a5fe22..60b98d1ef2ef 100644
--- a/images/Makefile.socfpga
+++ b/images/Makefile.socfpga
@@ -30,6 +30,10 @@ pblx-$(CONFIG_MACH_SOCFPGA_TERASIC_DE0_NANO_SOC) += start_socfpga_de0_nano_soc
 FILE_barebox-socfpga-de0_nano_soc.img = start_socfpga_de0_nano_soc.pblx
 socfpga-barebox-$(CONFIG_MACH_SOCFPGA_TERASIC_DE0_NANO_SOC) += barebox-socfpga-de0_nano_soc.img
 
+pblx-$(CONFIG_MACH_SOCFPGA_REFLEX_ACHILLES) += start_socfpga_achilles
+FILE_barebox-socfpga-achilles.img = start_socfpga_achilles.pblx.socfpgaimg
+socfpga-barebox-$(CONFIG_MACH_SOCFPGA_REFLEX_ACHILLES) += barebox-socfpga-achilles.img
+
 pblx-$(CONFIG_MACH_SOCFPGA_TERASIC_SOCKIT) += start_socfpga_sockit_xload
 FILE_barebox-socfpga-sockit-xload.img = start_socfpga_sockit_xload.pblx.socfpgaimg
 socfpga-xload-$(CONFIG_MACH_SOCFPGA_TERASIC_SOCKIT) += barebox-socfpga-sockit-xload.img
-- 
git-series 0.9.1

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.tricorecenter.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YNedE-0001z5-8K
 for barebox@lists.infradead.org; Tue, 17 Feb 2015 09:39:54 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id A5584A00234
 for <barebox@lists.infradead.org>; Tue, 17 Feb 2015 10:40:12 +0100 (CET)
From: Wadim Egorov <w.egorov@phytec.de>
Date: Tue, 17 Feb 2015 10:37:39 +0100
Message-Id: <1424165859-28726-1-git-send-email-w.egorov@phytec.de>
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
Subject: [PATCH: For next] boards: phytec-som-am335x: Add phycard-som support
To: barebox@lists.infradead.org

Add support for the phyCARD SOM.

Signed-off-by: Wadim Egorov <w.egorov@phytec.de>
---
 Documentation/boards/am335x/phytec-som.rst      |   4 +
 arch/arm/boards/phytec-som-am335x/board.c       |   6 +
 arch/arm/boards/phytec-som-am335x/lowlevel.c    |   4 +
 arch/arm/boards/phytec-som-am335x/ram-timings.h |  23 +++
 arch/arm/dts/Makefile                           |   4 +-
 arch/arm/dts/am335x-phytec-phycard-som-mlo.dts  |  28 +++
 arch/arm/dts/am335x-phytec-phycard-som.dts      |  20 +++
 arch/arm/dts/am335x-phytec-phycard-som.dtsi     | 228 ++++++++++++++++++++++++
 images/Makefile.am33xx                          |   8 +
 9 files changed, 324 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/dts/am335x-phytec-phycard-som-mlo.dts
 create mode 100644 arch/arm/dts/am335x-phytec-phycard-som.dts
 create mode 100644 arch/arm/dts/am335x-phytec-phycard-som.dtsi

diff --git a/Documentation/boards/am335x/phytec-som.rst b/Documentation/boards/am335x/phytec-som.rst
index b415f7c..519448c 100644
--- a/Documentation/boards/am335x/phytec-som.rst
+++ b/Documentation/boards/am335x/phytec-som.rst
@@ -23,6 +23,10 @@ Currently, barebox supports the following SOMs and boards:
 
     - PBA-B-01
 
+  - phyCARD
+
+    - PCA-A-XS1
+
 
 Building phycore-som-am335x
 ---------------------------
diff --git a/arch/arm/boards/phytec-som-am335x/board.c b/arch/arm/boards/phytec-som-am335x/board.c
index d084898..74e39d7 100644
--- a/arch/arm/boards/phytec-som-am335x/board.c
+++ b/arch/arm/boards/phytec-som-am335x/board.c
@@ -4,6 +4,7 @@
  * Device initialization for the following modules and board variants:
  *   - phyCORE: PCM-953, phyBOARD-MAIA, phyBOARD-WEGA
  *   - phyFLEX: PBA-B-01
+ *   - phyCARD: PCA-A-XS1
  *
  * This program is free software; you can redistribute it and/or
  * modify it under the terms of the GNU General Public License as
@@ -89,6 +90,11 @@ static int physom_devices_init(void)
 		barebox_set_hostname("pfla03");
 	}
 
+	if (of_machine_is_compatible("phytec,phycard-am335x-som")) {
+		armlinux_set_architecture(MACH_TYPE_PCAAXS1);
+		barebox_set_hostname("pcaaxs1");
+	}
+
 	/* Register update handler */
 	am33xx_bbu_spi_nor_mlo_register_handler("MLO.spi", "/dev/m25p0.xload");
 	am33xx_bbu_spi_nor_register_handler("spi", "/dev/m25p0.barebox");
diff --git a/arch/arm/boards/phytec-som-am335x/lowlevel.c b/arch/arm/boards/phytec-som-am335x/lowlevel.c
index 87ad1f3..948bfa5 100644
--- a/arch/arm/boards/phytec-som-am335x/lowlevel.c
+++ b/arch/arm/boards/phytec-som-am335x/lowlevel.c
@@ -131,3 +131,7 @@ PHYTEC_ENTRY(start_am33xx_phytec_phycore_no_spi_sdram, am335x_phytec_phycore_som
 PHYTEC_ENTRY_MLO(start_am33xx_phytec_phyflex_sram_256mb, am335x_phytec_phyflex_som_mlo, PHYFLEX_MT41K128M16JT_256MB);
 PHYTEC_ENTRY_MLO(start_am33xx_phytec_phyflex_sram_512mb, am335x_phytec_phyflex_som_mlo, PHYFLEX_MT41K256M16HA_512MB);
 PHYTEC_ENTRY(start_am33xx_phytec_phyflex_sdram, am335x_phytec_phyflex_som);
+
+/* phycard-som */
+PHYTEC_ENTRY_MLO(start_am33xx_phytec_phycard_sram_256mb, am335x_phytec_phycard_som_mlo, PHYCARD_NT5CB128M16BP_256MB);
+PHYTEC_ENTRY(start_am33xx_phytec_phycard_sdram, am335x_phytec_phycard_som);
diff --git a/arch/arm/boards/phytec-som-am335x/ram-timings.h b/arch/arm/boards/phytec-som-am335x/ram-timings.h
index 6d1993e..3dcee20 100644
--- a/arch/arm/boards/phytec-som-am335x/ram-timings.h
+++ b/arch/arm/boards/phytec-som-am335x/ram-timings.h
@@ -29,6 +29,8 @@ enum {
 	PHYCORE_MT41J64M1615IT_128MB,
 	PHYCORE_MT41J256M16HA15EIT_512MB,
 	PHYCORE_MT41J512M8125IT_2x512MB,
+
+	PHYCARD_NT5CB128M16BP_256MB,
 };
 
 struct am335x_sdram_timings physom_timings[] = {
@@ -149,6 +151,27 @@ struct am335x_sdram_timings physom_timings[] = {
 			.wr_slave_ratio0	= 0x80,
 		},
 	},
+
+	/* 256MB */
+	[PHYCARD_NT5CB128M16BP_256MB] = {
+		.regs = {
+			.emif_read_latency      = 0x7,
+			.emif_tim1              = 0x0AAAD4DB,
+			.emif_tim2              = 0x26437FDA,
+			.emif_tim3              = 0x501F83FF,
+			.sdram_config           = 0x61C052B2,
+			.zq_config              = 0x50074BE4,
+			.sdram_ref_ctrl         = 0x00000C30,
+		},
+		.data = {
+			.rd_slave_ratio0        = 0x35,
+			.wr_dqs_slave_ratio0    = 0x3A,
+			.fifo_we_slave_ratio0   = 0x9b,
+			.wr_slave_ratio0        = 0x73,
+			.use_rank0_delay        = 0x01,
+			.dll_lock_diff0         = 0x0,
+		},
+	},
 };
 
 #endif
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index b11de1b..ca058e2 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -29,7 +29,9 @@ pbl-dtb-$(CONFIG_MACH_NVIDIA_JETSON) += tegra124-jetson-tk1.dtb.o
 pbl-dtb-$(CONFIG_MACH_PCA100) += imx27-phytec-phycard-s-rdk-bb.dtb.o
 pbl-dtb-$(CONFIG_MACH_PCAAXL3) += imx6q-phytec-pbaa03.dtb.o
 pbl-dtb-$(CONFIG_MACH_PCM038) += imx27-phytec-phycore-rdk.dtb.o
-pbl-dtb-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += am335x-phytec-phyflex-som.dtb.o am335x-phytec-phyflex-som-mlo.dtb.o am335x-phytec-phycore-som.dtb.o am335x-phytec-phycore-som-no-spi.dtb.o am335x-phytec-phycore-som-mlo.dtb.o
+pbl-dtb-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += am335x-phytec-phyflex-som.dtb.o am335x-phytec-phyflex-som-mlo.dtb.o \
+	am335x-phytec-phycore-som.dtb.o am335x-phytec-phycore-som-no-spi.dtb.o am335x-phytec-phycore-som-mlo.dtb.o \
+	am335x-phytec-phycard-som.dtb.o am335x-phytec-phycard-som-mlo.dtb.o
 pbl-dtb-$(CONFIG_MACH_PHYTEC_PFLA02) += imx6s-phytec-pbab01.dtb.o imx6dl-phytec-pbab01.dtb.o imx6q-phytec-pbab01.dtb.o imx6q-phytec-phyboard-alcor.dtb.o imx6dl-phytec-phyboard-subra.dtb.o
 pbl-dtb-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_AX3) += armada-xp-openblocks-ax3-4-bb.dtb.o
 pbl-dtb-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_A6) += kirkwood-openblocks_a6-bb.dtb.o
diff --git a/arch/arm/dts/am335x-phytec-phycard-som-mlo.dts b/arch/arm/dts/am335x-phytec-phycard-som-mlo.dts
new file mode 100644
index 0000000..17d9152
--- /dev/null
+++ b/arch/arm/dts/am335x-phytec-phycard-som-mlo.dts
@@ -0,0 +1,28 @@
+/*
+ * Copyright (C) 2015 Wadim Egorov <w.egorovphytec.de> PHYTEC Messtechnik GmbH
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ */
+/dts-v1/;
+
+#include "am33xx.dtsi"
+#include "am335x-phytec-phycard-som.dtsi"
+
+/ {
+	model = "Phytec phyCARD AM335x";
+	compatible = "phytec,phycard-am335x-som", "phytec,am335x-som", "ti,am33xx";
+};
+
+/* Keep all bootsources disabled, we enable and register them
+ * later while booting.
+ */
+
+&mmc1 {
+	status = "disabled";
+};
+
+&gpmc {
+	status = "disabled";
+};
diff --git a/arch/arm/dts/am335x-phytec-phycard-som.dts b/arch/arm/dts/am335x-phytec-phycard-som.dts
new file mode 100644
index 0000000..6b43180
--- /dev/null
+++ b/arch/arm/dts/am335x-phytec-phycard-som.dts
@@ -0,0 +1,20 @@
+/*
+ * Copyright (C) 2015 Wadim Egorov <w.egorovphytec.de> PHYTEC Messtechnik GmbH
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ */
+/dts-v1/;
+
+#include "am33xx.dtsi"
+#include "am335x-phytec-phycard-som.dtsi"
+
+/ {
+	model = "Phytec phyCARD AM335x";
+	compatible = "phytec,phycard-am335x-som", "phytec,am335x-som", "ti,am33xx";
+};
+
+&eeprom {
+	status = "okay";
+};
diff --git a/arch/arm/dts/am335x-phytec-phycard-som.dtsi b/arch/arm/dts/am335x-phytec-phycard-som.dtsi
new file mode 100644
index 0000000..1f1036f
--- /dev/null
+++ b/arch/arm/dts/am335x-phytec-phycard-som.dtsi
@@ -0,0 +1,228 @@
+/ {
+	chosen {
+		linux,stdout-path = &uart0;
+
+		environment-nand {
+			compatible = "barebox,environment";
+			device-path = &nand, "partname:bareboxenv";
+			status = "disabled";
+		};
+	};
+};
+
+&am33xx_pinmux {
+
+	i2c0_pins: pinmux_i2c0_pins {
+			pinctrl-single,pins = <
+			0x188 (PIN_INPUT_PULLUP | MUX_MODE0)    /* i2c0_sda.i2c0_sda */
+			0x18c (PIN_INPUT_PULLUP | MUX_MODE0)    /* i2c0_scl.i2c0_scl */
+		>;
+	};
+
+	uart0_pins: pinmux_uart0_pins {
+		pinctrl-single,pins = <
+			0x170 (PIN_INPUT_PULLUP | MUX_MODE0)    /* uart0_rxd.uart0_rxd */
+			0x174 (PIN_OUTPUT_PULLDOWN | MUX_MODE0) /* uart0_txd.uart0_txd */
+		>;
+	};
+
+	uart3_pins: pinmux_uart3 {
+		pinctrl-single,pins = <
+			0x134 (PIN_INPUT_PULLUP | MUX_MODE1)    /* mii1_rxd3.uart3_rxd */
+			0x138 (PIN_OUTPUT_PULLDOWN | MUX_MODE1) /* mii1_rxd2.uart3_txd */
+		>;
+	};
+
+	mmc1_pins: pinmux_mmc1_pins {
+		pinctrl-single,pins = <
+			0xf0 (MUX_MODE0 | INPUT_EN | PULL_UP)	/* mmc0_dat3.mmc0_dat3 */
+			0xf4 (MUX_MODE0 | INPUT_EN | PULL_UP)	/* mmc0_dat2.mmc0_dat2 */
+			0xf8 (MUX_MODE0 | INPUT_EN | PULL_UP)	/* mmc0_dat1.mmc0_dat1 */
+			0xfc (MUX_MODE0 | INPUT_EN | PULL_UP)	/* mmc0_dat0.mmc0_dat0 */
+			0x100 (MUX_MODE0 | INPUT_EN | PULL_UP)	/* mmc0_clk.mmc0_clk */
+			0x104 (MUX_MODE0 | INPUT_EN | PULL_UP)	/* mmc0_cmd.mmc0_cmd */
+		>;
+	};
+
+	emac_rmii1_pins: pinmux_emac_rmii1_pins {
+		pinctrl-single,pins = <
+			0x10c (PIN_INPUT_PULLDOWN | MUX_MODE1)	/* mii1_crs.rmii1_crs_dv */
+			0x110 (PIN_INPUT_PULLDOWN | MUX_MODE1)	/* mii1_rxerr.rmii1_rxerr */
+			0x114 (PIN_OUTPUT | MUX_MODE1)		/* mii1_txen.rmii1_txen */
+			0x124 (PIN_OUTPUT | MUX_MODE1)		/* mii1_txd1.rmii1_txd1 */
+			0x128 (PIN_OUTPUT | MUX_MODE1)		/* mii1_txd0.rmii1_txd0 */
+			0x13c (PIN_INPUT_PULLDOWN | MUX_MODE1)	/* mii1_rxd1.rmii1_rxd1 */
+			0x140 (PIN_INPUT_PULLDOWN | MUX_MODE1)	/* mii1_rxd0.rmii1_rxd0 */
+			0x144 (PIN_INPUT_PULLDOWN | MUX_MODE0)	/* rmii1_refclk.rmii1_refclk */
+		>;
+	};
+
+	nandflash_pins_s0: nandflash_pins_s0 {
+		pinctrl-single,pins = <
+			0x0 (PIN_INPUT_PULLUP | MUX_MODE0)	/* gpmc_ad0.gpmc_ad0 */
+			0x4 (PIN_INPUT_PULLUP | MUX_MODE0)	/* gpmc_ad1.gpmc_ad1 */
+			0x8 (PIN_INPUT_PULLUP | MUX_MODE0)	/* gpmc_ad2.gpmc_ad2 */
+			0xc (PIN_INPUT_PULLUP | MUX_MODE0)	/* gpmc_ad3.gpmc_ad3 */
+			0x10 (PIN_INPUT_PULLUP | MUX_MODE0)	/* gpmc_ad4.gpmc_ad4 */
+			0x14 (PIN_INPUT_PULLUP | MUX_MODE0)	/* gpmc_ad5.gpmc_ad5 */
+			0x18 (PIN_INPUT_PULLUP | MUX_MODE0)	/* gpmc_ad6.gpmc_ad6 */
+			0x1c (PIN_INPUT_PULLUP | MUX_MODE0)	/* gpmc_ad7.gpmc_ad7 */
+			0x70 (PIN_INPUT_PULLUP | MUX_MODE0)	/* gpmc_wait0.gpmc_wait0 */
+			0x7c (PIN_OUTPUT | MUX_MODE0)		/* gpmc_csn0.gpmc_csn0  */
+			0x90 (PIN_OUTPUT | MUX_MODE0)		/* gpmc_advn_ale.gpmc_advn_ale */
+			0x94 (PIN_OUTPUT | MUX_MODE0)		/* gpmc_oen_ren.gpmc_oen_ren */
+			0x98 (PIN_OUTPUT | MUX_MODE0)		/* gpmc_wen.gpmc_wen */
+			0x9c (PIN_OUTPUT | MUX_MODE0)		/* gpmc_be0n_cle.gpmc_be0n_cle */
+		>;
+	};
+
+	davinci_mdio_default: davinci_mdio_default {
+		pinctrl-single,pins = <
+			/* MDIO */
+			0x148 (PIN_INPUT_PULLUP | SLEWCTRL_FAST | MUX_MODE0)	/* mdio_data.mdio_data */
+			0x14c (PIN_OUTPUT_PULLUP | MUX_MODE0)			/* mdio_clk.mdio_clk */
+		>;
+	};
+};
+
+&i2c0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2c0_pins>;
+
+	status = "okay";
+	clock-frequency = <400000>;
+
+	eeprom: 24c32@52 {
+		status = "disabled";
+		compatible = "atmel,24c32";
+		pagesize = <32>;
+		reg = <0x54>;
+	};
+};
+
+&mmc1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&mmc1_pins>;
+	status = "okay";
+};
+
+&uart0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart0_pins>;
+	status = "okay";
+};
+
+&uart3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart3_pins>;
+	status = "okay";
+};
+
+&davinci_mdio {
+	pinctrl-names = "default";
+	pinctrl-0 = <&davinci_mdio_default>;
+	status = "okay";
+};
+
+&phy_sel {
+	rmii-clock-ext;
+};
+
+&cpsw_emac0 {
+	phy_id = <&davinci_mdio>, <0>;
+	phy-mode = "rmii";
+};
+
+&mac {
+	pinctrl-names = "default";
+	pinctrl-0 = <&emac_rmii1_pins>;
+	slaves = <1>;
+	status = "okay";
+};
+
+&gpmc {
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&nandflash_pins_s0>;
+	ranges = <0 0 0x08000000 0x10000000>;	/* CS0: NAND */
+	nand: nand@0,0 {
+		reg = <0 0 0>; /* CS0, offset 0 */
+		nand-bus-width = <8>;
+		ti,nand-ecc-opt = "bch8";
+		gpmc,device-nand = "true";
+		gpmc,device-width = <1>;
+		gpmc,sync-clk-ps = <0>;
+		gpmc,cs-on-ns = <0>;
+		gpmc,cs-rd-off-ns = <30>;
+		gpmc,cs-wr-off-ns = <30>;
+		gpmc,adv-on-ns = <0>;
+		gpmc,adv-rd-off-ns = <30>;
+		gpmc,adv-wr-off-ns = <30>;
+		gpmc,we-on-ns = <0>;
+		gpmc,we-off-ns = <20>;
+		gpmc,oe-on-ns = <10>;
+		gpmc,oe-off-ns = <30>;
+		gpmc,access-ns = <30>;
+		gpmc,rd-cycle-ns = <30>;
+		gpmc,wr-cycle-ns = <30>;
+		gpmc,wait-pin = <1>;
+		gpmc,wait-on-read = "true";
+		gpmc,wait-on-write = "true";
+		gpmc,bus-turnaround-ns = <0>;
+		gpmc,cycle2cycle-delay-ns = <50>;
+		gpmc,cycle2cycle-diffcsen;
+		gpmc,clk-activation-ns = <0>;
+		gpmc,wait-monitoring-ns = <0>;
+		gpmc,wr-access-ns = <0>;
+		gpmc,wr-data-mux-bus-ns = <0>;
+
+		#address-cells = <1>;
+		#size-cells = <1>;
+		elm_id = <&elm>;
+
+		partition@0 {
+			label = "xload";
+			reg = <0x0 0x20000>;
+		};
+
+		partition@1 {
+			label = "xload_backup1";
+			reg = <0x20000 0x20000>;
+		};
+
+		partition@2 {
+			label = "xload_backup2";
+			reg = <0x40000 0x20000>;
+		};
+
+		partition@3 {
+			label = "xload_backup3";
+			reg = <0x60000 0x20000>;
+		};
+
+		partition@4 {
+			label = "barebox";
+			reg = <0x80000 0x80000>;
+		};
+
+		partition@5 {
+			label = "bareboxenv";
+			reg = <0x100000 0x40000>;
+		};
+
+		partition@6 {
+			label = "oftree";
+			reg = <0x140000 0x40000>;
+		};
+
+		partition@7 {
+			label = "kernel";
+			reg = <0x180000 0x800000>;
+		};
+
+		partition@8 {
+			label = "root";
+			reg = <0x980000 0x0>;
+		};
+	};
+};
diff --git a/images/Makefile.am33xx b/images/Makefile.am33xx
index 00e0092..eae2a6a 100644
--- a/images/Makefile.am33xx
+++ b/images/Makefile.am33xx
@@ -51,6 +51,14 @@ pblx-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += start_am33xx_phytec_phyflex_sram_512mb
 FILE_barebox-am33xx-phytec-phyflex-mlo-512mb.img = start_am33xx_phytec_phyflex_sram_512mb.pblx.mlo
 am33xx-mlo-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += barebox-am33xx-phytec-phyflex-mlo-512mb.img
 
+pblx-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += start_am33xx_phytec_phycard_sdram
+FILE_barebox-am33xx-phytec-phycard.img = start_am33xx_phytec_phycard_sdram.pblx
+am33xx-barebox-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += barebox-am33xx-phytec-phycard.img
+
+pblx-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += start_am33xx_phytec_phycard_sram_256mb
+FILE_barebox-am33xx-phytec-phycard-mlo-256mb.img = start_am33xx_phytec_phycard_sram_256mb.pblx.mlo
+am33xx-mlo-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += barebox-am33xx-phytec-phycard-mlo-256mb.img
+
 pblx-$(CONFIG_MACH_BEAGLEBONE) += start_am33xx_beaglebone_sdram
 FILE_barebox-am33xx-beaglebone.img = start_am33xx_beaglebone_sdram.pblx
 am33xx-barebox-$(CONFIG_MACH_BEAGLEBONE) += barebox-am33xx-beaglebone.img
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Delivery-date: Wed, 25 Aug 2021 14:57:10 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mIsSs-0001Ia-4b
	for lore@lore.pengutronix.de; Wed, 25 Aug 2021 14:57:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mIsSm-0005dl-TE
	for lore@pengutronix.de; Wed, 25 Aug 2021 14:57:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/islgI4h5d8YZXCMyxhOw7a7vWRqLNt55BKglRBAL6w=; b=zgucEt1FzuwYAf
	mMD7Jlb27ukGUpX6zAiddUNDnEfJH2RIyVvXWCw4D5RnOJuViYvPeNilxV4y7jVjfAEliGSJnRajP
	9hcr1FdDlPIW82kL5pY8hO7i7G7pamJAo88AmF/KOUr6Vo96OtVhRmINJRuW3UDRfVJAxSPYuXMnu
	339b8XPM2YVMa52oQAQGESJCz5lsRVppLW+TIKDaH1PrQ64ze0Ait4kqIMA3I0CkSI3Y826djKgKp
	HWCmbrXimSSGgO9vGIn0pC75xAkDUNhPwl7NNR+wc+0a1u5ZKH0QuG1U6ozUZYvcmxN4aJL1jljYT
	gqKuXTdTLQnQFKtr2yRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mIsQk-006y7T-Fe; Wed, 25 Aug 2021 12:54:58 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mIsQU-006y3a-Sx
 for barebox@lists.infradead.org; Wed, 25 Aug 2021 12:54:47 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1mIsQL-00050p-LZ; Wed, 25 Aug 2021 14:54:33 +0200
Received: from ore by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1mIsQK-00070v-UM; Wed, 25 Aug 2021 14:54:32 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Robin van der Gracht <robin@protonic.nl>,
 Oleksij Rempel <o.rempel@pengutronix.de>
Date: Wed, 25 Aug 2021 14:54:30 +0200
Message-Id: <20210825125430.26901-5-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210825125430.26901-1-o.rempel@pengutronix.de>
References: <20210825125430.26901-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210825_055443_326412_84B3E6D9 
X-CRM114-Status: GOOD (  26.03  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v1 4/4] ARM: boards: protonic-imx6: Add support for jozacp
 board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Robin van der Gracht <robin@protonic.nl>

The jozacp is an industrial imx6ull based board with ethernet,
wifi and zigbee.

Note: this patch includes WIP version of the devicetree:
 arch/arm/dts/imx6ull-jozacp.dtsi. This devicetree will be reworked,
 mainlined to the kernel and at the end replaced with the kernel
 mainline version.

Signed-off-by: Robin van der Gracht <robin@protonic.nl>
Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/boards/protonic-imx6/board.c         |  23 +
 .../protonic-imx6/flash-header-jozacp.imxcfg  |  81 +++
 arch/arm/boards/protonic-imx6/lowlevel.c      |  20 +
 arch/arm/dts/Makefile                         |   3 +-
 arch/arm/dts/imx6ull-jozacp.dts               |  47 ++
 arch/arm/dts/imx6ull-jozacp.dtsi              | 525 ++++++++++++++++++
 images/Makefile.imx                           |   2 +
 7 files changed, 700 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boards/protonic-imx6/flash-header-jozacp.imxcfg
 create mode 100644 arch/arm/dts/imx6ull-jozacp.dts
 create mode 100644 arch/arm/dts/imx6ull-jozacp.dtsi

diff --git a/arch/arm/boards/protonic-imx6/board.c b/arch/arm/boards/protonic-imx6/board.c
index cacbdafa31..9b2a00c6c3 100644
--- a/arch/arm/boards/protonic-imx6/board.c
+++ b/arch/arm/boards/protonic-imx6/board.c
@@ -51,6 +51,8 @@ enum {
 	HW_TYPE_LANMCU = 23,
 	HW_TYPE_PLYBAS = 24,
 	HW_TYPE_VICTGO = 28,
+	HW_TYPE_JOZACP = 30,
+	HW_TYPE_JOZACPP = 31,
 };
 
 enum prt_imx6_kvg_pw_mode {
@@ -1088,6 +1090,26 @@ static const struct prt_machine_data prt_imx6_cfg_prtwd3[] = {
 	},
 };
 
+static const struct prt_machine_data prt_imx6_cfg_jozacp[] = {
+	{
+		.hw_id = HW_TYPE_JOZACP,
+		.hw_rev = 1,
+		.i2c_addr = 0x51,
+		.i2c_adapter = 0,
+		.emmc_usdhc = 0,
+		.flags = PRT_IMX6_BOOTSRC_EMMC | PRT_IMX6_BOOTCHOOSER,
+	}, {
+		.hw_id = HW_TYPE_JOZACPP,
+		.hw_rev = 1,
+		.i2c_addr = 0x51,
+		.i2c_adapter = 0,
+		.emmc_usdhc = 0,
+		.flags = PRT_IMX6_BOOTSRC_EMMC | PRT_IMX6_BOOTCHOOSER,
+	}, {
+		.hw_id = UINT_MAX
+	},
+};
+
 static const struct of_device_id prt_imx6_of_match[] = {
 	{ .compatible = "alt,alti6p", .data = &prt_imx6_cfg_alti6p },
 	{ .compatible = "kvg,victgo", .data = &prt_imx6_cfg_victgo },
@@ -1104,6 +1126,7 @@ static const struct of_device_id prt_imx6_of_match[] = {
 	{ .compatible = "prt,prtvt7", .data = &prt_imx6_cfg_prtvt7 },
 	{ .compatible = "prt,prtwd2", .data = &prt_imx6_cfg_prtwd2 },
 	{ .compatible = "prt,prtwd3", .data = &prt_imx6_cfg_prtwd3 },
+	{ .compatible = "joz,jozacp", .data = &prt_imx6_cfg_jozacp },
 	{ /* sentinel */ },
 };
 BAREBOX_DEEP_PROBE_ENABLE(prt_imx6_of_match);
diff --git a/arch/arm/boards/protonic-imx6/flash-header-jozacp.imxcfg b/arch/arm/boards/protonic-imx6/flash-header-jozacp.imxcfg
new file mode 100644
index 0000000000..ec9fb84108
--- /dev/null
+++ b/arch/arm/boards/protonic-imx6/flash-header-jozacp.imxcfg
@@ -0,0 +1,81 @@
+soc imx6
+loadaddr 0x80000000
+ivtofs 0x400
+
+#include "ddr3-defines.imxcfg"
+#include "padsetup-ul.imxcfg"
+
+/* Set Read data delay 3 delay units for all bits */
+wm 32 0x021b081c 0x33333333
+wm 32 0x021b0820 0x33333333
+
+/* MDMISC No addr mirror, 1 WALAT, 5 RALAT, DDR3 mode */
+wm 32 0x021b0018 0x00011740
+
+/* CSCR: Configuration mode */
+wm 32 0x021b001c 0x00008000
+
+wm 32 0x021b000c MDCFG0_2G_400MHZ
+wm 32 0x021b0010 MDCFG1_400MHZ
+wm 32 0x021b0014 MDCFG2_400MHZ
+
+/* MDRWD */
+wm 32 0x021b002c 0x000026d2
+
+wm 32 0x021b0030 MDOR_2G_400MHZ
+wm 32 0x021b0008 MDOTC_400MHZ
+wm 32 0x021b0004 MDPDC_400MHZ
+wm 32 0x021b0040 0x00000047	/* MDASP_512MIB */
+wm 32 0x021b0000 MDCTL_2G_16BIT
+
+/* DDR3 MR config */
+wm 32 0x021b001c DDR3_MR2_400MHZ_RTT_120
+
+/*
+ * DDR3 chip MR3, n = 3, vvvv = 0 (no configurable function of interest).
+ */
+wm 32 0x021b001c 0x00008033
+
+wm 32 0x021b001c DDR3_MR1_RTT_120_ODS_40
+wm 32 0x021b001c DDR3_MR0_400MHZ
+
+/*
+ * ZQ calibration, n = 0x10 (Precharge all):
+ * Bit 10 = 1:  Start ZQ calibration
+ * REGISTER: 0x04008040
+ */
+wm 32 0x021b001c 0x04008040
+
+/* MPZQHWCTRL */
+wm 32 0x021b0800 0xa1390003 /* ZQ mode = 3  force calibration */
+
+wm 32 0x021b0020 MDREF_64KHZ
+
+wm 32 0x021b0818 0x00000117	/* MPODTCTRL_ODT_120 */
+
+wm 32 0x021b083c MPDGCTRL0_CH0_400MHZ
+
+/* MPRDDLCTL, MPWRDLCTL */
+wm 32 0x021b0848 0x40404040 /* TODO. Read delay line conf. */
+wm 32 0x021b0850 0x40404040 /* For now set all to 50%. */
+
+/* MPWLDECTRL0 */
+wm 32 0x021b080c 0x001f001f /* TODO. Write level delay control */
+
+/* MPMUR0 */
+wm 32 0x021b08b8 0x00000800 /* Force measurement on delay lines */
+
+/* MDSCR */
+wm 32 0x021b001c 0x00000000 /* Disable configuration req */
+
+/* MAPSR */
+wm 32 0x021b0404 0x00011007 /* 0x0001...? FIXME: Disable powersaving for now  */
+
+/* Enable all clocks */
+wm 32 0x020c4068 0xffffffff
+wm 32 0x020c406c 0xffffffff
+wm 32 0x020c4070 0xffffffff
+wm 32 0x020c4074 0xffffffff
+wm 32 0x020c4078 0xffffffff
+wm 32 0x020c407c 0xffffffff
+wm 32 0x020c4080 0xffffffff
diff --git a/arch/arm/boards/protonic-imx6/lowlevel.c b/arch/arm/boards/protonic-imx6/lowlevel.c
index f5784cc6b1..ef8e7016d1 100644
--- a/arch/arm/boards/protonic-imx6/lowlevel.c
+++ b/arch/arm/boards/protonic-imx6/lowlevel.c
@@ -24,6 +24,7 @@ extern char __dtb_z_imx6dl_vicut1_start[];
 extern char __dtb_z_imx6qp_prtwd3_start[];
 extern char __dtb_z_imx6qp_vicutp_start[];
 extern char __dtb_z_imx6ul_prti6g_start[];
+extern char __dtb_z_imx6ull_jozacp_start[];
 
 ENTRY_FUNCTION(start_imx6q_prti6q, r0, r1, r2)
 {
@@ -189,3 +190,22 @@ ENTRY_FUNCTION(start_imx6ul_prti6g, r0, r1, r2)
 
 	imx6ul_barebox_entry(fdt);
 }
+
+ENTRY_FUNCTION(start_imx6ull_jozacp, r0, r1, r2)
+{
+	void *fdt;
+
+	imx6ul_cpu_lowlevel_init();
+
+	/* Disconnect USDHC2 from SD card */
+	writel(0x5, 0x020e0178);
+	writel(0x5, 0x020e017c);
+	writel(0x5, 0x020e0180);
+	writel(0x5, 0x020e0184);
+	writel(0x5, 0x020e0188);
+	writel(0x5, 0x020e018c);
+
+	fdt = __dtb_z_imx6ull_jozacp_start + get_runtime_offset();
+
+	imx6ul_barebox_entry(fdt);
+}
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index ffa9fe88c1..2acdb08483 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -91,7 +91,8 @@ lwl-$(CONFIG_MACH_PROTONIC_IMX6) += \
 	imx6dl-vicut1.dtb.o \
 	imx6qp-prtwd3.dtb.o \
 	imx6qp-vicutp.dtb.o \
-	imx6ul-prti6g.dtb.o
+	imx6ul-prti6g.dtb.o \
+	imx6ull-jozacp.dtb.o
 lwl-$(CONFIG_MACH_PROTONIC_IMX8M) += imx8mm-prt8mm.dtb.o
 lwl-$(CONFIG_MACH_RADXA_ROCK) += rk3188-radxarock.dtb.o
 lwl-$(CONFIG_MACH_PHYTEC_SOM_RK3288) += rk3288-phycore-som.dtb.o
diff --git a/arch/arm/dts/imx6ull-jozacp.dts b/arch/arm/dts/imx6ull-jozacp.dts
new file mode 100644
index 0000000000..f41028455a
--- /dev/null
+++ b/arch/arm/dts/imx6ull-jozacp.dts
@@ -0,0 +1,47 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/dts-v1/;
+
+#include "imx6ull-jozacp.dtsi"
+
+/ {
+	chosen {
+		stdout-path = &uart1;
+
+		environment@0 {
+			compatible = "barebox,environment";
+			device-path = &usdhc1, "partname:barebox-environment";
+		};
+	};
+
+	reserved-memory {
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges;
+
+		/* Address will be determined by the bootloader */
+		ramoops {
+			compatible = "ramoops";
+		};
+	};
+
+	reserved-memory {
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges;
+
+		/* Address will be determined by the bootloader */
+		ramoops {
+			compatible = "ramoops";
+		};
+	};
+};
+
+&usdhc1 {
+	#address-cells = <1>;
+	#size-cells = <1>;
+
+	partition@40000 {
+		label = "barebox-environment";
+		reg = <0x40000 0x80000>;
+	};
+};
diff --git a/arch/arm/dts/imx6ull-jozacp.dtsi b/arch/arm/dts/imx6ull-jozacp.dtsi
new file mode 100644
index 0000000000..f7d35684f8
--- /dev/null
+++ b/arch/arm/dts/imx6ull-jozacp.dtsi
@@ -0,0 +1,525 @@
+/*
+ * Copyright (C) 2020 Protonic Holland
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+
+/dts-v1/;
+
+#include <arm/imx6ull.dtsi>
+#include <dt-bindings/gpio/gpio.h>
+
+/ {
+	model = "JOZ Access Point";
+	compatible = "joz,jozacp", "fsl,imx6ull";
+
+	chosen {
+		stdout-path = &uart1;
+	};
+
+	memory@80000000 {
+		device_type = "memory";
+		reg = <0x80000000 0x10000000>;
+	};
+
+	regulators {
+		compatible = "simple-bus";
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		reg_5v: 5v-regulator {
+			compatible = "regulator-fixed";
+			regulator-name = "regulator-5V";
+			regulator-min-microvolt = <5000000>;
+			regulator-max-microvolt = <5000000>;
+			regulator-always-on;
+		};
+
+		reg_3p3v: 3p3-regulator {
+			compatible = "regulator-fixed";
+			regulator-name = "regulator-3P3V";
+			regulator-min-microvolt = <3300000>;
+			regulator-max-microvolt = <3300000>;
+			vin-supply = <&reg_5v>;
+			regulator-always-on;
+		};
+
+		reg_1p4v: 1p4-regulator {
+			compatible = "regulator-fixed";
+			regulator-name = "regulator-1P4V";
+			regulator-min-microvolt = <1400000>;
+			regulator-max-microvolt = <1400000>;
+			vin-supply = <&reg_5v>;
+			regulator-always-on;
+		};
+
+		reg_vbus: vbus-regulator {
+			pinctrl-names = "default";
+			pinctrl-0 = <&pinctrl_vbus>;
+			compatible = "regulator-fixed";
+			regulator-name = "regulator-vbus";
+			regulator-min-microvolt = <5000000>;
+			regulator-max-microvolt = <5000000>;
+			vin-supply = <&reg_5v>;
+			gpio = <&gpio1 2 GPIO_ACTIVE_HIGH>;
+			enable-active-high;
+		};
+	};
+
+	usdhc2_pwrseq: usdhc2-pwrseq {
+		compatible = "mmc-pwrseq-simple";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_wlan0_reg_on>;
+		reset-gpios = <&gpio4 25 GPIO_ACTIVE_LOW>;
+	};
+
+	pwm_leds {
+		compatible = "pwm-leds";
+
+		rgb1_red {
+			label = "pwm:red:rgb1";
+			pwms = <&pwm1 0 10000000 0>;
+			max-brightness = <255>;
+		};
+
+		rgb1_green {
+			label = "pwm:green:rgb1";
+			pwms = <&pwm3 0 10000000 0>;
+			max-brightness = <255>;
+		};
+
+		rgb1_blue {
+			label = "pwm:blue:rgb1";
+			pwms = <&pwm5 0 10000000 0>;
+			max-brightness = <255>;
+			linux,default-trigger = "heartbeat";
+		};
+
+		rgb2_red {
+			label = "pwm:red:rgb2";
+			pwms = <&pwm2 0 10000000 0>;
+			max-brightness = <255>;
+		};
+
+		rgb2_green {
+			label = "pwm:green:rgb2";
+			pwms = <&pwm4 0 10000000 0>;
+			max-brightness = <255>;
+			linux,default-trigger = "netdev";
+		};
+
+		rgb2_blue {
+			label = "pwm:blue:rgb2";
+			pwms = <&pwm6 0 10000000 0>;
+			max-brightness = <255>;
+		};
+	};
+};
+
+&cpu0 {
+	clock-frequency = <792000000>;
+};
+
+&iomuxc {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_hog>;
+
+	pinctrl_hog: hoggrp {
+		fsl,pins = <
+			/* HW Revision */
+			MX6UL_PAD_ENET2_RX_DATA0__GPIO2_IO08	0x1b0b0
+			MX6UL_PAD_ENET2_RX_DATA1__GPIO2_IO09	0x1b0b0
+			MX6UL_PAD_ENET2_RX_EN__GPIO2_IO10	0x1b0b0
+
+			/* HW ID */
+			MX6UL_PAD_ENET2_TX_DATA0__GPIO2_IO11	0x1b0b0
+			MX6UL_PAD_ENET2_TX_DATA1__GPIO2_IO12	0x1b0b0
+			MX6UL_PAD_ENET2_TX_EN__GPIO2_IO13	0x1b0b0
+			MX6UL_PAD_ENET2_TX_CLK__GPIO2_IO14	0x1b0b0
+			MX6UL_PAD_ENET2_RX_ER__GPIO2_IO15	0x1b0b0
+
+			/* Digital inputs */
+			MX6UL_PAD_GPIO1_IO03__GPIO1_IO03	0x11000
+			MX6UL_PAD_GPIO1_IO04__GPIO1_IO04	0x11000
+			MX6UL_PAD_GPIO1_IO05__GPIO1_IO05	0x11000
+			MX6UL_PAD_GPIO1_IO08__GPIO1_IO08	0x11000
+			MX6UL_PAD_GPIO1_IO09__GPIO1_IO09	0x11000
+
+			/* Isolated outputs */
+			MX6UL_PAD_UART2_TX_DATA__GPIO1_IO20	0x01020
+			MX6UL_PAD_UART2_RX_DATA__GPIO1_IO21	0x01020
+			MX6UL_PAD_UART2_RTS_B__GPIO1_IO23	0x01020
+			MX6UL_PAD_UART3_TX_DATA__GPIO1_IO24	0x01020
+			MX6UL_PAD_UART3_RX_DATA__GPIO1_IO25	0x01020
+		>;
+	};
+
+	pinctrl_enet1: enet1grp {
+		fsl,pins = <
+			MX6UL_PAD_GPIO1_IO07__ENET1_MDC	 0x1b0b0
+			MX6UL_PAD_GPIO1_IO06__ENET1_MDIO	0x1b0b0
+			MX6UL_PAD_ENET1_RX_EN__ENET1_RX_EN	0x1b0b0
+			MX6UL_PAD_ENET1_RX_ER__ENET1_RX_ER	0x1b0b0
+			MX6UL_PAD_ENET1_RX_DATA0__ENET1_RDATA00	0x1b0b0
+			MX6UL_PAD_ENET1_RX_DATA1__ENET1_RDATA01	0x1b0b0
+			MX6UL_PAD_ENET1_TX_EN__ENET1_TX_EN	0x1b0b0
+			MX6UL_PAD_ENET1_TX_DATA0__ENET1_TDATA00	0x1b0b0
+			MX6UL_PAD_ENET1_TX_DATA1__ENET1_TDATA01	0x1b0b0
+			MX6UL_PAD_ENET1_TX_CLK__ENET1_REF_CLK1	0x4001b031
+		>;
+	};
+
+	pinctrl_can1: can1grp {
+		fsl,pins = <
+			MX6UL_PAD_UART3_CTS_B__FLEXCAN1_TX	0x1b0b0
+			MX6UL_PAD_UART3_RTS_B__FLEXCAN1_RX	0x1b0b0
+		>;
+	};
+
+	pinctrl_i2c1: i2c1grp {
+		fsl,pins = <
+			MX6UL_PAD_CSI_MCLK__I2C1_SDA		0x4001f8b1
+			MX6UL_PAD_CSI_PIXCLK__I2C1_SCL		0x4001f8b1
+		>;
+	};
+
+	pinctrl_i2c2: i2c2grp {
+		fsl,pins = <
+			MX6UL_PAD_UART5_RX_DATA__I2C2_SDA	0x4001f8b1
+			MX6UL_PAD_UART5_TX_DATA__I2C2_SCL	0x4001f8b1
+		>;
+	};
+
+	pinctrl_pwm1: pwm1-grp {
+		fsl,pins = <
+			MX6UL_PAD_LCD_DATA00__PWM1_OUT		0x01010
+		>;
+	};
+
+	pinctrl_pwm2: pwm2-grp {
+		fsl,pins = <
+			MX6UL_PAD_LCD_DATA01__PWM2_OUT		0x01010
+		>;
+	};
+
+	pinctrl_pwm3: pwm3-grp {
+		fsl,pins = <
+			MX6UL_PAD_LCD_DATA02__PWM3_OUT		0x01010
+		>;
+	};
+
+	pinctrl_pwm4: pwm4-grp {
+		fsl,pins = <
+			MX6UL_PAD_LCD_DATA03__PWM4_OUT		0x01010
+		>;
+	};
+
+	pinctrl_pwm5: pwm5-grp {
+		fsl,pins = <
+			MX6UL_PAD_LCD_DATA18__PWM5_OUT		0x01010
+		>;
+	};
+
+	pinctrl_pwm6: pwm6-grp {
+		fsl,pins = <
+			MX6UL_PAD_LCD_DATA19__PWM6_OUT		0x01010
+		>;
+	};
+
+	pinctrl_uart1: uart1grp {
+		fsl,pins = <
+			MX6UL_PAD_UART1_TX_DATA__UART1_DCE_TX	0x1b0b1
+			MX6UL_PAD_UART1_RX_DATA__UART1_DCE_RX	0x1b0b1
+		>;
+	};
+
+	pinctrl_uart2: uart2grp {
+		fsl,pins = <
+			MX6UL_PAD_NAND_DATA04__UART2_DCE_TX	0x1b0b0
+			MX6UL_PAD_NAND_DATA05__UART2_DCE_RX	0x1b0b0
+			MX6UL_PAD_NAND_DATA06__GPIO4_IO08	0x1b0b0
+			MX6UL_PAD_NAND_DATA07__GPIO4_IO09	0x1b0b0
+		>;
+	};
+
+	pinctrl_uart4: uart4grp {
+		fsl,pins = <
+			MX6UL_PAD_LCD_CLK__UART4_DCE_TX		0x1b0b0
+			MX6UL_PAD_LCD_ENABLE__UART4_DCE_RX	0x1b0b0
+			MX6UL_PAD_LCD_HSYNC__UART4_DCE_CTS	0x1b0b0
+			MX6UL_PAD_LCD_VSYNC__UART4_DCE_RTS	0x1b0b0
+			MX6UL_PAD_LCD_RESET__GPIO3_IO04		0x1b0b0
+		>;
+	};
+
+	pinctrl_vbus: vbus0grp {
+		fsl,pins = <
+			MX6UL_PAD_GPIO1_IO02__GPIO1_IO02	0x030b0
+		>;
+	};
+
+	pinctrl_usbotg1: usbotg1grp {
+		fsl,pins = <
+			MX6UL_PAD_GPIO1_IO01__USB_OTG1_OC	0x1b0b0
+		>;
+	};
+
+	pinctrl_usdhc1: usdhc1grp {
+		fsl,pins = <
+			MX6UL_PAD_NAND_WP_B__USDHC1_RESET_B	0x17099
+			MX6UL_PAD_SD1_CMD__USDHC1_CMD		0x1f099
+			MX6UL_PAD_SD1_CLK__USDHC1_CLK		0x10099
+			MX6UL_PAD_SD1_DATA0__USDHC1_DATA0	0x17099
+			MX6UL_PAD_SD1_DATA1__USDHC1_DATA1	0x17099
+			MX6UL_PAD_SD1_DATA2__USDHC1_DATA2	0x17099
+			MX6UL_PAD_SD1_DATA3__USDHC1_DATA3	0x17099
+			MX6UL_PAD_NAND_READY_B__USDHC1_DATA4	0x17099
+			MX6UL_PAD_NAND_CE0_B__USDHC1_DATA5	0x17099
+			MX6UL_PAD_NAND_CE1_B__USDHC1_DATA6	0x17099
+			MX6UL_PAD_NAND_CLE__USDHC1_DATA7	0x17099
+		>;
+	};
+
+	pinctrl_usdhc2: usdhc2grp {
+		fsl,pins = <
+			MX6UL_PAD_CSI_VSYNC__USDHC2_CLK		0x100b9
+			MX6UL_PAD_CSI_HSYNC__USDHC2_CMD		0x170b9
+			MX6UL_PAD_CSI_DATA00__USDHC2_DATA0	0x170b9
+			MX6UL_PAD_CSI_DATA01__USDHC2_DATA1	0x170b9
+			MX6UL_PAD_CSI_DATA02__USDHC2_DATA2	0x170b9
+			MX6UL_PAD_CSI_DATA03__USDHC2_DATA3	0x170b9
+		>;
+	};
+
+	pinctrl_wlan0_reg_on: wlan0-regon-grp0 {
+		fsl,pins = <
+			MX6UL_PAD_CSI_DATA04__GPIO4_IO25	0x03020
+		>;
+	};
+
+	pinctrl_wlan0_host_wake: wlan0-host_wake-grp0 {
+		fsl,pins = <
+			MX6UL_PAD_CSI_DATA05__GPIO4_IO26	0x1b0b0
+		>;
+	};
+
+	pinctrl_bt0_reg_on: bt0-regon-grp0 {
+		fsl,pins = <
+			MX6UL_PAD_CSI_DATA07__GPIO4_IO28	0x03020
+		>;
+	};
+
+	pinctrl_bt0_host_wake: bt0-host_wake-grp0 {
+		fsl,pins = <
+			MX6UL_PAD_CSI_DATA06__GPIO4_IO27	0x1b0b0
+		>;
+	};
+
+	pinctrl_etnphy0_rst: etnphy-rstgrp-grp0 {
+		fsl,pins = <
+			MX6UL_PAD_UART4_TX_DATA__GPIO1_IO28	0x038b0
+		>;
+	};
+
+	pinctrl_etnphy0_int: etnphy-intgrp-grp0 {
+		fsl,pins = <
+			MX6UL_PAD_UART4_RX_DATA__GPIO1_IO29	0x170b0
+		>;
+	};
+};
+
+&iomuxc_snvs {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_snvs_hog>;
+
+	pinctrl_snvs_hog: snvs-hog-grp {
+		fsl,pins = <
+			/* Digital outputs */
+			MX6ULL_PAD_SNVS_TAMPER2__GPIO5_IO02	0x00020
+			MX6ULL_PAD_SNVS_TAMPER3__GPIO5_IO03	0x00020
+			MX6ULL_PAD_SNVS_TAMPER4__GPIO5_IO04	0x00020
+			MX6ULL_PAD_SNVS_TAMPER5__GPIO5_IO05	0x00020
+			MX6ULL_PAD_SNVS_TAMPER6__GPIO5_IO06	0x00020
+
+			/* Digital outputs fault feedback */
+			MX6ULL_PAD_SNVS_TAMPER0__GPIO5_IO00	0x17000
+			MX6ULL_PAD_SNVS_TAMPER1__GPIO5_IO01	0x17000
+			MX6ULL_PAD_SNVS_TAMPER7__GPIO5_IO07	0x17000
+			MX6ULL_PAD_SNVS_TAMPER8__GPIO5_IO08	0x17000
+			MX6ULL_PAD_SNVS_TAMPER9__GPIO5_IO09	0x17000
+		>;
+	};
+};
+
+&fec1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_enet1 &pinctrl_etnphy0_rst>;
+	phy-mode = "rmii";
+	phy-handle = <&ethphy0>;
+	phy-reset-gpios = <&gpio1 28 GPIO_ACTIVE_LOW>;
+	phy-reset-duration = <11>;
+	status = "okay";
+
+	mdio {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		ethphy0: ethernet-phy@0 {
+			reg = <0>;
+			clocks = <&clks IMX6UL_CLK_ENET_REF>;
+			clock-names = "rmii-ref";
+			interrupt-parent = <&gpio1>;
+			interrupts = <29 IRQ_TYPE_LEVEL_LOW>;
+		};
+	};
+};
+
+&i2c1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c1>;
+	clock-frequency = <100000>;
+	status = "okay";
+};
+
+&i2c2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c2>;
+	clock-frequency = <100000>;
+	status = "okay";
+
+	rtc: pcf8563@51 {
+		compatible = "nxp,pcf8563";
+		reg = <0x51>;
+	};
+};
+
+&snvs_rtc {
+	status = "disabled";
+};
+
+&uart1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart1>;
+	status = "okay";
+};
+
+&uart2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart2>;
+	cts-gpios = <&gpio4 8 GPIO_ACTIVE_LOW>;
+	rts-gpios = <&gpio4 9 GPIO_ACTIVE_LOW>;
+	status = "disabled";
+
+	bluetooth {
+		compatible = "brcm,bcm43438-bt";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_bt0_reg_on &pinctrl_bt0_host_wake>;
+		host-wakeup-gpios = <&gpio4 27 GPIO_ACTIVE_HIGH>;
+		shutdown-gpios = <&gpio4 28 GPIO_ACTIVE_HIGH>;
+		vbat-supply = <&reg_3p3v>;
+		vddio-supply = <&reg_3p3v>;
+		max-speed = <921600>;
+	};
+};
+
+&uart4 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart4>;
+	dtr-gpios = <&gpio3 4 GPIO_ACTIVE_LOW>;
+	uart-has-rtscts;
+	status = "okay";
+};
+
+&usbotg1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usbotg1>;
+	vbus-supply = <&reg_vbus>;
+	dr_mode = "host";
+	over-current-active-low;
+	status = "okay";
+};
+
+&usdhc1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usdhc1>;
+	vmmc-supply = <&reg_3p3v>;
+	bus-width = <8>;
+	no-1-8-v;
+	non-removable;
+	cap-mmc-hw-reset;
+	status = "okay";
+};
+
+&usdhc2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usdhc2>;
+	mmc-pwrseq = <&usdhc2_pwrseq>;
+	bus-width = <4>;
+	no-1-8-v;
+	non-removable;
+	pm-ignore-notify;
+	status = "okay";
+
+	#address-cells = <1>;
+	#size-cells = <0>;
+
+	brcmf: bcrmf@1 {
+		reg = <1>;
+		compatible = "brcm,bcm4329-fmac";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_wlan0_host_wake>;
+		//interrupt-parent = <&gpio4>;
+		//interrupts = <26 IRQ_TYPE_LEVEL_LOW>;
+		//interrupt-names = "host-wake";
+	};
+};
+
+&can1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_can1>;
+	status = "okay";
+};
+
+&pwm1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_pwm1>;
+	status = "okay";
+};
+
+&pwm2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_pwm2>;
+	status = "okay";
+};
+
+&pwm3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_pwm3>;
+	status = "okay";
+};
+
+&pwm4 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_pwm4>;
+	status = "okay";
+};
+
+&pwm5 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_pwm5>;
+	status = "okay";
+};
+
+&pwm6 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_pwm6>;
+	status = "okay";
+};
diff --git a/images/Makefile.imx b/images/Makefile.imx
index dd927aba55..2baca6b4ea 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -329,6 +329,8 @@ $(call build_imx_habv4img, CONFIG_MACH_PROTONIC_IMX6, start_imx6qp_prtwd3, proto
 
 $(call build_imx_habv4img, CONFIG_MACH_PROTONIC_IMX6, start_imx6qp_vicutp, protonic-imx6/flash-header-vicutp, protonic-vicutp)
 
+$(call build_imx_habv4img, CONFIG_MACH_PROTONIC_IMX6, start_imx6ull_jozacp, protonic-imx6/flash-header-jozacp, protonic-jozacp)
+
 $(call build_imx_habv4img, CONFIG_MACH_KONTRON_SAMX6I, start_imx6q_samx6i, kontron-samx6i/flash-header-samx6i-quad, imx6q-samx6i)
 
 $(call build_imx_habv4img, CONFIG_MACH_KONTRON_SAMX6I, start_imx6dl_samx6i, kontron-samx6i/flash-header-samx6i-duallite, imx6dl-samx6i)
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


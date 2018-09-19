Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g2eok-0005sz-W8
 for barebox@lists.infradead.org; Wed, 19 Sep 2018 15:55:09 +0000
Received: by mail-pl1-x641.google.com with SMTP id g2-v6so2884082plo.2
 for <barebox@lists.infradead.org>; Wed, 19 Sep 2018 08:54:56 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 19 Sep 2018 08:54:46 -0700
Message-Id: <20180919155447.15350-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 1/2] ARM: zii-vf610-dev: Convert CFU1 to use upstream DTS
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/boards/zii-vf610-dev/board.c    |   8 +-
 arch/arm/boards/zii-vf610-dev/lowlevel.c |   4 +-
 arch/arm/dts/Makefile                    |   2 +-
 arch/arm/dts/vf610-zii-cfu1-rev-a.dts    | 209 -----------------------
 arch/arm/dts/vf610-zii-cfu1.dts          |  10 ++
 5 files changed, 17 insertions(+), 216 deletions(-)
 delete mode 100644 arch/arm/dts/vf610-zii-cfu1-rev-a.dts
 create mode 100644 arch/arm/dts/vf610-zii-cfu1.dts

diff --git a/arch/arm/boards/zii-vf610-dev/board.c b/arch/arm/boards/zii-vf610-dev/board.c
index cc3ecbda2..4cba2d6dc 100644
--- a/arch/arm/boards/zii-vf610-dev/board.c
+++ b/arch/arm/boards/zii-vf610-dev/board.c
@@ -53,7 +53,7 @@ static int zii_vf610_cfu1_expose_signals(void)
 		},
 	};
 
-	if (!of_machine_is_compatible("zii,vf610cfu1-a"))
+	if (!of_machine_is_compatible("zii,vf610cfu1"))
 		return 0;
 
 	return expose_signals(signals, ARRAY_SIZE(signals));
@@ -76,7 +76,7 @@ static int zii_vf610_cfu1_spu3_expose_signals(void)
 	};
 
 	if (!of_machine_is_compatible("zii,vf610spu3-a") &&
-	    !of_machine_is_compatible("zii,vf610cfu1-a"))
+	    !of_machine_is_compatible("zii,vf610cfu1"))
 		return 0;
 
 	return expose_signals(signals, ARRAY_SIZE(signals));
@@ -128,7 +128,7 @@ static int zii_vf610_dev_set_hostname(void)
 		const char *hostname;
 	} boards[] = {
 		{ "zii,vf610spu3-a", "spu3-rev-a" },
-		{ "zii,vf610cfu1-a", "cfu1-rev-a" },
+		{ "zii,vf610cfu1", "cfu1" },
 		{ "zii,vf610dev-b", "dev-rev-b" },
 		{ "zii,vf610dev-c", "dev-rev-c" },
 		{ "zii,vf610scu4-aib-c", "scu4-aib-rev-c" },
@@ -172,7 +172,7 @@ static int zii_vf610_register_emmc_bbu(void)
 {
 	int ret;
 	if (!of_machine_is_compatible("zii,vf610spu3-a") &&
-	    !of_machine_is_compatible("zii,vf610cfu1-a"))
+	    !of_machine_is_compatible("zii,vf610cfu1"))
 		return 0;
 
 	ret = vf610_bbu_internal_mmcboot_register_handler("eMMC",
diff --git a/arch/arm/boards/zii-vf610-dev/lowlevel.c b/arch/arm/boards/zii-vf610-dev/lowlevel.c
index c771d81cc..0c7fe3ac9 100644
--- a/arch/arm/boards/zii-vf610-dev/lowlevel.c
+++ b/arch/arm/boards/zii-vf610-dev/lowlevel.c
@@ -75,7 +75,7 @@ static unsigned int get_system_type(void)
 
 extern char __dtb_vf610_zii_dev_rev_b_start[];
 extern char __dtb_vf610_zii_dev_rev_c_start[];
-extern char __dtb_vf610_zii_cfu1_rev_a_start[];
+extern char __dtb_vf610_zii_cfu1_start[];
 extern char __dtb_vf610_zii_spu3_rev_a_start[];
 extern char __dtb_vf610_zii_scu4_aib_rev_c_start[];
 
@@ -127,7 +127,7 @@ ENTRY_FUNCTION(start_zii_vf610_dev, r0, r1, r2)
 		fdt = __dtb_vf610_zii_dev_rev_c_start;
 		break;
 	case ZII_PLATFORM_VF610_CFU1:
-		fdt = __dtb_vf610_zii_cfu1_rev_a_start;
+		fdt = __dtb_vf610_zii_cfu1_start;
 		break;
 	case ZII_PLATFORM_VF610_SPU3:
 		fdt = __dtb_vf610_zii_spu3_rev_a_start;
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 315183666..8e297bc0f 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -111,7 +111,7 @@ pbl-dtb-$(CONFIG_MACH_ZII_RDU2) += imx6q-zii-rdu2.dtb.o imx6qp-zii-rdu2.dtb.o
 pbl-dtb-$(CONFIG_MACH_ZII_VF610_DEV) += \
 	vf610-zii-dev-rev-b.dtb.o 	\
 	vf610-zii-dev-rev-c.dtb.o 	\
-	vf610-zii-cfu1-rev-a.dtb.o	\
+	vf610-zii-cfu1.dtb.o		\
 	vf610-zii-spu3-rev-a.dtb.o	\
 	vf610-zii-scu4-aib-rev-c.dtb.o
 pbl-dtb-$(CONFIG_MACH_AT91SAM9263EK_DT) += at91sam9263ek.dtb.o
diff --git a/arch/arm/dts/vf610-zii-cfu1-rev-a.dts b/arch/arm/dts/vf610-zii-cfu1-rev-a.dts
deleted file mode 100644
index 7e87a15c1..000000000
--- a/arch/arm/dts/vf610-zii-cfu1-rev-a.dts
+++ /dev/null
@@ -1,209 +0,0 @@
-/*
- * Copyright (C) 2015, 2016 Zodiac Inflight Innovations
- *
- * Based on an original 'vf610-twr.dts' which is Copyright 2015,
- * Freescale Semiconductor, Inc.
- *
- * This file is dual-licensed: you can use it either under the terms
- * of the GPL or the X11 license, at your option. Note that this dual
- * licensing only applies to this file, and not this project as a
- * whole.
- *
- *  a) This file is free software; you can redistribute it and/or
- *     modify it under the terms of the GNU General Public License
- *     version 2 as published by the Free Software Foundation.
- *
- *     This file is distributed in the hope that it will be useful
- *     but WITHOUT ANY WARRANTY; without even the implied warranty of
- *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- *     GNU General Public License for more details.
- *
- * Or, alternatively
- *
- *  b) Permission is hereby granted, free of charge, to any person
- *     obtaining a copy of this software and associated documentation
- *     files (the "Software"), to deal in the Software without
- *     restriction, including without limitation the rights to use
- *     copy, modify, merge, publish, distribute, sublicense, and/or
- *     sell copies of the Software, and to permit persons to whom the
- *     Software is furnished to do so, subject to the following
- *     conditions:
- *
- *     The above copyright notice and this permission notice shall be
- *     included in all copies or substantial portions of the Software.
- *
- *     THE SOFTWARE IS PROVIDED , WITHOUT WARRANTY OF ANY KIND
- *     EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
- *     OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
- *     NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
- *     HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY
- *     WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
- *     FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
- *     OTHER DEALINGS IN THE SOFTWARE.
- */
-
-/dts-v1/;
-
-#include <arm/vf610-zii-dev.dtsi>
-
-#include "vf610-zii-dev.dtsi"
-
-/ {
-	model = "ZII VF610 CFU1 Switch Management Board";
-	compatible = "zii,vf610cfu1-a", "zii,vf610dev", "fsl,vf610";
-
-	aliases {
-		/delete-property/ serial1;
-		/delete-property/ serial2;
-	};
-
-	gpio-leds {
-                debug {
-                        gpios = <&gpio2 18 GPIO_ACTIVE_HIGH>;
-		};
-
-		fail {
-			label = "zii_fail";
-			gpios = <&gpio3 12 GPIO_ACTIVE_LOW>;
-			default-state = "off";
-			max-brightness = <1>;
-		};
-
-		status {
-			label = "zii_status";
-			gpios = <&gpio3 13 GPIO_ACTIVE_HIGH>;
-			default-state = "off";
-			max-brightness = <1>;
-		};
-
-		status_a {
-			label = "zii_status_a";
-			gpios = <&gpio3 14 GPIO_ACTIVE_HIGH>;
-			default-state = "off";
-			max-brightness = <1>;
-		};
-
-		status_b {
-			label = "zii_status_b";
-			gpios = <&gpio3 15 GPIO_ACTIVE_HIGH>;
-			default-state = "on";
-			max-brightness = <1>;
-		};
-	};
-};
-
-&dspi1 {
-	bus-num = <1>;
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_dspi1>;
-	status = "okay";
-
-	m25p128@0 {
-		#address-cells = <1>;
-		#size-cells = <1>;
-		compatible = "m25p128", "jedec,spi-nor";
-		reg = <0>;
-		spi-max-frequency = <50000000>;
-
-		partition@0 {
-			label = "m25p128-0";
-			reg = <0x0 0x01000000>;
-		};
-	};
-};
-
-&esdhc0 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_esdhc0>;
-	bus-width = <8>;
-	status = "okay";
-};
-
-&fec0 {
-	status = "disabled";
-};
-
-&i2c0 {
-	clock-frequency = <400000>;
-
-	pca9554@22 {
-		compatible = "nxp,pca9554";
-		reg = <0x22>;
-		gpio-controller;
-		#gpio-cells = <2>;
-	};
-};
-
-/delete-node/ &i2c1;
-/delete-node/ &i2c2;
-/delete-node/ &uart1;
-/delete-node/ &uart2;
-
-&iomuxc {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_hog>;
-
-	pinctrl_hog: hoggrp {
-		fsl,pins = <
-			VF610_PAD_PTE2__GPIO_107	0x31c2 /* SOC_SW_RSTn */
-			VF610_PAD_PTB28__GPIO_98	0x31c1 /* E6352_INTn */
-
-			/* PTE27 is wired to signal SD on part CONN
-			* SFF-F4 via net FIM_DS. An active high
-			* on this indicates a received optical
-			* signal
-
-			* SPEED=0b11 HIGH, SRE=0b0, ODE=0b0, HYS=0b0
-			* DSE=0b001 150Ohm, PUS=0b10 100k UP
-			* PKE=0b0, PUE=0b0, OBE=0b0, IBE=0b1
-			*/
-			VF610_PAD_PTE27__GPIO_132       0x3061
-
-			/*
-			* PTE13 is wired to signal T_DIS on part CONN
-			* SFF-F4 via net FIM_TDIS. Setting this high
-			* will disable optical output from the SFF-F4
-
-			* SPEED=0b11 HIGH, SRE=0b0, ODE=0b0, HYS=0b0
-			* DSE=0b001 150Ohm, PUS=0b00 100k DOWN
-			* PKE=0b0, PUE=0b0, OBE=0b1, IBE=0b1
-			* TODO: probably want IBE=0b0
-			*/
-			VF610_PAD_PTE13__GPIO_118       0x3043
-		>;
-	};
-
-	pinctrl_dspi1: dspi1grp {
-		fsl,pins = <
-			VF610_PAD_PTD5__DSPI1_CS0	0x1182
-			VF610_PAD_PTC6__DSPI1_SIN	0x1181
-			VF610_PAD_PTC7__DSPI1_SOUT	0x1182
-			VF610_PAD_PTC8__DSPI1_SCK	0x1182
-		>;
-	};
-
-	pinctrl_esdhc0: esdhc0grp {
-		fsl,pins = <
-			VF610_PAD_PTC0__ESDHC0_CLK	0x31ef
-			VF610_PAD_PTC1__ESDHC0_CMD	0x31ef
-			VF610_PAD_PTC2__ESDHC0_DAT0	0x31ef
-			VF610_PAD_PTC3__ESDHC0_DAT1	0x31ef
-			VF610_PAD_PTC4__ESDHC0_DAT2	0x31ef
-			VF610_PAD_PTC5__ESDHC0_DAT3	0x31ef
-			VF610_PAD_PTD23__ESDHC0_DAT4	0x31ef
-			VF610_PAD_PTD22__ESDHC0_DAT5	0x31ef
-			VF610_PAD_PTD21__ESDHC0_DAT6	0x31ef
-			VF610_PAD_PTD20__ESDHC0_DAT7	0x31ef
-		>;
-	};
-
-	pinctrl_leds_debug: pinctrl-leds-debug {
-		fsl,pins = <
-			VF610_PAD_PTD3__GPIO_82			0x31c2
-			VF610_PAD_PTE3__GPIO_108		0x31c2
-			VF610_PAD_PTE4__GPIO_109		0x31c2
-			VF610_PAD_PTE5__GPIO_110		0x31c2
-			VF610_PAD_PTE6__GPIO_111		0x31c2
-		>;
-	};
-};
diff --git a/arch/arm/dts/vf610-zii-cfu1.dts b/arch/arm/dts/vf610-zii-cfu1.dts
new file mode 100644
index 000000000..80d3f54f7
--- /dev/null
+++ b/arch/arm/dts/vf610-zii-cfu1.dts
@@ -0,0 +1,10 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+
+/*
+ * Copyright (C) 2015, 2016 Zodiac Inflight Innovations
+ */
+
+#include <arm/vf610-zii-cfu1.dts>
+
+#include "vf610-zii-dev.dtsi"
+
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

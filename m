Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g2eoo-0005tc-Ds
 for barebox@lists.infradead.org; Wed, 19 Sep 2018 15:55:27 +0000
Received: by mail-pg1-x544.google.com with SMTP id l63-v6so2952290pga.7
 for <barebox@lists.infradead.org>; Wed, 19 Sep 2018 08:55:00 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 19 Sep 2018 08:54:47 -0700
Message-Id: <20180919155447.15350-2-andrew.smirnov@gmail.com>
In-Reply-To: <20180919155447.15350-1-andrew.smirnov@gmail.com>
References: <20180919155447.15350-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 2/2] ARM: zii-vf610-dev: Convert SPU3 to use upstream DTS
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/boards/zii-vf610-dev/board.c    |   7 +-
 arch/arm/boards/zii-vf610-dev/lowlevel.c |   8 +-
 arch/arm/dts/Makefile                    |   2 +-
 arch/arm/dts/vf610-zii-spu3-rev-a.dts    | 142 -----------------------
 arch/arm/dts/vf610-zii-ssmb-spu3.dts     |   5 +
 5 files changed, 14 insertions(+), 150 deletions(-)
 delete mode 100644 arch/arm/dts/vf610-zii-spu3-rev-a.dts
 create mode 100644 arch/arm/dts/vf610-zii-ssmb-spu3.dts

diff --git a/arch/arm/boards/zii-vf610-dev/board.c b/arch/arm/boards/zii-vf610-dev/board.c
index 4cba2d6dc..275d0a432 100644
--- a/arch/arm/boards/zii-vf610-dev/board.c
+++ b/arch/arm/boards/zii-vf610-dev/board.c
@@ -75,7 +75,7 @@ static int zii_vf610_cfu1_spu3_expose_signals(void)
 		},
 	};
 
-	if (!of_machine_is_compatible("zii,vf610spu3-a") &&
+	if (!of_machine_is_compatible("zii,vf610spu3") &&
 	    !of_machine_is_compatible("zii,vf610cfu1"))
 		return 0;
 
@@ -127,7 +127,7 @@ static int zii_vf610_dev_set_hostname(void)
 		const char *compatible;
 		const char *hostname;
 	} boards[] = {
-		{ "zii,vf610spu3-a", "spu3-rev-a" },
+		{ "zii,vf610spu3", "spu3" },
 		{ "zii,vf610cfu1", "cfu1" },
 		{ "zii,vf610dev-b", "dev-rev-b" },
 		{ "zii,vf610dev-c", "dev-rev-c" },
@@ -171,7 +171,8 @@ late_initcall(zii_vf610_dev_register_bbu);
 static int zii_vf610_register_emmc_bbu(void)
 {
 	int ret;
-	if (!of_machine_is_compatible("zii,vf610spu3-a") &&
+
+	if (!of_machine_is_compatible("zii,vf610spu3") &&
 	    !of_machine_is_compatible("zii,vf610cfu1"))
 		return 0;
 
diff --git a/arch/arm/boards/zii-vf610-dev/lowlevel.c b/arch/arm/boards/zii-vf610-dev/lowlevel.c
index 0c7fe3ac9..d19318026 100644
--- a/arch/arm/boards/zii-vf610-dev/lowlevel.c
+++ b/arch/arm/boards/zii-vf610-dev/lowlevel.c
@@ -38,7 +38,7 @@ static inline void setup_uart(void)
 enum zii_platform_vf610_type {
 	ZII_PLATFORM_VF610_DEV_REV_B	= 0x01,
 	ZII_PLATFORM_VF610_SCU4_AIB	= 0x02,
-	ZII_PLATFORM_VF610_SPU3		= 0x03,
+	ZII_PLATFORM_VF610_SSMB_SPU3	= 0x03,
 	ZII_PLATFORM_VF610_CFU1		= 0x04,
 	ZII_PLATFORM_VF610_DEV_REV_C	= 0x05,
 };
@@ -76,7 +76,7 @@ static unsigned int get_system_type(void)
 extern char __dtb_vf610_zii_dev_rev_b_start[];
 extern char __dtb_vf610_zii_dev_rev_c_start[];
 extern char __dtb_vf610_zii_cfu1_start[];
-extern char __dtb_vf610_zii_spu3_rev_a_start[];
+extern char __dtb_vf610_zii_ssmb_spu3_start[];
 extern char __dtb_vf610_zii_scu4_aib_rev_c_start[];
 
 ENTRY_FUNCTION(start_zii_vf610_dev, r0, r1, r2)
@@ -129,8 +129,8 @@ ENTRY_FUNCTION(start_zii_vf610_dev, r0, r1, r2)
 	case ZII_PLATFORM_VF610_CFU1:
 		fdt = __dtb_vf610_zii_cfu1_start;
 		break;
-	case ZII_PLATFORM_VF610_SPU3:
-		fdt = __dtb_vf610_zii_spu3_rev_a_start;
+	case ZII_PLATFORM_VF610_SSMB_SPU3:
+		fdt = __dtb_vf610_zii_ssmb_spu3_start;
 		break;
 	}
 
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 8e297bc0f..35d48adb6 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -112,7 +112,7 @@ pbl-dtb-$(CONFIG_MACH_ZII_VF610_DEV) += \
 	vf610-zii-dev-rev-b.dtb.o 	\
 	vf610-zii-dev-rev-c.dtb.o 	\
 	vf610-zii-cfu1.dtb.o		\
-	vf610-zii-spu3-rev-a.dtb.o	\
+	vf610-zii-ssmb-spu3.dtb.o	\
 	vf610-zii-scu4-aib-rev-c.dtb.o
 pbl-dtb-$(CONFIG_MACH_AT91SAM9263EK_DT) += at91sam9263ek.dtb.o
 pbl-dtb-$(CONFIG_MACH_AT91SAM9X5EK) += at91sam9x5ek.dtb.o
diff --git a/arch/arm/dts/vf610-zii-spu3-rev-a.dts b/arch/arm/dts/vf610-zii-spu3-rev-a.dts
deleted file mode 100644
index f362e7f0b..000000000
--- a/arch/arm/dts/vf610-zii-spu3-rev-a.dts
+++ /dev/null
@@ -1,142 +0,0 @@
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
-	model = "ZII VF610 SPU3 Switch Management Board";
-	compatible = "zii,vf610spu3-a", "zii,vf610dev", "fsl,vf610";
-
-	aliases {
-		/delete-property/ serial2;
-	};
-
-	gpio-leds {
-                debug {
-                        gpios = <&gpio2 18 GPIO_ACTIVE_HIGH>;
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
-	/* Board Revision */
-	gpio6: pca9505@22 {
-		compatible = "nxp,pca9554";
-		reg = <0x22>;
-		gpio-controller;
-		#gpio-cells = <2>;
-	};
-};
-
-/delete-node/ &i2c1;
-/delete-node/ &i2c2;
-/delete-node/ &uart2;
-
-&iomuxc {
-	pinctrl_dspi1: dspi1grp {
-		fsl,pins = <
-			VF610_PAD_PTD5__DSPI1_CS0	0x1182
-			VF610_PAD_PTD4__DSPI1_CS1	0x1182
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
-		>;
-	};
-};
diff --git a/arch/arm/dts/vf610-zii-ssmb-spu3.dts b/arch/arm/dts/vf610-zii-ssmb-spu3.dts
new file mode 100644
index 000000000..e030109ce
--- /dev/null
+++ b/arch/arm/dts/vf610-zii-ssmb-spu3.dts
@@ -0,0 +1,5 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+
+#include <arm/vf610-zii-ssmb-spu3.dts>
+
+#include "vf610-zii-dev.dtsi"
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

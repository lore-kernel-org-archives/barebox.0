Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x243.google.com ([2607:f8b0:400e:c05::243])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dZel2-0003Si-1m
 for barebox@lists.infradead.org; Mon, 24 Jul 2017 14:54:59 +0000
Received: by mail-pg0-x243.google.com with SMTP id 123so1364711pgj.0
 for <barebox@lists.infradead.org>; Mon, 24 Jul 2017 07:54:36 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 24 Jul 2017 07:54:00 -0700
Message-Id: <20170724145400.2279-10-andrew.smirnov@gmail.com>
In-Reply-To: <20170724145400.2279-1-andrew.smirnov@gmail.com>
References: <20170724145400.2279-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 9/9] ARM: i.MX: Add support for NXP i.MX7 SABRESD board
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add minimal code to support NXP i.MX7 SABRESD board. Tested to have
working SD card and first Ethernet port as well as being able to boot
upstream Linux kernel (4.12+).

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/boards/Makefile                           |  1 +
 arch/arm/boards/freescale-mx7-sabresd/Makefile     |  3 +
 arch/arm/boards/freescale-mx7-sabresd/board.c      | 59 ++++++++++++++++
 .../flash-header-mx7-sabresd.imxcfg                | 79 ++++++++++++++++++++++
 arch/arm/boards/freescale-mx7-sabresd/lowlevel.c   | 46 +++++++++++++
 arch/arm/dts/Makefile                              |  2 +-
 arch/arm/dts/imx7d-sdb.dts                         | 70 +++++++++++++++++++
 arch/arm/mach-imx/Kconfig                          |  7 ++
 images/Makefile.imx                                |  5 ++
 9 files changed, 271 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boards/freescale-mx7-sabresd/Makefile
 create mode 100644 arch/arm/boards/freescale-mx7-sabresd/board.c
 create mode 100644 arch/arm/boards/freescale-mx7-sabresd/flash-header-mx7-sabresd.imxcfg
 create mode 100644 arch/arm/boards/freescale-mx7-sabresd/lowlevel.c
 create mode 100644 arch/arm/dts/imx7d-sdb.dts

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index 9bbdd684f..295a362bd 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -148,3 +148,4 @@ obj-$(CONFIG_MACH_WARP7)			+= element14-warp7/
 obj-$(CONFIG_MACH_VF610_TWR)			+= freescale-vf610-twr/
 obj-$(CONFIG_MACH_ZII_RDU2)			+= zii-imx6q-rdu2/
 obj-$(CONFIG_MACH_ZII_VF610_DEV)		+= zii-vf610-dev/
+obj-$(CONFIG_MACH_FREESCALE_MX7_SABRESD)	+= freescale-mx7-sabresd/
diff --git a/arch/arm/boards/freescale-mx7-sabresd/Makefile b/arch/arm/boards/freescale-mx7-sabresd/Makefile
new file mode 100644
index 000000000..9c3707a01
--- /dev/null
+++ b/arch/arm/boards/freescale-mx7-sabresd/Makefile
@@ -0,0 +1,3 @@
+obj-y += board.o
+lwl-y += lowlevel.o
+bbenv-y += env
diff --git a/arch/arm/boards/freescale-mx7-sabresd/board.c b/arch/arm/boards/freescale-mx7-sabresd/board.c
new file mode 100644
index 000000000..9c30707b2
--- /dev/null
+++ b/arch/arm/boards/freescale-mx7-sabresd/board.c
@@ -0,0 +1,59 @@
+/*
+ * Copyright (C) 2016 Zodiac Inflight Innovation
+ * Author: Andrey Smirnov <andrew.smirnov@gmail.com>
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
+#include <common.h>
+#include <init.h>
+#include <io.h>
+#include <mach/imx7-regs.h>
+#include <linux/phy.h>
+#include <mfd/imx7-iomuxc-gpr.h>
+
+#define PHY_ID_BCM54220 0x600d8589
+
+static int bcm54220_phy_fixup(struct phy_device *dev)
+{
+	phy_write(dev, 0x1e, 0x21);
+	phy_write(dev, 0x1f, 0x7ea8);
+	phy_write(dev, 0x1e, 0x2f);
+	phy_write(dev, 0x1f, 0x71b7);
+
+	return 0;
+}
+
+static int mx7_sabresd_init_fec(void)
+{
+	void __iomem *gpr = IOMEM(MX7_IOMUXC_GPR_BASE_ADDR);
+	uint32_t gpr1;
+
+	gpr1 = readl(gpr + IOMUXC_GPR1);
+	gpr1 &= ~(IMX7D_GPR1_ENET1_TX_CLK_SEL_MASK |
+		  IMX7D_GPR1_ENET1_CLK_DIR_MASK);
+	writel(gpr1, gpr + IOMUXC_GPR1);
+
+	return 0;
+}
+coredevice_initcall(mx7_sabresd_init_fec);
+
+static int mx7_sabresd_coredevices_init(void)
+{
+	if (!of_machine_is_compatible("fsl,imx7d-sdb"))
+		return 0;
+
+	phy_register_fixup_for_uid(PHY_ID_BCM54220, 0xffffffff,
+				   bcm54220_phy_fixup);
+
+	return 0;
+}
+coredevice_initcall(mx7_sabresd_coredevices_init);
diff --git a/arch/arm/boards/freescale-mx7-sabresd/flash-header-mx7-sabresd.imxcfg b/arch/arm/boards/freescale-mx7-sabresd/flash-header-mx7-sabresd.imxcfg
new file mode 100644
index 000000000..c5e17f2a0
--- /dev/null
+++ b/arch/arm/boards/freescale-mx7-sabresd/flash-header-mx7-sabresd.imxcfg
@@ -0,0 +1,79 @@
+/*
+ * Copyright (C) 2016 NXP Semiconductors
+ *
+ * SPDX-License-Identifier:	GPL-2.0
+ *
+ * Refer docs/README.imxmage for more details about how-to configure
+ * and create imximage boot image
+ *
+ * The syntax is taken as close as possible with the kwbimage
+ */
+
+soc imx7
+loadaddr 0x80000000
+dcdofs 0x400
+
+#include <mach/imx7-ddr-regs.h>
+
+wm 32 0x30340004 0x4F400005
+
+wm 32 0x30391000 0x00000002
+
+wm 32 MX7_DDRC_MSTR 0x01040001
+wm 32 MX7_DDRC_DFIUPD0 0x80400003
+wm 32 MX7_DDRC_DFIUPD1 0x00100020
+wm 32 MX7_DDRC_DFIUPD2 0x80100004
+wm 32 MX7_DDRC_RFSHTMG 0x00400046
+wm 32 MX7_DDRC_MP_PCTRL_0 0x00000001
+wm 32 MX7_DDRC_INIT0 0x00020083
+wm 32 MX7_DDRC_INIT1 0x00690000
+wm 32 MX7_DDRC_INIT3 0x09300004
+wm 32 MX7_DDRC_INIT4 0x04080000
+wm 32 MX7_DDRC_INIT5 0x00100004
+wm 32 MX7_DDRC_RANKCTL 0x0000033f
+wm 32 MX7_DDRC_DRAMTMG0 0x09081109
+wm 32 MX7_DDRC_DRAMTMG1 0x0007020d
+wm 32 MX7_DDRC_DRAMTMG2 0x03040407
+wm 32 MX7_DDRC_DRAMTMG3 0x00002006
+wm 32 MX7_DDRC_DRAMTMG4 0x04020205
+wm 32 MX7_DDRC_DRAMTMG5 0x03030202
+wm 32 MX7_DDRC_DRAMTMG8 0x00000803
+wm 32 MX7_DDRC_ZQCTL0 0x00800020
+wm 32 MX7_DDRC_ZQCTL1 0x02000100
+wm 32 MX7_DDRC_DFITMG0 0x02098204
+wm 32 MX7_DDRC_DFITMG1 0x00030303
+wm 32 MX7_DDRC_ADDRMAP0 0x00000016
+wm 32 MX7_DDRC_ADDRMAP1 0x00171717
+wm 32 MX7_DDRC_ADDRMAP5 0x04040404
+wm 32 MX7_DDRC_ADDRMAP6 0x0f040404
+wm 32 MX7_DDRC_ODTCFG 0x06000604
+wm 32 MX7_DDRC_ODTMAP 0x00000001
+
+wm 32 0x30391000 0x00000000
+
+wm 32 MX7_DDR_PHY_PHY_CON0 0x17420f40
+wm 32 MX7_DDR_PHY_PHY_CON1 0x10210100
+wm 32 MX7_DDR_PHY_PHY_CON4 0x00060807
+wm 32 MX7_DDR_PHY_MDLL_CON0 0x1010007e
+wm 32 MX7_DDR_PHY_DRVDS_CON0 0x00000d6e
+wm 32 MX7_DDR_PHY_OFFSET_RD_CON0 0x08080808
+wm 32 MX7_DDR_PHY_OFFSET_WR_CON0 0x08080808
+wm 32 MX7_DDR_PHY_CMD_SDLL_CON0 0x01000010
+wm 32 MX7_DDR_PHY_CMD_SDLL_CON0 0x00000010
+
+wm 32 MX7_DDR_PHY_ZQ_CON0 0x0e407304
+wm 32 MX7_DDR_PHY_ZQ_CON0 0x0e447304
+wm 32 MX7_DDR_PHY_ZQ_CON0 0x0e447306
+
+check 32 while_any_bit_clear MX7_DDR_PHY_ZQ_CON1 0x1
+
+wm 32 MX7_DDR_PHY_ZQ_CON0 0x0e447304
+wm 32 MX7_DDR_PHY_ZQ_CON0 0x0e407304
+
+wm 32 0x30384130 0x00000000
+wm 32 0x30340020 0x00000178
+wm 32 0x30384130 0x00000002
+
+wm 32 MX7_DDR_PHY_LP_CON0 0x0000000f
+
+check 32 while_any_bit_clear MX7_DDRC_STAT 0x1
diff --git a/arch/arm/boards/freescale-mx7-sabresd/lowlevel.c b/arch/arm/boards/freescale-mx7-sabresd/lowlevel.c
new file mode 100644
index 000000000..96ccbbfeb
--- /dev/null
+++ b/arch/arm/boards/freescale-mx7-sabresd/lowlevel.c
@@ -0,0 +1,46 @@
+#include <debug_ll.h>
+#include <io.h>
+#include <common.h>
+#include <linux/sizes.h>
+#include <mach/generic.h>
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
+#include <mach/imx7-ccm-regs.h>
+#include <mach/iomux-mx7.h>
+#include <mach/debug_ll.h>
+#include <asm/cache.h>
+
+extern char __dtb_imx7d_sdb_start[];
+
+static inline void setup_uart(void)
+{
+	void __iomem *iomux = IOMEM(MX7_IOMUXC_BASE_ADDR);
+	void __iomem *ccm   = IOMEM(MX7_CCM_BASE_ADDR);
+
+	writel(CCM_CCGR_SETTINGn_NEEDED(0),
+	       ccm + CCM_CCGRn_CLR(CCM_CCGR_UART1));
+	writel(CCM_TARGET_ROOTn_ENABLE | UART1_CLK_ROOT__OSC_24M,
+	       ccm + CCM_TARGET_ROOTn(UART1_CLK_ROOT));
+	writel(CCM_CCGR_SETTINGn_NEEDED(0),
+	       ccm + CCM_CCGRn_SET(CCM_CCGR_UART1));
+
+	mx7_setup_pad(iomux, MX7D_PAD_UART1_TX_DATA__UART1_DCE_TX);
+
+	imx7_uart_setup_ll();
+
+	putc_ll('>');
+}
+
+ENTRY_FUNCTION(start_imx7d_sabresd, r0, r1, r2)
+{
+	void *fdt;
+
+	imx7_cpu_lowlevel_init();
+
+	if (IS_ENABLED(CONFIG_DEBUG_LL))
+		setup_uart();
+
+	fdt = __dtb_imx7d_sdb_start - get_runtime_offset();
+
+	barebox_arm_entry(0x80000000, SZ_1G, fdt);
+}
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index d8abe452b..603d88922 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -99,6 +99,6 @@ pbl-dtb-$(CONFIG_MACH_ZII_VF610_DEV) += \
 	vf610-zii-scu4-aib-rev-c.dtb.o
 
 pbl-dtb-$(CONFIG_MACH_AT91SAM9X5EK) += at91sam9x5ek.dtb.o
-
+pbl-dtb-$(CONFIG_MACH_FREESCALE_MX7_SABRESD) += imx7d-sdb.dtb.o
 
 clean-files := *.dtb *.dtb.S .*.dtc .*.pre .*.dts *.dtb.lzo
diff --git a/arch/arm/dts/imx7d-sdb.dts b/arch/arm/dts/imx7d-sdb.dts
new file mode 100644
index 000000000..2e48196f9
--- /dev/null
+++ b/arch/arm/dts/imx7d-sdb.dts
@@ -0,0 +1,70 @@
+/*
+ * The code contained herein is licensed under the GNU General Public
+ * License. You may obtain a copy of the GNU General Public License
+ * Version 2 or later at the following locations:
+ *
+ * http://www.opensource.org/licenses/gpl-license.html
+ * http://www.gnu.org/copyleft/gpl.html
+ */
+
+#include <arm/imx7d-sdb.dts>
+#include "imx7s.dtsi"
+
+/ {
+	chosen {
+		stdout-path = &uart1;
+	};
+
+	memory {
+		device_type = "memory";
+		reg = <0x80000000 0x40000000>;
+	};
+
+	/*
+	 * This definition is present in the latest kernel DTS file,
+	 * and could be removed once Barebox catches up.
+	 *
+	 * Ditto for pinctrl_spi4
+	 */
+	spi4 {
+		compatible = "spi-gpio";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_spi4>;
+		gpio-sck = <&gpio1 13 GPIO_ACTIVE_HIGH>;
+		gpio-mosi = <&gpio1 9 GPIO_ACTIVE_HIGH>;
+		cs-gpios = <&gpio1 12 GPIO_ACTIVE_HIGH>;
+		num-chipselects = <1>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		extended_io: gpio-expander@0 {
+			compatible = "fairchild,74hc595";
+			gpio-controller;
+			#gpio-cells = <2>;
+			reg = <0>;
+			registers-number = <1>;
+			spi-max-frequency = <100000>;
+		};
+	};
+};
+
+&extended_io {
+	q5 {
+		gpio-hog;
+		gpios = <5 GPIO_ACTIVE_HIGH>;
+		output-high;
+		line-name = "enet-rst-b";
+	};
+};
+
+&iomuxc {
+	imx7d-sdb {
+		pinctrl_spi4: spi4grp {
+			fsl,pins = <
+				MX7D_PAD_GPIO1_IO09__GPIO1_IO9	0x59
+				MX7D_PAD_GPIO1_IO12__GPIO1_IO12	0x59
+				MX7D_PAD_GPIO1_IO13__GPIO1_IO13	0x59
+			>;
+		};
+	};
+};
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 9ab27b42d..9504018e8 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -396,6 +396,13 @@ config MACH_ZII_VF610_DEV
 	select ARCH_VF610
 	select CLKDEV_LOOKUP
 
+config MACH_FREESCALE_MX7_SABRESD
+	bool "NXP i.MX7 SabreSD Board"
+	select ARCH_IMX7
+	# Nedded to de-assert reset on Ethernet PHY
+	select DRIVER_SPI_GPIO if DRIVER_NET_FEC_IMX
+	select GPIO_74164 if DRIVER_NET_FEC_IMX
+
 endif
 
 # ----------------------------------------------------------
diff --git a/images/Makefile.imx b/images/Makefile.imx
index 88d3e5e33..679e9368c 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -484,3 +484,8 @@ pblx-$(CONFIG_MACH_ZII_VF610_DEV) += start_zii_vf610_dev
 CFG_start_zii_vf610_dev.pblx.imximg = $(board)/zii-vf610-dev/flash-header-zii-vf610-dev.imxcfg
 FILE_barebox-zii-vf610-dev.img = start_zii_vf610_dev.pblx.imximg
 image-$(CONFIG_MACH_ZII_VF610_DEV) += barebox-zii-vf610-dev.img
+
+pblx-$(CONFIG_MACH_FREESCALE_MX7_SABRESD) += start_imx7d_sabresd
+CFG_start_imx7d_sabresd.pblx.imximg = $(board)/freescale-mx7-sabresd/flash-header-mx7-sabresd.imxcfg
+FILE_barebox-freescale-mx7-sabresd.img = start_imx7d_sabresd.pblx.imximg
+image-$(CONFIG_MACH_FREESCALE_MX7_SABRESD) += barebox-freescale-mx7-sabresd.img
-- 
2.13.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

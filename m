Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W2VEW-00014v-ER
 for barebox@lists.infradead.org; Mon, 13 Jan 2014 00:18:29 +0000
Received: from tellur.localdomain (p57B5EF0F.dip0.t-ipconnect.de
 [87.181.239.15]) by lynxeye.de (Postfix) with ESMTPA id 963DB18B426D
 for <barebox@lists.infradead.org>; Mon, 13 Jan 2014 01:16:39 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Mon, 13 Jan 2014 01:17:30 +0100
Message-Id: <1389572250-1482-9-git-send-email-dev@lynxeye.de>
In-Reply-To: <1389572250-1482-1-git-send-email-dev@lynxeye.de>
References: <1389572250-1482-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 9/9] ARM: imx6: rename Carrier-1 to Hummingboard
To: barebox@lists.infradead.org

Solidrun has renamed the Carrier-1 to Hummingboard.
This is also the name that is used in upstream Linux,
change barebox to be in line with that.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/boards/Makefile                           |   2 +-
 arch/arm/boards/solidrun-carrier-1/Makefile        |   3 -
 arch/arm/boards/solidrun-carrier-1/board.c         |  89 ---------------
 .../flash-header-solidrun-carrier-1.imxcfg         |  79 --------------
 arch/arm/boards/solidrun-carrier-1/lowlevel.c      |  18 ----
 arch/arm/boards/solidrun-hummingboard/Makefile     |   3 +
 arch/arm/boards/solidrun-hummingboard/board.c      |  89 +++++++++++++++
 .../flash-header-solidrun-hummingboard.imxcfg      |  79 ++++++++++++++
 arch/arm/boards/solidrun-hummingboard/lowlevel.c   |  18 ++++
 arch/arm/dts/Makefile                              |   4 +-
 arch/arm/dts/imx6dl-cubox-i-carrier-1.dts          | 120 ---------------------
 arch/arm/dts/imx6dl-hummingboard.dts               | 120 +++++++++++++++++++++
 arch/arm/dts/imx6qdl-microsom.dtsi                 |  21 ++--
 arch/arm/mach-imx/Kconfig                          |   4 +-
 images/Makefile.imx                                |   8 +-
 15 files changed, 331 insertions(+), 326 deletions(-)
 delete mode 100644 arch/arm/boards/solidrun-carrier-1/Makefile
 delete mode 100644 arch/arm/boards/solidrun-carrier-1/board.c
 delete mode 100644 arch/arm/boards/solidrun-carrier-1/flash-header-solidrun-carrier-1.imxcfg
 delete mode 100644 arch/arm/boards/solidrun-carrier-1/lowlevel.c
 create mode 100644 arch/arm/boards/solidrun-hummingboard/Makefile
 create mode 100644 arch/arm/boards/solidrun-hummingboard/board.c
 create mode 100644 arch/arm/boards/solidrun-hummingboard/flash-header-solidrun-hummingboard.imxcfg
 create mode 100644 arch/arm/boards/solidrun-hummingboard/lowlevel.c
 delete mode 100644 arch/arm/dts/imx6dl-cubox-i-carrier-1.dts
 create mode 100644 arch/arm/dts/imx6dl-hummingboard.dts

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index 7f56359..a4219d7 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -79,7 +79,7 @@ obj-$(CONFIG_MACH_SAMA5D3XEK)			+= sama5d3xek/
 obj-$(CONFIG_MACH_SCB9328)			+= scb9328/
 obj-$(CONFIG_MACH_SOCFPGA_EBV_SOCRATES)		+= ebv-socrates/
 obj-$(CONFIG_MACH_SOCFPGA_TERASIC_SOCKIT)	+= terasic-sockit/
-obj-$(CONFIG_MACH_SOLIDRUN_CARRIER1)	+= solidrun-carrier-1/
+obj-$(CONFIG_MACH_SOLIDRUN_HUMMINGBOARD)	+= solidrun-hummingboard/
 obj-$(CONFIG_MACH_TNY_A9260)			+= tny-a926x/
 obj-$(CONFIG_MACH_TNY_A9263)			+= tny-a926x/
 obj-$(CONFIG_MACH_TNY_A9G20)			+= tny-a926x/
diff --git a/arch/arm/boards/solidrun-carrier-1/Makefile b/arch/arm/boards/solidrun-carrier-1/Makefile
deleted file mode 100644
index d243c8f..0000000
--- a/arch/arm/boards/solidrun-carrier-1/Makefile
+++ /dev/null
@@ -1,3 +0,0 @@
-obj-y += board.o flash-header-solidrun-carrier-1.dcd.o
-extra-y += flash-header-solidrun-carrier-1.dcd.S flash-header-solidrun-carrier-1.dcd
-lwl-y += lowlevel.o
diff --git a/arch/arm/boards/solidrun-carrier-1/board.c b/arch/arm/boards/solidrun-carrier-1/board.c
deleted file mode 100644
index f520303..0000000
--- a/arch/arm/boards/solidrun-carrier-1/board.c
+++ /dev/null
@@ -1,89 +0,0 @@
-/*
- * Copyright (C) 2013 Lucas Stach <l.stach@pengutronix.de>
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- */
-
-#include <asm/armlinux.h>
-#include <asm/io.h>
-#include <bootsource.h>
-#include <common.h>
-#include <environment.h>
-#include <envfs.h>
-#include <gpio.h>
-#include <init.h>
-#include <mach/generic.h>
-#include <mach/imx6-regs.h>
-#include <mach/imx6.h>
-#include <mfd/imx6q-iomuxc-gpr.h>
-#include <sizes.h>
-#include <linux/phy.h>
-
-static int ar8035_phy_fixup(struct phy_device *dev)
-{
-	u16 val;
-
-	/* Ar803x phy SmartEEE feature cause link status generates glitch,
-	 * which cause ethernet link down/up issue, so disable SmartEEE
-	 */
-	phy_write(dev, 0xd, 0x3);
-	phy_write(dev, 0xe, 0x805d);
-	phy_write(dev, 0xd, 0x4003);
-
-	val = phy_read(dev, 0xe);
-	phy_write(dev, 0xe, val & ~(1 << 8));
-
-	/* To enable AR8031 ouput a 125MHz clk from CLK_25M */
-	phy_write(dev, 0xd, 0x7);
-	phy_write(dev, 0xe, 0x8016);
-	phy_write(dev, 0xd, 0x4007);
-
-	val = phy_read(dev, 0xe);
-	val &= 0xffe3;
-	val |= 0x18;
-	phy_write(dev, 0xe, val);
-
-	/* introduce tx clock delay */
-	phy_write(dev, 0x1d, 0x5);
-	val = phy_read(dev, 0x1e);
-	val |= 0x0100;
-	phy_write(dev, 0x1e, val);
-
-	return 0;
-}
-
-static int carrier1_device_init(void)
-{
-	if (!of_machine_is_compatible("solidrun,cubox-i-carrier-1"))
-		return 0;
-
-	phy_register_fixup_for_uid(0x004dd072, 0xffffffef, ar8035_phy_fixup);
-
-	/* enable USB VBUS */
-	gpio_direction_output(IMX_GPIO_NR(3, 22), 1);
-	gpio_direction_output(IMX_GPIO_NR(1, 0), 1);
-
-	return 0;
-}
-device_initcall(carrier1_device_init);
-
-static int carrier1_lwl_init(void)
-{
-	if (!of_machine_is_compatible("solidrun,cubox-i-carrier-1"))
-		return 0;
-
-	barebox_set_hostname("carrier-1");
-
-	imx6_init_lowlevel();
-
-	return 0;
-}
-postcore_initcall(carrier1_lwl_init);
diff --git a/arch/arm/boards/solidrun-carrier-1/flash-header-solidrun-carrier-1.imxcfg b/arch/arm/boards/solidrun-carrier-1/flash-header-solidrun-carrier-1.imxcfg
deleted file mode 100644
index b1856b4..0000000
--- a/arch/arm/boards/solidrun-carrier-1/flash-header-solidrun-carrier-1.imxcfg
+++ /dev/null
@@ -1,79 +0,0 @@
-loadaddr 0x10000000
-soc imx6
-dcdofs 0x400
-wm 32 0x020e0774 0x000c0000
-wm 32 0x020e0754 0x00000000
-wm 32 0x020e04ac 0x00000030
-wm 32 0x020e04b0 0x00000030
-wm 32 0x020e0464 0x00000030
-wm 32 0x020e0490 0x00000030
-wm 32 0x020e074c 0x00000030
-wm 32 0x020e0494 0x00000030
-wm 32 0x020e04a4 0x00003000
-wm 32 0x020e04a8 0x00003000
-wm 32 0x020e04a0 0x00000000
-wm 32 0x020e04b4 0x00003030
-wm 32 0x020e04b8 0x00003030
-wm 32 0x020e076c 0x00000030
-wm 32 0x020e0750 0x00000000
-wm 32 0x020e04bc 0x00000030
-wm 32 0x020e04c0 0x00000030
-wm 32 0x020e04c4 0x00000030
-wm 32 0x020e04c8 0x00000030
-wm 32 0x020e04cc 0x00000000
-wm 32 0x020e04d0 0x00000000
-wm 32 0x020e04d4 0x00000000
-wm 32 0x020e04d8 0x00000000
-wm 32 0x020e0760 0x00000000
-wm 32 0x020e0764 0x00000030
-wm 32 0x020e0770 0x00000030
-wm 32 0x020e0778 0x00000030
-wm 32 0x020e077c 0x00000030
-wm 32 0x020e0780 0x00000000
-wm 32 0x020e0784 0x00000000
-wm 32 0x020e078c 0x00000000
-wm 32 0x020e0748 0x00000000
-wm 32 0x020e0470 0x00000030
-wm 32 0x020e0474 0x00000030
-wm 32 0x020e0478 0x00000030
-wm 32 0x020e047c 0x00000030
-wm 32 0x020e0480 0x00000000
-wm 32 0x020e0484 0x00000000
-wm 32 0x020e0488 0x00000000
-wm 32 0x020e048c 0x00000000
-wm 32 0x021b0800 0xa1390003
-wm 32 0x021b4800 0xa1390003
-wm 32 0x021b080c 0x000F0011
-wm 32 0x021b0810 0x000E000F
-wm 32 0x021b083c 0x42240229
-wm 32 0x021b0840 0x021a0219
-wm 32 0x021b0848 0x4e4f5150
-wm 32 0x021b0850 0x35363136
-wm 32 0x021b081c 0x33333333
-wm 32 0x021b0820 0x33333333
-wm 32 0x021b0824 0x33333333
-wm 32 0x021b0828 0x33333333
-wm 32 0x021b08b8 0x00000800
-wm 32 0x021b48b8 0x00000800
-wm 32 0x021b0004 0x0002002d
-wm 32 0x021b0008 0x00333030
-wm 32 0x021b000c 0x40445323
-wm 32 0x021b0010 0xb68e8c63
-wm 32 0x021b0014 0x01ff00db
-wm 32 0x021b0018 0x00001740
-wm 32 0x021b001c 0x00008000
-wm 32 0x021b002c 0x000026d2
-wm 32 0x021b0030 0x00440e21
-wm 32 0x021b0040 0x00000017
-wm 32 0x021b0400 0x11420000
-wm 32 0x021b0000 0x83190000
-wm 32 0x021b001c 0x04008032
-wm 32 0x021b001c 0x00008033
-wm 32 0x021b001c 0x00428031
-wm 32 0x021b001c 0x07208030
-wm 32 0x021b001c 0x04008040
-wm 32 0x021b0020 0x00005800
-wm 32 0x021b0818 0x00000007
-wm 32 0x021b0004 0x0002556d
-wm 32 0x021b0404 0x00011006
-wm 32 0x021b001c 0x00000000
diff --git a/arch/arm/boards/solidrun-carrier-1/lowlevel.c b/arch/arm/boards/solidrun-carrier-1/lowlevel.c
deleted file mode 100644
index aa94716..0000000
--- a/arch/arm/boards/solidrun-carrier-1/lowlevel.c
+++ /dev/null
@@ -1,18 +0,0 @@
-#include <common.h>
-#include <sizes.h>
-#include <asm/barebox-arm-head.h>
-#include <asm/barebox-arm.h>
-
-extern char __dtb_imx6dl_cubox_i_carrier_1_start[];
-
-ENTRY_FUNCTION(start_imx6dl_cubox_i_carrier_1, r0, r1, r2)
-{
-	uint32_t fdt;
-
-	__barebox_arm_head();
-
-	arm_cpu_lowlevel_init();
-
-	fdt = (uint32_t)__dtb_imx6dl_cubox_i_carrier_1_start - get_runtime_offset();
-	barebox_arm_entry(0x10000000, SZ_512M, fdt);
-}
diff --git a/arch/arm/boards/solidrun-hummingboard/Makefile b/arch/arm/boards/solidrun-hummingboard/Makefile
new file mode 100644
index 0000000..8b4754e
--- /dev/null
+++ b/arch/arm/boards/solidrun-hummingboard/Makefile
@@ -0,0 +1,3 @@
+obj-y += board.o flash-header-solidrun-hummingboard.dcd.o
+extra-y += flash-header-solidrun-hummingboard.dcd.S flash-header-solidrun-hummingboard.dcd
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/solidrun-hummingboard/board.c b/arch/arm/boards/solidrun-hummingboard/board.c
new file mode 100644
index 0000000..afc5c86
--- /dev/null
+++ b/arch/arm/boards/solidrun-hummingboard/board.c
@@ -0,0 +1,89 @@
+/*
+ * Copyright (C) 2013 Lucas Stach <l.stach@pengutronix.de>
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
+#include <asm/armlinux.h>
+#include <asm/io.h>
+#include <bootsource.h>
+#include <common.h>
+#include <environment.h>
+#include <envfs.h>
+#include <gpio.h>
+#include <init.h>
+#include <mach/generic.h>
+#include <mach/imx6-regs.h>
+#include <mach/imx6.h>
+#include <mfd/imx6q-iomuxc-gpr.h>
+#include <sizes.h>
+#include <linux/phy.h>
+
+static int ar8035_phy_fixup(struct phy_device *dev)
+{
+	u16 val;
+
+	/* Ar803x phy SmartEEE feature cause link status generates glitch,
+	 * which cause ethernet link down/up issue, so disable SmartEEE
+	 */
+	phy_write(dev, 0xd, 0x3);
+	phy_write(dev, 0xe, 0x805d);
+	phy_write(dev, 0xd, 0x4003);
+
+	val = phy_read(dev, 0xe);
+	phy_write(dev, 0xe, val & ~(1 << 8));
+
+	/* To enable AR8031 ouput a 125MHz clk from CLK_25M */
+	phy_write(dev, 0xd, 0x7);
+	phy_write(dev, 0xe, 0x8016);
+	phy_write(dev, 0xd, 0x4007);
+
+	val = phy_read(dev, 0xe);
+	val &= 0xffe3;
+	val |= 0x18;
+	phy_write(dev, 0xe, val);
+
+	/* introduce tx clock delay */
+	phy_write(dev, 0x1d, 0x5);
+	val = phy_read(dev, 0x1e);
+	val |= 0x0100;
+	phy_write(dev, 0x1e, val);
+
+	return 0;
+}
+
+static int hummingboard_device_init(void)
+{
+	if (!of_machine_is_compatible("solidrun,hummingboard"))
+		return 0;
+
+	phy_register_fixup_for_uid(0x004dd072, 0xffffffef, ar8035_phy_fixup);
+
+	/* enable USB VBUS */
+	gpio_direction_output(IMX_GPIO_NR(3, 22), 1);
+	gpio_direction_output(IMX_GPIO_NR(1, 0), 1);
+
+	return 0;
+}
+device_initcall(hummingboard_device_init);
+
+static int hummingboard_lwl_init(void)
+{
+	if (!of_machine_is_compatible("solidrun,hummingboard"))
+		return 0;
+
+	barebox_set_hostname("hummingboard");
+
+	imx6_init_lowlevel();
+
+	return 0;
+}
+postcore_initcall(hummingboard_lwl_init);
diff --git a/arch/arm/boards/solidrun-hummingboard/flash-header-solidrun-hummingboard.imxcfg b/arch/arm/boards/solidrun-hummingboard/flash-header-solidrun-hummingboard.imxcfg
new file mode 100644
index 0000000..b1856b4
--- /dev/null
+++ b/arch/arm/boards/solidrun-hummingboard/flash-header-solidrun-hummingboard.imxcfg
@@ -0,0 +1,79 @@
+loadaddr 0x10000000
+soc imx6
+dcdofs 0x400
+wm 32 0x020e0774 0x000c0000
+wm 32 0x020e0754 0x00000000
+wm 32 0x020e04ac 0x00000030
+wm 32 0x020e04b0 0x00000030
+wm 32 0x020e0464 0x00000030
+wm 32 0x020e0490 0x00000030
+wm 32 0x020e074c 0x00000030
+wm 32 0x020e0494 0x00000030
+wm 32 0x020e04a4 0x00003000
+wm 32 0x020e04a8 0x00003000
+wm 32 0x020e04a0 0x00000000
+wm 32 0x020e04b4 0x00003030
+wm 32 0x020e04b8 0x00003030
+wm 32 0x020e076c 0x00000030
+wm 32 0x020e0750 0x00000000
+wm 32 0x020e04bc 0x00000030
+wm 32 0x020e04c0 0x00000030
+wm 32 0x020e04c4 0x00000030
+wm 32 0x020e04c8 0x00000030
+wm 32 0x020e04cc 0x00000000
+wm 32 0x020e04d0 0x00000000
+wm 32 0x020e04d4 0x00000000
+wm 32 0x020e04d8 0x00000000
+wm 32 0x020e0760 0x00000000
+wm 32 0x020e0764 0x00000030
+wm 32 0x020e0770 0x00000030
+wm 32 0x020e0778 0x00000030
+wm 32 0x020e077c 0x00000030
+wm 32 0x020e0780 0x00000000
+wm 32 0x020e0784 0x00000000
+wm 32 0x020e078c 0x00000000
+wm 32 0x020e0748 0x00000000
+wm 32 0x020e0470 0x00000030
+wm 32 0x020e0474 0x00000030
+wm 32 0x020e0478 0x00000030
+wm 32 0x020e047c 0x00000030
+wm 32 0x020e0480 0x00000000
+wm 32 0x020e0484 0x00000000
+wm 32 0x020e0488 0x00000000
+wm 32 0x020e048c 0x00000000
+wm 32 0x021b0800 0xa1390003
+wm 32 0x021b4800 0xa1390003
+wm 32 0x021b080c 0x000F0011
+wm 32 0x021b0810 0x000E000F
+wm 32 0x021b083c 0x42240229
+wm 32 0x021b0840 0x021a0219
+wm 32 0x021b0848 0x4e4f5150
+wm 32 0x021b0850 0x35363136
+wm 32 0x021b081c 0x33333333
+wm 32 0x021b0820 0x33333333
+wm 32 0x021b0824 0x33333333
+wm 32 0x021b0828 0x33333333
+wm 32 0x021b08b8 0x00000800
+wm 32 0x021b48b8 0x00000800
+wm 32 0x021b0004 0x0002002d
+wm 32 0x021b0008 0x00333030
+wm 32 0x021b000c 0x40445323
+wm 32 0x021b0010 0xb68e8c63
+wm 32 0x021b0014 0x01ff00db
+wm 32 0x021b0018 0x00001740
+wm 32 0x021b001c 0x00008000
+wm 32 0x021b002c 0x000026d2
+wm 32 0x021b0030 0x00440e21
+wm 32 0x021b0040 0x00000017
+wm 32 0x021b0400 0x11420000
+wm 32 0x021b0000 0x83190000
+wm 32 0x021b001c 0x04008032
+wm 32 0x021b001c 0x00008033
+wm 32 0x021b001c 0x00428031
+wm 32 0x021b001c 0x07208030
+wm 32 0x021b001c 0x04008040
+wm 32 0x021b0020 0x00005800
+wm 32 0x021b0818 0x00000007
+wm 32 0x021b0004 0x0002556d
+wm 32 0x021b0404 0x00011006
+wm 32 0x021b001c 0x00000000
diff --git a/arch/arm/boards/solidrun-hummingboard/lowlevel.c b/arch/arm/boards/solidrun-hummingboard/lowlevel.c
new file mode 100644
index 0000000..c101f06
--- /dev/null
+++ b/arch/arm/boards/solidrun-hummingboard/lowlevel.c
@@ -0,0 +1,18 @@
+#include <common.h>
+#include <sizes.h>
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
+
+extern char __dtb_imx6dl_hummingboard_start[];
+
+ENTRY_FUNCTION(start_imx6dl_hummingboard, r0, r1, r2)
+{
+	uint32_t fdt;
+
+	__barebox_arm_head();
+
+	arm_cpu_lowlevel_init();
+
+	fdt = (uint32_t)__dtb_imx6dl_hummingboard_start - get_runtime_offset();
+	barebox_arm_entry(0x10000000, SZ_512M, fdt);
+}
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index e89eb2f..add4dc0 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -16,7 +16,7 @@ dtb-$(CONFIG_ARCH_IMX6) += imx6q-gk802.dtb \
 	imx6dl-mba6x.dtb \
 	imx6q-mba6x.dtb \
 	imx6q-phytec-pbab01.dtb \
-	imx6dl-cubox-i-carrier-1.dtb \
+	imx6dl-hummingboard.dtb \
 	imx6q-nitrogen6x.dtb \
 	imx6dl-nitrogen6x.dtb
 dtb-$(CONFIG_ARCH_MVEBU) += dove-cubox.dtb
@@ -45,7 +45,7 @@ pbl-$(CONFIG_MACH_TOSHIBA_AC100) += tegra20-paz00.dtb.o
 pbl-$(CONFIG_MACH_TQMA6X) += imx6dl-mba6x.dtb.o imx6q-mba6x.dtb.o
 pbl-$(CONFIG_MACH_SOCFPGA_EBV_SOCRATES) += socfpga_cyclone5_socrates.dtb.o
 pbl-$(CONFIG_MACH_SOCFPGA_TERASIC_SOCKIT) += socfpga_cyclone5_sockit.dtb.o
-pbl-$(CONFIG_MACH_SOLIDRUN_CARRIER1) += imx6dl-cubox-i-carrier-1.dtb.o
+pbl-$(CONFIG_MACH_SOLIDRUN_HUMMINGBOARD) += imx6dl-hummingboard.dtb.o
 pbl-$(CONFIG_MACH_SABRELITE) += imx6q-sabrelite.dtb.o imx6dl-sabrelite.dtb.o
 pbl-$(CONFIG_MACH_NITROGEN6X) += imx6q-nitrogen6x.dtb.o imx6dl-nitrogen6x.dtb.o
 
diff --git a/arch/arm/dts/imx6dl-cubox-i-carrier-1.dts b/arch/arm/dts/imx6dl-cubox-i-carrier-1.dts
deleted file mode 100644
index 1f13f03..0000000
--- a/arch/arm/dts/imx6dl-cubox-i-carrier-1.dts
+++ /dev/null
@@ -1,120 +0,0 @@
-/*
- * Copyright (C) 2013 Russell King
- *
- * The code contained herein is licensed under the GNU General Public
- * License version 2.
- */
-/dts-v1/;
-
-#include "imx6dl.dtsi"
-#include "imx6qdl-microsom.dtsi"
-#include "imx6qdl-microsom-ar8035.dtsi"
-
-/ {
-	model = "SolidRun Cubox-i DL/Solo Carrier-1 Board";
-	compatible = "solidrun,cubox-i-carrier-1", "fsl,imx6dl";
-
-	chosen {
-		linux,stdout-path = &uart1;
-
-		environment@0 {
-			compatible = "barebox,environment";
-			device-path = &usdhc2, "partname:barebox-environment";
-		};
-	};
-
-	memory {
-		reg = <0x10000000 0x20000000>;
-	};
-
-	ir_recv: ir-receiver {
-		compatible = "gpio-ir-receiver";
-		gpios = <&gpio1 2 1>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&pinctrl_carrier1_gpio1_2>;
-	};
-
-	codec: spdif-transmitter {
-		compatible = "linux,spdif-dit";
-		pinctrl-names = "default";
-		pinctrl-0 = <&pinctrl_carrier1_spdif>;
-	};
-
-	sound-spdif {
-		compatible = "fsl,imx-audio-spdif";
-		model = "imx-spdif";
-		/* IMX6 doesn't implement this yet */
-		spdif-controller = <&spdif>;
-		spdif-out;
-	};
-};
-
-&i2c1 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_i2c1>;
-
-	/*
-	 * Not fitted on Carrier-1 board... yet
-	status = "okay";
-
-	rtc: pcf8523@68 {
-		compatible = "nxp,pcf8523";
-		reg = <0x68>;
-	};
-	 */
-};
-
-&iomuxc {
-	carrier1 {
-		pinctrl_carrier1_gpio1_2: carrier1-gpio1_2 {
-			fsl,pins = <
-				MX6QDL_PAD_GPIO_2__GPIO1_IO02 0x80000000
-			>;
-		};
-
-		pinctrl_carrier1_spdif: carrier1-spdif {
-			fsl,pins = <MX6QDL_PAD_GPIO_17__SPDIF_OUT 0x1b0b0>;
-		};
-
-		pinctrl_carrier1_usdhc2: carrier1-usdhc2 {
-			fsl,pins = <
-				MX6QDL_PAD_SD2_CMD__SD2_CMD    0x17059
-				MX6QDL_PAD_SD2_CLK__SD2_CLK    0x10059
-				MX6QDL_PAD_SD2_DAT0__SD2_DATA0 0x17059
-				MX6QDL_PAD_SD2_DAT1__SD2_DATA1 0x17059
-				MX6QDL_PAD_SD2_DAT2__SD2_DATA2 0x17059
-				MX6QDL_PAD_SD2_DAT3__SD2_DATA3 0x13059
-				MX6QDL_PAD_GPIO_4__SD2_CD_B    0x1f071
-			>;
-		};
-
-		pinctrl_i2c1: i2c1grp {
-			fsl,pins = <MX6QDL_I2C1_PINGRP1>;
-		};
-	};
-};
-
-&spdif {
-	status = "okay";
-};
-
-&usdhc2 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_carrier1_usdhc2>;
-	vmmc-supply = <&reg_3p3v>;
-	fsl,cd-controller;
-	status = "okay";
-
-	#address-cells = <1>;
-	#size-cells = <1>;
-
-	partition@0 {
-		label = "barebox";
-		reg = <0x0 0x80000>;
-	};
-
-	partition@1 {
-		label = "barebox-environment";
-		reg = <0x80000 0x80000>;
-	};
-};
diff --git a/arch/arm/dts/imx6dl-hummingboard.dts b/arch/arm/dts/imx6dl-hummingboard.dts
new file mode 100644
index 0000000..e964682
--- /dev/null
+++ b/arch/arm/dts/imx6dl-hummingboard.dts
@@ -0,0 +1,120 @@
+/*
+ * Copyright (C) 2013 Russell King
+ *
+ * The code contained herein is licensed under the GNU General Public
+ * License version 2.
+ */
+/dts-v1/;
+
+#include "imx6dl.dtsi"
+#include "imx6qdl-microsom.dtsi"
+#include "imx6qdl-microsom-ar8035.dtsi"
+
+/ {
+	model = "SolidRun HummingBoard DL/Solo";
+	compatible = "solidrun,hummingboard", "fsl,imx6dl";
+
+	chosen {
+		linux,stdout-path = &uart1;
+
+		environment@0 {
+			compatible = "barebox,environment";
+			device-path = &usdhc2, "partname:barebox-environment";
+		};
+	};
+
+	memory {
+		reg = <0x10000000 0x20000000>;
+	};
+
+	ir_recv: ir-receiver {
+		compatible = "gpio-ir-receiver";
+		gpios = <&gpio1 2 1>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_hummingboard_gpio1_2>;
+	};
+
+	codec: spdif-transmitter {
+		compatible = "linux,spdif-dit";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_hummingboard_spdif>;
+	};
+
+	sound-spdif {
+		compatible = "fsl,imx-audio-spdif";
+		model = "imx-spdif";
+		/* IMX6 doesn't implement this yet */
+		spdif-controller = <&spdif>;
+		spdif-out;
+	};
+};
+
+&i2c1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_hummingboard_i2c1>;
+
+	/*
+	 * Not fitted on Carrier-1 board... yet
+	status = "okay";
+
+	rtc: pcf8523@68 {
+		compatible = "nxp,pcf8523";
+		reg = <0x68>;
+	};
+	 */
+};
+
+&iomuxc {
+	hummingboard {
+		pinctrl_hummingboard_gpio1_2: hummingboard-gpio1_2 {
+			fsl,pins = <
+				MX6QDL_PAD_GPIO_2__GPIO1_IO02 0x80000000
+			>;
+		};
+
+		pinctrl_hummingboard_i2c1: hummingboard-i2c1 {
+			fsl,pins = <MX6QDL_I2C1_PINGRP1>;
+		};
+
+		pinctrl_hummingboard_spdif: hummingboard-spdif {
+			fsl,pins = <MX6QDL_PAD_GPIO_17__SPDIF_OUT 0x1b0b0>;
+		};
+
+		pinctrl_hummingboard_usdhc2: hummingboard-usdhc2 {
+			fsl,pins = <
+				MX6QDL_PAD_SD2_CMD__SD2_CMD    0x17059
+				MX6QDL_PAD_SD2_CLK__SD2_CLK    0x10059
+				MX6QDL_PAD_SD2_DAT0__SD2_DATA0 0x17059
+				MX6QDL_PAD_SD2_DAT1__SD2_DATA1 0x17059
+				MX6QDL_PAD_SD2_DAT2__SD2_DATA2 0x17059
+				MX6QDL_PAD_SD2_DAT3__SD2_DATA3 0x13059
+				MX6QDL_PAD_GPIO_4__SD2_CD_B    0x1f071
+			>;
+		};
+	};
+};
+
+&spdif {
+	status = "okay";
+};
+
+&usdhc2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_hummingboard_usdhc2>;
+	vmmc-supply = <&reg_3p3v>;
+	fsl,cd-controller;
+	status = "okay";
+
+	#address-cells = <1>;
+	#size-cells = <1>;
+
+	partition@0 {
+		label = "barebox";
+		reg = <0x0 0x80000>;
+	};
+
+	partition@1 {
+		label = "barebox-environment";
+		reg = <0x80000 0x80000>;
+	};
+};
diff --git a/arch/arm/dts/imx6qdl-microsom.dtsi b/arch/arm/dts/imx6qdl-microsom.dtsi
index 85e43bf..a8cfbb4 100644
--- a/arch/arm/dts/imx6qdl-microsom.dtsi
+++ b/arch/arm/dts/imx6qdl-microsom.dtsi
@@ -7,17 +7,21 @@
 / {
 	regulators {
 		compatible = "simple-bus";
+		#address-cells = <1>;
+		#size-cells = <0>;
 
-		reg_3p3v: 3p3v {
+		reg_3p3v: regulator@0 {
 			compatible = "regulator-fixed";
+			reg = <0>;
 			regulator-name = "3P3V";
 			regulator-min-microvolt = <3300000>;
 			regulator-max-microvolt = <3300000>;
 			regulator-always-on;
 		};
 
-		reg_usb_h1_vbus: usb_h1_vbus {
+		reg_usb_h1_vbus: regulator@1 {
 			compatible = "regulator-fixed";
+			reg = <1>;
 			regulator-name = "usb_h1_vbus";
 			regulator-min-microvolt = <5000000>;
 			regulator-max-microvolt = <5000000>;
@@ -25,8 +29,9 @@
 			enable-active-high;
 		};
 
-		reg_usb_otg_vbus: usb_otg_vbus {
+		reg_usb_otg_vbus: regulator@2 {
 			compatible = "regulator-fixed";
+			reg = <2>;
 			regulator-name = "usb_otg_vbus";
 			regulator-min-microvolt = <5000000>;
 			regulator-max-microvolt = <5000000>;
@@ -51,6 +56,10 @@
 			>;
 		};
 
+		pinctrl_microsom_uart1: microsom-uart1 {
+			fsl,pins = <MX6QDL_UART1_PINGRP1>;
+		};
+
 		pinctrl_microsom_usbotg: microsom-usbotg {
 			/*
 			 * Similar to pinctrl_usbotg_2, but we want it
@@ -58,16 +67,12 @@
 			 */
 			fsl,pins = <MX6QDL_PAD_GPIO_1__USB_OTG_ID 0x13059>;
 		};
-
-		pinctrl_uart1: uart1grp {
-			fsl,pins = <MX6QDL_UART1_PINGRP1>;
-		};
 	};
 };
 
 &uart1 {
 	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_uart1>;
+	pinctrl-0 = <&pinctrl_microsom_uart1>;
 	status = "okay";
 };
 
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 7587e15..de0b9ac 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -233,8 +233,8 @@ config MACH_NITROGEN6X
 	bool "BoundaryDevices Nitrogen6x"
 	select ARCH_IMX6
 
-config MACH_SOLIDRUN_CARRIER1
-	bool "SolidRun CuBox-i Carrier-1"
+config MACH_SOLIDRUN_HUMMINGBOARD
+	bool "SolidRun Hummingboard"
 	select ARCH_IMX6
 
 endif
diff --git a/images/Makefile.imx b/images/Makefile.imx
index ecaa582..a0522f0 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -82,10 +82,10 @@ CFG_start_imx6dl_sabrelite.pblx.imximg = $(board)/freescale-mx6-sabrelite/flash-
 FILE_barebox-freescale-imx6dl-sabrelite.img = start_imx6dl_sabrelite.pblx.imximg
 image-$(CONFIG_MACH_SABRELITE) += barebox-freescale-imx6dl-sabrelite.img
 
-pblx-$(CONFIG_MACH_SOLIDRUN_CARRIER1) += start_imx6dl_cubox_i_carrier_1
-CFG_start_imx6dl_cubox_i_carrier_1.pblx.imximg = $(board)/solidrun-carrier-1/flash-header-solidrun-carrier-1.imxcfg
-FILE_barebox-cubox-i-carrier-1.img = start_imx6dl_cubox_i_carrier_1.pblx.imximg
-image-$(CONFIG_MACH_SOLIDRUN_CARRIER1) += barebox-cubox-i-carrier-1.img
+pblx-$(CONFIG_MACH_SOLIDRUN_HUMMINGBOARD) += start_imx6dl_hummingboard
+CFG_start_imx6dl_hummingboard.pblx.imximg = $(board)/solidrun-hummingboard/flash-header-solidrun-hummingboard.imxcfg
+FILE_barebox-solidrun-imx6dl-hummingboard.img = start_imx6dl_hummingboard.pblx.imximg
+image-$(CONFIG_MACH_SOLIDRUN_HUMMINGBOARD) += barebox-solidrun-imx6dl-hummingboard.img
 
 pblx-$(CONFIG_MACH_NITROGEN6X) += start_imx6q_nitrogen6x_1g
 CFG_start_imx6q_nitrogen6x_1g.pblx.imximg = $(board)/boundarydevices-nitrogen6x/flash-header-nitrogen6x-1g.imxcfg
-- 
1.8.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aqxZk-00054k-MX
 for barebox@lists.infradead.org; Fri, 15 Apr 2016 06:50:05 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 15 Apr 2016 08:49:15 +0200
Message-Id: <1460702958-4012-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1460702958-4012-1-git-send-email-s.hauer@pengutronix.de>
References: <1460702958-4012-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 6/9] include: Move ns16550 serial platform_data to
 include/platform_data
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/archosg9/board.c                  |  1 -
 arch/arm/boards/beagle/board.c                    |  1 -
 arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c |  2 +-
 arch/arm/boards/omap343xdsp/board.c               |  1 -
 arch/arm/boards/omap3evm/board.c                  |  1 -
 arch/arm/boards/panda/board.c                     |  1 -
 arch/arm/boards/phytec-phycard-omap3/pca-a-l1.c   |  1 -
 arch/arm/boards/phytec-phycard-omap4/pca-a-xl2.c  |  1 -
 arch/arm/boards/phytec-phycore-omap4460/board.c   |  1 -
 arch/arm/mach-omap/omap_devices.c                 |  2 +-
 arch/arm/mach-socfpga/xload.c                     |  2 +-
 arch/arm/mach-tegra/tegra20.c                     |  1 -
 arch/efi/efi/efi.c                                |  2 +-
 arch/mips/mach-ar231x/ar231x.c                    |  2 +-
 arch/ppc/boards/freescale-p1010rdb/p1010rdb.c     |  2 +-
 arch/ppc/boards/freescale-p1022ds/p1022ds.c       |  2 +-
 arch/ppc/boards/freescale-p2020rdb/p2020rdb.c     |  2 +-
 arch/ppc/boards/geip-da923rc/da923rc.c            |  2 +-
 arch/x86/boards/x86_generic/serial_ns16550.c      |  2 +-
 drivers/serial/serial_ns16550.c                   |  2 +-
 include/ns16550.h                                 | 39 -----------------------
 include/platform_data/serial-ns16550.h            | 39 +++++++++++++++++++++++
 22 files changed, 50 insertions(+), 59 deletions(-)
 delete mode 100644 include/ns16550.h
 create mode 100644 include/platform_data/serial-ns16550.h

diff --git a/arch/arm/boards/archosg9/board.c b/arch/arm/boards/archosg9/board.c
index 6f82f5e..52f7e86 100644
--- a/arch/arm/boards/archosg9/board.c
+++ b/arch/arm/boards/archosg9/board.c
@@ -13,7 +13,6 @@
 #include <common.h>
 #include <clock.h>
 #include <init.h>
-#include <ns16550.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
 #include <mach/omap4-silicon.h>
diff --git a/arch/arm/boards/beagle/board.c b/arch/arm/boards/beagle/board.c
index 4ac9517..460f42a 100644
--- a/arch/arm/boards/beagle/board.c
+++ b/arch/arm/boards/beagle/board.c
@@ -23,7 +23,6 @@
 #include <io.h>
 #include <bbu.h>
 #include <filetype.h>
-#include <ns16550.h>
 #include <envfs.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
diff --git a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
index b40ad13..07fee05 100644
--- a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
+++ b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
@@ -38,7 +38,7 @@
 #include <mach/imx-pll.h>
 #include <mach/weim.h>
 #include <mach/imxfb.h>
-#include <ns16550.h>
+#include <platform_data/serial-ns16550.h>
 #include <asm/mmu.h>
 #include <i2c/i2c.h>
 #include <mfd/lp3972.h>
diff --git a/arch/arm/boards/omap343xdsp/board.c b/arch/arm/boards/omap343xdsp/board.c
index 1b1cb79..2fd0dee 100644
--- a/arch/arm/boards/omap343xdsp/board.c
+++ b/arch/arm/boards/omap343xdsp/board.c
@@ -20,7 +20,6 @@
 #include <init.h>
 #include <driver.h>
 #include <io.h>
-#include <ns16550.h>
 #include <asm/armlinux.h>
 #include <mach/omap3-silicon.h>
 #include <mach/omap3-devices.h>
diff --git a/arch/arm/boards/omap3evm/board.c b/arch/arm/boards/omap3evm/board.c
index 0fe69b6..eefb540 100644
--- a/arch/arm/boards/omap3evm/board.c
+++ b/arch/arm/boards/omap3evm/board.c
@@ -44,7 +44,6 @@
 #include <driver.h>
 #include <io.h>
 #include <linux/sizes.h>
-#include <ns16550.h>
 #include <asm/armlinux.h>
 #include <mach/omap3-silicon.h>
 #include <mach/omap3-mux.h>
diff --git a/arch/arm/boards/panda/board.c b/arch/arm/boards/panda/board.c
index f7a3a0f..acba689 100644
--- a/arch/arm/boards/panda/board.c
+++ b/arch/arm/boards/panda/board.c
@@ -4,7 +4,6 @@
 #include <driver.h>
 #include <io.h>
 #include <gpio.h>
-#include <ns16550.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
 #include <mach/omap4-silicon.h>
diff --git a/arch/arm/boards/phytec-phycard-omap3/pca-a-l1.c b/arch/arm/boards/phytec-phycard-omap3/pca-a-l1.c
index 1c2e7f7..930f3b9 100644
--- a/arch/arm/boards/phytec-phycard-omap3/pca-a-l1.c
+++ b/arch/arm/boards/phytec-phycard-omap3/pca-a-l1.c
@@ -44,7 +44,6 @@
 #include <errno.h>
 #include <init.h>
 #include <nand.h>
-#include <ns16550.h>
 #include <partition.h>
 #include <linux/sizes.h>
 #include <asm/armlinux.h>
diff --git a/arch/arm/boards/phytec-phycard-omap4/pca-a-xl2.c b/arch/arm/boards/phytec-phycard-omap4/pca-a-xl2.c
index 78890ba..c0e4448 100644
--- a/arch/arm/boards/phytec-phycard-omap4/pca-a-xl2.c
+++ b/arch/arm/boards/phytec-phycard-omap4/pca-a-xl2.c
@@ -20,7 +20,6 @@
 #include <driver.h>
 #include <io.h>
 #include <gpio.h>
-#include <ns16550.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
 #include <mach/omap4-silicon.h>
diff --git a/arch/arm/boards/phytec-phycore-omap4460/board.c b/arch/arm/boards/phytec-phycore-omap4460/board.c
index 6495a6f..807cdd6 100644
--- a/arch/arm/boards/phytec-phycore-omap4460/board.c
+++ b/arch/arm/boards/phytec-phycore-omap4460/board.c
@@ -20,7 +20,6 @@
 #include <driver.h>
 #include <gpio.h>
 #include <io.h>
-#include <ns16550.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
 #include <mach/omap4-silicon.h>
diff --git a/arch/arm/mach-omap/omap_devices.c b/arch/arm/mach-omap/omap_devices.c
index 9ed3dcf..f577fa6 100644
--- a/arch/arm/mach-omap/omap_devices.c
+++ b/arch/arm/mach-omap/omap_devices.c
@@ -1,5 +1,5 @@
 #include <driver.h>
-#include <ns16550.h>
+#include <platform_data/serial-ns16550.h>
 #include <asm/armlinux.h>
 
 #include <mach/omap3-devices.h>
diff --git a/arch/arm/mach-socfpga/xload.c b/arch/arm/mach-socfpga/xload.c
index fd0d777..7f8f032 100644
--- a/arch/arm/mach-socfpga/xload.c
+++ b/arch/arm/mach-socfpga/xload.c
@@ -2,7 +2,7 @@
 #include <platform_data/dw_mmc.h>
 #include <bootsource.h>
 #include <bootstrap.h>
-#include <ns16550.h>
+#include <platform_data/serial-ns16550.h>
 #include <common.h>
 #include <malloc.h>
 #include <init.h>
diff --git a/arch/arm/mach-tegra/tegra20.c b/arch/arm/mach-tegra/tegra20.c
index 8d1cd5b..10c149a 100644
--- a/arch/arm/mach-tegra/tegra20.c
+++ b/arch/arm/mach-tegra/tegra20.c
@@ -16,7 +16,6 @@
 
 #include <common.h>
 #include <init.h>
-#include <ns16550.h>
 #include <asm/memory.h>
 #include <mach/iomap.h>
 #include <mach/lowlevel.h>
diff --git a/arch/efi/efi/efi.c b/arch/efi/efi/efi.c
index 9c270a5..36ac016 100644
--- a/arch/efi/efi/efi.c
+++ b/arch/efi/efi/efi.c
@@ -26,7 +26,7 @@
 #include <init.h>
 #include <restart.h>
 #include <driver.h>
-#include <ns16550.h>
+#include <platform_data/serial-ns16550.h>
 #include <io.h>
 #include <efi.h>
 #include <malloc.h>
diff --git a/arch/mips/mach-ar231x/ar231x.c b/arch/mips/mach-ar231x/ar231x.c
index f714a11..3a0103b 100644
--- a/arch/mips/mach-ar231x/ar231x.c
+++ b/arch/mips/mach-ar231x/ar231x.c
@@ -16,7 +16,7 @@
 #include <common.h>
 #include <init.h>
 #include <io.h>
-#include <ns16550.h>
+#include <platform_data/serial-ns16550.h>
 #include <mach/ar231x_platform.h>
 #include <mach/ar2312_regs.h>
 
diff --git a/arch/ppc/boards/freescale-p1010rdb/p1010rdb.c b/arch/ppc/boards/freescale-p1010rdb/p1010rdb.c
index 60cae46..eab3aba 100644
--- a/arch/ppc/boards/freescale-p1010rdb/p1010rdb.c
+++ b/arch/ppc/boards/freescale-p1010rdb/p1010rdb.c
@@ -17,7 +17,7 @@
 #include <common.h>
 #include <init.h>
 #include <driver.h>
-#include <ns16550.h>
+#include <platform_data/serial-ns16550.h>
 #include <net.h>
 #include <types.h>
 #include <i2c/i2c.h>
diff --git a/arch/ppc/boards/freescale-p1022ds/p1022ds.c b/arch/ppc/boards/freescale-p1022ds/p1022ds.c
index 57e7953..95a7234 100644
--- a/arch/ppc/boards/freescale-p1022ds/p1022ds.c
+++ b/arch/ppc/boards/freescale-p1022ds/p1022ds.c
@@ -17,7 +17,7 @@
 #include <common.h>
 #include <init.h>
 #include <driver.h>
-#include <ns16550.h>
+#include <platform_data/serial-ns16550.h>
 #include <net.h>
 #include <types.h>
 #include <i2c/i2c.h>
diff --git a/arch/ppc/boards/freescale-p2020rdb/p2020rdb.c b/arch/ppc/boards/freescale-p2020rdb/p2020rdb.c
index 385a436..b03d791 100644
--- a/arch/ppc/boards/freescale-p2020rdb/p2020rdb.c
+++ b/arch/ppc/boards/freescale-p2020rdb/p2020rdb.c
@@ -20,7 +20,7 @@
 #include <common.h>
 #include <init.h>
 #include <driver.h>
-#include <ns16550.h>
+#include <platform_data/serial-ns16550.h>
 #include <types.h>
 #include <i2c/i2c.h>
 #include <partition.h>
diff --git a/arch/ppc/boards/geip-da923rc/da923rc.c b/arch/ppc/boards/geip-da923rc/da923rc.c
index b6b5d56..85c9747 100644
--- a/arch/ppc/boards/geip-da923rc/da923rc.c
+++ b/arch/ppc/boards/geip-da923rc/da923rc.c
@@ -22,7 +22,7 @@
 #include <asm/io.h>
 #include <net.h>
 #include <gpio.h>
-#include <ns16550.h>
+#include <platform_data/serial-ns16550.h>
 #include <partition.h>
 #include <environment.h>
 #include <i2c/i2c.h>
diff --git a/arch/x86/boards/x86_generic/serial_ns16550.c b/arch/x86/boards/x86_generic/serial_ns16550.c
index 3b284f3..abc1047 100644
--- a/arch/x86/boards/x86_generic/serial_ns16550.c
+++ b/arch/x86/boards/x86_generic/serial_ns16550.c
@@ -25,7 +25,7 @@
 #include <driver.h>
 #include <init.h>
 #include <asm/syslib.h>
-#include <ns16550.h>
+#include <platform_data/serial-ns16550.h>
 #include <linux/err.h>
 
 static struct NS16550_plat serial_plat = {
diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns16550.c
index 4ad52ea..c6548e3 100644
--- a/drivers/serial/serial_ns16550.c
+++ b/drivers/serial/serial_ns16550.c
@@ -41,7 +41,7 @@
 #include <linux/clk.h>
 
 #include "serial_ns16550.h"
-#include <ns16550.h>
+#include <platform_data/serial-ns16550.h>
 
 struct ns16550_priv {
 	struct console_device cdev;
diff --git a/include/ns16550.h b/include/ns16550.h
deleted file mode 100644
index ccf950b..0000000
--- a/include/ns16550.h
+++ /dev/null
@@ -1,39 +0,0 @@
-/**
- * @file
- * @brief Serial NS16550 platform specific header
- *
- * FileName: include/ns16550.h
- * @code struct NS16550_plat @endcode
- * represents The specifics of the device present in the system.
- */
-/*
- * (C) Copyright 2008
- * Texas Instruments, <www.ti.com>
- * Nishanth Menon <x0nishan@ti.com>
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
- *
- */
-
-#ifndef __NS16650_PLATFORM_H_
-#define __NS16650_PLATFORM_H_
-
-/**
- * @brief Platform dependent feature:
- * Pass pointer to this structure as part of device_d -> platform_data
- */
-struct NS16550_plat {
-	/** Clock speed */
-	unsigned int clock;
-	int shift;
-};
-
-#endif				/* __NS16650_PLATFORM_H_ */
diff --git a/include/platform_data/serial-ns16550.h b/include/platform_data/serial-ns16550.h
new file mode 100644
index 0000000..ccf950b
--- /dev/null
+++ b/include/platform_data/serial-ns16550.h
@@ -0,0 +1,39 @@
+/**
+ * @file
+ * @brief Serial NS16550 platform specific header
+ *
+ * FileName: include/ns16550.h
+ * @code struct NS16550_plat @endcode
+ * represents The specifics of the device present in the system.
+ */
+/*
+ * (C) Copyright 2008
+ * Texas Instruments, <www.ti.com>
+ * Nishanth Menon <x0nishan@ti.com>
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
+ *
+ */
+
+#ifndef __NS16650_PLATFORM_H_
+#define __NS16650_PLATFORM_H_
+
+/**
+ * @brief Platform dependent feature:
+ * Pass pointer to this structure as part of device_d -> platform_data
+ */
+struct NS16550_plat {
+	/** Clock speed */
+	unsigned int clock;
+	int shift;
+};
+
+#endif				/* __NS16650_PLATFORM_H_ */
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

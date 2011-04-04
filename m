Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q6jbc-0002C5-60
	for barebox@lists.infradead.org; Mon, 04 Apr 2011 13:14:23 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Apr 2011 15:13:57 +0200
Message-Id: <1301922843-12118-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1301922843-12118-1-git-send-email-s.hauer@pengutronix.de>
References: <1301922843-12118-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 3/9] ARM omap: move devices-gpmc-nand.c to omap architecture
	directory
To: barebox@lists.infradead.org

The original plan was to add all omap devices into the boards/omap
directory. Anyway, there will be reasons to put a board somewhere
else, so move the generic parts into the omap architecture directory.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/omap/Makefile            |    2 -
 arch/arm/boards/omap/devices-gpmc-nand.c |  102 ------------------------------
 arch/arm/mach-omap/Makefile              |    2 +-
 arch/arm/mach-omap/devices-gpmc-nand.c   |  102 ++++++++++++++++++++++++++++++
 4 files changed, 103 insertions(+), 105 deletions(-)
 delete mode 100644 arch/arm/boards/omap/devices-gpmc-nand.c
 create mode 100644 arch/arm/mach-omap/devices-gpmc-nand.c

diff --git a/arch/arm/boards/omap/Makefile b/arch/arm/boards/omap/Makefile
index 1e74e24..8e0418c 100644
--- a/arch/arm/boards/omap/Makefile
+++ b/arch/arm/boards/omap/Makefile
@@ -24,5 +24,3 @@ obj-$(CONFIG_MACH_DO_LOWLEVEL_INIT) += platform.o
 obj-$(CONFIG_MACH_OMAP343xSDP) += board-sdp343x.o
 obj-$(CONFIG_MACH_BEAGLE) += board-beagle.o
 obj-$(CONFIG_MACH_OMAP3EVM) += board-omap3evm.o
-obj-y += devices-gpmc-nand.o
-
diff --git a/arch/arm/boards/omap/devices-gpmc-nand.c b/arch/arm/boards/omap/devices-gpmc-nand.c
deleted file mode 100644
index 4369aa0..0000000
--- a/arch/arm/boards/omap/devices-gpmc-nand.c
+++ /dev/null
@@ -1,102 +0,0 @@
-/**
- * @file
- * @brief GPMC specific NAND devices
- *
- * FileName: arch/arm/boards/omap/devices-gpmc-nand.c
- *
- * GPMC NAND Devices such as those from Micron, Samsung are listed here
- */
-/*
- * (C) Copyright 2006-2008
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
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
- * MA 02111-1307 USA
- */
-#include <common.h>
-#include <console.h>
-#include <init.h>
-#include <driver.h>
-#include <clock.h>
-#include <asm/io.h>
-
-#include <mach/silicon.h>
-#include <mach/gpmc.h>
-#include <mach/gpmc_nand.h>
-
-#define GPMC_CONF1_VALx8	0x00000800
-#define GPMC_CONF1_VALx16	0x00001800
-/* Set up the generic params */
-
-/** GPMC timing for our nand device */
-static struct gpmc_config nand_cfg = {
-	.cfg = {
-		0,		/*CONF1 */
-		0x00141400,	/*CONF2 */
-		0x00141400,	/*CONF3 */
-		0x0F010F01,	/*CONF4 */
-		0x010C1414,	/*CONF5 */
-#ifdef CONFIG_ARCH_OMAP3
-		/* Additional bits in OMAP3 */
-		0x1F040000 |
-#endif
-		0x00000A80,	/*CONF6 */
-		},
-
-	/* Nand: dont care about base address */
-	.base = 0x28000000,
-	/* GPMC address map as small as possible */
-	.size = GPMC_SIZE_16M,
-};
-
-/** NAND platform specific settings settings */
-static struct gpmc_nand_platform_data nand_plat = {
-	.cs = 0,
-	.max_timeout = MSECOND,
-	.wait_mon_pin = 0,
-	.priv = (void *)&nand_cfg,
-};
-
-/** NAND device definition */
-static struct device_d gpmc_generic_nand_nand_device = {
-	.id = -1,
-	.name = "gpmc_nand",
-	.map_base = OMAP_GPMC_BASE,
-	.size = 1024 * 4,	/* GPMC size */
-	.platform_data = (void *)&nand_plat,
-};
-
-/**
- * @brief gpmc_generic_nand_devices_init - init generic nand device
- *
- * @return success/fail based on device funtion
- */
-int gpmc_generic_nand_devices_init(int cs, int width, int hwecc)
-{
-	nand_plat.cs = cs;
-
-	if (width == 16)
-		nand_cfg.cfg[0] = GPMC_CONF1_VALx16;
-	else
-		nand_cfg.cfg[0] = GPMC_CONF1_VALx8;
-
-	nand_plat.device_width = width;
-	nand_plat.plat_options = hwecc ? NAND_HWECC_ENABLE : 0;
-
-	/* Configure GPMC CS before register */
-	gpmc_cs_config(nand_plat.cs, &nand_cfg);
-	return register_device(&gpmc_generic_nand_nand_device);
-}
diff --git a/arch/arm/mach-omap/Makefile b/arch/arm/mach-omap/Makefile
index fe2d626..5df8411 100644
--- a/arch/arm/mach-omap/Makefile
+++ b/arch/arm/mach-omap/Makefile
@@ -23,6 +23,6 @@ obj-$(CONFIG_ARCH_OMAP) += syslib.o
 obj-$(CONFIG_OMAP_CLOCK_SOURCE_S32K) += s32k_clksource.o
 obj-$(CONFIG_ARCH_OMAP3) += omap3_core.o omap3_generic.o
 obj-$(CONFIG_OMAP3_CLOCK_CONFIG) += omap3_clock_core.o omap3_clock.o
-obj-$(CONFIG_GPMC) += gpmc.o
+obj-$(CONFIG_GPMC) += gpmc.o devices-gpmc-nand.o
 obj-$(CONFIG_GPIO) += gpio.o
 obj-y += omap-uart.o
diff --git a/arch/arm/mach-omap/devices-gpmc-nand.c b/arch/arm/mach-omap/devices-gpmc-nand.c
new file mode 100644
index 0000000..4369aa0
--- /dev/null
+++ b/arch/arm/mach-omap/devices-gpmc-nand.c
@@ -0,0 +1,102 @@
+/**
+ * @file
+ * @brief GPMC specific NAND devices
+ *
+ * FileName: arch/arm/boards/omap/devices-gpmc-nand.c
+ *
+ * GPMC NAND Devices such as those from Micron, Samsung are listed here
+ */
+/*
+ * (C) Copyright 2006-2008
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
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+#include <common.h>
+#include <console.h>
+#include <init.h>
+#include <driver.h>
+#include <clock.h>
+#include <asm/io.h>
+
+#include <mach/silicon.h>
+#include <mach/gpmc.h>
+#include <mach/gpmc_nand.h>
+
+#define GPMC_CONF1_VALx8	0x00000800
+#define GPMC_CONF1_VALx16	0x00001800
+/* Set up the generic params */
+
+/** GPMC timing for our nand device */
+static struct gpmc_config nand_cfg = {
+	.cfg = {
+		0,		/*CONF1 */
+		0x00141400,	/*CONF2 */
+		0x00141400,	/*CONF3 */
+		0x0F010F01,	/*CONF4 */
+		0x010C1414,	/*CONF5 */
+#ifdef CONFIG_ARCH_OMAP3
+		/* Additional bits in OMAP3 */
+		0x1F040000 |
+#endif
+		0x00000A80,	/*CONF6 */
+		},
+
+	/* Nand: dont care about base address */
+	.base = 0x28000000,
+	/* GPMC address map as small as possible */
+	.size = GPMC_SIZE_16M,
+};
+
+/** NAND platform specific settings settings */
+static struct gpmc_nand_platform_data nand_plat = {
+	.cs = 0,
+	.max_timeout = MSECOND,
+	.wait_mon_pin = 0,
+	.priv = (void *)&nand_cfg,
+};
+
+/** NAND device definition */
+static struct device_d gpmc_generic_nand_nand_device = {
+	.id = -1,
+	.name = "gpmc_nand",
+	.map_base = OMAP_GPMC_BASE,
+	.size = 1024 * 4,	/* GPMC size */
+	.platform_data = (void *)&nand_plat,
+};
+
+/**
+ * @brief gpmc_generic_nand_devices_init - init generic nand device
+ *
+ * @return success/fail based on device funtion
+ */
+int gpmc_generic_nand_devices_init(int cs, int width, int hwecc)
+{
+	nand_plat.cs = cs;
+
+	if (width == 16)
+		nand_cfg.cfg[0] = GPMC_CONF1_VALx16;
+	else
+		nand_cfg.cfg[0] = GPMC_CONF1_VALx8;
+
+	nand_plat.device_width = width;
+	nand_plat.plat_options = hwecc ? NAND_HWECC_ENABLE : 0;
+
+	/* Configure GPMC CS before register */
+	gpmc_cs_config(nand_plat.cs, &nand_cfg);
+	return register_device(&gpmc_generic_nand_nand_device);
+}
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x22a.google.com ([2a00:1450:400c:c00::22a])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YkI2z-0003BJ-Fm
 for barebox@lists.infradead.org; Mon, 20 Apr 2015 20:12:07 +0000
Received: by wgin8 with SMTP id n8so191182587wgi.0
 for <barebox@lists.infradead.org>; Mon, 20 Apr 2015 13:11:39 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Mon, 20 Apr 2015 22:11:25 +0200
Message-Id: <1429560686-11391-14-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1429560686-11391-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1429560686-11391-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH v2 13/14] ARM: mvebu: armada-xp: Add Lenovo Iomega ix4-300d
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

This adds support for Marvell Armada XP based 4-bay NAS Lenovo
Iomega ix4-300d.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: barebox@lists.infradead.org
Cc: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
---
 arch/arm/boards/Makefile                      |  1 +
 arch/arm/boards/lenovo-ix4-300d/Makefile      |  1 +
 arch/arm/boards/lenovo-ix4-300d/kwbimage.cfg  |  5 ++++
 arch/arm/boards/lenovo-ix4-300d/lowlevel.c    | 35 +++++++++++++++++++++++++++
 arch/arm/dts/Makefile                         |  1 +
 arch/arm/dts/armada-xp-lenovo-ix4-300d-bb.dts | 14 +++++++++++
 arch/arm/mach-mvebu/Kconfig                   |  4 +++
 images/Makefile.mvebu                         | 11 +++++++++
 8 files changed, 72 insertions(+)
 create mode 100644 arch/arm/boards/lenovo-ix4-300d/Makefile
 create mode 100644 arch/arm/boards/lenovo-ix4-300d/kwbimage.cfg
 create mode 100644 arch/arm/boards/lenovo-ix4-300d/lowlevel.c
 create mode 100644 arch/arm/dts/armada-xp-lenovo-ix4-300d-bb.dts

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index 35aa9a2f520f..d6fc17cc251e 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -57,6 +57,7 @@ obj-$(CONFIG_MACH_HIGHBANK)			+= highbank/
 obj-$(CONFIG_MACH_IMX21ADS)			+= freescale-mx21-ads/
 obj-$(CONFIG_MACH_IMX233_OLINUXINO)		+= imx233-olinuxino/
 obj-$(CONFIG_MACH_IMX27ADS)			+= freescale-mx27-ads/
+obj-$(CONFIG_MACH_LENOVO_IX4_300D)		+= lenovo-ix4-300d/
 obj-$(CONFIG_MACH_LUBBOCK)			+= lubbock/
 obj-$(CONFIG_MACH_MAINSTONE)			+= mainstone/
 obj-$(CONFIG_MACH_MARVELL_ARMADA_XP_GP)		+= marvell-armada-xp-gp/
diff --git a/arch/arm/boards/lenovo-ix4-300d/Makefile b/arch/arm/boards/lenovo-ix4-300d/Makefile
new file mode 100644
index 000000000000..b08c4a93ca27
--- /dev/null
+++ b/arch/arm/boards/lenovo-ix4-300d/Makefile
@@ -0,0 +1 @@
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/lenovo-ix4-300d/kwbimage.cfg b/arch/arm/boards/lenovo-ix4-300d/kwbimage.cfg
new file mode 100644
index 000000000000..713efb0b0a89
--- /dev/null
+++ b/arch/arm/boards/lenovo-ix4-300d/kwbimage.cfg
@@ -0,0 +1,5 @@
+VERSION 1
+BOOT_FROM nand
+NAND_BLKSZ 00020000
+NAND_BADBLK_LOCATION 00
+BINARY arch/arm/boards/lenovo-ix4-300d/binary.0 0000005b 00000068
diff --git a/arch/arm/boards/lenovo-ix4-300d/lowlevel.c b/arch/arm/boards/lenovo-ix4-300d/lowlevel.c
new file mode 100644
index 000000000000..8cb8bd40791c
--- /dev/null
+++ b/arch/arm/boards/lenovo-ix4-300d/lowlevel.c
@@ -0,0 +1,35 @@
+/*
+ * Copyright (C) 2014, 2015
+ *  Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
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
+#include <common.h>
+#include <asm/barebox-arm.h>
+#include <asm/barebox-arm-head.h>
+#include <linux/sizes.h>
+#include <mach/lowlevel.h>
+
+extern char __dtb_armada_xp_lenovo_ix4_300d_bb_start[];
+
+ENTRY_FUNCTION(start_lenovo_ix4_300d, r0, r1, r2)
+{
+	void *fdt;
+
+	arm_cpu_lowlevel_init();
+
+	fdt = __dtb_armada_xp_lenovo_ix4_300d_bb_start -
+		get_runtime_offset();
+
+	mvebu_barebox_entry(fdt);
+}
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index cc92bdef838c..06c29c8d8017 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -23,6 +23,7 @@ pbl-dtb-$(CONFIG_MACH_GLOBALSCALE_GURUPLUG) += kirkwood-guruplug-server-plus-bb.
 pbl-dtb-$(CONFIG_MACH_GLOBALSCALE_MIRABOX) += armada-370-mirabox-bb.dtb.o
 pbl-dtb-$(CONFIG_MACH_GUF_SANTARO) += imx6q-guf-santaro.dtb.o
 pbl-dtb-$(CONFIG_MACH_GW_VENTANA) += imx6q-gw54xx.dtb.o
+pbl-dtb-$(CONFIG_MACH_LENOVO_IX4_300D) += armada-xp-lenovo-ix4-300d-bb.dtb.o
 pbl-dtb-$(CONFIG_MACH_MARVELL_ARMADA_XP_GP) += armada-xp-gp-bb.dtb.o
 pbl-dtb-$(CONFIG_MACH_NITROGEN6X) += imx6q-nitrogen6x.dtb.o imx6dl-nitrogen6x.dtb.o
 pbl-dtb-$(CONFIG_MACH_NVIDIA_BEAVER) += tegra30-beaver.dtb.o
diff --git a/arch/arm/dts/armada-xp-lenovo-ix4-300d-bb.dts b/arch/arm/dts/armada-xp-lenovo-ix4-300d-bb.dts
new file mode 100644
index 000000000000..5f1a6073814d
--- /dev/null
+++ b/arch/arm/dts/armada-xp-lenovo-ix4-300d-bb.dts
@@ -0,0 +1,14 @@
+/*
+ * Barebox specific DT overlay for Lenovo Iomega ix4-300d
+ *   Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
+ */
+
+#include "arm/armada-xp-lenovo-ix4-300d.dts"
+
+/ {
+	gpio-leds {
+		power-led {
+			linux,default-trigger = "heartbeat";
+		};
+	};
+};
diff --git a/arch/arm/mach-mvebu/Kconfig b/arch/arm/mach-mvebu/Kconfig
index 9394cf71a998..5e96f16e8cf4 100644
--- a/arch/arm/mach-mvebu/Kconfig
+++ b/arch/arm/mach-mvebu/Kconfig
@@ -43,6 +43,10 @@ config MACH_GLOBALSCALE_MIRABOX
 
 comment "Armada XP based boards"
 
+config MACH_LENOVO_IX4_300D
+	bool "Lenovo Iomega ix4-300d"
+	select ARCH_ARMADA_XP
+
 config MACH_MARVELL_ARMADA_XP_GP
 	bool "Marvell Armada XP GP"
 	select ARCH_ARMADA_XP
diff --git a/images/Makefile.mvebu b/images/Makefile.mvebu
index 82f370576468..dcf2235f8cb5 100644
--- a/images/Makefile.mvebu
+++ b/images/Makefile.mvebu
@@ -24,6 +24,17 @@ image-$(CONFIG_MACH_GLOBALSCALE_MIRABOX) += barebox-globalscale-mirabox-uart.img
 image-$(CONFIG_MACH_GLOBALSCALE_MIRABOX) += barebox-globalscale-mirabox-2nd.img
 
 # ----------------------- Armada XP based boards ---------------------------
+LENOVO_IX4_300D_KWBOPTS = ${KWBOPTS} -i $(board)/lenovo-ix4-300d/kwbimage.cfg
+OPTS_start_lenovo_ix4_300d.pblx.kwbimg = $(LENOVO_IX4_300D_KWBOPTS)
+OPTS_start_lenovo_ix4_300d.pblx.kwbuartimg = -m uart $(LENOVO_IX4_300D_KWBOPTS)
+FILE_barebox-lenovo-ix4-300d.img   = start_lenovo_ix4_300d.pblx.kwbimg
+FILE_barebox-lenovo-ix4-300d-uart.img = start_lenovo_ix4_300d.pblx.kwbuartimg
+FILE_barebox-lenovo-ix4-300d-2nd.img = start_lenovo_ix4_300d.pblx
+pblx-$(CONFIG_MACH_LENOVO_IX4_300D) += start_lenovo_ix4_300d.pblx
+image-$(CONFIG_MACH_LENOVO_IX4_300D) += barebox-lenovo-ix4-300d.img
+image-$(CONFIG_MACH_LENOVO_IX4_300D) += barebox-lenovo-ix4-300d-uart.img
+image-$(CONFIG_MACH_LENOVO_IX4_300D) += barebox-lenovo-ix4-300d-2nd.img
+
 MARVELL_ARMADA_XP_GP_KWBOPTS = ${KWBOPTS} -i $(board)/marvell-armada-xp-gp/kwbimage.cfg
 OPTS_start_marvell_armada_xp_gp.pblx.kwbimg = $(MARVELL_ARMADA_XP_GP_KWBOPTS)
 OPTS_start_marvell_armada_xp_gp.pblx.kwbuartimg = -m uart $(MARVELL_ARMADA_XP_GP_KWBOPTS)
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

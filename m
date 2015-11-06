Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZueA8-000214-Hy
 for barebox@lists.infradead.org; Fri, 06 Nov 2015 10:22:36 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id C3543A00457
 for <barebox@lists.infradead.org>; Fri,  6 Nov 2015 11:22:26 +0100 (CET)
From: Stefan Christ <s.christ@phytec.de>
Date: Fri, 6 Nov 2015 11:21:50 +0100
Message-Id: <1446805318-26691-3-git-send-email-s.christ@phytec.de>
In-Reply-To: <1446805318-26691-1-git-send-email-s.christ@phytec.de>
References: <1446805318-26691-1-git-send-email-s.christ@phytec.de>
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
Subject: [PATCH 02/10] boards: Add phytec-som-imx6
To: barebox@lists.infradead.org

The main idea behind this patch is to avoid redundant code.  Because of
the module similarities of all i.MX6 based phytec boards, we can merge
its code.

The phytec-som-imx6 merges the code of all i.MX6 based phytec SOMs.  So
we will have only one "board" in the barebox for phyCARD-i.MX6 and
phyFLEX-i.MX6.

Signed-off-by: Stefan Christ <s.christ@phytec.de>
---
 arch/arm/boards/Makefile                           |  3 +-
 arch/arm/boards/phytec-phycard-imx6/board.c        | 52 ----------------
 .../defaultenv-phycard-imx6/boot/nand              |  7 ---
 .../defaultenv-phycard-imx6/nv/hostname            |  1 -
 arch/arm/boards/phytec-phycard-imx6/lowlevel.c     | 69 ----------------------
 arch/arm/boards/phytec-phyflex-imx6/Makefile       |  3 -
 .../defaultenv-phyflex-imx6/boot/sd-ext3           |  6 --
 .../defaultenv-phyflex-imx6/init/automount         | 14 -----
 .../defaultenv-phyflex-imx6/nv/boot.default        |  1 -
 .../defaultenv-phyflex-imx6/nv/hostname            |  1 -
 .../Makefile                                       |  2 +-
 .../board.c                                        | 69 ++++++++++++----------
 .../defaultenv-physom-imx6}/boot/nand              |  0
 .../defaultenv-physom-imx6}/boot/sd-ext3           |  0
 .../defaultenv-physom-imx6}/init/automount         |  0
 .../defaultenv-physom-imx6}/nv/boot.default        |  0
 .../flash-header-phytec-pcaaxl3-1gib-1bank.imxcfg  |  0
 .../flash-header-phytec-pcaaxl3-1gib.imxcfg        |  0
 .../flash-header-phytec-pcaaxl3-2gib.imxcfg        |  0
 .../flash-header-phytec-pcaaxl3.h                  |  0
 .../flash-header-phytec-pfla02-1gib-1bank.imxcfg   |  0
 .../flash-header-phytec-pfla02-1gib.imxcfg         |  0
 .../flash-header-phytec-pfla02-2gib.imxcfg         |  0
 .../flash-header-phytec-pfla02-4gib.imxcfg         |  0
 .../flash-header-phytec-pfla02.h                   |  0
 .../flash-header-phytec-pfla02dl-1gib.imxcfg       |  0
 .../flash-header-phytec-pfla02dl.h                 |  0
 .../flash-header-phytec-pfla02s-512mb.imxcfg       |  0
 .../lowlevel.c                                     | 16 +++--
 arch/arm/configs/imx_v7_defconfig                  |  3 +-
 arch/arm/dts/Makefile                              |  8 ++-
 arch/arm/mach-imx/Kconfig                          | 11 +---
 images/Makefile.imx                                | 66 ++++++++++-----------
 33 files changed, 94 insertions(+), 238 deletions(-)
 delete mode 100644 arch/arm/boards/phytec-phycard-imx6/board.c
 delete mode 100644 arch/arm/boards/phytec-phycard-imx6/defaultenv-phycard-imx6/boot/nand
 delete mode 100644 arch/arm/boards/phytec-phycard-imx6/defaultenv-phycard-imx6/nv/hostname
 delete mode 100644 arch/arm/boards/phytec-phycard-imx6/lowlevel.c
 delete mode 100644 arch/arm/boards/phytec-phyflex-imx6/Makefile
 delete mode 100644 arch/arm/boards/phytec-phyflex-imx6/defaultenv-phyflex-imx6/boot/sd-ext3
 delete mode 100644 arch/arm/boards/phytec-phyflex-imx6/defaultenv-phyflex-imx6/init/automount
 delete mode 100644 arch/arm/boards/phytec-phyflex-imx6/defaultenv-phyflex-imx6/nv/boot.default
 delete mode 100644 arch/arm/boards/phytec-phyflex-imx6/defaultenv-phyflex-imx6/nv/hostname
 rename arch/arm/boards/{phytec-phycard-imx6 => phytec-som-imx6}/Makefile (51%)
 rename arch/arm/boards/{phytec-phyflex-imx6 => phytec-som-imx6}/board.c (69%)
 rename arch/arm/boards/{phytec-phyflex-imx6/defaultenv-phyflex-imx6 => phytec-som-imx6/defaultenv-physom-imx6}/boot/nand (100%)
 rename arch/arm/boards/{phytec-phycard-imx6/defaultenv-phycard-imx6 => phytec-som-imx6/defaultenv-physom-imx6}/boot/sd-ext3 (100%)
 rename arch/arm/boards/{phytec-phycard-imx6/defaultenv-phycard-imx6 => phytec-som-imx6/defaultenv-physom-imx6}/init/automount (100%)
 rename arch/arm/boards/{phytec-phycard-imx6/defaultenv-phycard-imx6 => phytec-som-imx6/defaultenv-physom-imx6}/nv/boot.default (100%)
 rename arch/arm/boards/{phytec-phycard-imx6 => phytec-som-imx6}/flash-header-phytec-pcaaxl3-1gib-1bank.imxcfg (100%)
 rename arch/arm/boards/{phytec-phycard-imx6 => phytec-som-imx6}/flash-header-phytec-pcaaxl3-1gib.imxcfg (100%)
 rename arch/arm/boards/{phytec-phycard-imx6 => phytec-som-imx6}/flash-header-phytec-pcaaxl3-2gib.imxcfg (100%)
 rename arch/arm/boards/{phytec-phycard-imx6 => phytec-som-imx6}/flash-header-phytec-pcaaxl3.h (100%)
 rename arch/arm/boards/{phytec-phyflex-imx6 => phytec-som-imx6}/flash-header-phytec-pfla02-1gib-1bank.imxcfg (100%)
 rename arch/arm/boards/{phytec-phyflex-imx6 => phytec-som-imx6}/flash-header-phytec-pfla02-1gib.imxcfg (100%)
 rename arch/arm/boards/{phytec-phyflex-imx6 => phytec-som-imx6}/flash-header-phytec-pfla02-2gib.imxcfg (100%)
 rename arch/arm/boards/{phytec-phyflex-imx6 => phytec-som-imx6}/flash-header-phytec-pfla02-4gib.imxcfg (100%)
 rename arch/arm/boards/{phytec-phyflex-imx6 => phytec-som-imx6}/flash-header-phytec-pfla02.h (100%)
 rename arch/arm/boards/{phytec-phyflex-imx6 => phytec-som-imx6}/flash-header-phytec-pfla02dl-1gib.imxcfg (100%)
 rename arch/arm/boards/{phytec-phyflex-imx6 => phytec-som-imx6}/flash-header-phytec-pfla02dl.h (100%)
 rename arch/arm/boards/{phytec-phyflex-imx6 => phytec-som-imx6}/flash-header-phytec-pfla02s-512mb.imxcfg (100%)
 rename arch/arm/boards/{phytec-phyflex-imx6 => phytec-som-imx6}/lowlevel.c (76%)

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index 013229d..d587169 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -79,13 +79,12 @@ obj-$(CONFIG_MACH_PANDA)			+= panda/
 obj-$(CONFIG_MACH_PCA100)			+= phytec-phycard-imx27/
 obj-$(CONFIG_MACH_PCAAL1)			+= phytec-phycard-omap3/
 obj-$(CONFIG_MACH_PCAAXL2)			+= phytec-phycard-omap4/
-obj-$(CONFIG_MACH_PCAAXL3)			+= phytec-phycard-imx6/
 obj-$(CONFIG_MACH_PCM037)			+= phytec-phycore-imx31/
 obj-$(CONFIG_MACH_PCM038)			+= phytec-phycore-imx27/
 obj-$(CONFIG_MACH_PCM043)			+= phytec-phycore-imx35/
 obj-$(CONFIG_MACH_PCM049)			+= phytec-phycore-omap4460/
 obj-$(CONFIG_MACH_PHYTEC_SOM_AM335X)		+= phytec-som-am335x/
-obj-$(CONFIG_MACH_PHYTEC_PFLA02)		+= phytec-phyflex-imx6/
+obj-$(CONFIG_MACH_PHYTEC_SOM_IMX6)		+= phytec-som-imx6/
 obj-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_AX3)	+= plathome-openblocks-ax3/
 obj-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_A6)	+= plathome-openblocks-a6/
 obj-$(CONFIG_MACH_PM9261)			+= pm9261/
diff --git a/arch/arm/boards/phytec-phycard-imx6/board.c b/arch/arm/boards/phytec-phycard-imx6/board.c
deleted file mode 100644
index 84224b3..0000000
--- a/arch/arm/boards/phytec-phycard-imx6/board.c
+++ /dev/null
@@ -1,52 +0,0 @@
-/*
- * Copyright (C) 2014 Christian Hemp, Phytec Messtechnik GmbH
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
- * Foundation.
- *
- */
-
-#include <envfs.h>
-#include <environment.h>
-#include <bootsource.h>
-#include <common.h>
-#include <gpio.h>
-#include <init.h>
-#include <of.h>
-
-#include <mach/bbu.h>
-#include <mach/imx6.h>
-
-static int phytec_pcaaxl3_init(void)
-{
-	if (!of_machine_is_compatible("phytec,imx6q-pcaaxl3"))
-		return 0;
-
-	switch (bootsource_get()) {
-	case BOOTSOURCE_MMC:
-		of_device_enable_path("/chosen/environment-sd3");
-		break;
-	default:
-	case BOOTSOURCE_NAND:
-		of_device_enable_path("/chosen/environment-nand");
-		break;
-	}
-
-	imx6_bbu_nand_register_handler("nand", BBU_HANDLER_FLAG_DEFAULT);
-
-	defaultenv_append_directory(defaultenv_phycard_imx6);
-
-	return 0;
-}
-device_initcall(phytec_pcaaxl3_init);
diff --git a/arch/arm/boards/phytec-phycard-imx6/defaultenv-phycard-imx6/boot/nand b/arch/arm/boards/phytec-phycard-imx6/defaultenv-phycard-imx6/boot/nand
deleted file mode 100644
index 3f3a9aa..0000000
--- a/arch/arm/boards/phytec-phycard-imx6/defaultenv-phycard-imx6/boot/nand
+++ /dev/null
@@ -1,7 +0,0 @@
-#!/bin/sh
-
-global.bootm.image="/dev/nand0.kernel.bb"
-global.bootm.oftree="/dev/nand0.oftree.bb"
-bootargs-ip
-global.linux.bootargs.dyn.root="root=ubi0:root ubi.mtd=root rootfstype=ubifs rw"
-
diff --git a/arch/arm/boards/phytec-phycard-imx6/defaultenv-phycard-imx6/nv/hostname b/arch/arm/boards/phytec-phycard-imx6/defaultenv-phycard-imx6/nv/hostname
deleted file mode 100644
index 47b16cc..0000000
--- a/arch/arm/boards/phytec-phycard-imx6/defaultenv-phycard-imx6/nv/hostname
+++ /dev/null
@@ -1 +0,0 @@
-phyCARD-i.MX6
diff --git a/arch/arm/boards/phytec-phycard-imx6/lowlevel.c b/arch/arm/boards/phytec-phycard-imx6/lowlevel.c
deleted file mode 100644
index 09ab645..0000000
--- a/arch/arm/boards/phytec-phycard-imx6/lowlevel.c
+++ /dev/null
@@ -1,69 +0,0 @@
-/*
- * Copyright (C) 2014 Christian Hemp <c.hemp@phytec.de>
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
-#include <debug_ll.h>
-#include <common.h>
-#include <linux/sizes.h>
-#include <io.h>
-#include <asm/barebox-arm-head.h>
-#include <asm/barebox-arm.h>
-#include <asm/sections.h>
-#include <asm/cache.h>
-#include <asm/mmu.h>
-#include <mach/imx6.h>
-
-static inline void setup_uart(void)
-{
-	void __iomem *iomuxbase = IOMEM(MX6_IOMUXC_BASE_ADDR);
-
-	writel(0x4, iomuxbase + 0x01f8);
-
-	imx6_ungate_all_peripherals();
-	imx6_uart_setup_ll();
-
-	putc_ll('>');
-}
-
-extern char __dtb_imx6q_phytec_pbaa03_start[];
-
-static void __noreturn start_imx6q_phytec_pbaa03_common(uint32_t size)
-{
-	void *fdt;
-
-	imx6_cpu_lowlevel_init();
-
-	arm_setup_stack(0x00920000 - 8);
-
-	if (IS_ENABLED(CONFIG_DEBUG_LL))
-		setup_uart();
-
-	fdt = __dtb_imx6q_phytec_pbaa03_start - get_runtime_offset();
-
-	barebox_arm_entry(0x10000000, size, fdt);
-}
-
-ENTRY_FUNCTION(start_phytec_pbaa03_1gib, r0, r1, r2)
-{
-	start_imx6q_phytec_pbaa03_common(SZ_1G);
-}
-
-ENTRY_FUNCTION(start_phytec_pbaa03_1gib_1bank, r0, r1, r2)
-{
-	start_imx6q_phytec_pbaa03_common(SZ_1G);
-}
-
-ENTRY_FUNCTION(start_phytec_pbaa03_2gib, r0, r1, r2)
-{
-	start_imx6q_phytec_pbaa03_common(SZ_2G);
-}
diff --git a/arch/arm/boards/phytec-phyflex-imx6/Makefile b/arch/arm/boards/phytec-phyflex-imx6/Makefile
deleted file mode 100644
index 11e1c7d..0000000
--- a/arch/arm/boards/phytec-phyflex-imx6/Makefile
+++ /dev/null
@@ -1,3 +0,0 @@
-obj-y += board.o
-lwl-y += lowlevel.o
-bbenv-y += defaultenv-phyflex-imx6
diff --git a/arch/arm/boards/phytec-phyflex-imx6/defaultenv-phyflex-imx6/boot/sd-ext3 b/arch/arm/boards/phytec-phyflex-imx6/defaultenv-phyflex-imx6/boot/sd-ext3
deleted file mode 100644
index fd35fe0..0000000
--- a/arch/arm/boards/phytec-phyflex-imx6/defaultenv-phyflex-imx6/boot/sd-ext3
+++ /dev/null
@@ -1,6 +0,0 @@
-#!/bin/sh
-
-global.bootm.image="/mnt/mmc/linuximage"
-global.bootm.oftree="/mnt/mmc/oftree"
-bootargs-ip
-global.linux.bootargs.dyn.root="root=/dev/mmcblk0p2 rootfstype=ext3 rootwait rw"
diff --git a/arch/arm/boards/phytec-phyflex-imx6/defaultenv-phyflex-imx6/init/automount b/arch/arm/boards/phytec-phyflex-imx6/defaultenv-phyflex-imx6/init/automount
deleted file mode 100644
index 49d99bd..0000000
--- a/arch/arm/boards/phytec-phyflex-imx6/defaultenv-phyflex-imx6/init/automount
+++ /dev/null
@@ -1,14 +0,0 @@
-#!/bin/sh
-
-if [ "$1" = menu ]; then
-	init-menu-add-entry "$0" "Automountpoints"
-	exit
-fi
-
-# automount tftp server based on $eth0.serverip
-
-mkdir -p /mnt/tftp
-automount /mnt/tftp 'ifup eth0 && mount -t tftp $eth0.serverip /mnt/tftp'
-
-mkdir -p /mnt/mmc
-automount -d /mnt/mmc 'mmc2.probe=1 && [ -e /dev/mmc2.0 ] && mount /dev/mmc2.0 /mnt/mmc'
diff --git a/arch/arm/boards/phytec-phyflex-imx6/defaultenv-phyflex-imx6/nv/boot.default b/arch/arm/boards/phytec-phyflex-imx6/defaultenv-phyflex-imx6/nv/boot.default
deleted file mode 100644
index 026a25c..0000000
--- a/arch/arm/boards/phytec-phyflex-imx6/defaultenv-phyflex-imx6/nv/boot.default
+++ /dev/null
@@ -1 +0,0 @@
-nand
diff --git a/arch/arm/boards/phytec-phyflex-imx6/defaultenv-phyflex-imx6/nv/hostname b/arch/arm/boards/phytec-phyflex-imx6/defaultenv-phyflex-imx6/nv/hostname
deleted file mode 100644
index 192f6b4..0000000
--- a/arch/arm/boards/phytec-phyflex-imx6/defaultenv-phyflex-imx6/nv/hostname
+++ /dev/null
@@ -1 +0,0 @@
-phyFLEX-i.MX6
diff --git a/arch/arm/boards/phytec-phycard-imx6/Makefile b/arch/arm/boards/phytec-som-imx6/Makefile
similarity index 51%
rename from arch/arm/boards/phytec-phycard-imx6/Makefile
rename to arch/arm/boards/phytec-som-imx6/Makefile
index de67f04..7e385c2 100644
--- a/arch/arm/boards/phytec-phycard-imx6/Makefile
+++ b/arch/arm/boards/phytec-som-imx6/Makefile
@@ -1,3 +1,3 @@
 obj-y += board.o
 lwl-y += lowlevel.o
-bbenv-y += defaultenv-phycard-imx6
+bbenv-y += defaultenv-physom-imx6
diff --git a/arch/arm/boards/phytec-phyflex-imx6/board.c b/arch/arm/boards/phytec-som-imx6/board.c
similarity index 69%
rename from arch/arm/boards/phytec-phyflex-imx6/board.c
rename to arch/arm/boards/phytec-som-imx6/board.c
index d3100c8..2afe685 100644
--- a/arch/arm/boards/phytec-phyflex-imx6/board.c
+++ b/arch/arm/boards/phytec-som-imx6/board.c
@@ -1,5 +1,7 @@
 /*
  * Copyright (C) 2013 Sascha Hauer, Pengutronix
+ * Copyright (C) 2015 PHYTEC Messtechnik GmbH,
+ * Author: Stefan Christ <s.christ@phytec.de>
  *
  * This program is free software; you can redistribute it and/or
  * modify it under the terms of the GNU General Public License as
@@ -16,7 +18,7 @@
  * Foundation.
  *
  */
-#define pr_fmt(fmt) "phyFLEX-i.MX6: " fmt
+#define pr_fmt(fmt) "phySOM-i.MX6: " fmt
 
 #include <malloc.h>
 #include <envfs.h>
@@ -83,24 +85,34 @@ static unsigned int get_module_rev(void)
 	return 16 - val;
 }
 
-static int phytec_pfla02_init(void)
+static int physom_imx6_devices_init(void)
 {
 	int ret;
-	char *environment_path, *envdev;
+	char *environment_path, *default_environment_path;
+	char *envdev, *default_envdev;
 
-	if (!of_machine_is_compatible("phytec,imx6q-pfla02") &&
-			!of_machine_is_compatible("phytec,imx6dl-pfla02") &&
-			!of_machine_is_compatible("phytec,imx6s-pfla02"))
-		return 0;
+	if (of_machine_is_compatible("phytec,imx6q-pfla02")
+		|| of_machine_is_compatible("phytec,imx6dl-pfla02")
+		|| of_machine_is_compatible("phytec,imx6s-pfla02")) {
 
-	phyflex_err006282_workaround();
+		phyflex_err006282_workaround();
 
-	imx6_bbu_nand_register_handler("nand", BBU_HANDLER_FLAG_DEFAULT);
+		pfla02_module_revision = get_module_rev();
+		globalvar_add_simple_int("board.revision", &pfla02_module_revision, "%u");
+		pr_info("Module Revision: %u\n", pfla02_module_revision);
+
+		barebox_set_hostname("phyFLEX-i.MX6");
+		default_environment_path = "/chosen/environment-spinor";
+		default_envdev = "SPI NOR flash";
+
+	} else if (of_machine_is_compatible("phytec,imx6q-pcaaxl3")) {
 
-	pfla02_module_revision = get_module_rev();
-	globalvar_add_simple_int("board.revision", &pfla02_module_revision, "%u");
+		barebox_set_hostname("phyCARD-i.MX6");
+		default_environment_path = "/chosen/environment-nand";
+		default_envdev = "NAND flash";
 
-	pr_info("Module Revision: %u\n", pfla02_module_revision);
+	} else
+		return 0;
 
 	switch (bootsource_get()) {
 	case BOOTSOURCE_MMC:
@@ -112,35 +124,30 @@ static int phytec_pfla02_init(void)
 		environment_path = asprintf("/chosen/environment-nand");
 		envdev = "NAND flash";
 		break;
-	default:
 	case BOOTSOURCE_SPI:
 		environment_path = asprintf("/chosen/environment-spinor");
 		envdev = "SPI NOR flash";
 		break;
+	default:
+		environment_path = asprintf(default_environment_path);
+		envdev = default_envdev;
+		break;
 	}
 
-	ret = of_device_enable_path(environment_path);
-	if (ret < 0)
-		pr_warn("Failed to enable environment partition '%s' (%d)\n",
-			environment_path, ret);
-
-	free(environment_path);
+	if (environment_path) {
+		ret = of_device_enable_path(environment_path);
+		if (ret < 0)
+			pr_warn("Failed to enable environment partition '%s' (%d)\n",
+				environment_path, ret);
+		free(environment_path);
+	}
 
 	pr_notice("Using environment in %s\n", envdev);
 
-	return 0;
-}
-device_initcall(phytec_pfla02_init);
-
-static int phytec_pbab0x_init(void)
-{
-	if (!of_machine_is_compatible("phytec,imx6x-pbab01") &&
-		!of_machine_is_compatible("phytec,imx6dl-pbab05") &&
-		!of_machine_is_compatible("phytec,imx6q-pbab02"))
-		return 0;
+	imx6_bbu_nand_register_handler("nand", BBU_HANDLER_FLAG_DEFAULT);
 
-	defaultenv_append_directory(defaultenv_phyflex_imx6);
+	defaultenv_append_directory(defaultenv_physom_imx6);
 
 	return 0;
 }
-device_initcall(phytec_pbab0x_init);
+device_initcall(physom_imx6_devices_init);
diff --git a/arch/arm/boards/phytec-phyflex-imx6/defaultenv-phyflex-imx6/boot/nand b/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6/boot/nand
similarity index 100%
rename from arch/arm/boards/phytec-phyflex-imx6/defaultenv-phyflex-imx6/boot/nand
rename to arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6/boot/nand
diff --git a/arch/arm/boards/phytec-phycard-imx6/defaultenv-phycard-imx6/boot/sd-ext3 b/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6/boot/sd-ext3
similarity index 100%
rename from arch/arm/boards/phytec-phycard-imx6/defaultenv-phycard-imx6/boot/sd-ext3
rename to arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6/boot/sd-ext3
diff --git a/arch/arm/boards/phytec-phycard-imx6/defaultenv-phycard-imx6/init/automount b/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6/init/automount
similarity index 100%
rename from arch/arm/boards/phytec-phycard-imx6/defaultenv-phycard-imx6/init/automount
rename to arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6/init/automount
diff --git a/arch/arm/boards/phytec-phycard-imx6/defaultenv-phycard-imx6/nv/boot.default b/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6/nv/boot.default
similarity index 100%
rename from arch/arm/boards/phytec-phycard-imx6/defaultenv-phycard-imx6/nv/boot.default
rename to arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6/nv/boot.default
diff --git a/arch/arm/boards/phytec-phycard-imx6/flash-header-phytec-pcaaxl3-1gib-1bank.imxcfg b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcaaxl3-1gib-1bank.imxcfg
similarity index 100%
rename from arch/arm/boards/phytec-phycard-imx6/flash-header-phytec-pcaaxl3-1gib-1bank.imxcfg
rename to arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcaaxl3-1gib-1bank.imxcfg
diff --git a/arch/arm/boards/phytec-phycard-imx6/flash-header-phytec-pcaaxl3-1gib.imxcfg b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcaaxl3-1gib.imxcfg
similarity index 100%
rename from arch/arm/boards/phytec-phycard-imx6/flash-header-phytec-pcaaxl3-1gib.imxcfg
rename to arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcaaxl3-1gib.imxcfg
diff --git a/arch/arm/boards/phytec-phycard-imx6/flash-header-phytec-pcaaxl3-2gib.imxcfg b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcaaxl3-2gib.imxcfg
similarity index 100%
rename from arch/arm/boards/phytec-phycard-imx6/flash-header-phytec-pcaaxl3-2gib.imxcfg
rename to arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcaaxl3-2gib.imxcfg
diff --git a/arch/arm/boards/phytec-phycard-imx6/flash-header-phytec-pcaaxl3.h b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcaaxl3.h
similarity index 100%
rename from arch/arm/boards/phytec-phycard-imx6/flash-header-phytec-pcaaxl3.h
rename to arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcaaxl3.h
diff --git a/arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02-1gib-1bank.imxcfg b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02-1gib-1bank.imxcfg
similarity index 100%
rename from arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02-1gib-1bank.imxcfg
rename to arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02-1gib-1bank.imxcfg
diff --git a/arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02-1gib.imxcfg b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02-1gib.imxcfg
similarity index 100%
rename from arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02-1gib.imxcfg
rename to arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02-1gib.imxcfg
diff --git a/arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02-2gib.imxcfg b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02-2gib.imxcfg
similarity index 100%
rename from arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02-2gib.imxcfg
rename to arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02-2gib.imxcfg
diff --git a/arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02-4gib.imxcfg b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02-4gib.imxcfg
similarity index 100%
rename from arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02-4gib.imxcfg
rename to arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02-4gib.imxcfg
diff --git a/arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02.h b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02.h
similarity index 100%
rename from arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02.h
rename to arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02.h
diff --git a/arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02dl-1gib.imxcfg b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02dl-1gib.imxcfg
similarity index 100%
rename from arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02dl-1gib.imxcfg
rename to arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02dl-1gib.imxcfg
diff --git a/arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02dl.h b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02dl.h
similarity index 100%
rename from arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02dl.h
rename to arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02dl.h
diff --git a/arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02s-512mb.imxcfg b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02s-512mb.imxcfg
similarity index 100%
rename from arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02s-512mb.imxcfg
rename to arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02s-512mb.imxcfg
diff --git a/arch/arm/boards/phytec-phyflex-imx6/lowlevel.c b/arch/arm/boards/phytec-som-imx6/lowlevel.c
similarity index 76%
rename from arch/arm/boards/phytec-phyflex-imx6/lowlevel.c
rename to arch/arm/boards/phytec-som-imx6/lowlevel.c
index 82c0244..a3d375e 100644
--- a/arch/arm/boards/phytec-phyflex-imx6/lowlevel.c
+++ b/arch/arm/boards/phytec-som-imx6/lowlevel.c
@@ -1,5 +1,7 @@
 /*
  * Copyright (C) 2013 Sascha Hauer <s.hauer@pengutronix.de>
+ * Copyright (C) 2015 PHYTEC Messtechnik GmbH,
+ * Author: Stefan Christ <s.christ@phytec.de>
  *
  * This program is free software; you can redistribute it and/or
  * modify it under the terms of the GNU General Public License as
@@ -38,10 +40,10 @@ static inline void setup_uart(void)
 
 #define SZ_4G 0xEFFFFFF8
 
-BAREBOX_IMD_TAG_STRING(phyflex_mx6_memsize_SZ_512M, IMD_TYPE_PARAMETER, "memsize=512", 0);
-BAREBOX_IMD_TAG_STRING(phyflex_mx6_memsize_SZ_1G, IMD_TYPE_PARAMETER, "memsize=1024", 0);
-BAREBOX_IMD_TAG_STRING(phyflex_mx6_memsize_SZ_2G, IMD_TYPE_PARAMETER, "memsize=2048", 0);
-BAREBOX_IMD_TAG_STRING(phyflex_mx6_memsize_SZ_4G, IMD_TYPE_PARAMETER, "memsize=4096", 0);
+BAREBOX_IMD_TAG_STRING(physom_mx6_memsize_SZ_512M, IMD_TYPE_PARAMETER, "memsize=512", 0);
+BAREBOX_IMD_TAG_STRING(physom_mx6_memsize_SZ_1G, IMD_TYPE_PARAMETER, "memsize=1024", 0);
+BAREBOX_IMD_TAG_STRING(physom_mx6_memsize_SZ_2G, IMD_TYPE_PARAMETER, "memsize=2048", 0);
+BAREBOX_IMD_TAG_STRING(physom_mx6_memsize_SZ_4G, IMD_TYPE_PARAMETER, "memsize=4096", 0);
 
 static void __noreturn start_imx6_phytec_common(uint32_t size,
 						bool do_early_uart_config,
@@ -65,12 +67,16 @@ static void __noreturn start_imx6_phytec_common(uint32_t size,
 	{								\
 		extern char __dtb_##fdt_name##_start[];			\
 									\
-		IMD_USED(phyflex_mx6_memsize_##memory_size);		\
+		IMD_USED(physom_mx6_memsize_##memory_size);		\
 									\
 		start_imx6_phytec_common(memory_size, do_early_uart_config, \
 					 __dtb_##fdt_name##_start);	\
 	}
 
+PHYTEC_ENTRY(start_phytec_pbaa03_1gib, imx6q_phytec_pbaa03, SZ_1G, true);
+PHYTEC_ENTRY(start_phytec_pbaa03_1gib_1bank, imx6q_phytec_pbaa03, SZ_1G, true);
+PHYTEC_ENTRY(start_phytec_pbaa03_2gib, imx6q_phytec_pbaa03, SZ_2G, true);
+
 PHYTEC_ENTRY(start_phytec_pbab01_1gib, imx6q_phytec_pbab01, SZ_1G, true);
 PHYTEC_ENTRY(start_phytec_pbab01_1gib_1bank, imx6q_phytec_pbab01, SZ_1G, true);
 PHYTEC_ENTRY(start_phytec_pbab01_2gib, imx6q_phytec_pbab01, SZ_2G, true);
diff --git a/arch/arm/configs/imx_v7_defconfig b/arch/arm/configs/imx_v7_defconfig
index ec91460..27dea1a 100644
--- a/arch/arm/configs/imx_v7_defconfig
+++ b/arch/arm/configs/imx_v7_defconfig
@@ -6,8 +6,7 @@ CONFIG_MACH_FREESCALE_MX51_PDK=y
 CONFIG_MACH_FREESCALE_MX53_LOCO=y
 CONFIG_MACH_TQMA53=y
 CONFIG_MACH_FREESCALE_MX53_VMX53=y
-CONFIG_MACH_PCAAXL3=y
-CONFIG_MACH_PHYTEC_PFLA02=y
+CONFIG_MACH_PHYTEC_SOM_IMX6=y
 CONFIG_MACH_DFI_FS700_M60=y
 CONFIG_MACH_GUF_SANTARO=y
 CONFIG_MACH_REALQ7=y
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 60880e4..1a9e85f 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -31,7 +31,6 @@ pbl-dtb-$(CONFIG_MACH_NITROGEN6X) += imx6q-nitrogen6x.dtb.o imx6dl-nitrogen6x.dt
 pbl-dtb-$(CONFIG_MACH_NVIDIA_BEAVER) += tegra30-beaver.dtb.o
 pbl-dtb-$(CONFIG_MACH_NVIDIA_JETSON) += tegra124-jetson-tk1.dtb.o
 pbl-dtb-$(CONFIG_MACH_PCA100) += imx27-phytec-phycard-s-rdk-bb.dtb.o
-pbl-dtb-$(CONFIG_MACH_PCAAXL3) += imx6q-phytec-pbaa03.dtb.o
 pbl-dtb-$(CONFIG_MACH_PCM038) += imx27-phytec-phycore-rdk.dtb.o
 pbl-dtb-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += am335x-phytec-phyflex-som.dtb.o am335x-phytec-phyflex-som-mlo.dtb.o \
 	am335x-phytec-phyflex-som-no-spi.dtb.o am335x-phytec-phyflex-som-no-eeprom.dtb.o \
@@ -39,7 +38,12 @@ pbl-dtb-$(CONFIG_MACH_PHYTEC_SOM_AM335X) += am335x-phytec-phyflex-som.dtb.o am33
 	am335x-phytec-phycore-som.dtb.o am335x-phytec-phycore-som-no-spi.dtb.o am335x-phytec-phycore-som-mlo.dtb.o \
 	am335x-phytec-phycore-som-no-eeprom.dtb.o am335x-phytec-phycore-som-no-spi-no-eeprom.dtb.o \
 	am335x-phytec-phycard-som.dtb.o am335x-phytec-phycard-som-mlo.dtb.o
-pbl-dtb-$(CONFIG_MACH_PHYTEC_PFLA02) += imx6s-phytec-pbab01.dtb.o imx6dl-phytec-pbab01.dtb.o imx6q-phytec-pbab01.dtb.o imx6q-phytec-phyboard-alcor.dtb.o imx6dl-phytec-phyboard-subra.dtb.o
+pbl-dtb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += imx6q-phytec-pbaa03.dtb.o \
+				imx6s-phytec-pbab01.dtb.o \
+				imx6dl-phytec-pbab01.dtb.o \
+				imx6q-phytec-pbab01.dtb.o \
+				imx6q-phytec-phyboard-alcor.dtb.o \
+				imx6dl-phytec-phyboard-subra.dtb.o
 pbl-dtb-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_AX3) += armada-xp-openblocks-ax3-4-bb.dtb.o
 pbl-dtb-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_A6) += kirkwood-openblocks_a6-bb.dtb.o
 pbl-dtb-$(CONFIG_MACH_RADXA_ROCK) += rk3188-radxarock.dtb.o
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index f2dc52d..82e4e9d 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -34,11 +34,10 @@ config ARCH_TEXT_BASE
 	default 0x4fc00000 if MACH_REALQ7
 	default 0x4fc00000 if MACH_GK802
 	default 0x2fc00000 if MACH_TQMA6X
-	default 0x4fc00000 if MACH_PHYTEC_PFLA02
 	default 0x4fc00000 if MACH_DFI_FS700_M60
 	default 0x4fc00000 if MACH_UDOO
 	default 0x4fc00000 if MACH_VARISCITE_MX6
-	default 0x4fc00000 if MACH_PCAAXL3
+	default 0x4fc00000 if MACH_PHYTEC_SOM_IMX6
 
 config ARCH_IMX_INTERNAL_BOOT
 	bool "support internal boot mode"
@@ -268,14 +267,10 @@ config MACH_FREESCALE_MX53_VMX53
 	  Say Y here if you are using the Voipac Technologies X53-DMM-668
 	  module equipped with a Freescale i.MX53 Processor
 
-config MACH_PCAAXL3
-        bool "Phytec phyCARD-i.MX6 Quad"
+config MACH_PHYTEC_SOM_IMX6
+        bool "Phytec phyCARD-i.MX6 and phyFLEX-i.MX6"
         select ARCH_IMX6
 
-config MACH_PHYTEC_PFLA02
-	bool "Phytec phyFLEX-i.MX6"
-	select ARCH_IMX6
-
 config MACH_DFI_FS700_M60
 	bool "DFI i.MX6 FS700 M60 Q7 Board"
 	select ARCH_IMX6
diff --git a/images/Makefile.imx b/images/Makefile.imx
index c33b153..af66df1 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -127,45 +127,45 @@ CFG_start_imx6q_mba6x.pblx.imximg = $(board)/tqma6x/flash-header-tqma6q.imxcfg
 FILE_barebox-tq-tqma6q-mba6x.img = start_imx6q_mba6x.pblx.imximg
 image-$(CONFIG_MACH_TQMA6X) += barebox-tq-tqma6q-mba6x.img
 
-pblx-$(CONFIG_MACH_PHYTEC_PFLA02) += start_phytec_pbab01_4gib
-CFG_start_phytec_pbab01_4gib.pblx.imximg = $(board)/phytec-phyflex-imx6/flash-header-phytec-pfla02-4gib.imxcfg
+pblx-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_pbab01_4gib
+CFG_start_phytec_pbab01_4gib.pblx.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pfla02-4gib.imxcfg
 FILE_barebox-phytec-pbab01-4gib.img = start_phytec_pbab01_4gib.pblx.imximg
-image-$(CONFIG_MACH_PHYTEC_PFLA02) += barebox-phytec-pbab01-4gib.img
+image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-pbab01-4gib.img
 
-pblx-$(CONFIG_MACH_PHYTEC_PFLA02) += start_phytec_pbab01_2gib
-CFG_start_phytec_pbab01_2gib.pblx.imximg = $(board)/phytec-phyflex-imx6/flash-header-phytec-pfla02-2gib.imxcfg
+pblx-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_pbab01_2gib
+CFG_start_phytec_pbab01_2gib.pblx.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pfla02-2gib.imxcfg
 FILE_barebox-phytec-pbab01-2gib.img = start_phytec_pbab01_2gib.pblx.imximg
-image-$(CONFIG_MACH_PHYTEC_PFLA02) += barebox-phytec-pbab01-2gib.img
+image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-pbab01-2gib.img
 
-pblx-$(CONFIG_MACH_PHYTEC_PFLA02) += start_phytec_pbab01_1gib
-CFG_start_phytec_pbab01_1gib.pblx.imximg = $(board)/phytec-phyflex-imx6/flash-header-phytec-pfla02-1gib.imxcfg
+pblx-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_pbab01_1gib
+CFG_start_phytec_pbab01_1gib.pblx.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pfla02-1gib.imxcfg
 FILE_barebox-phytec-pbab01-1gib.img = start_phytec_pbab01_1gib.pblx.imximg
-image-$(CONFIG_MACH_PHYTEC_PFLA02) += barebox-phytec-pbab01-1gib.img
+image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-pbab01-1gib.img
 
-pblx-$(CONFIG_MACH_PHYTEC_PFLA02) += start_phytec_pbab01_1gib_1bank
-CFG_start_phytec_pbab01_1gib_1bank.pblx.imximg = $(board)/phytec-phyflex-imx6/flash-header-phytec-pfla02-1gib-1bank.imxcfg
+pblx-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_pbab01_1gib_1bank
+CFG_start_phytec_pbab01_1gib_1bank.pblx.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pfla02-1gib-1bank.imxcfg
 FILE_barebox-phytec-pbab01-1gib-1bank.img = start_phytec_pbab01_1gib_1bank.pblx.imximg
-image-$(CONFIG_MACH_PHYTEC_PFLA02) += barebox-phytec-pbab01-1gib-1bank.img
+image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-pbab01-1gib-1bank.img
 
-pblx-$(CONFIG_MACH_PHYTEC_PFLA02) += start_phytec_pbab01dl_1gib
-CFG_start_phytec_pbab01dl_1gib.pblx.imximg = $(board)/phytec-phyflex-imx6/flash-header-phytec-pfla02dl-1gib.imxcfg
+pblx-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_pbab01dl_1gib
+CFG_start_phytec_pbab01dl_1gib.pblx.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pfla02dl-1gib.imxcfg
 FILE_barebox-phytec-pbab01dl-1gib.img = start_phytec_pbab01dl_1gib.pblx.imximg
-image-$(CONFIG_MACH_PHYTEC_PFLA02) += barebox-phytec-pbab01dl-1gib.img
+image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-pbab01dl-1gib.img
 
-pblx-$(CONFIG_MACH_PHYTEC_PFLA02) += start_phytec_pbab01s_512mb
-CFG_start_phytec_pbab01s_512mb.pblx.imximg = $(board)/phytec-phyflex-imx6/flash-header-phytec-pfla02s-512mb.imxcfg
+pblx-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_pbab01s_512mb
+CFG_start_phytec_pbab01s_512mb.pblx.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pfla02s-512mb.imxcfg
 FILE_barebox-phytec-pbab01s-512mb.img = start_phytec_pbab01s_512mb.pblx.imximg
-image-$(CONFIG_MACH_PHYTEC_PFLA02) += barebox-phytec-pbab01s-512mb.img
+image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-pbab01s-512mb.img
 
-pblx-$(CONFIG_MACH_PHYTEC_PFLA02) += start_phytec_phyboard_alcor_1gib
-CFG_start_phytec_phyboard_alcor_1gib.pblx.imximg = $(board)/phytec-phyflex-imx6/flash-header-phytec-pfla02-1gib.imxcfg
+pblx-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_phyboard_alcor_1gib
+CFG_start_phytec_phyboard_alcor_1gib.pblx.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pfla02-1gib.imxcfg
 FILE_barebox-phytec-phyboard-alcor-1gib.img = start_phytec_phyboard_alcor_1gib.pblx.imximg
-image-$(CONFIG_MACH_PHYTEC_PFLA02) += barebox-phytec-phyboard-alcor-1gib.img
+image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phyboard-alcor-1gib.img
 
-pblx-$(CONFIG_MACH_PHYTEC_PFLA02) += start_phytec_phyboard_subra_512mb
-CFG_start_phytec_phyboard_subra_512mb.pblx.imximg = $(board)/phytec-phyflex-imx6/flash-header-phytec-pfla02s-512mb.imxcfg
+pblx-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_phyboard_subra_512mb
+CFG_start_phytec_phyboard_subra_512mb.pblx.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pfla02s-512mb.imxcfg
 FILE_barebox-phytec-phyboard-subra-512mb.img = start_phytec_phyboard_subra_512mb.pblx.imximg
-image-$(CONFIG_MACH_PHYTEC_PFLA02) += barebox-phytec-phyboard-subra-512mb.img
+image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phyboard-subra-512mb.img
 
 pblx-$(CONFIG_MACH_DFI_FS700_M60) += start_imx6dl_dfi_fs700_m60_6s
 CFG_start_imx6dl_dfi_fs700_m60_6s.pblx.imximg = $(board)/dfi-fs700-m60/flash-header-fs700-m60-6s.imxcfg
@@ -262,20 +262,20 @@ CFG_start_imx6s_riotboard.pblx.imximg = $(board)/embest-riotboard/flash-header-e
 FILE_barebox-embest-imx6s-riotboard.img = start_imx6s_riotboard.pblx.imximg
 image-$(CONFIG_MACH_EMBEST_RIOTBOARD) += barebox-embest-imx6s-riotboard.img
 
-pblx-$(CONFIG_MACH_PCAAXL3) += start_phytec_pbaa03_1gib
-CFG_start_phytec_pbaa03_1gib.pblx.imximg = $(board)/phytec-phycard-imx6/flash-header-phytec-pcaaxl3-1gib.imxcfg
+pblx-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_pbaa03_1gib
+CFG_start_phytec_pbaa03_1gib.pblx.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pcaaxl3-1gib.imxcfg
 FILE_barebox-phytec-pbaa03-1gib.img = start_phytec_pbaa03_1gib.pblx.imximg
-image-$(CONFIG_MACH_PCAAXL3) += barebox-phytec-pbaa03-1gib.img
+image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-pbaa03-1gib.img
 
-pblx-$(CONFIG_MACH_PCAAXL3) += start_phytec_pbaa03_1gib_1bank
-CFG_start_phytec_pbaa03_1gib_1bank.pblx.imximg = $(board)/phytec-phycard-imx6/flash-header-phytec-pcaaxl3-1gib-1bank.imxcfg
+pblx-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_pbaa03_1gib_1bank
+CFG_start_phytec_pbaa03_1gib_1bank.pblx.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pcaaxl3-1gib-1bank.imxcfg
 FILE_barebox-phytec-pbaa03-1gib-1bank.img = start_phytec_pbaa03_1gib_1bank.pblx.imximg
-image-$(CONFIG_MACH_PCAAXL3) += barebox-phytec-pbaa03-1gib-1bank.img
+image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-pbaa03-1gib-1bank.img
 
-pblx-$(CONFIG_MACH_PCAAXL3) += start_phytec_pbaa03_2gib
-CFG_start_phytec_pbaa03_2gib.pblx.imximg = $(board)/phytec-phycard-imx6/flash-header-phytec-pcaaxl3-2gib.imxcfg
+pblx-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_pbaa03_2gib
+CFG_start_phytec_pbaa03_2gib.pblx.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pcaaxl3-2gib.imxcfg
 FILE_barebox-phytec-pbaa03-2gib.img = start_phytec_pbaa03_2gib.pblx.imximg
-image-$(CONFIG_MACH_PCAAXL3) += barebox-phytec-pbaa03-2gib.img
+image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-pbaa03-2gib.img
 
 pblx-$(CONFIG_MACH_GW_VENTANA) += start_imx6q_gw54xx_1gx64
 CFG_start_imx6q_gw54xx_1gx64.pblx.imximg = $(board)/gateworks-ventana/flash-header-ventana-quad-1gx64.imxcfg
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

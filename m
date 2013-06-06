Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ukb5t-00029f-In
 for barebox@lists.infradead.org; Thu, 06 Jun 2013 14:23:15 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  6 Jun 2013 16:22:53 +0200
Message-Id: <1370528574-27107-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] ARM: i.MX6 RealQ7: switch to imximage
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/dmo-mx6-realq7/Makefile            |  4 +--
 arch/arm/boards/dmo-mx6-realq7/flash-header.imxcfg |  3 ++
 arch/arm/boards/dmo-mx6-realq7/flash_header.c      | 40 ----------------------
 arch/arm/mach-imx/Kconfig                          |  1 +
 4 files changed, 6 insertions(+), 42 deletions(-)
 create mode 100644 arch/arm/boards/dmo-mx6-realq7/flash-header.imxcfg
 delete mode 100644 arch/arm/boards/dmo-mx6-realq7/flash_header.c

diff --git a/arch/arm/boards/dmo-mx6-realq7/Makefile b/arch/arm/boards/dmo-mx6-realq7/Makefile
index e143009..bb6d9d8 100644
--- a/arch/arm/boards/dmo-mx6-realq7/Makefile
+++ b/arch/arm/boards/dmo-mx6-realq7/Makefile
@@ -1,2 +1,2 @@
-obj-y += board.o flash_header.o lowlevel.o
-pbl-y += flash_header.o lowlevel.o
+obj-y += board.o lowlevel.o
+pbl-y += lowlevel.o
diff --git a/arch/arm/boards/dmo-mx6-realq7/flash-header.imxcfg b/arch/arm/boards/dmo-mx6-realq7/flash-header.imxcfg
new file mode 100644
index 0000000..400a870
--- /dev/null
+++ b/arch/arm/boards/dmo-mx6-realq7/flash-header.imxcfg
@@ -0,0 +1,3 @@
+soc imx6
+loadaddr 0x00907000
+dcdofs 0x400
diff --git a/arch/arm/boards/dmo-mx6-realq7/flash_header.c b/arch/arm/boards/dmo-mx6-realq7/flash_header.c
deleted file mode 100644
index 88227a7..0000000
--- a/arch/arm/boards/dmo-mx6-realq7/flash_header.c
+++ /dev/null
@@ -1,40 +0,0 @@
-/*
- * Copyright (C) 2011 Marc Kleine-Budde <mkl@pengutronix.de>
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
-#include <common.h>
-#include <asm/byteorder.h>
-#include <mach/imx-flash-header.h>
-#include <mach/imx6-regs.h>
-#include <asm/barebox-arm-head.h>
-
-void __naked __flash_header_start go(void)
-{
-	barebox_arm_head();
-}
-
-#define APP_DEST	0x00907000
-
-struct imx_flash_header_v2 __flash_header_section flash_header = {
-	.header.tag		= IVT_HEADER_TAG,
-	.header.length		= cpu_to_be16(32),
-	.header.version		= IVT_VERSION,
-	.entry			= APP_DEST + 0x2000,
-	.dcd_ptr		= 0,
-	.boot_data_ptr		= APP_DEST + FLASH_HEADER_OFFSET + offsetof(struct imx_flash_header_v2, boot_data),
-	.self			= APP_DEST + FLASH_HEADER_OFFSET,
-
-	.boot_data.start	= APP_DEST,
-	.boot_data.size		= barebox_image_size,
-};
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index a66395c..e500c45 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -533,6 +533,7 @@ config MACH_SABRESD
 
 config MACH_REALQ7
 	bool "DataModul i.MX6Q Real Qseven Board"
+	select ARCH_IMX_INTERNAL_BOOT_USE_IMXIMAGE
 	select HAVE_DEFAULT_ENVIRONMENT_NEW
 
 endchoice
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

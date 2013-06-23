Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UqrU0-0001XF-OE
 for barebox@lists.infradead.org; Sun, 23 Jun 2013 21:06:02 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 23 Jun 2013 23:05:34 +0200
Message-Id: <1372021534-25470-8-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1372021534-25470-1-git-send-email-s.hauer@pengutronix.de>
References: <1372021534-25470-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 8/8] ARM: i.MX51 vincell: Switch to imximage
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/guf-vincell/Makefile            |  2 +-
 arch/arm/boards/guf-vincell/flash-header.imxcfg |  3 ++
 arch/arm/boards/guf-vincell/flash_header.c      | 41 -------------------------
 arch/arm/mach-imx/Kconfig                       |  1 +
 4 files changed, 5 insertions(+), 42 deletions(-)
 create mode 100644 arch/arm/boards/guf-vincell/flash-header.imxcfg
 delete mode 100644 arch/arm/boards/guf-vincell/flash_header.c

diff --git a/arch/arm/boards/guf-vincell/Makefile b/arch/arm/boards/guf-vincell/Makefile
index aa30b7f..01c7a25 100644
--- a/arch/arm/boards/guf-vincell/Makefile
+++ b/arch/arm/boards/guf-vincell/Makefile
@@ -1,2 +1,2 @@
 obj-y += board.o
-lwl-y += flash_header.o lowlevel.o
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/guf-vincell/flash-header.imxcfg b/arch/arm/boards/guf-vincell/flash-header.imxcfg
new file mode 100644
index 0000000..bb0c318
--- /dev/null
+++ b/arch/arm/boards/guf-vincell/flash-header.imxcfg
@@ -0,0 +1,3 @@
+soc imx53
+loadaddr 0xf8020000
+dcdofs 0x400
diff --git a/arch/arm/boards/guf-vincell/flash_header.c b/arch/arm/boards/guf-vincell/flash_header.c
deleted file mode 100644
index df480d2..0000000
--- a/arch/arm/boards/guf-vincell/flash_header.c
+++ /dev/null
@@ -1,41 +0,0 @@
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
-#include <sizes.h>
-#include <asm/byteorder.h>
-#include <asm/barebox-arm-head.h>
-#include <mach/imx-flash-header.h>
-
-void __naked __flash_header_start go(void)
-{
-	barebox_arm_head();
-}
-
-#define APP_DEST	0xf8020000
-
-struct imx_flash_header_v2 __flash_header_section flash_header = {
-	.header.tag		= IVT_HEADER_TAG,
-	.header.length		= cpu_to_be16(32),
-	.header.version		= IVT_VERSION,
-
-	.entry			= APP_DEST + 0x1000,
-	.dcd_ptr		= APP_DEST + 0x400 + offsetof(struct imx_flash_header_v2, dcd),
-	.boot_data_ptr		= APP_DEST + 0x400 + offsetof(struct imx_flash_header_v2, boot_data),
-	.self			= APP_DEST + 0x400,
-
-	.boot_data.start	= APP_DEST,
-	.boot_data.size		= DCD_BAREBOX_SIZE,
-};
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index f334b17..a601c9d 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -496,6 +496,7 @@ config MACH_TX53
 
 config MACH_GUF_VINCELL
 	select HAVE_DEFAULT_ENVIRONMENT_NEW
+	select ARCH_IMX_INTERNAL_BOOT_USE_IMXIMAGE
 	bool "Garz-Fricke Vincell"
 
 endchoice
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

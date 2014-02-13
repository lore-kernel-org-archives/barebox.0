Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WDtkt-0001ux-MC
 for barebox@lists.infradead.org; Thu, 13 Feb 2014 10:42:57 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 13 Feb 2014 11:42:25 +0100
Message-Id: <1392288152-14821-8-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1392288152-14821-1-git-send-email-s.hauer@pengutronix.de>
References: <1392288152-14821-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 07/14] ARM: i.MX51 vincell: Switch to imximage
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Makefile                               |  1 +
 arch/arm/boards/guf-vincell/Makefile            |  2 +-
 arch/arm/boards/guf-vincell/flash-header.imxcfg |  3 ++
 arch/arm/boards/guf-vincell/flash_header.c      | 41 -------------------------
 4 files changed, 5 insertions(+), 42 deletions(-)
 create mode 100644 arch/arm/boards/guf-vincell/flash-header.imxcfg
 delete mode 100644 arch/arm/boards/guf-vincell/flash_header.c

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index a6ed295..56d29fe 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -214,6 +214,7 @@ imxcfg-$(CONFIG_MACH_SABRESD) += $(boarddir)/freescale-mx6-sabresd/flash-header.
 imxcfg-$(CONFIG_MACH_MX6Q_ARM2) += $(boarddir)/freescale-mx6-arm2/flash-header.imxcfg
 imxcfg-$(CONFIG_MACH_CCMX51) += $(boarddir)/ccxmx51/flash-header.imxcfg
 imxcfg-$(CONFIG_MACH_TX51) += $(boarddir)/karo-tx51/flash-header-karo-tx51.imxcfg
+imxcfg-$(CONFIG_MACH_GUF_VINCELL) += $(boarddir)/guf-vincell/flash-header.imxcfg
 ifneq ($(imxcfg-y),)
 CFG_barebox.imximg := $(imxcfg-y)
 KBUILD_IMAGE  := barebox.imximg
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
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

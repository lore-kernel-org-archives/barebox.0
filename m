Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WDtkt-0001ur-MG
 for barebox@lists.infradead.org; Thu, 13 Feb 2014 10:43:10 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 13 Feb 2014 11:42:20 +0100
Message-Id: <1392288152-14821-3-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 02/14] ARM: i.MX53 SMD: Switch to imximage
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Makefile                                  |  10 ++
 arch/arm/boards/freescale-mx53-smd/Makefile        |   1 -
 .../boards/freescale-mx53-smd/flash-header.imxcfg  |  54 +++++++++++
 arch/arm/boards/freescale-mx53-smd/flash_header.c  | 102 ---------------------
 4 files changed, 64 insertions(+), 103 deletions(-)
 create mode 100644 arch/arm/boards/freescale-mx53-smd/flash-header.imxcfg
 delete mode 100644 arch/arm/boards/freescale-mx53-smd/flash_header.c

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index c0b725d..b321b5d 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -205,6 +205,16 @@ ifeq ($(CONFIG_ARCH_MVEBU),y)
 KBUILD_IMAGE  := barebox.kwb barebox.kwbuart
 endif
 
+barebox.imximg: $(KBUILD_BINARY) FORCE
+	$(call if_changed,imx_image)
+
+boarddir = $(srctree)/arch/arm/boards
+imxcfg-$(CONFIG_MACH_FREESCALE_MX53_SMD) += $(boarddir)/freescale-mx53-smd/flash-header.imxcfg
+ifneq ($(imxcfg-y),)
+CFG_barebox.imximg := $(imxcfg-y)
+KBUILD_IMAGE  := barebox.imximg
+endif
+
 pbl := arch/arm/pbl
 $(pbl)/zbarebox.S $(pbl)/zbarebox.bin $(pbl)/zbarebox: barebox.bin FORCE
 	$(Q)$(MAKE) $(build)=$(pbl) $@
diff --git a/arch/arm/boards/freescale-mx53-smd/Makefile b/arch/arm/boards/freescale-mx53-smd/Makefile
index d44f697..01c7a25 100644
--- a/arch/arm/boards/freescale-mx53-smd/Makefile
+++ b/arch/arm/boards/freescale-mx53-smd/Makefile
@@ -1,3 +1,2 @@
 obj-y += board.o
-lwl-y += flash_header.o
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/freescale-mx53-smd/flash-header.imxcfg b/arch/arm/boards/freescale-mx53-smd/flash-header.imxcfg
new file mode 100644
index 0000000..95bcd19
--- /dev/null
+++ b/arch/arm/boards/freescale-mx53-smd/flash-header.imxcfg
@@ -0,0 +1,54 @@
+loadaddr 0x70000000
+soc imx53
+dcdofs 0x400
+wm 32 0x53fa8554 0x00300000
+wm 32 0x53fa8558 0x00300040
+wm 32 0x53fa8560 0x00300000
+wm 32 0x53fa8564 0x00300040
+wm 32 0x53fa8568 0x00300040
+wm 32 0x53fa8570 0x00300000
+wm 32 0x53fa8574 0x00300000
+wm 32 0x53fa8578 0x00300000
+wm 32 0x53fa857c 0x00300040
+wm 32 0x53fa8580 0x00300040
+wm 32 0x53fa8584 0x00300000
+wm 32 0x53fa8588 0x00300000
+wm 32 0x53fa8590 0x00300040
+wm 32 0x53fa8594 0x00300000
+wm 32 0x53fa86f0 0x00300000
+wm 32 0x53fa86f4 0x00000000
+wm 32 0x53fa86fc 0x00000000
+wm 32 0x53fa8714 0x00000000
+wm 32 0x53fa8718 0x00300000
+wm 32 0x53fa871c 0x00300000
+wm 32 0x53fa8720 0x00300000
+wm 32 0x53fa8724 0x04000000
+wm 32 0x53fa8728 0x00300000
+wm 32 0x53fa872c 0x00300000
+wm 32 0x63fd9088 0x35343535
+wm 32 0x63fd9090 0x4d444c44
+wm 32 0x63fd907c 0x01370138
+wm 32 0x63fd9080 0x013b013c
+wm 32 0x63fd9018 0x00011740
+wm 32 0x63fd9000 0xc3190000
+wm 32 0x63fd900c 0x9f5152e3
+wm 32 0x63fd9010 0xb68e8a63
+wm 32 0x63fd9014 0x01ff00db
+wm 32 0x63fd902c 0x000026d2
+wm 32 0x63fd9030 0x009f0e21
+wm 32 0x63fd9008 0x12273030
+wm 32 0x63fd9004 0x0002002d
+wm 32 0x63fd901c 0x00008032
+wm 32 0x63fd901c 0x00008033
+wm 32 0x63fd901c 0x00028031
+wm 32 0x63fd901c 0x052080b0
+wm 32 0x63fd901c 0x04008040
+wm 32 0x63fd901c 0x0000803a
+wm 32 0x63fd901c 0x0000803b
+wm 32 0x63fd901c 0x00028039
+wm 32 0x63fd901c 0x05208138
+wm 32 0x63fd901c 0x04008048
+wm 32 0x63fd9020 0x00005800
+wm 32 0x63fd9040 0x04b80003
+wm 32 0x63fd9058 0x00022227
+wm 32 0x63fd901c 0x00000000
diff --git a/arch/arm/boards/freescale-mx53-smd/flash_header.c b/arch/arm/boards/freescale-mx53-smd/flash_header.c
deleted file mode 100644
index c2ab255..0000000
--- a/arch/arm/boards/freescale-mx53-smd/flash_header.c
+++ /dev/null
@@ -1,102 +0,0 @@
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
-#include <asm/barebox-arm-head.h>
-
-void __naked __flash_header_start go(void)
-{
-	barebox_arm_head();
-}
-
-struct imx_dcd_v2_entry __dcd_entry_section dcd_entry[] = {
-	{ .addr = cpu_to_be32(0x53fa8554), .val = cpu_to_be32(0x00300000), },
-	{ .addr = cpu_to_be32(0x53fa8558), .val = cpu_to_be32(0x00300040), },
-	{ .addr = cpu_to_be32(0x53fa8560), .val = cpu_to_be32(0x00300000), },
-	{ .addr = cpu_to_be32(0x53fa8564), .val = cpu_to_be32(0x00300040), },
-	{ .addr = cpu_to_be32(0x53fa8568), .val = cpu_to_be32(0x00300040), },
-	{ .addr = cpu_to_be32(0x53fa8570), .val = cpu_to_be32(0x00300000), },
-	{ .addr = cpu_to_be32(0x53fa8574), .val = cpu_to_be32(0x00300000), },
-	{ .addr = cpu_to_be32(0x53fa8578), .val = cpu_to_be32(0x00300000), },
-	{ .addr = cpu_to_be32(0x53fa857c), .val = cpu_to_be32(0x00300040), },
-	{ .addr = cpu_to_be32(0x53fa8580), .val = cpu_to_be32(0x00300040), },
-	{ .addr = cpu_to_be32(0x53fa8584), .val = cpu_to_be32(0x00300000), },
-	{ .addr = cpu_to_be32(0x53fa8588), .val = cpu_to_be32(0x00300000), },
-	{ .addr = cpu_to_be32(0x53fa8590), .val = cpu_to_be32(0x00300040), },
-	{ .addr = cpu_to_be32(0x53fa8594), .val = cpu_to_be32(0x00300000), },
-	{ .addr = cpu_to_be32(0x53fa86f0), .val = cpu_to_be32(0x00300000), },
-	{ .addr = cpu_to_be32(0x53fa86f4), .val = cpu_to_be32(0x00000000), },
-	{ .addr = cpu_to_be32(0x53fa86fc), .val = cpu_to_be32(0x00000000), },
-	{ .addr = cpu_to_be32(0x53fa8714), .val = cpu_to_be32(0x00000000), },
-	{ .addr = cpu_to_be32(0x53fa8718), .val = cpu_to_be32(0x00300000), },
-	{ .addr = cpu_to_be32(0x53fa871c), .val = cpu_to_be32(0x00300000), },
-	{ .addr = cpu_to_be32(0x53fa8720), .val = cpu_to_be32(0x00300000), },
-	{ .addr = cpu_to_be32(0x53fa8724), .val = cpu_to_be32(0x04000000), },
-	{ .addr = cpu_to_be32(0x53fa8728), .val = cpu_to_be32(0x00300000), },
-	{ .addr = cpu_to_be32(0x53fa872c), .val = cpu_to_be32(0x00300000), },
-	{ .addr = cpu_to_be32(0x63fd9088), .val = cpu_to_be32(0x35343535), },
-	{ .addr = cpu_to_be32(0x63fd9090), .val = cpu_to_be32(0x4d444c44), },
-	{ .addr = cpu_to_be32(0x63fd907c), .val = cpu_to_be32(0x01370138), },
-	{ .addr = cpu_to_be32(0x63fd9080), .val = cpu_to_be32(0x013b013c), },
-	{ .addr = cpu_to_be32(0x63fd9018), .val = cpu_to_be32(0x00011740), },
-	{ .addr = cpu_to_be32(0x63fd9000), .val = cpu_to_be32(0xc3190000), },
-	{ .addr = cpu_to_be32(0x63fd900c), .val = cpu_to_be32(0x9f5152e3), },
-	{ .addr = cpu_to_be32(0x63fd9010), .val = cpu_to_be32(0xb68e8a63), },
-	{ .addr = cpu_to_be32(0x63fd9014), .val = cpu_to_be32(0x01ff00db), },
-	{ .addr = cpu_to_be32(0x63fd902c), .val = cpu_to_be32(0x000026d2), },
-	{ .addr = cpu_to_be32(0x63fd9030), .val = cpu_to_be32(0x009f0e21), },
-	{ .addr = cpu_to_be32(0x63fd9008), .val = cpu_to_be32(0x12273030), },
-	{ .addr = cpu_to_be32(0x63fd9004), .val = cpu_to_be32(0x0002002d), },
-	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x00008032), },
-	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x00008033), },
-	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x00028031), },
-	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x052080b0), },
-	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x04008040), },
-	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x0000803a), },
-	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x0000803b), },
-	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x00028039), },
-	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x05208138), },
-	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x04008048), },
-	{ .addr = cpu_to_be32(0x63fd9020), .val = cpu_to_be32(0x00005800), },
-	{ .addr = cpu_to_be32(0x63fd9040), .val = cpu_to_be32(0x04b80003), },
-	{ .addr = cpu_to_be32(0x63fd9058), .val = cpu_to_be32(0x00022227), },
-	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x00000000), },
-};
-
-#define APP_DEST	0x70000000
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
-
-	.dcd.header.tag		= DCD_HEADER_TAG,
-	.dcd.header.length	= cpu_to_be16(sizeof(struct imx_dcd) + sizeof(dcd_entry)),
-	.dcd.header.version	= DCD_VERSION,
-
-	.dcd.command.tag	= DCD_COMMAND_WRITE_TAG,
-	.dcd.command.length	= cpu_to_be16(sizeof(struct imx_dcd_command) + sizeof(dcd_entry)),
-	.dcd.command.param	= DCD_COMMAND_WRITE_PARAM,
-};
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

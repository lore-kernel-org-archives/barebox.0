Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WDtkt-0001uv-ML
 for barebox@lists.infradead.org; Thu, 13 Feb 2014 10:43:06 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 13 Feb 2014 11:42:23 +0100
Message-Id: <1392288152-14821-6-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 05/14] ARM: i.MX51 ccxmx51: Switch to imximage
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Makefile                           |  1 +
 arch/arm/boards/ccxmx51/Makefile            |  1 -
 arch/arm/boards/ccxmx51/flash-header.imxcfg | 60 +++++++++++++++++++++
 arch/arm/boards/ccxmx51/flash_header.c      | 84 -----------------------------
 4 files changed, 61 insertions(+), 85 deletions(-)
 create mode 100644 arch/arm/boards/ccxmx51/flash-header.imxcfg
 delete mode 100644 arch/arm/boards/ccxmx51/flash_header.c

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 316c355..678819f 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -212,6 +212,7 @@ boarddir = $(srctree)/arch/arm/boards
 imxcfg-$(CONFIG_MACH_FREESCALE_MX53_SMD) += $(boarddir)/freescale-mx53-smd/flash-header.imxcfg
 imxcfg-$(CONFIG_MACH_SABRESD) += $(boarddir)/freescale-mx6-sabresd/flash-header.imxcfg
 imxcfg-$(CONFIG_MACH_MX6Q_ARM2) += $(boarddir)/freescale-mx6-arm2/flash-header.imxcfg
+imxcfg-$(CONFIG_MACH_CCMX51) += $(boarddir)/ccxmx51/flash-header.imxcfg
 ifneq ($(imxcfg-y),)
 CFG_barebox.imximg := $(imxcfg-y)
 KBUILD_IMAGE  := barebox.imximg
diff --git a/arch/arm/boards/ccxmx51/Makefile b/arch/arm/boards/ccxmx51/Makefile
index 422c919..6ba98b1 100644
--- a/arch/arm/boards/ccxmx51/Makefile
+++ b/arch/arm/boards/ccxmx51/Makefile
@@ -1,4 +1,3 @@
 obj-y					+= ccxmx51.o
-lwl-y				+= flash_header.o
 lwl-y				+= lowlevel.o
 obj-$(CONFIG_MACH_CCMX51_BASEBOARD)	+= ccxmx51js.o
diff --git a/arch/arm/boards/ccxmx51/flash-header.imxcfg b/arch/arm/boards/ccxmx51/flash-header.imxcfg
new file mode 100644
index 0000000..251c4c1
--- /dev/null
+++ b/arch/arm/boards/ccxmx51/flash-header.imxcfg
@@ -0,0 +1,60 @@
+soc imx51
+loadaddr 0x90000000
+dcdofs 0x400
+wm 32 0x73fa88a0 0x00000200
+wm 32 0x73fa850c 0x000020c5
+wm 32 0x73fa8510 0x000020c5
+wm 32 0x73fa883c 0x00000002
+wm 32 0x73fa8848 0x00000002
+wm 32 0x73fa84b8 0x000000e7
+wm 32 0x73fa84bc 0x00000045
+wm 32 0x73fa84c0 0x00000045
+wm 32 0x73fa84c4 0x00000045
+wm 32 0x73fa84c8 0x00000045
+wm 32 0x73fa8820 0x00000000
+wm 32 0x73fa84a4 0x00000003
+wm 32 0x73fa84a8 0x00000003
+wm 32 0x73fa84ac 0x000000e3
+wm 32 0x73fa84b0 0x000000e3
+wm 32 0x73fa84b4 0x000000e3
+wm 32 0x73fa84cc 0x000000e3
+wm 32 0x73fa84d0 0x000000e2
+wm 32 0x73fa882c 0x00000004
+wm 32 0x73fa88a4 0x00000004
+wm 32 0x73fa88ac 0x00000004
+wm 32 0x73fa88b8 0x00000004
+wm 32 0x83fd9000 0x82a20000
+wm 32 0x83fd9008 0x82a20000
+wm 32 0x83fd9010 0x000ad0d0
+wm 32 0x83fd9004 0x3f3584ab
+wm 32 0x83fd900c 0x3f3584ab
+wm 32 0x83fd9014 0x04008008
+wm 32 0x83fd9014 0x0000801a
+wm 32 0x83fd9014 0x0000801b
+wm 32 0x83fd9014 0x00448019
+wm 32 0x83fd9014 0x07328018
+wm 32 0x83fd9014 0x04008008
+wm 32 0x83fd9014 0x00008010
+wm 32 0x83fd9014 0x00008010
+wm 32 0x83fd9014 0x06328018
+wm 32 0x83fd9014 0x03808019
+wm 32 0x83fd9014 0x00408019
+wm 32 0x83fd9014 0x00008000
+wm 32 0x83fd9014 0x0400800c
+wm 32 0x83fd9014 0x0000801e
+wm 32 0x83fd9014 0x0000801f
+wm 32 0x83fd9014 0x0000801d
+wm 32 0x83fd9014 0x0732801c
+wm 32 0x83fd9014 0x0400800c
+wm 32 0x83fd9014 0x00008014
+wm 32 0x83fd9014 0x00008014
+wm 32 0x83fd9014 0x0632801c
+wm 32 0x83fd9014 0x0380801d
+wm 32 0x83fd9014 0x0040801d
+wm 32 0x83fd9014 0x00008004
+wm 32 0x83fd9000 0xb2a20000
+wm 32 0x83fd9008 0xb2a20000
+wm 32 0x83fd9010 0x000ad6d0
+wm 32 0x83fd9034 0x90000000
+wm 32 0x83fd9014 0x00000000
+
diff --git a/arch/arm/boards/ccxmx51/flash_header.c b/arch/arm/boards/ccxmx51/flash_header.c
deleted file mode 100644
index c148eea..0000000
--- a/arch/arm/boards/ccxmx51/flash_header.c
+++ /dev/null
@@ -1,84 +0,0 @@
-#include <common.h>
-#include <mach/imx-flash-header.h>
-#include <asm/barebox-arm-head.h>
-
-void __naked __flash_header_start go(void)
-{
-	barebox_arm_head();
-}
-
-struct imx_dcd_entry __dcd_entry_section dcd_entry[] = {
-	{ .ptr_type = 4, .addr = 0x73fa88a0, .val = 0x00000200, },
-	{ .ptr_type = 4, .addr = 0x73fa850c, .val = 0x000020c5, },
-	{ .ptr_type = 4, .addr = 0x73fa8510, .val = 0x000020c5, },
-	{ .ptr_type = 4, .addr = 0x73fa883c, .val = 0x00000002, },
-	{ .ptr_type = 4, .addr = 0x73fa8848, .val = 0x00000002, },
-	{ .ptr_type = 4, .addr = 0x73fa84b8, .val = 0x000000e7, },
-	{ .ptr_type = 4, .addr = 0x73fa84bc, .val = 0x00000045, },
-	{ .ptr_type = 4, .addr = 0x73fa84c0, .val = 0x00000045, },
-	{ .ptr_type = 4, .addr = 0x73fa84c4, .val = 0x00000045, },
-	{ .ptr_type = 4, .addr = 0x73fa84c8, .val = 0x00000045, },
-	{ .ptr_type = 4, .addr = 0x73fa8820, .val = 0x00000000, },
-	{ .ptr_type = 4, .addr = 0x73fa84a4, .val = 0x00000003, },
-	{ .ptr_type = 4, .addr = 0x73fa84a8, .val = 0x00000003, },
-	{ .ptr_type = 4, .addr = 0x73fa84ac, .val = 0x000000e3, },
-	{ .ptr_type = 4, .addr = 0x73fa84b0, .val = 0x000000e3, },
-	{ .ptr_type = 4, .addr = 0x73fa84b4, .val = 0x000000e3, },
-	{ .ptr_type = 4, .addr = 0x73fa84cc, .val = 0x000000e3, },
-	{ .ptr_type = 4, .addr = 0x73fa84d0, .val = 0x000000e2, },
-	{ .ptr_type = 4, .addr = 0x73fa882c, .val = 0x00000004, },
-	{ .ptr_type = 4, .addr = 0x73fa88a4, .val = 0x00000004, },
-	{ .ptr_type = 4, .addr = 0x73fa88ac, .val = 0x00000004, },
-	{ .ptr_type = 4, .addr = 0x73fa88b8, .val = 0x00000004, },
-	{ .ptr_type = 4, .addr = 0x83fd9000, .val = 0x82a20000, },
-	{ .ptr_type = 4, .addr = 0x83fd9008, .val = 0x82a20000, },
-	{ .ptr_type = 4, .addr = 0x83fd9010, .val = 0x000ad0d0, },
-	{ .ptr_type = 4, .addr = 0x83fd9004, .val = 0x3f3584ab, },
-	{ .ptr_type = 4, .addr = 0x83fd900c, .val = 0x3f3584ab, },
-	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x04008008, },
-	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x0000801a, },
-	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x0000801b, },
-	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x00448019, },
-	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x07328018, },
-	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x04008008, },
-	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x00008010, },
-	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x00008010, },
-	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x06328018, },
-	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x03808019, },
-	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x00408019, },
-	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x00008000, },
-	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x0400800c, },
-	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x0000801e, },
-	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x0000801f, },
-	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x0000801d, },
-	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x0732801c, },
-	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x0400800c, },
-	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x00008014, },
-	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x00008014, },
-	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x0632801c, },
-	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x0380801d, },
-	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x0040801d, },
-	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x00008004, },
-	{ .ptr_type = 4, .addr = 0x83fd9000, .val = 0xb2a20000, },
-	{ .ptr_type = 4, .addr = 0x83fd9008, .val = 0xb2a20000, },
-	{ .ptr_type = 4, .addr = 0x83fd9010, .val = 0x000ad6d0, },
-	{ .ptr_type = 4, .addr = 0x83fd9034, .val = 0x90000000, },
-	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x00000000, },
-};
-
-#define APP_DEST	0x90000000
-
-struct imx_flash_header __flash_header_section flash_header = {
-	.app_code_jump_vector	= APP_DEST + 0x1000,
-	.app_code_barker	= APP_CODE_BARKER,
-	.app_code_csf		= 0,
-	.dcd_ptr_ptr		= APP_DEST + 0x400 + offsetof(struct imx_flash_header, dcd),
-	.super_root_key		= 0,
-	.dcd			= APP_DEST + 0x400 + offsetof(struct imx_flash_header, dcd_barker),
-	.app_dest		= APP_DEST,
-	.dcd_barker		= DCD_BARKER,
-	.dcd_block_len		= sizeof (dcd_entry),
-};
-
-unsigned long __image_len_section barebox_len = DCD_BAREBOX_SIZE;
-
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

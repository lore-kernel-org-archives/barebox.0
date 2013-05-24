Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ufla6-0006ZT-OX
 for barebox@lists.infradead.org; Fri, 24 May 2013 06:34:29 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 24 May 2013 08:34:02 +0200
Message-Id: <1369377242-23493-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1369377242-23493-1-git-send-email-s.hauer@pengutronix.de>
References: <1369377242-23493-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/3] ARM: i.MX51 babbage: switch to imx-image
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/freescale-mx51-pdk/Makefile        |  4 +-
 arch/arm/boards/freescale-mx51-pdk/board.c         |  7 ++-
 arch/arm/boards/freescale-mx51-pdk/dcd-data.h      | 60 ----------------------
 .../boards/freescale-mx51-pdk/flash-header.imxcfg  | 59 +++++++++++++++++++++
 arch/arm/boards/freescale-mx51-pdk/flash_header.c  | 29 -----------
 arch/arm/mach-imx/Kconfig                          |  1 +
 6 files changed, 65 insertions(+), 95 deletions(-)
 delete mode 100644 arch/arm/boards/freescale-mx51-pdk/dcd-data.h
 create mode 100644 arch/arm/boards/freescale-mx51-pdk/flash-header.imxcfg
 delete mode 100644 arch/arm/boards/freescale-mx51-pdk/flash_header.c

diff --git a/arch/arm/boards/freescale-mx51-pdk/Makefile b/arch/arm/boards/freescale-mx51-pdk/Makefile
index d44f697..f1baae2 100644
--- a/arch/arm/boards/freescale-mx51-pdk/Makefile
+++ b/arch/arm/boards/freescale-mx51-pdk/Makefile
@@ -1,3 +1,3 @@
-obj-y += board.o
-lwl-y += flash_header.o
+obj-y += board.o flash-header.o
+extra-y += flash-header.S flash-header.dcd
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/freescale-mx51-pdk/board.c b/arch/arm/boards/freescale-mx51-pdk/board.c
index db34056..ad47408 100644
--- a/arch/arm/boards/freescale-mx51-pdk/board.c
+++ b/arch/arm/boards/freescale-mx51-pdk/board.c
@@ -229,9 +229,7 @@ static void babbage_power_init(void)
 	mdelay(50);
 }
 
-#define DCD_NAME static struct imx_dcd_entry dcd_entry
-
-#include "dcd-data.h"
+extern char flash_header_start[], flash_header_end[];
 
 static int f3s_devices_init(void)
 {
@@ -254,7 +252,8 @@ static int f3s_devices_init(void)
 	armlinux_set_architecture(MACH_TYPE_MX51_BABBAGE);
 
 	imx51_bbu_internal_mmc_register_handler("mmc", "/dev/disk0",
-		BBU_HANDLER_FLAG_DEFAULT, dcd_entry, sizeof(dcd_entry), 0);
+		BBU_HANDLER_FLAG_DEFAULT, (void *)flash_header_start,
+		flash_header_end - flash_header_start, 0);
 
 	return 0;
 }
diff --git a/arch/arm/boards/freescale-mx51-pdk/dcd-data.h b/arch/arm/boards/freescale-mx51-pdk/dcd-data.h
deleted file mode 100644
index 4dd6c0d..0000000
--- a/arch/arm/boards/freescale-mx51-pdk/dcd-data.h
+++ /dev/null
@@ -1,60 +0,0 @@
-
-DCD_NAME[] = {
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
diff --git a/arch/arm/boards/freescale-mx51-pdk/flash-header.imxcfg b/arch/arm/boards/freescale-mx51-pdk/flash-header.imxcfg
new file mode 100644
index 0000000..bac6816
--- /dev/null
+++ b/arch/arm/boards/freescale-mx51-pdk/flash-header.imxcfg
@@ -0,0 +1,59 @@
+loadaddr 0x90000000
+soc imx51
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
diff --git a/arch/arm/boards/freescale-mx51-pdk/flash_header.c b/arch/arm/boards/freescale-mx51-pdk/flash_header.c
deleted file mode 100644
index f3f1e4b..0000000
--- a/arch/arm/boards/freescale-mx51-pdk/flash_header.c
+++ /dev/null
@@ -1,29 +0,0 @@
-#include <common.h>
-#include <mach/imx-flash-header.h>
-#include <asm/barebox-arm-head.h>
-
-void __naked __flash_header_start go(void)
-{
-	barebox_arm_head();
-}
-
-#define DCD_NAME struct imx_dcd_entry __dcd_entry_section dcd_entry
-
-#include "dcd-data.h"
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
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index c2766b7..ee25e7d 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -421,6 +421,7 @@ choice
 
 config MACH_FREESCALE_MX51_PDK
 	select HAVE_DEFAULT_ENVIRONMENT_NEW
+	select ARCH_IMX_INTERNAL_BOOT_USE_IMXIMAGE
 	bool "Freescale i.MX51 PDK"
 
 config MACH_EUKREA_CPUIMX51SD
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

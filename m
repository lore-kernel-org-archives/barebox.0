Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Urkfk-0001vo-U5
 for barebox@lists.infradead.org; Wed, 26 Jun 2013 08:01:51 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 26 Jun 2013 10:00:56 +0200
Message-Id: <1372233657-19455-11-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1372233657-19455-1-git-send-email-s.hauer@pengutronix.de>
References: <1372233657-19455-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 10/11] ARM: i.MX51 efikasb: switch to multiboard support
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/efika-mx-smartbook/Makefile        |  5 +-
 arch/arm/boards/efika-mx-smartbook/board.c         | 17 +++++--
 arch/arm/boards/efika-mx-smartbook/dcd-data.h      | 56 ---------------------
 .../flash-header-imx51-genesi-efikasb.imxcfg       | 57 ++++++++++++++++++++++
 arch/arm/boards/efika-mx-smartbook/flash_header.c  | 29 -----------
 arch/arm/boards/efika-mx-smartbook/lowlevel.c      | 14 +++++-
 arch/arm/configs/efika-mx-smartbook_defconfig      |  1 +
 arch/arm/dts/Makefile                              |  1 +
 arch/arm/mach-imx/Kconfig                          | 15 +++---
 images/Makefile.imx                                |  6 +++
 10 files changed, 100 insertions(+), 101 deletions(-)
 delete mode 100644 arch/arm/boards/efika-mx-smartbook/dcd-data.h
 create mode 100644 arch/arm/boards/efika-mx-smartbook/flash-header-imx51-genesi-efikasb.imxcfg
 delete mode 100644 arch/arm/boards/efika-mx-smartbook/flash_header.c

diff --git a/arch/arm/boards/efika-mx-smartbook/Makefile b/arch/arm/boards/efika-mx-smartbook/Makefile
index a2c3104..a022d6d 100644
--- a/arch/arm/boards/efika-mx-smartbook/Makefile
+++ b/arch/arm/boards/efika-mx-smartbook/Makefile
@@ -1,3 +1,4 @@
-obj-y += board.o
+obj-y += board.o flash-header-imx51-genesi-efikasb.o
 lwl-y += lowlevel.o
-lwl-y += flash_header.o
+extra-y += flash-header-imx51-genesi-efikasb.S
+extra-y += flash-header-imx51-genesi-efikasb.dcd
diff --git a/arch/arm/boards/efika-mx-smartbook/board.c b/arch/arm/boards/efika-mx-smartbook/board.c
index 0e6694b..1735c3e 100644
--- a/arch/arm/boards/efika-mx-smartbook/board.c
+++ b/arch/arm/boards/efika-mx-smartbook/board.c
@@ -182,6 +182,9 @@ static int efikamx_power_init(void)
 
 static int efikamx_usb_init(void)
 {
+	if (!of_machine_is_compatible("genesi,imx51-sb"))
+		return 0;
+
 	gpio_direction_output(GPIO_BLUETOOTH, 0);
 	gpio_direction_output(GPIO_WIFI_ENABLE, 1);
 	gpio_direction_output(GPIO_WIFI_RESET, 0);
@@ -222,15 +225,17 @@ static struct gpio_led leds[] = {
 	},
 };
 
-#define DCD_NAME static struct imx_dcd_entry dcd_entry
-
-#include "dcd-data.h"
+extern char flash_header_imx51_genesi_efikasb_start[];
+extern char flash_header_imx51_genesi_efikasb_end[];
 
 static int efikamx_late_init(void)
 {
 	enum bootsource bootsource;
 	int i;
 
+	if (!of_machine_is_compatible("genesi,imx51-sb"))
+		return 0;
+
 	efikamx_power_init();
 
 	gpio_direction_output(GPIO_BACKLIGHT_POWER, 1);
@@ -241,8 +246,10 @@ static int efikamx_late_init(void)
 	writew(0x0, MX51_WDOG_BASE_ADDR + 0x8);
 
 	imx51_bbu_internal_mmc_register_handler("mmc", "/dev/mmc1",
-			BBU_HANDLER_FLAG_DEFAULT, dcd_entry, sizeof(dcd_entry),
-			0);
+			BBU_HANDLER_FLAG_DEFAULT,
+			(void *)flash_header_imx51_genesi_efikasb_start,
+			flash_header_imx51_genesi_efikasb_end -
+			flash_header_imx51_genesi_efikasb_start, 0);
 
 	armlinux_set_bootparams((void *)0x90000100);
 	armlinux_set_architecture(2370);
diff --git a/arch/arm/boards/efika-mx-smartbook/dcd-data.h b/arch/arm/boards/efika-mx-smartbook/dcd-data.h
deleted file mode 100644
index 6795e19..0000000
--- a/arch/arm/boards/efika-mx-smartbook/dcd-data.h
+++ /dev/null
@@ -1,56 +0,0 @@
-DCD_NAME[] = {
-	{ .ptr_type = 4, .addr = 0x73fa88a0, .val = 0x00000000, },
-	{ .ptr_type = 4, .addr = 0x73fa850c, .val = 0x000020c5, },
-	{ .ptr_type = 4, .addr = 0x73fa8510, .val = 0x000020c5, },
-	{ .ptr_type = 4, .addr = 0x73fa883c, .val = 0x00000005, },
-	{ .ptr_type = 4, .addr = 0x73fa8848, .val = 0x00000005, },
-	{ .ptr_type = 4, .addr = 0x73fa84b8, .val = 0x000000e7, },
-	{ .ptr_type = 4, .addr = 0x73fa84bc, .val = 0x00000045, },
-	{ .ptr_type = 4, .addr = 0x73fa84c0, .val = 0x00000045, },
-	{ .ptr_type = 4, .addr = 0x73fa84c4, .val = 0x00000045, },
-	{ .ptr_type = 4, .addr = 0x73fa84c8, .val = 0x00000045, },
-	{ .ptr_type = 4, .addr = 0x73fa8820, .val = 0x00000000, },
-	{ .ptr_type = 4, .addr = 0x73fa84a4, .val = 0x00000005, },
-	{ .ptr_type = 4, .addr = 0x73fa84a8, .val = 0x00000005, },
-	{ .ptr_type = 4, .addr = 0x73fa84ac, .val = 0x000000e5, },
-	{ .ptr_type = 4, .addr = 0x73fa84b0, .val = 0x000000e5, },
-	{ .ptr_type = 4, .addr = 0x73fa84b4, .val = 0x000000e5, },
-	{ .ptr_type = 4, .addr = 0x73fa84cc, .val = 0x000000e5, },
-	{ .ptr_type = 4, .addr = 0x73fa84d0, .val = 0x000000e4, },
-	{ .ptr_type = 4, .addr = 0x73fa882c, .val = 0x00000004, },
-	{ .ptr_type = 4, .addr = 0x73fa88a4, .val = 0x00000004, },
-	{ .ptr_type = 4, .addr = 0x73fa88ac, .val = 0x00000004, },
-	{ .ptr_type = 4, .addr = 0x73fa88b8, .val = 0x00000004, },
-	{ .ptr_type = 4, .addr = 0x83fd9000, .val = 0x82a20000, },
-	{ .ptr_type = 4, .addr = 0x83fd9008, .val = 0x82a20000, },
-	{ .ptr_type = 4, .addr = 0x83fd9010, .val = 0xcaaaf6d0, },
-	{ .ptr_type = 4, .addr = 0x83fd9004, .val = 0x333574aa, },
-	{ .ptr_type = 4, .addr = 0x83fd900c, .val = 0x333574aa, },
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
-	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x00008004, },
-	{ .ptr_type = 4, .addr = 0x83fd9000, .val = 0xb2a20000, },
-	{ .ptr_type = 4, .addr = 0x83fd9008, .val = 0xb2a20000, },
-	{ .ptr_type = 4, .addr = 0x83fd9010, .val = 0x000ad6d0, },
-	{ .ptr_type = 4, .addr = 0x83fd9034, .val = 0x90000000, },
-	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x00000000, },
-};
diff --git a/arch/arm/boards/efika-mx-smartbook/flash-header-imx51-genesi-efikasb.imxcfg b/arch/arm/boards/efika-mx-smartbook/flash-header-imx51-genesi-efikasb.imxcfg
new file mode 100644
index 0000000..53875ed
--- /dev/null
+++ b/arch/arm/boards/efika-mx-smartbook/flash-header-imx51-genesi-efikasb.imxcfg
@@ -0,0 +1,57 @@
+soc imx51
+loadaddr 0x90000000
+dcdofs 0x400
+wm 32 0x73fa88a0 0x00000000
+wm 32 0x73fa850c 0x000020c5
+wm 32 0x73fa8510 0x000020c5
+wm 32 0x73fa883c 0x00000005
+wm 32 0x73fa8848 0x00000005
+wm 32 0x73fa84b8 0x000000e7
+wm 32 0x73fa84bc 0x00000045
+wm 32 0x73fa84c0 0x00000045
+wm 32 0x73fa84c4 0x00000045
+wm 32 0x73fa84c8 0x00000045
+wm 32 0x73fa8820 0x00000000
+wm 32 0x73fa84a4 0x00000005
+wm 32 0x73fa84a8 0x00000005
+wm 32 0x73fa84ac 0x000000e5
+wm 32 0x73fa84b0 0x000000e5
+wm 32 0x73fa84b4 0x000000e5
+wm 32 0x73fa84cc 0x000000e5
+wm 32 0x73fa84d0 0x000000e4
+wm 32 0x73fa882c 0x00000004
+wm 32 0x73fa88a4 0x00000004
+wm 32 0x73fa88ac 0x00000004
+wm 32 0x73fa88b8 0x00000004
+wm 32 0x83fd9000 0x82a20000
+wm 32 0x83fd9008 0x82a20000
+wm 32 0x83fd9010 0xcaaaf6d0
+wm 32 0x83fd9004 0x333574aa
+wm 32 0x83fd900c 0x333574aa
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
+wm 32 0x83fd9014 0x00008004
+wm 32 0x83fd9000 0xb2a20000
+wm 32 0x83fd9008 0xb2a20000
+wm 32 0x83fd9010 0x000ad6d0
+wm 32 0x83fd9034 0x90000000
+wm 32 0x83fd9014 0x00000000
diff --git a/arch/arm/boards/efika-mx-smartbook/flash_header.c b/arch/arm/boards/efika-mx-smartbook/flash_header.c
deleted file mode 100644
index f3f1e4b..0000000
--- a/arch/arm/boards/efika-mx-smartbook/flash_header.c
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
diff --git a/arch/arm/boards/efika-mx-smartbook/lowlevel.c b/arch/arm/boards/efika-mx-smartbook/lowlevel.c
index 11abc93..5a56861 100644
--- a/arch/arm/boards/efika-mx-smartbook/lowlevel.c
+++ b/arch/arm/boards/efika-mx-smartbook/lowlevel.c
@@ -1,12 +1,22 @@
 #include <common.h>
 #include <mach/esdctl.h>
 #include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
 #include <mach/imx5.h>
 
-void __naked barebox_arm_reset_vector(void)
+extern char __dtb_imx51_genesi_efika_sb_start[];
+
+ENTRY_FUNCTION(start_imx51_genesi_efikasb)(void)
 {
+	uint32_t fdt;
+
+	__barebox_arm_head();
+
 	arm_cpu_lowlevel_init();
 	arm_setup_stack(0x20000000 - 16);
 	imx51_init_lowlevel(800);
-	imx51_barebox_entry(0);
+
+	fdt = (uint32_t)__dtb_imx51_genesi_efika_sb_start - get_runtime_offset();
+
+	imx51_barebox_entry(fdt);
 }
diff --git a/arch/arm/configs/efika-mx-smartbook_defconfig b/arch/arm/configs/efika-mx-smartbook_defconfig
index 8e14466..f436d0d 100644
--- a/arch/arm/configs/efika-mx-smartbook_defconfig
+++ b/arch/arm/configs/efika-mx-smartbook_defconfig
@@ -1,3 +1,4 @@
+CONFIG_IMX_MULTI_BOARDS=y
 CONFIG_BUILTIN_DTB=y
 CONFIG_BUILTIN_DTB_NAME="imx51-genesi-efika-sb"
 CONFIG_ARCH_IMX=y
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 1158f41..63956e9 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -8,6 +8,7 @@ dtb-$(CONFIG_ARCH_IMX6) += imx6q-dmo-realq7.dtb \
 BUILTIN_DTB := $(patsubst "%",%,$(CONFIG_BUILTIN_DTB_NAME))
 obj-$(CONFIG_BUILTIN_DTB) += $(BUILTIN_DTB).dtb.o
 
+pbl-$(CONFIG_MACH_EFIKA_MX_SMARTBOOK) += imx51-genesi-efika-sb.dtb.o
 pbl-$(CONFIG_MACH_FREESCALE_MX51_PDK) += imx51-babbage.dtb.o
 pbl-$(CONFIG_MACH_FREESCALE_MX53_LOCO) += imx53-qsb.dtb.o
 pbl-$(CONFIG_MACH_REALQ7) += imx6q-dmo-realq7.dtb.o
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index ccdebca..869b150 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -222,6 +222,14 @@ config IMX_MULTI_BOARDS
 
 if IMX_MULTI_BOARDS
 
+config MACH_EFIKA_MX_SMARTBOOK
+	bool "Efika MX smartbook"
+	select ARCH_IMX51
+	select HAVE_DEFAULT_ENVIRONMENT_NEW
+	select HAVE_PBL_MULTI_IMAGES
+	help
+	  Choose this to compile barebox for the Efika MX Smartbook
+
 config MACH_FREESCALE_MX51_PDK
 	bool "Freescale i.MX51 PDK"
 	select ARCH_IMX51
@@ -436,13 +444,6 @@ config MACH_CCMX51_BASEBOARD
 	  This adds board specific devices that can be found on Digi
 	  evaluation board for CCMX51 module.
 
-config MACH_EFIKA_MX_SMARTBOOK
-	bool "Efika MX smartbook"
-	select ARCH_IMX51
-	select HAVE_DEFAULT_ENVIRONMENT_NEW
-	help
-	  Choose this to compile barebox for the Efika MX Smartbook
-
 # ----------------------------------------------------------
 
 comment "i.MX53 Boards"
diff --git a/images/Makefile.imx b/images/Makefile.imx
index 002e73b..788800e 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -21,6 +21,12 @@ imximage-$(CONFIG_MACH_FREESCALE_MX51_PDK) += start_imx51_babbage.pblx.imximg
 FILE_barebox-freescale-imx51-babbage.img = start_imx51_babbage.pblx.imximg
 image-$(CONFIG_MACH_FREESCALE_MX51_PDK) += barebox-freescale-imx51-babbage.img
 
+pblx-$(CONFIG_MACH_EFIKA_MX_SMARTBOOK) += start_imx51_genesi_efikasb
+CFG_start_imx51_genesi_efikasb.pblx.imximg = $(board)/efika-mx-smartbook/flash-header-imx51-genesi-efikasb.imxcfg
+imximage-$(CONFIG_MACH_EFIKA_MX_SMARTBOOK) += start_imx51_genesi_efikasb.pblx.imximg
+FILE_barebox-genesi-efikasb.img = start_imx51_genesi_efikasb.pblx.imximg
+image-$(CONFIG_MACH_EFIKA_MX_SMARTBOOK) += barebox-genesi-efikasb.img
+
 # ----------------------- i.MX53 based boards ---------------------------
 pblx-$(CONFIG_MACH_FREESCALE_MX53_LOCO) += start_imx53_loco
 CFG_start_imx53_loco.pblx.imximg = $(board)/freescale-mx53-loco/flash-header-imx53-loco.imxcfg
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

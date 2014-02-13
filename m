Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WDtkt-0001uy-ML
 for barebox@lists.infradead.org; Thu, 13 Feb 2014 10:43:01 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 13 Feb 2014 11:42:27 +0100
Message-Id: <1392288152-14821-10-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 09/14] ARM: i.MX25: freescale-mx25-3stack: Switch to imx-image
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Makefile                                  |  1 +
 arch/arm/boards/freescale-mx25-3ds/3stack.c        | 61 ----------------------
 .../boards/freescale-mx25-3ds/flash-header.imxcfg  | 42 +++++++++++++++
 3 files changed, 43 insertions(+), 61 deletions(-)
 create mode 100644 arch/arm/boards/freescale-mx25-3ds/flash-header.imxcfg

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 1ea7647..6be1bd4 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -216,6 +216,7 @@ imxcfg-$(CONFIG_MACH_CCMX51) += $(boarddir)/ccxmx51/flash-header.imxcfg
 imxcfg-$(CONFIG_MACH_TX51) += $(boarddir)/karo-tx51/flash-header-karo-tx51.imxcfg
 imxcfg-$(CONFIG_MACH_GUF_VINCELL) += $(boarddir)/guf-vincell/flash-header.imxcfg
 imxcfg-$(CONFIG_MACH_EUKREA_CPUIMX51SD) += $(boarddir)/eukrea_cpuimx51/flash-header.imxcfg
+imxcfg-$(CONFIG_MACH_FREESCALE_MX25_3STACK) += $(boarddir)/freescale-mx25-3-stack/flash-header.imxcfg
 ifneq ($(imxcfg-y),)
 CFG_barebox.imximg := $(imxcfg-y)
 KBUILD_IMAGE  := barebox.imximg
diff --git a/arch/arm/boards/freescale-mx25-3ds/3stack.c b/arch/arm/boards/freescale-mx25-3ds/3stack.c
index bd0e839..f000010 100644
--- a/arch/arm/boards/freescale-mx25-3ds/3stack.c
+++ b/arch/arm/boards/freescale-mx25-3ds/3stack.c
@@ -42,67 +42,6 @@
 #include <mach/devices-imx25.h>
 #include <asm/barebox-arm-head.h>
 
-void __naked __flash_header_start go(void)
-{
-	barebox_arm_head();
-}
-
-struct imx_dcd_entry __dcd_entry_section dcd_entry[] = {
-	{ .ptr_type = 4, .addr = 0xb8002050, .val = 0x0000d843, },
-	{ .ptr_type = 4, .addr = 0xb8002054, .val = 0x22252521, },
-	{ .ptr_type = 4, .addr = 0xb8002058, .val = 0x22220a00, },
-#if defined CONFIG_FREESCALE_MX25_3STACK_SDRAM_64MB_DDR2
-	{ .ptr_type = 4, .addr = 0xb8001004, .val = 0x0076e83a, },
-	{ .ptr_type = 4, .addr = 0xb8001010, .val = 0x00000304, },
-	{ .ptr_type = 4, .addr = 0xb8001000, .val = 0x92210000, },
-	{ .ptr_type = 4, .addr = 0x80000f00, .val = 0x12344321, },
-	{ .ptr_type = 4, .addr = 0xb8001000, .val = 0xb2210000, },
-	{ .ptr_type = 1, .addr = 0x82000000, .val = 0xda, },
-	{ .ptr_type = 1, .addr = 0x83000000, .val = 0xda, },
-	{ .ptr_type = 1, .addr = 0x81000400, .val = 0xda, },
-	{ .ptr_type = 1, .addr = 0x80000333, .val = 0xda, },
-	{ .ptr_type = 4, .addr = 0xb8001000, .val = 0x92210000, },
-	{ .ptr_type = 4, .addr = 0x80000400, .val = 0x12344321, },
-	{ .ptr_type = 4, .addr = 0xb8001000, .val = 0xa2210000, },
-	{ .ptr_type = 4, .addr = 0x80000000, .val = 0x87654321, },
-	{ .ptr_type = 4, .addr = 0x80000000, .val = 0x87654321, },
-	{ .ptr_type = 4, .addr = 0xb8001000, .val = 0xb2210000, },
-	{ .ptr_type = 1, .addr = 0x80000233, .val = 0xda, },
-	{ .ptr_type = 1, .addr = 0x81000780, .val = 0xda, },
-	{ .ptr_type = 1, .addr = 0x81000400, .val = 0xda, },
-	{ .ptr_type = 4, .addr = 0xb8001000, .val = 0x82216080, },
-#elif defined CONFIG_FREESCALE_MX25_3STACK_SDRAM_128MB_MDDR
-	{ .ptr_type = 4, .addr = 0xb8001010, .val = 0x00000004, },
-	{ .ptr_type = 4, .addr = 0xb8001000, .val = 0x92100000, },
-	{ .ptr_type = 1, .addr = 0x80000400, .val = 0x21, },
-	{ .ptr_type = 4, .addr = 0xb8001000, .val = 0xa2100000, },
-	{ .ptr_type = 4, .addr = 0x80000000, .val = 0x12344321, },
-	{ .ptr_type = 4, .addr = 0x80000000, .val = 0x12344321, },
-	{ .ptr_type = 4, .addr = 0xb8001000, .val = 0xb2100000, },
-	{ .ptr_type = 1, .addr = 0x80000033, .val = 0xda, },
-	{ .ptr_type = 1, .addr = 0x81000000, .val = 0xff, },
-	{ .ptr_type = 4, .addr = 0xb8001000, .val = 0x82216880, },
-	{ .ptr_type = 4, .addr = 0xb8001004, .val = 0x00295729, },
-#else
-#error "Unsupported SDRAM type"
-#endif
-	{ .ptr_type = 4, .addr = 0x53f80008, .val = 0x20034000, },
-};
-
-struct imx_flash_header __flash_header_section flash_header = {
-	.app_code_jump_vector	= DEST_BASE + 0x1000,
-	.app_code_barker	= APP_CODE_BARKER,
-	.app_code_csf		= 0,
-	.dcd_ptr_ptr		= FLASH_HEADER_BASE + offsetof(struct imx_flash_header, dcd),
-	.super_root_key		= 0,
-	.dcd			= FLASH_HEADER_BASE + offsetof(struct imx_flash_header, dcd_barker),
-	.app_dest		= DEST_BASE,
-	.dcd_barker		= DCD_BARKER,
-	.dcd_block_len		= sizeof(dcd_entry),
-};
-
-unsigned long __image_len_section barebox_len = DCD_BAREBOX_SIZE;
-
 static struct fec_platform_data fec_info = {
 	.xcv_type	= PHY_INTERFACE_MODE_RMII,
 	.phy_addr	= 1,
diff --git a/arch/arm/boards/freescale-mx25-3ds/flash-header.imxcfg b/arch/arm/boards/freescale-mx25-3ds/flash-header.imxcfg
new file mode 100644
index 0000000..f195e8c
--- /dev/null
+++ b/arch/arm/boards/freescale-mx25-3ds/flash-header.imxcfg
@@ -0,0 +1,42 @@
+soc imx25
+loadaddr 0x80000000
+dcdofs 0x400
+wm 32 0xb8002050 0x0000d843
+wm 32 0xb8002054 0x22252521
+wm 32 0xb8002058 0x22220a00
+#if defined CONFIG_FREESCALE_MX25_3STACK_SDRAM_64MB_DDR2
+wm 32 0xb8001004 0x0076e83a
+wm 32 0xb8001010 0x00000304
+wm 32 0xb8001000 0x92210000
+wm 32 0x80000f00 0x12344321
+wm 32 0xb8001000 0xb2210000
+wm 8 0x82000000 0xda
+wm 8 0x83000000 0xda
+wm 8 0x81000400 0xda
+wm 8 0x80000333 0xda
+wm 32 0xb8001000 0x92210000
+wm 32 0x80000400 0x12344321
+wm 32 0xb8001000 0xa2210000
+wm 32 0x80000000 0x87654321
+wm 32 0x80000000 0x87654321
+wm 32 0xb8001000 0xb2210000
+wm 8 0x80000233 0xda
+wm 8 0x81000780 0xda
+wm 8 0x81000400 0xda
+wm 32 0xb8001000 0x82216080
+#elif defined CONFIG_FREESCALE_MX25_3STACK_SDRAM_128MB_MDDR
+wm 32 0xb8001010 0x00000004
+wm 32 0xb8001000 0x92100000
+wm 8 0x80000400 0x21
+wm 32 0xb8001000 0xa2100000
+wm 32 0x80000000 0x12344321
+wm 32 0x80000000 0x12344321
+wm 32 0xb8001000 0xb2100000
+wm 8 0x80000033 0xda
+wm 8 0x81000000 0xff
+wm 32 0xb8001000 0x82216880
+wm 32 0xb8001004 0x00295729
+#else
+#error "Unsupported SDRAM type"
+#endif
+wm 32 0x53f80008 0x20034000
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Urkff-0000v1-6Y
 for barebox@lists.infradead.org; Wed, 26 Jun 2013 08:01:47 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 26 Jun 2013 10:00:51 +0200
Message-Id: <1372233657-19455-6-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 05/11] ARM: i.MX53 loco: add board name to flash header file
To: barebox@lists.infradead.org

This is necessary because the C name for the flash header matches
the filename. For multiple board support we have to make the name
unique to prevent linker errors.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/freescale-mx53-loco/Makefile       |  4 +-
 arch/arm/boards/freescale-mx53-loco/board.c        |  7 +--
 .../flash-header-imx53-loco.imxcfg                 | 54 ++++++++++++++++++++++
 .../boards/freescale-mx53-loco/flash-header.imxcfg | 54 ----------------------
 images/Makefile.imx                                |  2 +-
 5 files changed, 61 insertions(+), 60 deletions(-)
 create mode 100644 arch/arm/boards/freescale-mx53-loco/flash-header-imx53-loco.imxcfg
 delete mode 100644 arch/arm/boards/freescale-mx53-loco/flash-header.imxcfg

diff --git a/arch/arm/boards/freescale-mx53-loco/Makefile b/arch/arm/boards/freescale-mx53-loco/Makefile
index f1baae2..68fbe3a 100644
--- a/arch/arm/boards/freescale-mx53-loco/Makefile
+++ b/arch/arm/boards/freescale-mx53-loco/Makefile
@@ -1,3 +1,3 @@
-obj-y += board.o flash-header.o
-extra-y += flash-header.S flash-header.dcd
+obj-y += board.o flash-header-imx53-loco.o
+extra-y += flash-header-imx53-loco.S flash-header-imx53-loco.dcd
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/freescale-mx53-loco/board.c b/arch/arm/boards/freescale-mx53-loco/board.c
index dd4251d..446b7f3 100644
--- a/arch/arm/boards/freescale-mx53-loco/board.c
+++ b/arch/arm/boards/freescale-mx53-loco/board.c
@@ -75,7 +75,8 @@ static void loco_fec_reset(void)
 
 #define MX53_LOCO_USB_PWREN		IMX_GPIO_NR(7, 8)
 
-extern char flash_header_start[], flash_header_end[];
+extern char flash_header_imx53_loco_start[];
+extern char flash_header_imx53_loco_end[];
 
 static int loco_late_init(void)
 {
@@ -112,8 +113,8 @@ static int loco_late_init(void)
 	armlinux_set_architecture(MACH_TYPE_MX53_LOCO);
 
 	imx53_bbu_internal_mmc_register_handler("mmc", "/dev/mmc0",
-		BBU_HANDLER_FLAG_DEFAULT, (void *)flash_header_start,
-		flash_header_end - flash_header_start, 0);
+		BBU_HANDLER_FLAG_DEFAULT, (void *)flash_header_imx53_loco_start,
+		flash_header_imx53_loco_end - flash_header_imx53_loco_start, 0);
 
 	return 0;
 }
diff --git a/arch/arm/boards/freescale-mx53-loco/flash-header-imx53-loco.imxcfg b/arch/arm/boards/freescale-mx53-loco/flash-header-imx53-loco.imxcfg
new file mode 100644
index 0000000..95bcd19
--- /dev/null
+++ b/arch/arm/boards/freescale-mx53-loco/flash-header-imx53-loco.imxcfg
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
diff --git a/arch/arm/boards/freescale-mx53-loco/flash-header.imxcfg b/arch/arm/boards/freescale-mx53-loco/flash-header.imxcfg
deleted file mode 100644
index 95bcd19..0000000
--- a/arch/arm/boards/freescale-mx53-loco/flash-header.imxcfg
+++ /dev/null
@@ -1,54 +0,0 @@
-loadaddr 0x70000000
-soc imx53
-dcdofs 0x400
-wm 32 0x53fa8554 0x00300000
-wm 32 0x53fa8558 0x00300040
-wm 32 0x53fa8560 0x00300000
-wm 32 0x53fa8564 0x00300040
-wm 32 0x53fa8568 0x00300040
-wm 32 0x53fa8570 0x00300000
-wm 32 0x53fa8574 0x00300000
-wm 32 0x53fa8578 0x00300000
-wm 32 0x53fa857c 0x00300040
-wm 32 0x53fa8580 0x00300040
-wm 32 0x53fa8584 0x00300000
-wm 32 0x53fa8588 0x00300000
-wm 32 0x53fa8590 0x00300040
-wm 32 0x53fa8594 0x00300000
-wm 32 0x53fa86f0 0x00300000
-wm 32 0x53fa86f4 0x00000000
-wm 32 0x53fa86fc 0x00000000
-wm 32 0x53fa8714 0x00000000
-wm 32 0x53fa8718 0x00300000
-wm 32 0x53fa871c 0x00300000
-wm 32 0x53fa8720 0x00300000
-wm 32 0x53fa8724 0x04000000
-wm 32 0x53fa8728 0x00300000
-wm 32 0x53fa872c 0x00300000
-wm 32 0x63fd9088 0x35343535
-wm 32 0x63fd9090 0x4d444c44
-wm 32 0x63fd907c 0x01370138
-wm 32 0x63fd9080 0x013b013c
-wm 32 0x63fd9018 0x00011740
-wm 32 0x63fd9000 0xc3190000
-wm 32 0x63fd900c 0x9f5152e3
-wm 32 0x63fd9010 0xb68e8a63
-wm 32 0x63fd9014 0x01ff00db
-wm 32 0x63fd902c 0x000026d2
-wm 32 0x63fd9030 0x009f0e21
-wm 32 0x63fd9008 0x12273030
-wm 32 0x63fd9004 0x0002002d
-wm 32 0x63fd901c 0x00008032
-wm 32 0x63fd901c 0x00008033
-wm 32 0x63fd901c 0x00028031
-wm 32 0x63fd901c 0x052080b0
-wm 32 0x63fd901c 0x04008040
-wm 32 0x63fd901c 0x0000803a
-wm 32 0x63fd901c 0x0000803b
-wm 32 0x63fd901c 0x00028039
-wm 32 0x63fd901c 0x05208138
-wm 32 0x63fd901c 0x04008048
-wm 32 0x63fd9020 0x00005800
-wm 32 0x63fd9040 0x04b80003
-wm 32 0x63fd9058 0x00022227
-wm 32 0x63fd901c 0x00000000
diff --git a/images/Makefile.imx b/images/Makefile.imx
index d13be84..002e73b 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -23,7 +23,7 @@ image-$(CONFIG_MACH_FREESCALE_MX51_PDK) += barebox-freescale-imx51-babbage.img
 
 # ----------------------- i.MX53 based boards ---------------------------
 pblx-$(CONFIG_MACH_FREESCALE_MX53_LOCO) += start_imx53_loco
-CFG_start_imx53_loco.pblx.imximg = $(board)/freescale-mx53-loco/flash-header.imxcfg
+CFG_start_imx53_loco.pblx.imximg = $(board)/freescale-mx53-loco/flash-header-imx53-loco.imxcfg
 imximage-$(CONFIG_MACH_FREESCALE_MX53_LOCO) += start_imx53_loco.pblx.imximg
 FILE_barebox-freescale-imx53-loco.img = start_imx53_loco.pblx.imximg
 image-$(CONFIG_MACH_FREESCALE_MX53_LOCO) += barebox-freescale-imx53-loco.img
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

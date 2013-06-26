Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Urkfg-0001vj-5S
 for barebox@lists.infradead.org; Wed, 26 Jun 2013 08:01:46 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 26 Jun 2013 10:00:48 +0200
Message-Id: <1372233657-19455-3-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 02/11] ARM: i.MX51 babbage: add board name to flash header file
To: barebox@lists.infradead.org

This is necessary because the C name for the flash header matches
the filename. For multiple board support we have to make the name
unique to prevent linker errors.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/freescale-mx51-pdk/Makefile        |  4 +-
 arch/arm/boards/freescale-mx51-pdk/board.c         |  7 +--
 .../flash-header-imx51-babbage.imxcfg              | 59 ++++++++++++++++++++++
 .../boards/freescale-mx51-pdk/flash-header.imxcfg  | 59 ----------------------
 images/Makefile.imx                                |  2 +-
 5 files changed, 66 insertions(+), 65 deletions(-)
 create mode 100644 arch/arm/boards/freescale-mx51-pdk/flash-header-imx51-babbage.imxcfg
 delete mode 100644 arch/arm/boards/freescale-mx51-pdk/flash-header.imxcfg

diff --git a/arch/arm/boards/freescale-mx51-pdk/Makefile b/arch/arm/boards/freescale-mx51-pdk/Makefile
index f1baae2..0c06778 100644
--- a/arch/arm/boards/freescale-mx51-pdk/Makefile
+++ b/arch/arm/boards/freescale-mx51-pdk/Makefile
@@ -1,3 +1,3 @@
-obj-y += board.o flash-header.o
-extra-y += flash-header.S flash-header.dcd
+obj-y += board.o flash-header-imx51-babbage.o
+extra-y += flash-header-imx51-babbage.S flash-header-imx51-babbage.dcd
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/freescale-mx51-pdk/board.c b/arch/arm/boards/freescale-mx51-pdk/board.c
index fc7e175..3906e47 100644
--- a/arch/arm/boards/freescale-mx51-pdk/board.c
+++ b/arch/arm/boards/freescale-mx51-pdk/board.c
@@ -157,7 +157,8 @@ static void babbage_power_init(void)
 	mdelay(50);
 }
 
-extern char flash_header_start[], flash_header_end[];
+extern char flash_header_imx51_babbage_start[];
+extern char flash_header_imx51_babbage_end[];
 
 static int f3s_devices_init(void)
 {
@@ -171,8 +172,8 @@ static int f3s_devices_init(void)
 	armlinux_set_architecture(MACH_TYPE_MX51_BABBAGE);
 
 	imx51_bbu_internal_mmc_register_handler("mmc", "/dev/mmc0",
-		BBU_HANDLER_FLAG_DEFAULT, (void *)flash_header_start,
-		flash_header_end - flash_header_start, 0);
+		BBU_HANDLER_FLAG_DEFAULT, (void *)flash_header_imx51_babbage_start,
+		flash_header_imx51_babbage_end - flash_header_imx51_babbage_start, 0);
 
 	return 0;
 }
diff --git a/arch/arm/boards/freescale-mx51-pdk/flash-header-imx51-babbage.imxcfg b/arch/arm/boards/freescale-mx51-pdk/flash-header-imx51-babbage.imxcfg
new file mode 100644
index 0000000..bac6816
--- /dev/null
+++ b/arch/arm/boards/freescale-mx51-pdk/flash-header-imx51-babbage.imxcfg
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
diff --git a/arch/arm/boards/freescale-mx51-pdk/flash-header.imxcfg b/arch/arm/boards/freescale-mx51-pdk/flash-header.imxcfg
deleted file mode 100644
index bac6816..0000000
--- a/arch/arm/boards/freescale-mx51-pdk/flash-header.imxcfg
+++ /dev/null
@@ -1,59 +0,0 @@
-loadaddr 0x90000000
-soc imx51
-dcdofs 0x400
-wm 32 0x73fa88a0 0x00000200
-wm 32 0x73fa850c 0x000020c5
-wm 32 0x73fa8510 0x000020c5
-wm 32 0x73fa883c 0x00000002
-wm 32 0x73fa8848 0x00000002
-wm 32 0x73fa84b8 0x000000e7
-wm 32 0x73fa84bc 0x00000045
-wm 32 0x73fa84c0 0x00000045
-wm 32 0x73fa84c4 0x00000045
-wm 32 0x73fa84c8 0x00000045
-wm 32 0x73fa8820 0x00000000
-wm 32 0x73fa84a4 0x00000003
-wm 32 0x73fa84a8 0x00000003
-wm 32 0x73fa84ac 0x000000e3
-wm 32 0x73fa84b0 0x000000e3
-wm 32 0x73fa84b4 0x000000e3
-wm 32 0x73fa84cc 0x000000e3
-wm 32 0x73fa84d0 0x000000e2
-wm 32 0x73fa882c 0x00000004
-wm 32 0x73fa88a4 0x00000004
-wm 32 0x73fa88ac 0x00000004
-wm 32 0x73fa88b8 0x00000004
-wm 32 0x83fd9000 0x82a20000
-wm 32 0x83fd9008 0x82a20000
-wm 32 0x83fd9010 0x000ad0d0
-wm 32 0x83fd9004 0x3f3584ab
-wm 32 0x83fd900c 0x3f3584ab
-wm 32 0x83fd9014 0x04008008
-wm 32 0x83fd9014 0x0000801a
-wm 32 0x83fd9014 0x0000801b
-wm 32 0x83fd9014 0x00448019
-wm 32 0x83fd9014 0x07328018
-wm 32 0x83fd9014 0x04008008
-wm 32 0x83fd9014 0x00008010
-wm 32 0x83fd9014 0x00008010
-wm 32 0x83fd9014 0x06328018
-wm 32 0x83fd9014 0x03808019
-wm 32 0x83fd9014 0x00408019
-wm 32 0x83fd9014 0x00008000
-wm 32 0x83fd9014 0x0400800c
-wm 32 0x83fd9014 0x0000801e
-wm 32 0x83fd9014 0x0000801f
-wm 32 0x83fd9014 0x0000801d
-wm 32 0x83fd9014 0x0732801c
-wm 32 0x83fd9014 0x0400800c
-wm 32 0x83fd9014 0x00008014
-wm 32 0x83fd9014 0x00008014
-wm 32 0x83fd9014 0x0632801c
-wm 32 0x83fd9014 0x0380801d
-wm 32 0x83fd9014 0x0040801d
-wm 32 0x83fd9014 0x00008004
-wm 32 0x83fd9000 0xb2a20000
-wm 32 0x83fd9008 0xb2a20000
-wm 32 0x83fd9010 0x000ad6d0
-wm 32 0x83fd9034 0x90000000
-wm 32 0x83fd9014 0x00000000
diff --git a/images/Makefile.imx b/images/Makefile.imx
index 72e8cde..d13be84 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -16,7 +16,7 @@ image-$(CONFIG_MACH_PCM038) += barebox-phytec-phycore-imx27.img
 
 # ----------------------- i.MX51 based boards ---------------------------
 pblx-$(CONFIG_MACH_FREESCALE_MX51_PDK) += start_imx51_babbage
-CFG_start_imx51_babbage.pblx.imximg = $(board)/freescale-mx51-pdk/flash-header.imxcfg
+CFG_start_imx51_babbage.pblx.imximg = $(board)/freescale-mx51-pdk/flash-header-imx51-babbage.imxcfg
 imximage-$(CONFIG_MACH_FREESCALE_MX51_PDK) += start_imx51_babbage.pblx.imximg
 FILE_barebox-freescale-imx51-babbage.img = start_imx51_babbage.pblx.imximg
 image-$(CONFIG_MACH_FREESCALE_MX51_PDK) += barebox-freescale-imx51-babbage.img
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

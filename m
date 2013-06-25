Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1UrPRT-0003M5-9Y
 for barebox@lists.infradead.org; Tue, 25 Jun 2013 09:21:41 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 25 Jun 2013 11:20:51 +0200
Message-Id: <1372152052-5463-12-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1372152052-5463-1-git-send-email-s.hauer@pengutronix.de>
References: <1372152052-5463-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 11/12] ARM: dmo realq7: switch to multi image support
To: barebox@lists.infradead.org

The image will be named after the official name of this board:

barebox-datamodul-edm-qmx6.img

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/dmo-mx6-realq7/lowlevel.c | 12 ++++++++++--
 arch/arm/dts/Makefile                     |  1 +
 arch/arm/mach-imx/Kconfig                 |  2 +-
 images/Makefile.imx                       |  7 +++++++
 4 files changed, 19 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boards/dmo-mx6-realq7/lowlevel.c b/arch/arm/boards/dmo-mx6-realq7/lowlevel.c
index ebcf76f..240116d 100644
--- a/arch/arm/boards/dmo-mx6-realq7/lowlevel.c
+++ b/arch/arm/boards/dmo-mx6-realq7/lowlevel.c
@@ -138,8 +138,14 @@ static void sdram_init(void)
 	writel(0x00000001, 0x021e8080);
 }
 
-void __naked barebox_arm_reset_vector(void)
+extern char __dtb_imx6q_dmo_realq7_start[];
+
+ENTRY_FUNCTION(start_imx6_realq7)(void)
 {
+	uint32_t fdt;
+
+	__barebox_arm_head();
+
 	arm_cpu_lowlevel_init();
 
 	arm_setup_stack(0x00940000 - 8);
@@ -151,5 +157,7 @@ void __naked barebox_arm_reset_vector(void)
 		mmdc_do_dqs_calibration();
 	}
 
-	barebox_arm_entry(0x10000000, SZ_2G, 0);
+	fdt = (uint32_t)__dtb_imx6q_dmo_realq7_start - get_runtime_offset();
+
+	barebox_arm_entry(0x10000000, SZ_2G, fdt);
 }
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 19a1985..2fdd2e7 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -9,6 +9,7 @@ BUILTIN_DTB := $(patsubst "%",%,$(CONFIG_BUILTIN_DTB_NAME))
 obj-$(CONFIG_BUILTIN_DTB) += $(BUILTIN_DTB).dtb.o
 
 pbl-$(CONFIG_MACH_FREESCALE_MX53_LOCO) += imx53-qsb.dtb.o
+pbl-$(CONFIG_MACH_REALQ7) += imx6q-dmo-realq7.dtb.o
 
 .SECONDARY: $(obj)/$(BUILTIN_DTB).dtb.S
 
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 6560798..9927a3d 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -530,8 +530,8 @@ config MACH_SABRESD
 
 config MACH_REALQ7
 	bool "DataModul i.MX6Q Real Qseven Board"
-	select ARCH_IMX_INTERNAL_BOOT_USE_IMXIMAGE
 	select HAVE_DEFAULT_ENVIRONMENT_NEW
+	select HAVE_PBL_MULTI_IMAGES
 
 endchoice
 
diff --git a/images/Makefile.imx b/images/Makefile.imx
index 3a5b5f1..11c4160 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -20,3 +20,10 @@ CFG_start_imx53_loco.pblx.imximg = $(board)/freescale-mx53-loco/flash-header.imx
 imximage-$(CONFIG_MACH_FREESCALE_MX53_LOCO) += start_imx53_loco.pblx.imximg
 FILE_barebox-freescale-imx53-loco.img = start_imx53_loco.pblx.imximg
 image-$(CONFIG_MACH_FREESCALE_MX53_LOCO) += barebox-freescale-imx53-loco.img
+
+# ----------------------- i.MX6 based boards ---------------------------
+pblx-$(CONFIG_MACH_REALQ7) += start_imx6_realq7
+CFG_start_imx6_realq7.pblx.imximg = $(board)/dmo-mx6-realq7/flash-header.imxcfg
+imximage-$(CONFIG_MACH_REALQ7) += start_imx6_realq7.pblx.imximg
+FILE_barebox-datamodul-edm-qmx6.img = start_imx6_realq7.pblx.imximg
+image-$(CONFIG_MACH_REALQ7) += barebox-datamodul-edm-qmx6.img
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

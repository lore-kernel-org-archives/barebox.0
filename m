Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UwUdV-0003i1-Da
 for barebox@lists.infradead.org; Tue, 09 Jul 2013 09:55:07 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  9 Jul 2013 11:54:37 +0200
Message-Id: <1373363682-24449-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1373363682-24449-1-git-send-email-s.hauer@pengutronix.de>
References: <1373363682-24449-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/6] Revert "ARM: i.MX27 pcm038: switch to multi image"
To: barebox@lists.infradead.org

This reverts commit 08c0e206b3614eeecc1c3cee63665077360212e5.

The external NAND boot code currently uses the _text linker variable
to determine a place for the image. This doesn't work with multi image
support which will link the binary at 0x0. Revert multi image support
for the pcm038 for now until a solution is found.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/pcm038/lowlevel.c | 4 +---
 arch/arm/mach-imx/Kconfig         | 1 -
 images/Makefile.imx               | 5 -----
 3 files changed, 1 insertion(+), 9 deletions(-)

diff --git a/arch/arm/boards/pcm038/lowlevel.c b/arch/arm/boards/pcm038/lowlevel.c
index a3b2d13..0ea2939 100644
--- a/arch/arm/boards/pcm038/lowlevel.c
+++ b/arch/arm/boards/pcm038/lowlevel.c
@@ -33,13 +33,11 @@
 
 #define ESDCTL0_VAL (ESDCTL0_SDE | ESDCTL0_ROW13 | ESDCTL0_COL10)
 
-ENTRY_FUNCTION(start_imx27_pcm038)(void)
+void __bare_init __naked barebox_arm_reset_vector(void)
 {
 	uint32_t r;
 	int i;
 
-	__barebox_arm_head();
-
 	arm_cpu_lowlevel_init();
 
 	/* ahb lite ip interface */
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 9297a21..aedefe2 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -335,7 +335,6 @@ config MACH_PCM038
 	select DRIVER_SPI_IMX
 	select MFD_MC13XXX
 	select HAVE_DEFAULT_ENVIRONMENT_NEW
-	select HAVE_PBL_MULTI_IMAGES
 	help
 	  Say Y here if you are using Phytec's phyCORE-i.MX27 (pcm038) equipped
 	  with a Freescale i.MX27 Processor
diff --git a/images/Makefile.imx b/images/Makefile.imx
index 788800e..e54be06 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -9,11 +9,6 @@ $(obj)/%.imximg: $(obj)/% FORCE
 
 board = $(srctree)/arch/$(ARCH)/boards
 
-# ----------------------- i.MX27 based boards ---------------------------
-pblx-$(CONFIG_MACH_PCM038) += start_imx27_pcm038
-FILE_barebox-phytec-phycore-imx27.img = start_imx27_pcm038.pblx
-image-$(CONFIG_MACH_PCM038) += barebox-phytec-phycore-imx27.img
-
 # ----------------------- i.MX51 based boards ---------------------------
 pblx-$(CONFIG_MACH_FREESCALE_MX51_PDK) += start_imx51_babbage
 CFG_start_imx51_babbage.pblx.imximg = $(board)/freescale-mx51-pdk/flash-header-imx51-babbage.imxcfg
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

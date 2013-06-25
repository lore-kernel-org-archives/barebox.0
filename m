Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UrPRA-0000ID-0F
 for barebox@lists.infradead.org; Tue, 25 Jun 2013 09:21:32 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 25 Jun 2013 11:20:48 +0200
Message-Id: <1372152052-5463-9-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 08/12] ARM: i.MX27 pcm038: switch to multi image
To: barebox@lists.infradead.org

This also converts the Phytec phyCORE i.MX27 aka pcm038 to use
image compression. The image will be named

barebox-phytec-phycore-imx27.img

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/pcm038/lowlevel.c | 4 +++-
 arch/arm/mach-imx/Kconfig         | 1 +
 images/Makefile.imx               | 5 +++++
 3 files changed, 9 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boards/pcm038/lowlevel.c b/arch/arm/boards/pcm038/lowlevel.c
index 0ea2939..a3b2d13 100644
--- a/arch/arm/boards/pcm038/lowlevel.c
+++ b/arch/arm/boards/pcm038/lowlevel.c
@@ -33,11 +33,13 @@
 
 #define ESDCTL0_VAL (ESDCTL0_SDE | ESDCTL0_ROW13 | ESDCTL0_COL10)
 
-void __bare_init __naked barebox_arm_reset_vector(void)
+ENTRY_FUNCTION(start_imx27_pcm038)(void)
 {
 	uint32_t r;
 	int i;
 
+	__barebox_arm_head();
+
 	arm_cpu_lowlevel_init();
 
 	/* ahb lite ip interface */
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index d58682b..b80e885 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -330,6 +330,7 @@ config MACH_PCM038
 	select DRIVER_SPI_IMX
 	select MFD_MC13XXX
 	select HAVE_DEFAULT_ENVIRONMENT_NEW
+	select HAVE_PBL_MULTI_IMAGES
 	help
 	  Say Y here if you are using Phytec's phyCORE-i.MX27 (pcm038) equipped
 	  with a Freescale i.MX27 Processor
diff --git a/images/Makefile.imx b/images/Makefile.imx
index cd7b610..6334729 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -8,3 +8,8 @@ $(obj)/%.imximg: $(obj)/% FORCE
 	$(call if_changed,imx_image)
 
 board = $(srctree)/arch/$(ARCH)/boards
+
+# ----------------------- i.MX27 based boards ---------------------------
+pblx-$(CONFIG_MACH_PCM038) += start_imx27_pcm038
+FILE_barebox-phytec-phycore-imx27.img = start_imx27_pcm038.pblx
+image-$(CONFIG_MACH_PCM038) += barebox-phytec-phycore-imx27.img
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAUnI-0001yF-Jb
 for barebox@lists.infradead.org; Wed, 18 Sep 2019 07:54:35 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 18 Sep 2019 09:54:16 +0200
Message-Id: <20190918075421.20456-12-s.hauer@pengutronix.de>
In-Reply-To: <20190918075421.20456-1-s.hauer@pengutronix.de>
References: <20190918075421.20456-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 11/16] ARM: mxs: imx23-evk: Switch to multi image support
To: Barebox List <barebox@lists.infradead.org>

Build the i.MX23 EVK as multi image.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/freescale-mx23-evk/lowlevel.c | 2 +-
 arch/arm/mach-mxs/Kconfig                     | 1 +
 images/Makefile.mxs                           | 4 ++++
 3 files changed, 6 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boards/freescale-mx23-evk/lowlevel.c b/arch/arm/boards/freescale-mx23-evk/lowlevel.c
index 2321a469ab..99e08d88c7 100644
--- a/arch/arm/boards/freescale-mx23-evk/lowlevel.c
+++ b/arch/arm/boards/freescale-mx23-evk/lowlevel.c
@@ -5,7 +5,7 @@
 #include <asm/barebox-arm.h>
 #include <mach/imx23-regs.h>
 
-void __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
+ENTRY_FUNCTION(start_imx23_evk, r0, r1, r2)
 {
 	arm_cpu_lowlevel_init();
 	barebox_arm_entry(IMX_MEMORY_BASE, SZ_32M, (void *)MACH_TYPE_MX23EVK);
diff --git a/arch/arm/mach-mxs/Kconfig b/arch/arm/mach-mxs/Kconfig
index 2409c53dd7..fd6b5929a3 100644
--- a/arch/arm/mach-mxs/Kconfig
+++ b/arch/arm/mach-mxs/Kconfig
@@ -34,6 +34,7 @@ choice
 
 config MACH_MX23EVK
 	bool "mx23-evk"
+	select HAVE_PBL_MULTI_IMAGES
 	help
 	  Say Y here if you are using the Freescale i.MX23-EVK board
 
diff --git a/images/Makefile.mxs b/images/Makefile.mxs
index b230c02562..4c69c347fb 100644
--- a/images/Makefile.mxs
+++ b/images/Makefile.mxs
@@ -68,3 +68,7 @@ image-$(CONFIG_MACH_IMX233_OLINUXINO) += barebox-olinuxino-imx23-2nd.img
 pblb-$(CONFIG_MACH_CFA10036) += start_cfa10036
 FILE_barebox-crystalfonts-cfa10036-2nd.img = start_cfa10036.pblb
 image-$(CONFIG_MACH_CFA10036) += barebox-crystalfonts-cfa10036-2nd.img
+
+pblb-$(CONFIG_MACH_MX23EVK) += start_imx23_evk
+FILE_barebox-freescale-mx23-evk-2nd.img = start_imx23_evk.pblb
+image-$(CONFIG_MACH_MX23EVK) += barebox-freescale-mx23-evk-2nd.img
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

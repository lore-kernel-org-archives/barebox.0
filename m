Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAUnC-0001qX-Jm
 for barebox@lists.infradead.org; Wed, 18 Sep 2019 07:54:28 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 18 Sep 2019 09:54:17 +0200
Message-Id: <20190918075421.20456-13-s.hauer@pengutronix.de>
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
Subject: [PATCH 12/16] ARM: mxs: chumby: Switch to multi image support
To: Barebox List <barebox@lists.infradead.org>

Build the Chumby as multi image.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/chumby_falconwing/lowlevel.c | 2 +-
 arch/arm/mach-mxs/Kconfig                    | 1 +
 images/Makefile.mxs                          | 4 ++++
 3 files changed, 6 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boards/chumby_falconwing/lowlevel.c b/arch/arm/boards/chumby_falconwing/lowlevel.c
index ee287eccdf..0277b5d083 100644
--- a/arch/arm/boards/chumby_falconwing/lowlevel.c
+++ b/arch/arm/boards/chumby_falconwing/lowlevel.c
@@ -5,7 +5,7 @@
 #include <mach/imx23-regs.h>
 #include <generated/mach-types.h>
 
-void __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
+ENTRY_FUNCTION(start_chumby_falconwing, r0, r1, r2)
 {
 	arm_cpu_lowlevel_init();
 	barebox_arm_entry(IMX_MEMORY_BASE, SZ_64M, (void *)MACH_TYPE_CHUMBY);
diff --git a/arch/arm/mach-mxs/Kconfig b/arch/arm/mach-mxs/Kconfig
index fd6b5929a3..ffaf9a9e61 100644
--- a/arch/arm/mach-mxs/Kconfig
+++ b/arch/arm/mach-mxs/Kconfig
@@ -40,6 +40,7 @@ config MACH_MX23EVK
 
 config MACH_CHUMBY
 	bool "Chumby Falconwing"
+	select HAVE_PBL_MULTI_IMAGES
 	help
 	  Say Y here if you are using the "chumby one" aka falconwing from
 	  Chumby Industries
diff --git a/images/Makefile.mxs b/images/Makefile.mxs
index 4c69c347fb..ceb7b376a5 100644
--- a/images/Makefile.mxs
+++ b/images/Makefile.mxs
@@ -72,3 +72,7 @@ image-$(CONFIG_MACH_CFA10036) += barebox-crystalfonts-cfa10036-2nd.img
 pblb-$(CONFIG_MACH_MX23EVK) += start_imx23_evk
 FILE_barebox-freescale-mx23-evk-2nd.img = start_imx23_evk.pblb
 image-$(CONFIG_MACH_MX23EVK) += barebox-freescale-mx23-evk-2nd.img
+
+pblb-$(CONFIG_MACH_CHUMBY) += start_chumby_falconwing
+FILE_barebox-chumby-falconwing-2nd.img = start_chumby_falconwing.pblb
+image-$(CONFIG_MACH_CHUMBY) += barebox-chumby-falconwing-2nd.img
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

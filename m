Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAUnI-0001yE-J5
 for barebox@lists.infradead.org; Wed, 18 Sep 2019 07:54:35 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 18 Sep 2019 09:54:15 +0200
Message-Id: <20190918075421.20456-11-s.hauer@pengutronix.de>
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
Subject: [PATCH 10/16] ARM: mxs: cfa10036: Switch to multi image support
To: Barebox List <barebox@lists.infradead.org>

Build the cfa10036 as multi image.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/crystalfontz-cfa10036/lowlevel.c | 2 +-
 arch/arm/mach-mxs/Kconfig                        | 1 +
 images/Makefile.mxs                              | 4 ++++
 3 files changed, 6 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boards/crystalfontz-cfa10036/lowlevel.c b/arch/arm/boards/crystalfontz-cfa10036/lowlevel.c
index 37c162d30d..1bc5947682 100644
--- a/arch/arm/boards/crystalfontz-cfa10036/lowlevel.c
+++ b/arch/arm/boards/crystalfontz-cfa10036/lowlevel.c
@@ -5,7 +5,7 @@
 #include <mach/imx28-regs.h>
 #include <generated/mach-types.h>
 
-void __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2d)
+ENTRY_FUNCTION(start_cfa10036, r0, r1, r2)
 {
 	arm_cpu_lowlevel_init();
 	barebox_arm_entry(IMX_MEMORY_BASE, SZ_128M, (void *)MACH_TYPE_CFA10036);
diff --git a/arch/arm/mach-mxs/Kconfig b/arch/arm/mach-mxs/Kconfig
index fed7b524de..2409c53dd7 100644
--- a/arch/arm/mach-mxs/Kconfig
+++ b/arch/arm/mach-mxs/Kconfig
@@ -83,6 +83,7 @@ config MACH_CFA10036
 	select MXS_OCOTP
 	select I2C_GPIO
 	select EEPROM_AT24
+	select HAVE_PBL_MULTI_IMAGES
 	help
 	  Say Y here if you are using the Crystalfontz CFA-10036 module
 
diff --git a/images/Makefile.mxs b/images/Makefile.mxs
index f93c3fddd0..b230c02562 100644
--- a/images/Makefile.mxs
+++ b/images/Makefile.mxs
@@ -64,3 +64,7 @@ FILE_barebox-olinuxino-imx23-sd.img = start_barebox_olinuxino_imx23.mxsbs.mxssd
 image-$(CONFIG_MACH_IMX233_OLINUXINO) += barebox-olinuxino-imx23-sd.img
 FILE_barebox-olinuxino-imx23-2nd.img = start_barebox_olinuxino_imx23.pblb
 image-$(CONFIG_MACH_IMX233_OLINUXINO) += barebox-olinuxino-imx23-2nd.img
+
+pblb-$(CONFIG_MACH_CFA10036) += start_cfa10036
+FILE_barebox-crystalfonts-cfa10036-2nd.img = start_cfa10036.pblb
+image-$(CONFIG_MACH_CFA10036) += barebox-crystalfonts-cfa10036-2nd.img
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

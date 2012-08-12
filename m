Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T0Z4F-0003R6-Lq
 for barebox@lists.infradead.org; Sun, 12 Aug 2012 14:23:04 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 12 Aug 2012 16:22:43 +0200
Message-Id: <1344781367-13547-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1344781367-13547-1-git-send-email-s.hauer@pengutronix.de>
References: <1344781367-13547-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 5/8] ARM boards: Make boards pbl safe
To: barebox@lists.infradead.org

With pbl support enabled most boards need a pbl-y for their lowlevel
stuff.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/a9m2410/Makefile                 |    1 +
 arch/arm/boards/a9m2440/Makefile                 |    1 +
 arch/arm/boards/ccxmx51/Makefile                 |    1 +
 arch/arm/boards/edb93xx/Makefile                 |    1 +
 arch/arm/boards/eukrea_cpuimx25/Makefile         |    2 ++
 arch/arm/boards/eukrea_cpuimx27/Makefile         |    1 +
 arch/arm/boards/eukrea_cpuimx35/Makefile         |    2 ++
 arch/arm/boards/eukrea_cpuimx51/Makefile         |    1 +
 arch/arm/boards/freescale-mx25-3-stack/Makefile  |    1 +
 arch/arm/boards/freescale-mx35-3-stack/Makefile  |    2 ++
 arch/arm/boards/freescale-mx51-pdk/Makefile      |    1 +
 arch/arm/boards/freescale-mx53-loco/Makefile     |    1 +
 arch/arm/boards/freescale-mx53-smd/Makefile      |    1 +
 arch/arm/boards/freescale-mx6-arm2/Makefile      |    1 +
 arch/arm/boards/freescale-mx6-sabrelite/Makefile |    1 +
 arch/arm/boards/friendlyarm-mini2440/Makefile    |    1 +
 arch/arm/boards/guf-cupid/Makefile               |    1 +
 arch/arm/boards/guf-neso/Makefile                |    3 +--
 arch/arm/boards/imx21ads/Makefile                |    1 +
 arch/arm/boards/imx27ads/Makefile                |    1 +
 arch/arm/boards/karo-tx25/Makefile               |    1 +
 arch/arm/boards/karo-tx51/Makefile               |    3 ++-
 arch/arm/boards/netx/Makefile                    |    2 +-
 arch/arm/boards/panda/Makefile                   |    4 +++-
 arch/arm/boards/pcm027/Makefile                  |    1 +
 arch/arm/boards/pcm037/Makefile                  |    1 +
 arch/arm/boards/pcm038/Makefile                  |    1 +
 arch/arm/boards/pcm043/Makefile                  |    1 +
 arch/arm/boards/pcm049/Makefile                  |    1 +
 arch/arm/boards/phycard-a-xl2/Makefile           |    1 +
 arch/arm/boards/phycard-i.MX27/Makefile          |    1 +
 arch/arm/boards/scb9328/Makefile                 |    1 +
 arch/arm/boards/tqma53/Makefile                  |    1 +
 arch/arm/mach-ep93xx/Makefile                    |    1 +
 arch/arm/mach-imx/Makefile                       |    1 +
 arch/arm/mach-omap/Makefile                      |    3 +++
 arch/arm/mach-samsung/Makefile                   |    2 ++
 drivers/mtd/nand/Makefile                        |    1 +
 38 files changed, 47 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boards/a9m2410/Makefile b/arch/arm/boards/a9m2410/Makefile
index 63026f0..6842c84 100644
--- a/arch/arm/boards/a9m2410/Makefile
+++ b/arch/arm/boards/a9m2410/Makefile
@@ -1,3 +1,4 @@
 
 obj-y += lowlevel_init.o
+pbl-y += lowlevel_init.o
 obj-y += a9m2410.o
diff --git a/arch/arm/boards/a9m2440/Makefile b/arch/arm/boards/a9m2440/Makefile
index 779e83d..8a8f36d 100644
--- a/arch/arm/boards/a9m2440/Makefile
+++ b/arch/arm/boards/a9m2440/Makefile
@@ -1,4 +1,5 @@
 
 obj-y += lowlevel_init.o
+pbl-y += lowlevel_init.o
 obj-y += a9m2440.o
 obj-$(CONFIG_MACH_A9M2410DEV) += a9m2410dev.o
diff --git a/arch/arm/boards/ccxmx51/Makefile b/arch/arm/boards/ccxmx51/Makefile
index 249927e..f9eb2db 100644
--- a/arch/arm/boards/ccxmx51/Makefile
+++ b/arch/arm/boards/ccxmx51/Makefile
@@ -1,2 +1,3 @@
 obj-y					+= flash_header.o ccxmx51.o
+pbl-y					+= flash_header.o
 obj-$(CONFIG_MACH_CCMX51_BASEBOARD)	+= ccxmx51js.o
diff --git a/arch/arm/boards/edb93xx/Makefile b/arch/arm/boards/edb93xx/Makefile
index e19cd7b..945c963 100644
--- a/arch/arm/boards/edb93xx/Makefile
+++ b/arch/arm/boards/edb93xx/Makefile
@@ -1,2 +1,3 @@
 
 obj-y += edb93xx.o flash_cfg.o pll_cfg.o sdram_cfg.o
+pbl-y += edb93xx.o flash_cfg.o pll_cfg.o sdram_cfg.o
diff --git a/arch/arm/boards/eukrea_cpuimx25/Makefile b/arch/arm/boards/eukrea_cpuimx25/Makefile
index edd09a6..cc01cf9 100644
--- a/arch/arm/boards/eukrea_cpuimx25/Makefile
+++ b/arch/arm/boards/eukrea_cpuimx25/Makefile
@@ -21,5 +21,7 @@
 #
 
 obj-y += lowlevel.o
+pbl-y += lowlevel.o
 obj-y += eukrea_cpuimx25.o
 obj-$(CONFIG_ARCH_IMX_INTERNAL_BOOT) += flash_header.o
+pbl-$(CONFIG_ARCH_IMX_INTERNAL_BOOT) += flash_header.o
diff --git a/arch/arm/boards/eukrea_cpuimx27/Makefile b/arch/arm/boards/eukrea_cpuimx27/Makefile
index 5d958fa..fe6d376 100644
--- a/arch/arm/boards/eukrea_cpuimx27/Makefile
+++ b/arch/arm/boards/eukrea_cpuimx27/Makefile
@@ -1,3 +1,4 @@
 
 obj-y += lowlevel_init.o
+pbl-y += lowlevel_init.o
 obj-y += eukrea_cpuimx27.o
diff --git a/arch/arm/boards/eukrea_cpuimx35/Makefile b/arch/arm/boards/eukrea_cpuimx35/Makefile
index 32ffe42..234c1ba 100644
--- a/arch/arm/boards/eukrea_cpuimx35/Makefile
+++ b/arch/arm/boards/eukrea_cpuimx35/Makefile
@@ -21,5 +21,7 @@
 #
 
 obj-y					+= lowlevel.o
+pbl-y					+= lowlevel.o
 obj-y					+= eukrea_cpuimx35.o
 obj-$(CONFIG_ARCH_IMX_INTERNAL_BOOT)	+= flash_header.o
+pbl-$(CONFIG_ARCH_IMX_INTERNAL_BOOT)	+= flash_header.o
diff --git a/arch/arm/boards/eukrea_cpuimx51/Makefile b/arch/arm/boards/eukrea_cpuimx51/Makefile
index 0f781c0..ce81ffa 100644
--- a/arch/arm/boards/eukrea_cpuimx51/Makefile
+++ b/arch/arm/boards/eukrea_cpuimx51/Makefile
@@ -1,2 +1,3 @@
 obj-y += eukrea_cpuimx51.o
 obj-y += flash_header.o
+pbl-y += flash_header.o
diff --git a/arch/arm/boards/freescale-mx25-3-stack/Makefile b/arch/arm/boards/freescale-mx25-3-stack/Makefile
index ab853e0..ff70e1b 100644
--- a/arch/arm/boards/freescale-mx25-3-stack/Makefile
+++ b/arch/arm/boards/freescale-mx25-3-stack/Makefile
@@ -21,4 +21,5 @@
 #
 
 obj-y += lowlevel_init.o
+pbl-y += lowlevel_init.o
 obj-y += 3stack.o
diff --git a/arch/arm/boards/freescale-mx35-3-stack/Makefile b/arch/arm/boards/freescale-mx35-3-stack/Makefile
index a8ea4a3..3f224f6 100644
--- a/arch/arm/boards/freescale-mx35-3-stack/Makefile
+++ b/arch/arm/boards/freescale-mx35-3-stack/Makefile
@@ -1,4 +1,6 @@
 
 obj-y					+= lowlevel_init.o
+pbl-y					+= lowlevel_init.o
 obj-y					+= 3stack.o
 obj-$(CONFIG_ARCH_IMX_INTERNAL_BOOT)	+= flash_header.o
+pbl-$(CONFIG_ARCH_IMX_INTERNAL_BOOT)	+= flash_header.o
diff --git a/arch/arm/boards/freescale-mx51-pdk/Makefile b/arch/arm/boards/freescale-mx51-pdk/Makefile
index b56ce7f..d08bb68 100644
--- a/arch/arm/boards/freescale-mx51-pdk/Makefile
+++ b/arch/arm/boards/freescale-mx51-pdk/Makefile
@@ -1,2 +1,3 @@
 obj-y += board.o
 obj-y += flash_header.o
+pbl-y += flash_header.o
diff --git a/arch/arm/boards/freescale-mx53-loco/Makefile b/arch/arm/boards/freescale-mx53-loco/Makefile
index b56ce7f..d08bb68 100644
--- a/arch/arm/boards/freescale-mx53-loco/Makefile
+++ b/arch/arm/boards/freescale-mx53-loco/Makefile
@@ -1,2 +1,3 @@
 obj-y += board.o
 obj-y += flash_header.o
+pbl-y += flash_header.o
diff --git a/arch/arm/boards/freescale-mx53-smd/Makefile b/arch/arm/boards/freescale-mx53-smd/Makefile
index b56ce7f..d08bb68 100644
--- a/arch/arm/boards/freescale-mx53-smd/Makefile
+++ b/arch/arm/boards/freescale-mx53-smd/Makefile
@@ -1,2 +1,3 @@
 obj-y += board.o
 obj-y += flash_header.o
+pbl-y += flash_header.o
diff --git a/arch/arm/boards/freescale-mx6-arm2/Makefile b/arch/arm/boards/freescale-mx6-arm2/Makefile
index ad2e1be..11199d2 100644
--- a/arch/arm/boards/freescale-mx6-arm2/Makefile
+++ b/arch/arm/boards/freescale-mx6-arm2/Makefile
@@ -1 +1,2 @@
 obj-y += board.o flash_header.o
+pbl-y += flash_header.o
diff --git a/arch/arm/boards/freescale-mx6-sabrelite/Makefile b/arch/arm/boards/freescale-mx6-sabrelite/Makefile
index ad2e1be..11199d2 100644
--- a/arch/arm/boards/freescale-mx6-sabrelite/Makefile
+++ b/arch/arm/boards/freescale-mx6-sabrelite/Makefile
@@ -1 +1,2 @@
 obj-y += board.o flash_header.o
+pbl-y += flash_header.o
diff --git a/arch/arm/boards/friendlyarm-mini2440/Makefile b/arch/arm/boards/friendlyarm-mini2440/Makefile
index 856fed0..f56e803 100644
--- a/arch/arm/boards/friendlyarm-mini2440/Makefile
+++ b/arch/arm/boards/friendlyarm-mini2440/Makefile
@@ -1,2 +1,3 @@
 
 obj-y += mini2440.o lowlevel_init.o
+pbl-y += lowlevel_init.o
diff --git a/arch/arm/boards/guf-cupid/Makefile b/arch/arm/boards/guf-cupid/Makefile
index 3a06cf4..69208aa 100644
--- a/arch/arm/boards/guf-cupid/Makefile
+++ b/arch/arm/boards/guf-cupid/Makefile
@@ -21,4 +21,5 @@
 #
 
 obj-y += lowlevel.o
+pbl-y += lowlevel.o
 obj-y += board.o
diff --git a/arch/arm/boards/guf-neso/Makefile b/arch/arm/boards/guf-neso/Makefile
index 2b6eb02..89f0aba 100644
--- a/arch/arm/boards/guf-neso/Makefile
+++ b/arch/arm/boards/guf-neso/Makefile
@@ -1,5 +1,4 @@
-
 obj-y += lowlevel.o
+pbl-y += lowlevel.o
 obj-y += board.o
 obj-y += pll_init.o
-
diff --git a/arch/arm/boards/imx21ads/Makefile b/arch/arm/boards/imx21ads/Makefile
index 7993fde..e18f7d9 100644
--- a/arch/arm/boards/imx21ads/Makefile
+++ b/arch/arm/boards/imx21ads/Makefile
@@ -1,2 +1,3 @@
 obj-y += lowlevel_init.o
+pbl-y += lowlevel_init.o
 obj-y += imx21ads.o
diff --git a/arch/arm/boards/imx27ads/Makefile b/arch/arm/boards/imx27ads/Makefile
index bdc905f..88d1baf 100644
--- a/arch/arm/boards/imx27ads/Makefile
+++ b/arch/arm/boards/imx27ads/Makefile
@@ -1,3 +1,4 @@
 
 obj-y += lowlevel_init.o
+pbl-y += lowlevel_init.o
 obj-y += imx27ads.o
diff --git a/arch/arm/boards/karo-tx25/Makefile b/arch/arm/boards/karo-tx25/Makefile
index e909a2c..90f244b 100644
--- a/arch/arm/boards/karo-tx25/Makefile
+++ b/arch/arm/boards/karo-tx25/Makefile
@@ -21,4 +21,5 @@
 #
 
 obj-y += lowlevel.o
+pbl-y += lowlevel.o
 obj-y += board.o
diff --git a/arch/arm/boards/karo-tx51/Makefile b/arch/arm/boards/karo-tx51/Makefile
index e8f710e..6f51586 100644
--- a/arch/arm/boards/karo-tx51/Makefile
+++ b/arch/arm/boards/karo-tx51/Makefile
@@ -1,2 +1,3 @@
 obj-y += tx51.o
-obj-y += flash_header.o
+obj-$(CONFIG_ARCH_IMX_INTERNAL_BOOT) += flash_header.o
+pbl-$(CONFIG_ARCH_IMX_INTERNAL_BOOT) += flash_header.o
diff --git a/arch/arm/boards/netx/Makefile b/arch/arm/boards/netx/Makefile
index 8b33fec..ad694cd 100644
--- a/arch/arm/boards/netx/Makefile
+++ b/arch/arm/boards/netx/Makefile
@@ -1,2 +1,2 @@
 obj-y += netx.o platform.o
-
+pbl-y += platform.o
diff --git a/arch/arm/boards/panda/Makefile b/arch/arm/boards/panda/Makefile
index c55e26e..53b9d5b 100644
--- a/arch/arm/boards/panda/Makefile
+++ b/arch/arm/boards/panda/Makefile
@@ -1 +1,3 @@
-obj-y += board.o lowlevel.o mux.o
+obj-y += board.o
+obj-y += lowlevel.o mux.o
+pbl-y += lowlevel.o mux.o
diff --git a/arch/arm/boards/pcm027/Makefile b/arch/arm/boards/pcm027/Makefile
index e3830e4..1602c0a 100644
--- a/arch/arm/boards/pcm027/Makefile
+++ b/arch/arm/boards/pcm027/Makefile
@@ -1,2 +1,3 @@
 obj-y += board.o
 obj-y += lowlevel_init.o
+pbl-y += lowlevel_init.o
diff --git a/arch/arm/boards/pcm037/Makefile b/arch/arm/boards/pcm037/Makefile
index 7d36b77..dfe180c 100644
--- a/arch/arm/boards/pcm037/Makefile
+++ b/arch/arm/boards/pcm037/Makefile
@@ -21,4 +21,5 @@
 #
 
 obj-y += lowlevel_init.o
+pbl-y += lowlevel_init.o
 obj-y += pcm037.o
diff --git a/arch/arm/boards/pcm038/Makefile b/arch/arm/boards/pcm038/Makefile
index 6cd3a5b..2c1b74d 100644
--- a/arch/arm/boards/pcm038/Makefile
+++ b/arch/arm/boards/pcm038/Makefile
@@ -1,2 +1,3 @@
 obj-y					+= lowlevel.o pcm038.o
+pbl-y					+= lowlevel.o
 obj-$(CONFIG_MACH_PCM970_BASEBOARD)	+= pcm970.o
diff --git a/arch/arm/boards/pcm043/Makefile b/arch/arm/boards/pcm043/Makefile
index 6753bbe..961ffcc 100644
--- a/arch/arm/boards/pcm043/Makefile
+++ b/arch/arm/boards/pcm043/Makefile
@@ -21,4 +21,5 @@
 #
 
 obj-y += lowlevel.o
+pbl-y += lowlevel.o
 obj-y += pcm043.o
diff --git a/arch/arm/boards/pcm049/Makefile b/arch/arm/boards/pcm049/Makefile
index 1bb7212..df3764c 100644
--- a/arch/arm/boards/pcm049/Makefile
+++ b/arch/arm/boards/pcm049/Makefile
@@ -1 +1,2 @@
 obj-y += board.o mux.o lowlevel.o
+pbl-y += lowlevel.o mux.o
diff --git a/arch/arm/boards/phycard-a-xl2/Makefile b/arch/arm/boards/phycard-a-xl2/Makefile
index 1d23d72..23958c2 100644
--- a/arch/arm/boards/phycard-a-xl2/Makefile
+++ b/arch/arm/boards/phycard-a-xl2/Makefile
@@ -18,3 +18,4 @@
 # Foundation, Inc., 59 Temple Place, Suite 330, Boston,
 # MA 02111-1307 USA
 obj-y += pca-a-xl2.o mux.o lowlevel.o
+pbl-y += mux.o lowlevel.o
diff --git a/arch/arm/boards/phycard-i.MX27/Makefile b/arch/arm/boards/phycard-i.MX27/Makefile
index fd52350..60253e5 100644
--- a/arch/arm/boards/phycard-i.MX27/Makefile
+++ b/arch/arm/boards/phycard-i.MX27/Makefile
@@ -1,3 +1,4 @@
 
 obj-y += lowlevel_init.o
+pbl-y += lowlevel_init.o
 obj-y += pca100.o
diff --git a/arch/arm/boards/scb9328/Makefile b/arch/arm/boards/scb9328/Makefile
index db6fd7e..69d3970 100644
--- a/arch/arm/boards/scb9328/Makefile
+++ b/arch/arm/boards/scb9328/Makefile
@@ -1,3 +1,4 @@
 
 obj-y += lowlevel_init.o
+pbl-y += lowlevel_init.o
 obj-y += scb9328.o
diff --git a/arch/arm/boards/tqma53/Makefile b/arch/arm/boards/tqma53/Makefile
index b56ce7f..d08bb68 100644
--- a/arch/arm/boards/tqma53/Makefile
+++ b/arch/arm/boards/tqma53/Makefile
@@ -1,2 +1,3 @@
 obj-y += board.o
 obj-y += flash_header.o
+pbl-y += flash_header.o
diff --git a/arch/arm/mach-ep93xx/Makefile b/arch/arm/mach-ep93xx/Makefile
index d401164..5615394 100644
--- a/arch/arm/mach-ep93xx/Makefile
+++ b/arch/arm/mach-ep93xx/Makefile
@@ -1,3 +1,4 @@
 obj-y += clocksource.o gpio.o led.o header.o
 
 obj-$(CONFIG_MACH_DO_LOWLEVEL_INIT) += lowlevel_init.o
+pbl-$(CONFIG_MACH_DO_LOWLEVEL_INIT) += lowlevel_init.o led.o
diff --git a/arch/arm/mach-imx/Makefile b/arch/arm/mach-imx/Makefile
index 2ff537a..82a86d7 100644
--- a/arch/arm/mach-imx/Makefile
+++ b/arch/arm/mach-imx/Makefile
@@ -13,6 +13,7 @@ obj-$(CONFIG_IMX_CLKO)	+= clko.o
 obj-$(CONFIG_IMX_IIM)	+= iim.o
 obj-$(CONFIG_NAND_IMX) += nand.o
 obj-$(CONFIG_ARCH_IMX_EXTERNAL_BOOT_NAND) += external-nand-boot.o
+pbl-$(CONFIG_ARCH_IMX_EXTERNAL_BOOT_NAND) += external-nand-boot.o
 obj-y += speed.o
 obj-y += devices.o
 obj-y += boot.o
diff --git a/arch/arm/mach-omap/Makefile b/arch/arm/mach-omap/Makefile
index 87078ae..f087f4b 100644
--- a/arch/arm/mach-omap/Makefile
+++ b/arch/arm/mach-omap/Makefile
@@ -20,9 +20,12 @@
 # MA 02111-1307 USA
 #
 obj-$(CONFIG_ARCH_OMAP) += syslib.o
+pbl-$(CONFIG_ARCH_OMAP) += syslib.o
 obj-$(CONFIG_OMAP_CLOCK_SOURCE_S32K) += s32k_clksource.o
 obj-$(CONFIG_ARCH_OMAP3) += omap3_core.o omap3_generic.o auxcr.o
+pbl-$(CONFIG_ARCH_OMAP3) += omap3_core.o omap3_generic.o auxcr.o
 obj-$(CONFIG_ARCH_OMAP4) += omap4_generic.o omap4_clock.o
+pbl-$(CONFIG_ARCH_OMAP4) += omap4_generic.o omap4_clock.o
 obj-$(CONFIG_OMAP3_CLOCK_CONFIG) += omap3_clock.o
 obj-$(CONFIG_OMAP_GPMC) += gpmc.o devices-gpmc-nand.o
 obj-$(CONFIG_SHELL_NONE) += xload.o
diff --git a/arch/arm/mach-samsung/Makefile b/arch/arm/mach-samsung/Makefile
index 39aa269..0ffe370 100644
--- a/arch/arm/mach-samsung/Makefile
+++ b/arch/arm/mach-samsung/Makefile
@@ -2,6 +2,8 @@ obj-y += s3c-timer.o generic.o
 obj-$(CONFIG_RESET_SOURCE) += reset_source.o
 obj-lowlevel-$(CONFIG_ARCH_S3C24xx) += lowlevel-s3c24x0.o
 obj-lowlevel-$(CONFIG_ARCH_S5PCxx) += lowlevel-s5pcxx.o
+pbl-$(CONFIG_ARCH_S3C24xx) += lowlevel-s3c24x0.o
+pbl-$(CONFIG_ARCH_S5PCxx) += lowlevel-s5pcxx.o
 obj-$(CONFIG_ARCH_S3C24xx) += gpio-s3c24x0.o clocks-s3c24xx.o mem-s3c24x0.o
 obj-$(CONFIG_ARCH_S3C64xx) += gpio-s3c64xx.o clocks-s3c64xx.o mem-s3c64xx.o
 obj-$(CONFIG_ARCH_S5PCxx) += gpio-s5pcxx.o clocks-s5pcxx.o mem-s5pcxx.o
diff --git a/drivers/mtd/nand/Makefile b/drivers/mtd/nand/Makefile
index 8c08c9f..d52c272 100644
--- a/drivers/mtd/nand/Makefile
+++ b/drivers/mtd/nand/Makefile
@@ -14,4 +14,5 @@ obj-$(CONFIG_NAND_IMX)			+= nand_imx.o
 obj-$(CONFIG_NAND_OMAP_GPMC)		+= nand_omap_gpmc.o nand_omap_bch_decoder.o
 obj-$(CONFIG_NAND_ATMEL)		+= atmel_nand.o
 obj-$(CONFIG_NAND_S3C24XX)		+= nand_s3c24xx.o
+pbl-$(CONFIG_NAND_S3C24XX)		+= nand_s3c24xx.o
 obj-$(CONFIG_NAND_MXS)			+= nand_mxs.o
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

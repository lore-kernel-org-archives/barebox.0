Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo4.mail-out.ovh.net ([178.32.228.4])
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QjD7T-0003tB-Jp
	for barebox@lists.infradead.org; Tue, 19 Jul 2011 16:26:16 +0000
Received: from mail187.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo4.mail-out.ovh.net (Postfix) with SMTP id 91D36FFA5C1
	for <barebox@lists.infradead.org>;
	Tue, 19 Jul 2011 18:26:33 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 19 Jul 2011 18:08:59 +0200
Message-Id: <1311091752-9114-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20110719160758.GK5727@game.jcrosoft.org>
References: <20110719160758.GK5727@game.jcrosoft.org>
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
Subject: [PATCH 03/16] mem: replace DEVFS_RDWR by IORESOURCE_MEM_WRITEABLE
To: barebox@lists.infradead.org

we keep struct memory_platform_data for now on we will switch off the memories
resources to struct resource

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/a9m2410/a9m2410.c                 |    2 +-
 arch/arm/boards/a9m2440/a9m2440.c                 |    2 +-
 arch/arm/boards/chumby_falconwing/falconwing.c    |    2 +-
 arch/arm/boards/edb93xx/edb93xx.c                 |    8 ++++----
 arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c |    2 +-
 arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c |    2 +-
 arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c |    2 +-
 arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c |    2 +-
 arch/arm/boards/freescale-mx23-evk/mx23-evk.c     |    2 +-
 arch/arm/boards/freescale-mx25-3-stack/3stack.c   |    4 ++--
 arch/arm/boards/freescale-mx35-3-stack/3stack.c   |    2 +-
 arch/arm/boards/freescale-mx51-pdk/board.c        |    2 +-
 arch/arm/boards/guf-cupid/board.c                 |    2 +-
 arch/arm/boards/guf-neso/board.c                  |    2 +-
 arch/arm/boards/imx21ads/imx21ads.c               |    2 +-
 arch/arm/boards/imx27ads/imx27ads.c               |    2 +-
 arch/arm/boards/karo-tx25/board.c                 |    6 +++---
 arch/arm/boards/karo-tx28/tx28.c                  |    2 +-
 arch/arm/boards/mini2440/mini2440.c               |    2 +-
 arch/arm/boards/netx/netx.c                       |    2 +-
 arch/arm/boards/omap/board-beagle.c               |    2 +-
 arch/arm/boards/omap/board-omap3evm.c             |    2 +-
 arch/arm/boards/omap/board-sdp343x.c              |    2 +-
 arch/arm/boards/panda/board.c                     |    2 +-
 arch/arm/boards/pcm037/pcm037.c                   |    6 +++---
 arch/arm/boards/pcm038/pcm038.c                   |    4 ++--
 arch/arm/boards/pcm043/pcm043.c                   |    2 +-
 arch/arm/boards/pcm049/board.c                    |    4 ++--
 arch/arm/boards/phycard-i.MX27/pca100.c           |    2 +-
 arch/arm/boards/scb9328/scb9328.c                 |    2 +-
 arch/arm/mach-at91/at91rm9200_devices.c           |    2 +-
 arch/arm/mach-at91/at91sam9260_devices.c          |    2 +-
 arch/arm/mach-at91/at91sam9261_devices.c          |    2 +-
 arch/arm/mach-at91/at91sam9263_devices.c          |    2 +-
 arch/arm/mach-at91/at91sam9g45_devices.c          |    2 +-
 arch/arm/mach-nomadik/8815.c                      |    2 +-
 arch/arm/mach-versatile/core.c                    |    2 +-
 arch/blackfin/boards/ipe337/ipe337.c              |    2 +-
 arch/nios2/boards/generic/generic.c               |    2 +-
 arch/ppc/boards/pcm030/pcm030.c                   |    2 +-
 arch/x86/boards/x86_generic/generic_pc.c          |    2 +-
 commands/mem.c                                    |    2 +-
 include/driver.h                                  |    1 -
 43 files changed, 52 insertions(+), 53 deletions(-)

diff --git a/arch/arm/boards/a9m2410/a9m2410.c b/arch/arm/boards/a9m2410/a9m2410.c
index 8cbaec5..bdf634d 100644
--- a/arch/arm/boards/a9m2410/a9m2410.c
+++ b/arch/arm/boards/a9m2410/a9m2410.c
@@ -37,7 +37,7 @@
 
 static struct memory_platform_data ram_pdata = {
 	.name		= "ram0",
-	.flags		= DEVFS_RDWR,
+	.flags		= IORESOURCE_MEM_WRITEABLE,
 };
 
 static struct device_d sdram_dev = {
diff --git a/arch/arm/boards/a9m2440/a9m2440.c b/arch/arm/boards/a9m2440/a9m2440.c
index 39b5276..55e9e8e 100644
--- a/arch/arm/boards/a9m2440/a9m2440.c
+++ b/arch/arm/boards/a9m2440/a9m2440.c
@@ -40,7 +40,7 @@
 
 static struct memory_platform_data ram_pdata = {
 	.name		= "ram0",
-	.flags		= DEVFS_RDWR,
+	.flags		= IORESOURCE_MEM_WRITEABLE,
 };
 
 static struct device_d sdram_dev = {
diff --git a/arch/arm/boards/chumby_falconwing/falconwing.c b/arch/arm/boards/chumby_falconwing/falconwing.c
index 15ca11b..52c7459 100644
--- a/arch/arm/boards/chumby_falconwing/falconwing.c
+++ b/arch/arm/boards/chumby_falconwing/falconwing.c
@@ -36,7 +36,7 @@
 
 static struct memory_platform_data ram_pdata = {
 	.name = "ram0",
-	.flags = DEVFS_RDWR,
+	.flags = IORESOURCE_MEM_WRITEABLE,
 };
 
 static struct device_d sdram_dev = {
diff --git a/arch/arm/boards/edb93xx/edb93xx.c b/arch/arm/boards/edb93xx/edb93xx.c
index 0f127b5..85fd2c0 100644
--- a/arch/arm/boards/edb93xx/edb93xx.c
+++ b/arch/arm/boards/edb93xx/edb93xx.c
@@ -47,7 +47,7 @@ static struct device_d cfi_dev = {
 
 static struct memory_platform_data ram_dev_pdata0 = {
 	.name = "ram0",
-	.flags = DEVFS_RDWR,
+	.flags = IORESOURCE_MEM_WRITEABLE,
 };
 
 static struct device_d sdram0_dev = {
@@ -61,7 +61,7 @@ static struct device_d sdram0_dev = {
 #if (CONFIG_EP93XX_SDRAM_NUM_BANKS >= 2)
 static struct memory_platform_data ram_dev_pdata1 = {
 	.name = "ram1",
-	.flags = DEVFS_RDWR,
+	.flags = IORESOURCE_MEM_WRITEABLE,
 };
 
 static struct device_d sdram1_dev = {
@@ -76,7 +76,7 @@ static struct device_d sdram1_dev = {
 #if (CONFIG_EP93XX_SDRAM_NUM_BANKS >= 3)
 static struct memory_platform_data ram_dev_pdata2 = {
 	.name = "ram2",
-	.flags = DEVFS_RDWR,
+	.flags = IORESOURCE_MEM_WRITEABLE,
 };
 
 static struct device_d sdram2_dev = {
@@ -91,7 +91,7 @@ static struct device_d sdram2_dev = {
 #if (CONFIG_EP93XX_SDRAM_NUM_BANKS == 4)
 static struct memory_platform_data ram_dev_pdata3 = {
 	.name = "ram3",
-	.flags = DEVFS_RDWR,
+	.flags = IORESOURCE_MEM_WRITEABLE,
 };
 
 static struct device_d sdram3_dev = {
diff --git a/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c b/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
index f2b2523..36f5aa8 100644
--- a/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
+++ b/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
@@ -92,7 +92,7 @@ static struct fec_platform_data fec_info = {
 
 static struct memory_platform_data sdram_pdata = {
 	.name	= "ram0",
-	.flags	= DEVFS_RDWR,
+	.flags	= IORESOURCE_MEM_WRITEABLE,
 };
 
 static struct device_d sdram0_dev = {
diff --git a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
index a7e9951..108636f 100644
--- a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
+++ b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
@@ -65,7 +65,7 @@ static struct device_d cfi_dev1 = {
 
 static struct memory_platform_data ram_pdata = {
 	.name = "ram0",
-	.flags = DEVFS_RDWR,
+	.flags = IORESOURCE_MEM_WRITEABLE,
 };
 
 #if defined CONFIG_EUKREA_CPUIMX27_SDRAM_256MB
diff --git a/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c b/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
index f0eb088..dd842d5 100644
--- a/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
+++ b/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
@@ -63,7 +63,7 @@ static struct fec_platform_data fec_info = {
 
 static struct memory_platform_data sdram_pdata = {
 	.name	= "ram0",
-	.flags	= DEVFS_RDWR,
+	.flags	= IORESOURCE_MEM_WRITEABLE,
 };
 
 static struct device_d sdram_dev = {
diff --git a/arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c b/arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c
index 0847bb1..3a07e22 100644
--- a/arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c
+++ b/arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c
@@ -44,7 +44,7 @@
 
 static struct memory_platform_data ram_pdata = {
 	.name = "ram0",
-	.flags = DEVFS_RDWR,
+	.flags = IORESOURCE_MEM_WRITEABLE,
 };
 
 static struct device_d sdram_dev = {
diff --git a/arch/arm/boards/freescale-mx23-evk/mx23-evk.c b/arch/arm/boards/freescale-mx23-evk/mx23-evk.c
index 1ce72be..c2fbfa2 100644
--- a/arch/arm/boards/freescale-mx23-evk/mx23-evk.c
+++ b/arch/arm/boards/freescale-mx23-evk/mx23-evk.c
@@ -27,7 +27,7 @@
 
 static struct memory_platform_data ram_pdata = {
 	.name = "ram0",
-	.flags = DEVFS_RDWR,
+	.flags = IORESOURCE_MEM_WRITEABLE,
 };
 
 static struct device_d sdram_dev = {
diff --git a/arch/arm/boards/freescale-mx25-3-stack/3stack.c b/arch/arm/boards/freescale-mx25-3-stack/3stack.c
index e3607f5..212a937 100644
--- a/arch/arm/boards/freescale-mx25-3-stack/3stack.c
+++ b/arch/arm/boards/freescale-mx25-3-stack/3stack.c
@@ -115,7 +115,7 @@ static struct fec_platform_data fec_info = {
 
 static struct memory_platform_data sdram_pdata = {
 	.name	= "ram0",
-	.flags	= DEVFS_RDWR,
+	.flags	= IORESOURCE_MEM_WRITEABLE,
 };
 
 static struct device_d sdram0_dev = {
@@ -134,7 +134,7 @@ static struct device_d sdram0_dev = {
 
 static struct memory_platform_data sram_pdata = {
 	.name	= "sram0",
-	.flags	= DEVFS_RDWR,
+	.flags	= IORESOURCE_MEM_WRITEABLE,
 };
 
 static struct device_d sram0_dev = {
diff --git a/arch/arm/boards/freescale-mx35-3-stack/3stack.c b/arch/arm/boards/freescale-mx35-3-stack/3stack.c
index 03960a4..0c54337 100644
--- a/arch/arm/boards/freescale-mx35-3-stack/3stack.c
+++ b/arch/arm/boards/freescale-mx35-3-stack/3stack.c
@@ -73,7 +73,7 @@ static struct fec_platform_data fec_info = {
 
 static struct memory_platform_data sdram_pdata = {
 	.name	= "ram0",
-	.flags	= DEVFS_RDWR,
+	.flags	= IORESOURCE_MEM_WRITEABLE,
 };
 
 static struct device_d sdram_dev = {
diff --git a/arch/arm/boards/freescale-mx51-pdk/board.c b/arch/arm/boards/freescale-mx51-pdk/board.c
index 35d6153..706642b 100644
--- a/arch/arm/boards/freescale-mx51-pdk/board.c
+++ b/arch/arm/boards/freescale-mx51-pdk/board.c
@@ -43,7 +43,7 @@
 
 static struct memory_platform_data ram_pdata = {
 	.name = "ram0",
-	.flags = DEVFS_RDWR,
+	.flags = IORESOURCE_MEM_WRITEABLE,
 };
 
 static struct device_d sdram_dev = {
diff --git a/arch/arm/boards/guf-cupid/board.c b/arch/arm/boards/guf-cupid/board.c
index d04af78..88fde34 100644
--- a/arch/arm/boards/guf-cupid/board.c
+++ b/arch/arm/boards/guf-cupid/board.c
@@ -57,7 +57,7 @@ static struct device_d fec_dev = {
 
 static struct memory_platform_data ram_pdata = {
 	.name = "ram0",
-	.flags = DEVFS_RDWR,
+	.flags = IORESOURCE_MEM_WRITEABLE,
 };
 
 static struct device_d sdram0_dev = {
diff --git a/arch/arm/boards/guf-neso/board.c b/arch/arm/boards/guf-neso/board.c
index c4b2fa1..83d20ec 100644
--- a/arch/arm/boards/guf-neso/board.c
+++ b/arch/arm/boards/guf-neso/board.c
@@ -56,7 +56,7 @@
 
 static struct memory_platform_data ram_pdata = {
 	.name = "ram0",
-	.flags = DEVFS_RDWR,
+	.flags = IORESOURCE_MEM_WRITEABLE,
 };
 
 static struct device_d sdram_dev = {
diff --git a/arch/arm/boards/imx21ads/imx21ads.c b/arch/arm/boards/imx21ads/imx21ads.c
index 3942581..2ff3d4b 100644
--- a/arch/arm/boards/imx21ads/imx21ads.c
+++ b/arch/arm/boards/imx21ads/imx21ads.c
@@ -50,7 +50,7 @@ static struct device_d cfi_dev = {
 
 static struct memory_platform_data ram_pdata = {
 	.name = "ram0",
-	.flags = DEVFS_RDWR,
+	.flags = IORESOURCE_MEM_WRITEABLE,
 };
 
 static struct device_d sdram_dev = {
diff --git a/arch/arm/boards/imx27ads/imx27ads.c b/arch/arm/boards/imx27ads/imx27ads.c
index 0d433c1..e957125 100644
--- a/arch/arm/boards/imx27ads/imx27ads.c
+++ b/arch/arm/boards/imx27ads/imx27ads.c
@@ -43,7 +43,7 @@ static struct device_d cfi_dev = {
 
 static struct memory_platform_data ram_pdata = {
 	.name = "ram0",
-	.flags = DEVFS_RDWR,
+	.flags = IORESOURCE_MEM_WRITEABLE,
 };
 
 static struct device_d sdram_dev = {
diff --git a/arch/arm/boards/karo-tx25/board.c b/arch/arm/boards/karo-tx25/board.c
index c59a9fa..dbe0284 100644
--- a/arch/arm/boards/karo-tx25/board.c
+++ b/arch/arm/boards/karo-tx25/board.c
@@ -47,7 +47,7 @@ static struct fec_platform_data fec_info = {
 
 static struct memory_platform_data sdram0_pdata = {
 	.name	= "ram0",
-	.flags	= DEVFS_RDWR,
+	.flags	= IORESOURCE_MEM_WRITEABLE,
 };
 
 static struct device_d sdram0_dev = {
@@ -60,7 +60,7 @@ static struct device_d sdram0_dev = {
 
 static struct memory_platform_data sdram1_pdata = {
 	.name	= "ram1",
-	.flags	= DEVFS_RDWR,
+	.flags	= IORESOURCE_MEM_WRITEABLE,
 };
 
 static struct device_d sdram1_dev = {
@@ -73,7 +73,7 @@ static struct device_d sdram1_dev = {
 
 static struct memory_platform_data sram_pdata = {
 	.name	= "sram0",
-	.flags	= DEVFS_RDWR,
+	.flags	= IORESOURCE_MEM_WRITEABLE,
 };
 
 static struct device_d sram0_dev = {
diff --git a/arch/arm/boards/karo-tx28/tx28.c b/arch/arm/boards/karo-tx28/tx28.c
index 1f47a8d..095b1bf 100644
--- a/arch/arm/boards/karo-tx28/tx28.c
+++ b/arch/arm/boards/karo-tx28/tx28.c
@@ -25,7 +25,7 @@
 
 static struct memory_platform_data ram_pdata = {
 	.name = "ram0",
-	.flags = DEVFS_RDWR,
+	.flags = IORESOURCE_MEM_WRITEABLE,
 };
 
 static struct device_d sdram_dev = {
diff --git a/arch/arm/boards/mini2440/mini2440.c b/arch/arm/boards/mini2440/mini2440.c
index b487082..f0be4b8 100644
--- a/arch/arm/boards/mini2440/mini2440.c
+++ b/arch/arm/boards/mini2440/mini2440.c
@@ -46,7 +46,7 @@
 
 static struct memory_platform_data ram_pdata = {
 	.name		= "ram0",
-	.flags		= DEVFS_RDWR,
+	.flags		= IORESOURCE_MEM_WRITEABLE,
 };
 
 static struct device_d sdram_dev = {
diff --git a/arch/arm/boards/netx/netx.c b/arch/arm/boards/netx/netx.c
index c735d26..9705300 100644
--- a/arch/arm/boards/netx/netx.c
+++ b/arch/arm/boards/netx/netx.c
@@ -39,7 +39,7 @@ static struct device_d cfi_dev = {
 
 static struct memory_platform_data ram_pdata = {
 	.name = "ram0",
-	.flags = DEVFS_RDWR,
+	.flags = IORESOURCE_MEM_WRITEABLE,
 };
 
 static struct device_d sdram_dev = {
diff --git a/arch/arm/boards/omap/board-beagle.c b/arch/arm/boards/omap/board-beagle.c
index ced3df7..0385666 100644
--- a/arch/arm/boards/omap/board-beagle.c
+++ b/arch/arm/boards/omap/board-beagle.c
@@ -266,7 +266,7 @@ console_initcall(beagle_console_init);
 
 static struct memory_platform_data sram_pdata = {
 	.name = "ram0",
-	.flags = DEVFS_RDWR,
+	.flags = IORESOURCE_MEM_WRITEABLE,
 };
 
 static struct device_d sdram_dev = {
diff --git a/arch/arm/boards/omap/board-omap3evm.c b/arch/arm/boards/omap/board-omap3evm.c
index c37f151..d7654c7 100644
--- a/arch/arm/boards/omap/board-omap3evm.c
+++ b/arch/arm/boards/omap/board-omap3evm.c
@@ -243,7 +243,7 @@ console_initcall(omap3evm_init_console);
 
 static struct memory_platform_data sram_pdata = {
 	.name	= "ram0",
-	.flags	= DEVFS_RDWR,
+	.flags	= IORESOURCE_MEM_WRITEABLE,
 };
 
 static struct device_d sdram_dev = {
diff --git a/arch/arm/boards/omap/board-sdp343x.c b/arch/arm/boards/omap/board-sdp343x.c
index f7615b4..048168d 100644
--- a/arch/arm/boards/omap/board-sdp343x.c
+++ b/arch/arm/boards/omap/board-sdp343x.c
@@ -643,7 +643,7 @@ static int sdp3430_flash_init(void)
 
 static struct memory_platform_data ram_pdata = {
 	.name = "ram0",
-	.flags = DEVFS_RDWR,
+	.flags = IORESOURCE_MEM_WRITEABLE,
 };
 
 struct device_d sdram_dev = {
diff --git a/arch/arm/boards/panda/board.c b/arch/arm/boards/panda/board.c
index ff05f9e..43fa0d9 100644
--- a/arch/arm/boards/panda/board.c
+++ b/arch/arm/boards/panda/board.c
@@ -54,7 +54,7 @@ console_initcall(panda_console_init);
 
 static struct memory_platform_data sram_pdata = {
 	.name = "ram0",
-	.flags = DEVFS_RDWR,
+	.flags = IORESOURCE_MEM_WRITEABLE,
 };
 
 static struct device_d sdram_dev = {
diff --git a/arch/arm/boards/pcm037/pcm037.c b/arch/arm/boards/pcm037/pcm037.c
index cb4ffe6..366a8a4 100644
--- a/arch/arm/boards/pcm037/pcm037.c
+++ b/arch/arm/boards/pcm037/pcm037.c
@@ -56,7 +56,7 @@ static struct device_d cfi_dev = {
  */
 static struct memory_platform_data sram_dev_pdata0 = {
 	.name = "sram0",
-	.flags = DEVFS_RDWR,
+	.flags = IORESOURCE_MEM_WRITEABLE,
 };
 
 static struct device_d sram_dev = {
@@ -87,7 +87,7 @@ static struct device_d network_dev = {
 
 static struct memory_platform_data ram_dev_pdata0 = {
 	.name = "ram0",
-	.flags = DEVFS_RDWR,
+	.flags = IORESOURCE_MEM_WRITEABLE,
 };
 
 static struct device_d sdram0_dev = {
@@ -108,7 +108,7 @@ static struct device_d sdram0_dev = {
 
 static struct memory_platform_data ram_dev_pdata1 = {
 	.name = "ram1",
-	.flags = DEVFS_RDWR,
+	.flags = IORESOURCE_MEM_WRITEABLE,
 };
 
 static struct device_d sdram1_dev = {
diff --git a/arch/arm/boards/pcm038/pcm038.c b/arch/arm/boards/pcm038/pcm038.c
index 3ca6650..2f4e671 100644
--- a/arch/arm/boards/pcm038/pcm038.c
+++ b/arch/arm/boards/pcm038/pcm038.c
@@ -56,7 +56,7 @@ static struct device_d cfi_dev = {
 
 static struct memory_platform_data ram_pdata = {
 	.name = "ram0",
-	.flags = DEVFS_RDWR,
+	.flags = IORESOURCE_MEM_WRITEABLE,
 };
 
 static struct device_d sdram_dev = {
@@ -69,7 +69,7 @@ static struct device_d sdram_dev = {
 
 static struct memory_platform_data sram_pdata = {
 	.name = "sram0",
-	.flags = DEVFS_RDWR,
+	.flags = IORESOURCE_MEM_WRITEABLE,
 };
 
 static struct device_d sram_dev = {
diff --git a/arch/arm/boards/pcm043/pcm043.c b/arch/arm/boards/pcm043/pcm043.c
index 7db3c83..ab88617 100644
--- a/arch/arm/boards/pcm043/pcm043.c
+++ b/arch/arm/boards/pcm043/pcm043.c
@@ -63,7 +63,7 @@ static struct fec_platform_data fec_info = {
 
 static struct memory_platform_data ram_pdata = {
 	.name = "ram0",
-	.flags = DEVFS_RDWR,
+	.flags = IORESOURCE_MEM_WRITEABLE,
 };
 
 static struct device_d sdram0_dev = {
diff --git a/arch/arm/boards/pcm049/board.c b/arch/arm/boards/pcm049/board.c
index 2303a9c..b5d22bb 100644
--- a/arch/arm/boards/pcm049/board.c
+++ b/arch/arm/boards/pcm049/board.c
@@ -65,7 +65,7 @@ console_initcall(pcm049_console_init);
 
 static struct memory_platform_data sram_pdata = {
 	.name = "sram0",
-	.flags = DEVFS_RDWR,
+	.flags = IORESOURCE_MEM_WRITEABLE,
 };
 
 static struct device_d sram_dev = {
@@ -78,7 +78,7 @@ static struct device_d sram_dev = {
 
 static struct memory_platform_data sdram_pdata = {
 	.name = "ram0",
-	.flags = DEVFS_RDWR,
+	.flags = IORESOURCE_MEM_WRITEABLE,
 };
 
 static struct device_d sdram_dev = {
diff --git a/arch/arm/boards/phycard-i.MX27/pca100.c b/arch/arm/boards/phycard-i.MX27/pca100.c
index 89c0a14..2eba3e4 100644
--- a/arch/arm/boards/phycard-i.MX27/pca100.c
+++ b/arch/arm/boards/phycard-i.MX27/pca100.c
@@ -43,7 +43,7 @@
 
 static struct memory_platform_data ram_pdata = {
 	.name = "ram0",
-	.flags = DEVFS_RDWR,
+	.flags = IORESOURCE_MEM_WRITEABLE,
 };
 
 static struct device_d sdram_dev = {
diff --git a/arch/arm/boards/scb9328/scb9328.c b/arch/arm/boards/scb9328/scb9328.c
index 69d0589..2227427 100644
--- a/arch/arm/boards/scb9328/scb9328.c
+++ b/arch/arm/boards/scb9328/scb9328.c
@@ -43,7 +43,7 @@ static struct device_d cfi_dev = {
 
 static struct memory_platform_data sdram_pdata = {
 	.name = "ram0",
-	.flags = DEVFS_RDWR,
+	.flags = IORESOURCE_MEM_WRITEABLE,
 };
 
 static struct device_d sdram_dev = {
diff --git a/arch/arm/mach-at91/at91rm9200_devices.c b/arch/arm/mach-at91/at91rm9200_devices.c
index 7585b27..c6c823e 100644
--- a/arch/arm/mach-at91/at91rm9200_devices.c
+++ b/arch/arm/mach-at91/at91rm9200_devices.c
@@ -28,7 +28,7 @@ static struct resource sdram_dev_resources[] = {
 
 static struct memory_platform_data ram_pdata = {
 	.name = "ram0",
-	.flags = DEVFS_RDWR,
+	.flags = IORESOURCE_MEM_WRITEABLE,
 };
 
 static struct device_d sdram_dev = {
diff --git a/arch/arm/mach-at91/at91sam9260_devices.c b/arch/arm/mach-at91/at91sam9260_devices.c
index 85f7578..a149ede 100644
--- a/arch/arm/mach-at91/at91sam9260_devices.c
+++ b/arch/arm/mach-at91/at91sam9260_devices.c
@@ -29,7 +29,7 @@ static struct resource sdram_dev_resources[] = {
 
 static struct memory_platform_data sram_pdata = {
 	.name = "sram0",
-	.flags = DEVFS_RDWR,
+	.flags = IORESOURCE_MEM_WRITEABLE,
 };
 
 static struct device_d sdram_dev = {
diff --git a/arch/arm/mach-at91/at91sam9261_devices.c b/arch/arm/mach-at91/at91sam9261_devices.c
index bf726bc..901f7e4 100644
--- a/arch/arm/mach-at91/at91sam9261_devices.c
+++ b/arch/arm/mach-at91/at91sam9261_devices.c
@@ -29,7 +29,7 @@ static struct resource sdram_dev_resources[] = {
 
 static struct memory_platform_data ram_pdata = {
 	.name = "ram0",
-	.flags = DEVFS_RDWR,
+	.flags = IORESOURCE_MEM_WRITEABLE,
 };
 
 static struct device_d sdram_dev = {
diff --git a/arch/arm/mach-at91/at91sam9263_devices.c b/arch/arm/mach-at91/at91sam9263_devices.c
index 9b87425..74edb8d 100644
--- a/arch/arm/mach-at91/at91sam9263_devices.c
+++ b/arch/arm/mach-at91/at91sam9263_devices.c
@@ -29,7 +29,7 @@ static struct resource sdram_dev_resources[] = {
 
 static struct memory_platform_data ram_pdata = {
 	.name = "ram0",
-	.flags = DEVFS_RDWR,
+	.flags = IORESOURCE_MEM_WRITEABLE,
 };
 
 static struct device_d sdram_dev = {
diff --git a/arch/arm/mach-at91/at91sam9g45_devices.c b/arch/arm/mach-at91/at91sam9g45_devices.c
index b2e633b..9657649 100644
--- a/arch/arm/mach-at91/at91sam9g45_devices.c
+++ b/arch/arm/mach-at91/at91sam9g45_devices.c
@@ -29,7 +29,7 @@ static struct resource sdram_dev_resources[] = {
 
 static struct memory_platform_data ram_pdata = {
 	.name = "ram0",
-	.flags = DEVFS_RDWR,
+	.flags = IORESOURCE_MEM_WRITEABLE,
 };
 
 static struct device_d sdram_dev = {
diff --git a/arch/arm/mach-nomadik/8815.c b/arch/arm/mach-nomadik/8815.c
index 3969193..e742a09 100644
--- a/arch/arm/mach-nomadik/8815.c
+++ b/arch/arm/mach-nomadik/8815.c
@@ -33,7 +33,7 @@ static struct clk st8815_clk_48 = {
 
 static struct memory_platform_data ram_pdata = {
 	.name = "ram0",
-	.flags = DEVFS_RDWR,
+	.flags = IORESOURCE_MEM_WRITEABLE,
 };
 
 static struct resource sdram_dev_resources[] = {
diff --git a/arch/arm/mach-versatile/core.c b/arch/arm/mach-versatile/core.c
index ee14f5f..5857d43 100644
--- a/arch/arm/mach-versatile/core.c
+++ b/arch/arm/mach-versatile/core.c
@@ -44,7 +44,7 @@
 
 static struct memory_platform_data ram_pdata = {
 	.name = "ram0",
-	.flags = DEVFS_RDWR,
+	.flags = IORESOURCE_MEM_WRITEABLE,
 };
 
 static struct device_d sdram_dev = {
diff --git a/arch/blackfin/boards/ipe337/ipe337.c b/arch/blackfin/boards/ipe337/ipe337.c
index 61bcd43..6953d08 100644
--- a/arch/blackfin/boards/ipe337/ipe337.c
+++ b/arch/blackfin/boards/ipe337/ipe337.c
@@ -14,7 +14,7 @@ static struct device_d cfi_dev = {
 
 static struct memory_platform_data ram_pdata = {
 	.name = "ram0",
-	.flags = DEVFS_RDWR,
+	.flags = IORESOURCE_MEM_WRITEABLE,
 };
 
 static struct device_d sdram_dev = {
diff --git a/arch/nios2/boards/generic/generic.c b/arch/nios2/boards/generic/generic.c
index 4f7e747..5d6df8e 100644
--- a/arch/nios2/boards/generic/generic.c
+++ b/arch/nios2/boards/generic/generic.c
@@ -23,7 +23,7 @@ static struct device_d mac_dev = {
 
 static struct memory_platform_data ram_pdata = {
 	.name  = "ram0",
-	.flags = DEVFS_RDWR,
+	.flags = IORESOURCE_MEM_WRITEABLE,
 };
 
 static struct device_d ram_dev = {
diff --git a/arch/ppc/boards/pcm030/pcm030.c b/arch/ppc/boards/pcm030/pcm030.c
index 8b43550..fcb8404 100644
--- a/arch/ppc/boards/pcm030/pcm030.c
+++ b/arch/ppc/boards/pcm030/pcm030.c
@@ -46,7 +46,7 @@ struct device_d cfi_dev = {
 
 static struct memory_platform_data ram_pdata = {
 	.name = "ram0",
-	.flags = DEVFS_RDWR,
+	.flags = IORESOURCE_MEM_WRITEABLE,
 };
 
 struct device_d sdram_dev = {
diff --git a/arch/x86/boards/x86_generic/generic_pc.c b/arch/x86/boards/x86_generic/generic_pc.c
index bfa94b9..efd081d 100644
--- a/arch/x86/boards/x86_generic/generic_pc.c
+++ b/arch/x86/boards/x86_generic/generic_pc.c
@@ -32,7 +32,7 @@
 
 static struct memory_platform_data ram_pdata = {
 	.name		= "ram0",
-	.flags		= DEVFS_RDWR,
+	.flags		= IORESOURCE_MEM_WRITEABLE,
 };
 
 static struct device_d sdram_dev = {
diff --git a/commands/mem.c b/commands/mem.c
index 8df5f0a..927b7cc 100644
--- a/commands/mem.c
+++ b/commands/mem.c
@@ -612,7 +612,7 @@ static struct driver_d mem_drv = {
 
 static struct memory_platform_data mem_dev_pdata = {
 	.name = "mem",
-	.flags = DEVFS_RDWR,
+	.flags = IORESOURCE_MEM_WRITEABLE,
 };
 
 static struct device_d mem_dev = {
diff --git a/include/driver.h b/include/driver.h
index 0fc254d..05c3991 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -344,7 +344,6 @@ int cdev_erase(struct cdev *cdev, size_t count, unsigned long offset);
 #define DEVFS_PARTITION_FIXED		(1 << 0)
 #define DEVFS_PARTITION_READONLY	(1 << 1)
 #define DEVFS_IS_PARTITION		(1 << 2)
-#define DEVFS_RDWR			(1 << 3)
 
 int devfs_add_partition(const char *devname, unsigned long offset, size_t size,
 		int flags, const char *name);
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

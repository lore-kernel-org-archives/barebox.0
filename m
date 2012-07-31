Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SwGlf-0002qe-HG
 for barebox@lists.infradead.org; Tue, 31 Jul 2012 18:02:04 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 31 Jul 2012 20:01:47 +0200
Message-Id: <1343757710-12659-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1343757710-12659-1-git-send-email-s.hauer@pengutronix.de>
References: <1343757710-12659-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/4] SPI i.MX: Add support for i.MX6
To: barebox@lists.infradead.org

The i.MX5 does not have a valid function to get the spi clock. This
patch introduces a function for i.MX6, and moves the bogus spi clock
speed to the speed-imx5*.c. Not nice, but preserves the current status
quo for i.MX5

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/include/mach/devices-imx6.h |    5 +++++
 arch/arm/mach-imx/speed-imx51.c               |    5 +++++
 arch/arm/mach-imx/speed-imx53.c               |    5 +++++
 arch/arm/mach-imx/speed-imx6.c                |    5 +++++
 drivers/spi/Kconfig                           |    2 +-
 drivers/spi/imx_spi.c                         |    6 +++---
 6 files changed, 24 insertions(+), 4 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/devices-imx6.h b/arch/arm/mach-imx/include/mach/devices-imx6.h
index e4a72ac..ca063c5 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx6.h
+++ b/arch/arm/mach-imx/include/mach/devices-imx6.h
@@ -44,3 +44,8 @@ static inline struct device_d *imx6_add_fec(struct fec_platform_data *pdata)
 {
 	return imx_add_fec((void *)MX6_ENET_BASE_ADDR, pdata);
 }
+
+static inline struct device_d *imx6_add_spi0(struct spi_imx_master *pdata)
+{
+	return imx_add_spi((void *)MX6_ECSPI1_BASE_ADDR, 0, pdata);
+}
diff --git a/arch/arm/mach-imx/speed-imx51.c b/arch/arm/mach-imx/speed-imx51.c
index 87fbc75..288fe1a 100644
--- a/arch/arm/mach-imx/speed-imx51.c
+++ b/arch/arm/mach-imx/speed-imx51.c
@@ -228,6 +228,11 @@ unsigned long imx_get_usbclk(void)
 	return rate / (prediv * podf);
 }
 
+unsigned long imx_get_cspiclk(void)
+{
+	return 166000000; /* FIXME: bogus value */
+}
+
 /*
  * Set the divider of the CLKO pin. Returns
  * the new divider (which may be smaller
diff --git a/arch/arm/mach-imx/speed-imx53.c b/arch/arm/mach-imx/speed-imx53.c
index 653dae3..ede5ffd 100644
--- a/arch/arm/mach-imx/speed-imx53.c
+++ b/arch/arm/mach-imx/speed-imx53.c
@@ -217,6 +217,11 @@ unsigned long imx_get_mmcclk(void)
 	return rate / (prediv * podf);
 }
 
+unsigned long imx_get_cspiclk(void)
+{
+	return 166000000; /* FIXME: bogus value */
+}
+
 void imx_dump_clocks(void)
 {
 	printf("pll1: %ld\n", pll1_main_get_rate());
diff --git a/arch/arm/mach-imx/speed-imx6.c b/arch/arm/mach-imx/speed-imx6.c
index 4cc9fdb..df24545 100644
--- a/arch/arm/mach-imx/speed-imx6.c
+++ b/arch/arm/mach-imx/speed-imx6.c
@@ -332,6 +332,11 @@ u32 imx_get_fecclk(void)
 	return __get_ipg_clk();
 }
 
+u32 imx_get_cspiclk(void)
+{
+	return __get_cspi_clk();
+}
+
 void imx_dump_clocks(void)
 {
 	u32 freq;
diff --git a/drivers/spi/Kconfig b/drivers/spi/Kconfig
index 609bafd..a249b81 100644
--- a/drivers/spi/Kconfig
+++ b/drivers/spi/Kconfig
@@ -21,7 +21,7 @@ config DRIVER_SPI_IMX_0_7
 
 config DRIVER_SPI_IMX_2_3
 	bool
-	depends on ARCH_IMX51 || ARCH_IMX53
+	depends on ARCH_IMX51 || ARCH_IMX53 || ARCH_IMX6
 	default y
 
 config DRIVER_SPI_ALTERA
diff --git a/drivers/spi/imx_spi.c b/drivers/spi/imx_spi.c
index 42358f2..2e59b3c 100644
--- a/drivers/spi/imx_spi.c
+++ b/drivers/spi/imx_spi.c
@@ -374,7 +374,7 @@ static void cspi_2_3_chipselect(struct spi_device *spi, int is_active)
 
 	if (!is_active) {
 		if (gpio >= 0)
-			gpio_set_value(gpio, !gpio_cs);
+			gpio_direction_output(gpio, !gpio_cs);
 		return;
 	}
 
@@ -384,7 +384,7 @@ static void cspi_2_3_chipselect(struct spi_device *spi, int is_active)
 	ctrl |= CSPI_2_3_CTRL_MODE(cs);
 
 	/* set clock speed */
-	ctrl |= cspi_2_3_clkdiv(166000000, spi->max_speed_hz);
+	ctrl |= cspi_2_3_clkdiv(imx_get_cspiclk(), spi->max_speed_hz);
 
 	/* set chip select to use */
 	ctrl |= CSPI_2_3_CTRL_CS(cs);
@@ -521,7 +521,7 @@ static int imx_spi_probe(struct device_d *dev)
 		version = SPI_IMX_VER_0_7;
 #endif
 #ifdef CONFIG_DRIVER_SPI_IMX_2_3
-	if (cpu_is_mx51() || cpu_is_mx53())
+	if (cpu_is_mx51() || cpu_is_mx53() || cpu_is_mx6())
 		version = SPI_IMX_VER_2_3;
 #endif
 	imx->chipselect = spi_imx_devtype_data[version].chipselect;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

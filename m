Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WClVY-0001eA-GP
 for barebox@lists.infradead.org; Mon, 10 Feb 2014 07:42:28 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 10 Feb 2014 08:41:59 +0100
Message-Id: <1392018119-20774-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1392018119-20774-1-git-send-email-s.hauer@pengutronix.de>
References: <1392018119-20774-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/3] spi: imx: Use device ids
To: barebox@lists.infradead.org

To let the driver work on all SoCs without the use of cpu_is_*()

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/devices.c                    | 14 +++++-
 arch/arm/mach-imx/include/mach/devices-imx25.h |  6 +--
 arch/arm/mach-imx/include/mach/devices-imx27.h |  4 +-
 arch/arm/mach-imx/include/mach/devices-imx31.h |  6 +--
 arch/arm/mach-imx/include/mach/devices-imx35.h |  4 +-
 arch/arm/mach-imx/include/mach/devices-imx51.h |  6 +--
 arch/arm/mach-imx/include/mach/devices-imx53.h |  4 +-
 arch/arm/mach-imx/include/mach/devices-imx6.h  | 10 ++--
 arch/arm/mach-imx/include/mach/devices.h       |  4 +-
 drivers/spi/imx_spi.c                          | 66 +++++++++++++++++++-------
 10 files changed, 83 insertions(+), 41 deletions(-)

diff --git a/arch/arm/mach-imx/devices.c b/arch/arm/mach-imx/devices.c
index 682f39a..11444ef 100644
--- a/arch/arm/mach-imx/devices.c
+++ b/arch/arm/mach-imx/devices.c
@@ -18,9 +18,19 @@ struct device_d *imx_add_fec_imx6(void *base, struct fec_platform_data *pdata)
 	return imx_add_device("imx6-fec", -1, base, 0x1000, pdata);
 }
 
-struct device_d *imx_add_spi(void *base, int id, struct spi_imx_master *pdata)
+struct device_d *imx_add_spi_imx27(void *base, int id, struct spi_imx_master *pdata)
 {
-	return imx_add_device("imx_spi", id, base, 0x1000, pdata);
+	return imx_add_device("imx27-spi", id, base, 0x1000, pdata);
+}
+
+struct device_d *imx_add_spi_imx35(void *base, int id, struct spi_imx_master *pdata)
+{
+	return imx_add_device("imx35-spi", id, base, 0x1000, pdata);
+}
+
+struct device_d *imx_add_spi_imx51(void *base, int id, struct spi_imx_master *pdata)
+{
+	return imx_add_device("imx51-spi", id, base, 0x1000, pdata);
 }
 
 struct device_d *imx_add_i2c(void *base, int id, struct i2c_platform_data *pdata)
diff --git a/arch/arm/mach-imx/include/mach/devices-imx25.h b/arch/arm/mach-imx/include/mach/devices-imx25.h
index 5b582b8..eea8a60 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx25.h
+++ b/arch/arm/mach-imx/include/mach/devices-imx25.h
@@ -19,17 +19,17 @@ static inline struct device_d *imx25_add_i2c2(struct i2c_platform_data *pdata)
 
 static inline struct device_d *imx25_add_spi0(struct spi_imx_master *pdata)
 {
-	return imx_add_spi((void *)MX25_CSPI1_BASE_ADDR, 0, pdata);
+	return imx_add_spi_imx35((void *)MX25_CSPI1_BASE_ADDR, 0, pdata);
 }
 
 static inline struct device_d *imx25_add_spi1(struct spi_imx_master *pdata)
 {
-	return imx_add_spi((void *)MX25_CSPI2_BASE_ADDR, 1, pdata);
+	return imx_add_spi_imx35((void *)MX25_CSPI2_BASE_ADDR, 1, pdata);
 }
 
 static inline struct device_d *imx25_add_spi2(struct spi_imx_master *pdata)
 {
-	return imx_add_spi((void *)MX25_CSPI3_BASE_ADDR, 2, pdata);
+	return imx_add_spi_imx35((void *)MX25_CSPI3_BASE_ADDR, 2, pdata);
 }
 
 static inline struct device_d *imx25_add_uart0(void)
diff --git a/arch/arm/mach-imx/include/mach/devices-imx27.h b/arch/arm/mach-imx/include/mach/devices-imx27.h
index 87a3a7c..da2289b 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx27.h
+++ b/arch/arm/mach-imx/include/mach/devices-imx27.h
@@ -4,12 +4,12 @@
 
 static inline struct device_d *imx27_add_spi0(struct spi_imx_master *pdata)
 {
-	return imx_add_spi((void *)MX27_CSPI1_BASE_ADDR, 0, pdata);
+	return imx_add_spi_imx27((void *)MX27_CSPI1_BASE_ADDR, 0, pdata);
 }
 
 static inline struct device_d *imx27_add_spi1(struct spi_imx_master *pdata)
 {
-	return imx_add_spi((void *)MX27_CSPI2_BASE_ADDR, 1, pdata);
+	return imx_add_spi_imx27((void *)MX27_CSPI2_BASE_ADDR, 1, pdata);
 }
 
 static inline struct device_d *imx27_add_i2c0(struct i2c_platform_data *pdata)
diff --git a/arch/arm/mach-imx/include/mach/devices-imx31.h b/arch/arm/mach-imx/include/mach/devices-imx31.h
index 7cf9114..63319fe 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx31.h
+++ b/arch/arm/mach-imx/include/mach/devices-imx31.h
@@ -4,17 +4,17 @@
 
 static inline struct device_d *imx31_add_spi0(struct spi_imx_master *pdata)
 {
-	return imx_add_spi((void *)MX31_CSPI1_BASE_ADDR, 0, pdata);
+	return imx_add_spi_imx27((void *)MX31_CSPI1_BASE_ADDR, 0, pdata);
 }
 
 static inline struct device_d *imx31_add_spi1(struct spi_imx_master *pdata)
 {
-	return imx_add_spi((void *)MX31_CSPI2_BASE_ADDR, 1, pdata);
+	return imx_add_spi_imx27((void *)MX31_CSPI2_BASE_ADDR, 1, pdata);
 }
 
 static inline struct device_d *imx31_add_spi2(struct spi_imx_master *pdata)
 {
-	return imx_add_spi((void *)MX31_CSPI3_BASE_ADDR, 2, pdata);
+	return imx_add_spi_imx27((void *)MX31_CSPI3_BASE_ADDR, 2, pdata);
 }
 
 static inline struct device_d *imx31_add_uart0(void)
diff --git a/arch/arm/mach-imx/include/mach/devices-imx35.h b/arch/arm/mach-imx/include/mach/devices-imx35.h
index 766610d..3e53167 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx35.h
+++ b/arch/arm/mach-imx/include/mach/devices-imx35.h
@@ -19,12 +19,12 @@ static inline struct device_d *imx35_add_i2c2(struct i2c_platform_data *pdata)
 
 static inline struct device_d *imx35_add_spi0(struct spi_imx_master *pdata)
 {
-	return imx_add_spi((void *)MX35_CSPI1_BASE_ADDR, 0, pdata);
+	return imx_add_spi_imx35((void *)MX35_CSPI1_BASE_ADDR, 0, pdata);
 }
 
 static inline struct device_d *imx35_add_spi(struct spi_imx_master *pdata)
 {
-	return imx_add_spi((void *)MX35_CSPI2_BASE_ADDR, 1, pdata);
+	return imx_add_spi_imx35((void *)MX35_CSPI2_BASE_ADDR, 1, pdata);
 }
 
 static inline struct device_d *imx35_add_uart0(void)
diff --git a/arch/arm/mach-imx/include/mach/devices-imx51.h b/arch/arm/mach-imx/include/mach/devices-imx51.h
index 0064478..6895329 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx51.h
+++ b/arch/arm/mach-imx/include/mach/devices-imx51.h
@@ -5,17 +5,17 @@
 
 static inline struct device_d *imx51_add_spi0(struct spi_imx_master *pdata)
 {
-	return imx_add_spi((void *)MX51_ECSPI1_BASE_ADDR, 0, pdata);
+	return imx_add_spi_imx51((void *)MX51_ECSPI1_BASE_ADDR, 0, pdata);
 }
 
 static inline struct device_d *imx51_add_spi1(struct spi_imx_master *pdata)
 {
-	return imx_add_spi((void *)MX51_ECSPI2_BASE_ADDR, 1, pdata);
+	return imx_add_spi_imx51((void *)MX51_ECSPI2_BASE_ADDR, 1, pdata);
 }
 
 static inline struct device_d *imx51_add_cspi(struct spi_imx_master *pdata)
 {
-	return imx_add_spi((void *)MX51_CSPI_BASE_ADDR, 2, pdata);
+	return imx_add_spi_imx35((void *)MX51_CSPI_BASE_ADDR, 2, pdata);
 }
 
 static inline struct device_d *imx51_add_i2c0(struct i2c_platform_data *pdata)
diff --git a/arch/arm/mach-imx/include/mach/devices-imx53.h b/arch/arm/mach-imx/include/mach/devices-imx53.h
index 4621c53..d4e9a4a 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx53.h
+++ b/arch/arm/mach-imx/include/mach/devices-imx53.h
@@ -4,12 +4,12 @@
 
 static inline struct device_d *imx53_add_spi0(struct spi_imx_master *pdata)
 {
-	return imx_add_spi((void *)MX53_ECSPI1_BASE_ADDR, 0, pdata);
+	return imx_add_spi_imx51((void *)MX53_ECSPI1_BASE_ADDR, 0, pdata);
 }
 
 static inline struct device_d *imx53_add_spi1(struct spi_imx_master *pdata)
 {
-	return imx_add_spi((void *)MX53_ECSPI2_BASE_ADDR, 1, pdata);
+	return imx_add_spi_imx51((void *)MX53_ECSPI2_BASE_ADDR, 1, pdata);
 }
 
 static inline struct device_d *imx53_add_i2c0(struct i2c_platform_data *pdata)
diff --git a/arch/arm/mach-imx/include/mach/devices-imx6.h b/arch/arm/mach-imx/include/mach/devices-imx6.h
index 7d41d7f..3a1bfb6 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx6.h
+++ b/arch/arm/mach-imx/include/mach/devices-imx6.h
@@ -48,27 +48,27 @@ static inline struct device_d *imx6_add_fec(struct fec_platform_data *pdata)
 
 static inline struct device_d *imx6_add_spi0(struct spi_imx_master *pdata)
 {
-	return imx_add_spi((void *)MX6_ECSPI1_BASE_ADDR, 0, pdata);
+	return imx_add_spi_imx51((void *)MX6_ECSPI1_BASE_ADDR, 0, pdata);
 }
 
 static inline struct device_d *imx6_add_spi1(struct spi_imx_master *pdata)
 {
-	return imx_add_spi((void *)MX6_ECSPI2_BASE_ADDR, 1, pdata);
+	return imx_add_spi_imx51((void *)MX6_ECSPI2_BASE_ADDR, 1, pdata);
 }
 
 static inline struct device_d *imx6_add_spi2(struct spi_imx_master *pdata)
 {
-	return imx_add_spi((void *)MX6_ECSPI3_BASE_ADDR, 2, pdata);
+	return imx_add_spi_imx51((void *)MX6_ECSPI3_BASE_ADDR, 2, pdata);
 }
 
 static inline struct device_d *imx6_add_spi3(struct spi_imx_master *pdata)
 {
-	return imx_add_spi((void *)MX6_ECSPI4_BASE_ADDR, 3, pdata);
+	return imx_add_spi_imx51((void *)MX6_ECSPI4_BASE_ADDR, 3, pdata);
 }
 
 static inline struct device_d *imx6_add_spi4(struct spi_imx_master *pdata)
 {
-	return imx_add_spi((void *)MX6_ECSPI5_BASE_ADDR, 4, pdata);
+	return imx_add_spi_imx51((void *)MX6_ECSPI5_BASE_ADDR, 4, pdata);
 }
 
 static inline struct device_d *imx6_add_i2c0(struct i2c_platform_data *pdata)
diff --git a/arch/arm/mach-imx/include/mach/devices.h b/arch/arm/mach-imx/include/mach/devices.h
index 5929658..4c07f46 100644
--- a/arch/arm/mach-imx/include/mach/devices.h
+++ b/arch/arm/mach-imx/include/mach/devices.h
@@ -11,7 +11,9 @@
 
 struct device_d *imx_add_fec_imx27(void *base, struct fec_platform_data *pdata);
 struct device_d *imx_add_fec_imx6(void *base, struct fec_platform_data *pdata);
-struct device_d *imx_add_spi(void *base, int id, struct spi_imx_master *pdata);
+struct device_d *imx_add_spi_imx27(void *base, int id, struct spi_imx_master *pdata);
+struct device_d *imx_add_spi_imx35(void *base, int id, struct spi_imx_master *pdata);
+struct device_d *imx_add_spi_imx51(void *base, int id, struct spi_imx_master *pdata);
 struct device_d *imx_add_i2c(void *base, int id, struct i2c_platform_data *pdata);
 struct device_d *imx_add_uart_imx1(void *base, int id);
 struct device_d *imx_add_uart_imx21(void *base, int id);
diff --git a/drivers/spi/imx_spi.c b/drivers/spi/imx_spi.c
index a1b91a9..6675729 100644
--- a/drivers/spi/imx_spi.c
+++ b/drivers/spi/imx_spi.c
@@ -446,19 +446,19 @@ static int imx_spi_transfer(struct spi_device *spi, struct spi_message *mesg)
 	return 0;
 }
 
-static struct spi_imx_devtype_data spi_imx_devtype_data_0_0 = {
+static __maybe_unused struct spi_imx_devtype_data spi_imx_devtype_data_0_0 = {
 	.chipselect = cspi_0_0_chipselect,
 	.xchg_single = cspi_0_0_xchg_single,
 	.init = cspi_0_0_init,
 };
 
-static struct spi_imx_devtype_data spi_imx_devtype_data_0_7 = {
+static __maybe_unused struct spi_imx_devtype_data spi_imx_devtype_data_0_7 = {
 	.chipselect = cspi_0_7_chipselect,
 	.xchg_single = cspi_0_7_xchg_single,
 	.init = cspi_0_7_init,
 };
 
-static struct spi_imx_devtype_data spi_imx_devtype_data_2_3 = {
+static __maybe_unused struct spi_imx_devtype_data spi_imx_devtype_data_2_3 = {
 	.chipselect = cspi_2_3_chipselect,
 	.xchg_single = cspi_2_3_xchg_single,
 	.init = cspi_2_3_init,
@@ -493,9 +493,13 @@ static int imx_spi_probe(struct device_d *dev)
 	struct spi_master *master;
 	struct imx_spi *imx;
 	struct spi_imx_master *pdata = dev->platform_data;
-	struct spi_imx_devtype_data *devdata;
+	struct spi_imx_devtype_data *devdata = NULL;
 	int ret;
 
+	ret = dev_get_drvdata(dev, (unsigned long *)&devdata);
+	if (ret)
+		return -ENODEV;
+
 	imx = xzalloc(sizeof(*imx));
 
 	master = &imx->master;
@@ -519,17 +523,6 @@ static int imx_spi_probe(struct device_d *dev)
 		goto err_free;
 	}
 
-	if (IS_ENABLED(CONFIG_DRIVER_SPI_IMX_0_0) && cpu_is_mx27())
-		devdata = &spi_imx_devtype_data_0_0;
-
-	if (IS_ENABLED(CONFIG_DRIVER_SPI_IMX_0_0) &&
-			(cpu_is_mx25() || cpu_is_mx35()))
-		devdata = &spi_imx_devtype_data_0_7;
-
-	if (IS_ENABLED(CONFIG_DRIVER_SPI_IMX_2_3) &&
-			(cpu_is_mx51() || cpu_is_mx53() || cpu_is_mx6()))
-		devdata = &spi_imx_devtype_data_2_3;
-
 	imx->chipselect = devdata->chipselect;
 	imx->xchg_single = devdata->xchg_single;
 	imx->init = devdata->init;
@@ -548,13 +541,49 @@ err_free:
 }
 
 static __maybe_unused struct of_device_id imx_spi_dt_ids[] = {
+#if IS_ENABLED(CONFIG_DRIVER_SPI_IMX_0_0)
 	{
 		.compatible = "fsl,imx27-cspi",
-	}, {
+		.data = (unsigned long)&spi_imx_devtype_data_0_0,
+	},
+#endif
+#if IS_ENABLED(CONFIG_DRIVER_SPI_IMX_0_7)
+	{
 		.compatible = "fsl,imx35-cspi",
-	}, {
+		.data = (unsigned long)&spi_imx_devtype_data_0_7,
+	},
+#endif
+#if IS_ENABLED(CONFIG_DRIVER_SPI_IMX_2_3)
+	{
 		.compatible = "fsl,imx51-ecspi",
-	}, {
+		.data = (unsigned long)&spi_imx_devtype_data_2_3,
+	},
+#endif
+	{
+		/* sentinel */
+	}
+};
+
+static struct platform_device_id imx_spi_ids[] = {
+#if IS_ENABLED(CONFIG_DRIVER_SPI_IMX_0_0)
+	{
+		.name = "imx27-spi",
+		.driver_data = (unsigned long)&spi_imx_devtype_data_0_0,
+	},
+#endif
+#if IS_ENABLED(CONFIG_DRIVER_SPI_IMX_0_7)
+	{
+		.name = "imx35-spi",
+		.driver_data = (unsigned long)&spi_imx_devtype_data_0_7,
+	},
+#endif
+#if IS_ENABLED(CONFIG_DRIVER_SPI_IMX_2_3)
+	{
+		.name = "imx51-spi",
+		.driver_data = (unsigned long)&spi_imx_devtype_data_2_3,
+	},
+#endif
+	{
 		/* sentinel */
 	}
 };
@@ -563,5 +592,6 @@ static struct driver_d imx_spi_driver = {
 	.name  = "imx_spi",
 	.probe = imx_spi_probe,
 	.of_compatible = DRV_OF_COMPAT(imx_spi_dt_ids),
+	.id_table = imx_spi_ids,
 };
 device_platform_driver(imx_spi_driver);
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

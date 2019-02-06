Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1grHxU-0001d4-Q7
 for barebox@lists.infradead.org; Wed, 06 Feb 2019 07:49:28 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  6 Feb 2019 08:49:15 +0100
Message-Id: <20190206074921.11115-3-s.hauer@pengutronix.de>
In-Reply-To: <20190206074921.11115-1-s.hauer@pengutronix.de>
References: <20190206074921.11115-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/8] mci: imx-esdhc: use dev_id
To: Barebox List <barebox@lists.infradead.org>

Avoid using cpu_is_* macros and use a dev_id instead. This will make it
easier to integrate the driver into another architecture.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/devices.c                   |  9 +++--
 .../arm/mach-imx/include/mach/devices-imx25.h |  4 +--
 .../arm/mach-imx/include/mach/devices-imx35.h |  6 ++--
 .../arm/mach-imx/include/mach/devices-imx50.h |  8 ++---
 .../arm/mach-imx/include/mach/devices-imx51.h |  6 ++--
 .../arm/mach-imx/include/mach/devices-imx53.h |  8 ++---
 arch/arm/mach-imx/include/mach/devices-imx6.h | 20 -----------
 arch/arm/mach-imx/include/mach/devices.h      |  3 +-
 drivers/mci/imx-esdhc.c                       | 33 +++++++++++--------
 9 files changed, 44 insertions(+), 53 deletions(-)

diff --git a/arch/arm/mach-imx/devices.c b/arch/arm/mach-imx/devices.c
index 11444ef1a6..a0609e282a 100644
--- a/arch/arm/mach-imx/devices.c
+++ b/arch/arm/mach-imx/devices.c
@@ -68,9 +68,14 @@ struct device_d *imx_add_mmc(void *base, int id, void *pdata)
 	return imx_add_device("imx-mmc", id, base, 0x1000, pdata);
 }
 
-struct device_d *imx_add_esdhc(void *base, int id, struct esdhc_platform_data *pdata)
+struct device_d *imx_add_esdhc_imx25(void *base, int id, struct esdhc_platform_data *pdata)
 {
-	return imx_add_device("imx-esdhc", id, base, 0x1000, pdata);
+	return imx_add_device("imx25-esdhc", id, base, 0x1000, pdata);
+}
+
+struct device_d *imx_add_esdhc_imx5(void *base, int id, struct esdhc_platform_data *pdata)
+{
+	return imx_add_device("imx5-esdhc", id, base, 0x1000, pdata);
 }
 
 struct device_d *imx_add_kpp(void *base, struct matrix_keymap_data *pdata)
diff --git a/arch/arm/mach-imx/include/mach/devices-imx25.h b/arch/arm/mach-imx/include/mach/devices-imx25.h
index eea8a60d78..7779a02be1 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx25.h
+++ b/arch/arm/mach-imx/include/mach/devices-imx25.h
@@ -74,10 +74,10 @@ static inline struct device_d *imx25_add_fec(struct fec_platform_data *pdata)
 
 static inline struct device_d *imx25_add_mmc0(struct esdhc_platform_data *pdata)
 {
-	return imx_add_esdhc((void *)MX25_ESDHC1_BASE_ADDR, 0, pdata);
+	return imx_add_esdhc_imx25((void *)MX25_ESDHC1_BASE_ADDR, 0, pdata);
 }
 
 static inline struct device_d *imx25_add_mmc1(struct esdhc_platform_data *pdata)
 {
-	return imx_add_esdhc((void *)MX25_ESDHC2_BASE_ADDR, 1, pdata);
+	return imx_add_esdhc_imx25((void *)MX25_ESDHC2_BASE_ADDR, 1, pdata);
 }
diff --git a/arch/arm/mach-imx/include/mach/devices-imx35.h b/arch/arm/mach-imx/include/mach/devices-imx35.h
index 3e53167901..922bb589c6 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx35.h
+++ b/arch/arm/mach-imx/include/mach/devices-imx35.h
@@ -59,15 +59,15 @@ static inline struct device_d *imx35_add_fec(struct fec_platform_data *pdata)
 
 static inline struct device_d *imx35_add_mmc0(struct esdhc_platform_data *pdata)
 {
-	return imx_add_esdhc((void *)MX35_ESDHC1_BASE_ADDR, 0, pdata);
+	return imx_add_esdhc_imx25((void *)MX35_ESDHC1_BASE_ADDR, 0, pdata);
 }
 
 static inline struct device_d *imx35_add_mmc1(struct esdhc_platform_data *pdata)
 {
-	return imx_add_esdhc((void *)MX35_ESDHC2_BASE_ADDR, 1, pdata);
+	return imx_add_esdhc_imx25((void *)MX35_ESDHC2_BASE_ADDR, 1, pdata);
 }
 
 static inline struct device_d *imx35_add_mmc2(struct esdhc_platform_data *pdata)
 {
-	return imx_add_esdhc((void *)MX35_ESDHC3_BASE_ADDR, 2, pdata);
+	return imx_add_esdhc_imx25((void *)MX35_ESDHC3_BASE_ADDR, 2, pdata);
 }
diff --git a/arch/arm/mach-imx/include/mach/devices-imx50.h b/arch/arm/mach-imx/include/mach/devices-imx50.h
index 9e0eaa8cbb..7e5141a107 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx50.h
+++ b/arch/arm/mach-imx/include/mach/devices-imx50.h
@@ -59,22 +59,22 @@ static inline struct device_d *imx50_add_fec(struct fec_platform_data *pdata)
 
 static inline struct device_d *imx50_add_mmc0(struct esdhc_platform_data *pdata)
 {
-	return imx_add_esdhc((void *)MX50_ESDHC1_BASE_ADDR, 0, pdata);
+	return imx5_add_esdhc((void *)MX50_ESDHC1_BASE_ADDR, 0, pdata);
 }
 
 static inline struct device_d *imx50_add_mmc1(struct esdhc_platform_data *pdata)
 {
-	return imx_add_esdhc((void *)MX50_ESDHC2_BASE_ADDR, 1, pdata);
+	return imx5_add_esdhc((void *)MX50_ESDHC2_BASE_ADDR, 1, pdata);
 }
 
 static inline struct device_d *imx50_add_mmc2(struct esdhc_platform_data *pdata)
 {
-	return imx_add_esdhc((void *)MX50_ESDHC3_BASE_ADDR, 2, pdata);
+	return imx5_add_esdhc((void *)MX50_ESDHC3_BASE_ADDR, 2, pdata);
 }
 
 static inline struct device_d *imx50_add_mmc3(struct esdhc_platform_data *pdata)
 {
-	return imx_add_esdhc((void *)MX50_ESDHC4_BASE_ADDR, 3, pdata);
+	return imx5_add_esdhc((void *)MX50_ESDHC4_BASE_ADDR, 3, pdata);
 }
 
 static inline struct device_d *imx50_add_kpp(struct matrix_keymap_data *pdata)
diff --git a/arch/arm/mach-imx/include/mach/devices-imx51.h b/arch/arm/mach-imx/include/mach/devices-imx51.h
index 66fe643f82..5a968a3000 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx51.h
+++ b/arch/arm/mach-imx/include/mach/devices-imx51.h
@@ -50,17 +50,17 @@ static inline struct device_d *imx51_add_fec(struct fec_platform_data *pdata)
 
 static inline struct device_d *imx51_add_mmc0(struct esdhc_platform_data *pdata)
 {
-	return imx_add_esdhc((void *)MX51_MMC_SDHC1_BASE_ADDR, 0, pdata);
+	return imx_add_esdhc_imx5((void *)MX51_MMC_SDHC1_BASE_ADDR, 0, pdata);
 }
 
 static inline struct device_d *imx51_add_mmc1(struct esdhc_platform_data *pdata)
 {
-	return imx_add_esdhc((void *)MX51_MMC_SDHC2_BASE_ADDR, 1, pdata);
+	return imx_add_esdhc_imx5((void *)MX51_MMC_SDHC2_BASE_ADDR, 1, pdata);
 }
 
 static inline struct device_d *imx51_add_mmc2(struct esdhc_platform_data *pdata)
 {
-	return imx_add_esdhc((void *)MX51_MMC_SDHC3_BASE_ADDR, 2, pdata);
+	return imx_add_esdhc_imx5((void *)MX51_MMC_SDHC3_BASE_ADDR, 2, pdata);
 }
 
 static inline struct device_d *imx51_add_nand(struct imx_nand_platform_data *pdata)
diff --git a/arch/arm/mach-imx/include/mach/devices-imx53.h b/arch/arm/mach-imx/include/mach/devices-imx53.h
index 27200a26d0..e5c257a40b 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx53.h
+++ b/arch/arm/mach-imx/include/mach/devices-imx53.h
@@ -59,22 +59,22 @@ static inline struct device_d *imx53_add_fec(struct fec_platform_data *pdata)
 
 static inline struct device_d *imx53_add_mmc0(struct esdhc_platform_data *pdata)
 {
-	return imx_add_esdhc((void *)MX53_ESDHC1_BASE_ADDR, 0, pdata);
+	return imx_add_esdhc_imx5((void *)MX53_ESDHC1_BASE_ADDR, 0, pdata);
 }
 
 static inline struct device_d *imx53_add_mmc1(struct esdhc_platform_data *pdata)
 {
-	return imx_add_esdhc((void *)MX53_ESDHC2_BASE_ADDR, 1, pdata);
+	return imx_add_esdhc_imx5((void *)MX53_ESDHC2_BASE_ADDR, 1, pdata);
 }
 
 static inline struct device_d *imx53_add_mmc2(struct esdhc_platform_data *pdata)
 {
-	return imx_add_esdhc((void *)MX53_ESDHC3_BASE_ADDR, 2, pdata);
+	return imx_add_esdhc_imx5((void *)MX53_ESDHC3_BASE_ADDR, 2, pdata);
 }
 
 static inline struct device_d *imx53_add_mmc3(struct esdhc_platform_data *pdata)
 {
-	return imx_add_esdhc((void *)MX53_ESDHC4_BASE_ADDR, 3, pdata);
+	return imx_add_esdhc_imx5((void *)MX53_ESDHC4_BASE_ADDR, 3, pdata);
 }
 
 static inline struct device_d *imx53_add_nand(struct imx_nand_platform_data *pdata)
diff --git a/arch/arm/mach-imx/include/mach/devices-imx6.h b/arch/arm/mach-imx/include/mach/devices-imx6.h
index 3a1bfb6a86..9471f57909 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx6.h
+++ b/arch/arm/mach-imx/include/mach/devices-imx6.h
@@ -21,26 +21,6 @@ static inline struct device_d *imx6_add_uart3(void)
 	return imx_add_uart_imx21((void *)MX6_UART4_BASE_ADDR, 3);
 }
 
-static inline struct device_d *imx6_add_mmc0(struct esdhc_platform_data *pdata)
-{
-	return imx_add_esdhc((void *)MX6_USDHC1_BASE_ADDR, 0, pdata);
-}
-
-static inline struct device_d *imx6_add_mmc1(struct esdhc_platform_data *pdata)
-{
-	return imx_add_esdhc((void *)MX6_USDHC2_BASE_ADDR, 1, pdata);
-}
-
-static inline struct device_d *imx6_add_mmc2(struct esdhc_platform_data *pdata)
-{
-	return imx_add_esdhc((void *)MX6_USDHC3_BASE_ADDR, 2, pdata);
-}
-
-static inline struct device_d *imx6_add_mmc3(struct esdhc_platform_data *pdata)
-{
-	return imx_add_esdhc((void *)MX6_USDHC4_BASE_ADDR, 3, pdata);
-}
-
 static inline struct device_d *imx6_add_fec(struct fec_platform_data *pdata)
 {
 	return imx_add_fec_imx6((void *)MX6_ENET_BASE_ADDR, pdata);
diff --git a/arch/arm/mach-imx/include/mach/devices.h b/arch/arm/mach-imx/include/mach/devices.h
index 6a045dd070..b0e1fd1f3c 100644
--- a/arch/arm/mach-imx/include/mach/devices.h
+++ b/arch/arm/mach-imx/include/mach/devices.h
@@ -21,7 +21,8 @@ struct device_d *imx_add_nand(void *base, struct imx_nand_platform_data *pdata);
 struct device_d *imx_add_fb(void *base, struct imx_fb_platform_data *pdata);
 struct device_d *imx_add_ipufb(void *base, struct imx_ipu_fb_platform_data *pdata);
 struct device_d *imx_add_mmc(void *base, int id, void *pdata);
-struct device_d *imx_add_esdhc(void *base, int id, struct esdhc_platform_data *pdata);
+struct device_d *imx_add_esdhc_imx25(void *base, int id, struct esdhc_platform_data *pdata);
+struct device_d *imx_add_esdhc_imx5(void *base, int id, struct esdhc_platform_data *pdata);
 struct device_d *imx_add_kpp(void *base, struct matrix_keymap_data *pdata);
 struct device_d *imx_add_pata(void *base);
 struct device_d *imx_add_usb(void *base, int id, struct imxusb_platformdata *pdata);
diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index a33d654f38..7ff431a66f 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -596,9 +596,6 @@ static int fsl_esdhc_detect(struct device_d *dev)
 	return mci_detect_card(&host->mci);
 }
 
-static struct esdhc_soc_data esdhc_imx25_data;
-static struct esdhc_soc_data esdhc_imx53_data;
-
 static int fsl_esdhc_probe(struct device_d *dev)
 {
 	struct resource *iores;
@@ -608,21 +605,16 @@ static int fsl_esdhc_probe(struct device_d *dev)
 	int ret;
 	unsigned long rate;
 	struct esdhc_platform_data *pdata = dev->platform_data;
+	const struct esdhc_soc_data *socdata;
+
+	ret = dev_get_drvdata(dev, (const void **)&socdata);
+	if (ret)
+		return ret;
 
 	host = xzalloc(sizeof(*host));
+	host->socdata = socdata;
 	mci = &host->mci;
 
-	if (IS_ENABLED(CONFIG_OFDEVICE)) {
-		host->socdata = of_device_get_match_data(dev);
-		if (!host->socdata)
-			return -EINVAL;
-	} else {
-		if (cpu_is_mx50() || cpu_is_mx51() || cpu_is_mx53())
-			host->socdata = &esdhc_imx53_data;
-		else
-			host->socdata = &esdhc_imx25_data;
-	}
-
 	dma_set_mask(dev, DMA_BIT_MASK(32));
 
 	host->clk = clk_get(dev, "per");
@@ -720,9 +712,22 @@ static __maybe_unused struct of_device_id fsl_esdhc_compatible[] = {
 	{ /* sentinel */ }
 };
 
+static struct platform_device_id imx_esdhc_ids[] = {
+	{
+		.name = "imx25-esdhc",
+		.driver_data = (unsigned long)&esdhc_imx25_data,
+	}, {
+		.name = "imx5-esdhc",
+		.driver_data = (unsigned long)&esdhc_imx53_data,
+	}, {
+		/* sentinel */
+	}
+};
+
 static struct driver_d fsl_esdhc_driver = {
 	.name  = "imx-esdhc",
 	.probe = fsl_esdhc_probe,
 	.of_compatible = DRV_OF_COMPAT(fsl_esdhc_compatible),
+	.id_table = imx_esdhc_ids,
 };
 device_platform_driver(fsl_esdhc_driver);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

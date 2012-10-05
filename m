Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TK5Gk-0004Q8-AI
 for barebox@lists.infradead.org; Fri, 05 Oct 2012 10:36:35 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  5 Oct 2012 12:36:22 +0200
Message-Id: <1349433383-8469-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1349433383-8469-1-git-send-email-s.hauer@pengutronix.de>
References: <1349433383-8469-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/3] net fec_imx: determine fec version based on device ids
To: barebox@lists.infradead.org

This adds the device id mechanism to the i.MX fec driver and
uses it to determine the fec version. Also adds devicetree
probing support.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/freescale-mx28-evk/mx28-evk.c  |    2 +-
 arch/arm/boards/karo-tx28/tx28-stk5.c          |    2 +-
 arch/arm/mach-imx/devices.c                    |    9 +++-
 arch/arm/mach-imx/include/mach/devices-imx25.h |    2 +-
 arch/arm/mach-imx/include/mach/devices-imx27.h |    2 +-
 arch/arm/mach-imx/include/mach/devices-imx35.h |    2 +-
 arch/arm/mach-imx/include/mach/devices-imx51.h |    2 +-
 arch/arm/mach-imx/include/mach/devices-imx53.h |    2 +-
 arch/arm/mach-imx/include/mach/devices-imx6.h  |    2 +-
 arch/arm/mach-imx/include/mach/devices.h       |    3 +-
 drivers/net/fec_imx.c                          |   68 +++++++++++++++++++-----
 drivers/net/fec_imx.h                          |   22 ++++++++
 12 files changed, 95 insertions(+), 23 deletions(-)

diff --git a/arch/arm/boards/freescale-mx28-evk/mx28-evk.c b/arch/arm/boards/freescale-mx28-evk/mx28-evk.c
index 7cd61f9..5bcb24c 100644
--- a/arch/arm/boards/freescale-mx28-evk/mx28-evk.c
+++ b/arch/arm/boards/freescale-mx28-evk/mx28-evk.c
@@ -236,7 +236,7 @@ static int mx28_evk_devices_init(void)
 
 	imx_enable_enetclk();
 	mx28_evk_fec_reset();
-	add_generic_device("fec_imx", 0, NULL, IMX_FEC0_BASE, 0x4000,
+	add_generic_device("imx28-fec", 0, NULL, IMX_FEC0_BASE, 0x4000,
 			   IORESOURCE_MEM, &fec_info);
 
 	return 0;
diff --git a/arch/arm/boards/karo-tx28/tx28-stk5.c b/arch/arm/boards/karo-tx28/tx28-stk5.c
index 9617876..766e77b 100644
--- a/arch/arm/boards/karo-tx28/tx28-stk5.c
+++ b/arch/arm/boards/karo-tx28/tx28-stk5.c
@@ -393,7 +393,7 @@ void base_board_init(void)
 	tx28_get_ethaddr();
 
 	imx_enable_enetclk();
-	add_generic_device("fec_imx", 0, NULL, IMX_FEC0_BASE, 0x4000,
+	add_generic_device("imx28-fec", 0, NULL, IMX_FEC0_BASE, 0x4000,
 			   IORESOURCE_MEM, &fec_info);
 
 	ret = register_persistent_environment();
diff --git a/arch/arm/mach-imx/devices.c b/arch/arm/mach-imx/devices.c
index dcef576..4ee4e6c 100644
--- a/arch/arm/mach-imx/devices.c
+++ b/arch/arm/mach-imx/devices.c
@@ -8,9 +8,14 @@ static inline struct device_d *imx_add_device(char *name, int id, void *base, in
 				  IORESOURCE_MEM, pdata);
 }
 
-struct device_d *imx_add_fec(void *base, struct fec_platform_data *pdata)
+struct device_d *imx_add_fec_imx27(void *base, struct fec_platform_data *pdata)
 {
-	return imx_add_device("fec_imx", -1, base, 0x1000, pdata);
+	return imx_add_device("imx27-fec", -1, base, 0x1000, pdata);
+}
+
+struct device_d *imx_add_fec_imx6(void *base, struct fec_platform_data *pdata)
+{
+	return imx_add_device("imx6-fec", -1, base, 0x1000, pdata);
 }
 
 struct device_d *imx_add_spi(void *base, int id, struct spi_imx_master *pdata)
diff --git a/arch/arm/mach-imx/include/mach/devices-imx25.h b/arch/arm/mach-imx/include/mach/devices-imx25.h
index f082178..a655be9 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx25.h
+++ b/arch/arm/mach-imx/include/mach/devices-imx25.h
@@ -68,7 +68,7 @@ static inline struct device_d *imx25_add_fb(struct imx_fb_platform_data *pdata)
 
 static inline struct device_d *imx25_add_fec(struct fec_platform_data *pdata)
 {
-	return imx_add_fec((void *)MX25_FEC_BASE_ADDR, pdata);
+	return imx_add_fec_imx27((void *)MX25_FEC_BASE_ADDR, pdata);
 }
 
 static inline struct device_d *imx25_add_mmc0(struct esdhc_platform_data *pdata)
diff --git a/arch/arm/mach-imx/include/mach/devices-imx27.h b/arch/arm/mach-imx/include/mach/devices-imx27.h
index f143785..79da935 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx27.h
+++ b/arch/arm/mach-imx/include/mach/devices-imx27.h
@@ -53,7 +53,7 @@ static inline struct device_d *imx27_add_fb(struct imx_fb_platform_data *pdata)
 
 static inline struct device_d *imx27_add_fec(struct fec_platform_data *pdata)
 {
-	return imx_add_fec((void *)MX27_FEC_BASE_ADDR, pdata);
+	return imx_add_fec_imx27((void *)MX27_FEC_BASE_ADDR, pdata);
 }
 
 static inline struct device_d *imx27_add_mmc0(void *pdata)
diff --git a/arch/arm/mach-imx/include/mach/devices-imx35.h b/arch/arm/mach-imx/include/mach/devices-imx35.h
index 06393d4..912c418 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx35.h
+++ b/arch/arm/mach-imx/include/mach/devices-imx35.h
@@ -53,7 +53,7 @@ static inline struct device_d *imx35_add_fb(struct imx_ipu_fb_platform_data *pda
 
 static inline struct device_d *imx35_add_fec(struct fec_platform_data *pdata)
 {
-	return imx_add_fec((void *)MX35_FEC_BASE_ADDR, pdata);
+	return imx_add_fec_imx27((void *)MX35_FEC_BASE_ADDR, pdata);
 }
 
 static inline struct device_d *imx35_add_mmc0(struct esdhc_platform_data *pdata)
diff --git a/arch/arm/mach-imx/include/mach/devices-imx51.h b/arch/arm/mach-imx/include/mach/devices-imx51.h
index 83b5a66..8ee3c17 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx51.h
+++ b/arch/arm/mach-imx/include/mach/devices-imx51.h
@@ -44,7 +44,7 @@ static inline struct device_d *imx51_add_uart2(void)
 
 static inline struct device_d *imx51_add_fec(struct fec_platform_data *pdata)
 {
-	return imx_add_fec((void *)MX51_MXC_FEC_BASE_ADDR, pdata);
+	return imx_add_fec_imx27((void *)MX51_MXC_FEC_BASE_ADDR, pdata);
 }
 
 static inline struct device_d *imx51_add_mmc0(struct esdhc_platform_data *pdata)
diff --git a/arch/arm/mach-imx/include/mach/devices-imx53.h b/arch/arm/mach-imx/include/mach/devices-imx53.h
index 5c3c093..5f967ea 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx53.h
+++ b/arch/arm/mach-imx/include/mach/devices-imx53.h
@@ -38,7 +38,7 @@ static inline struct device_d *imx53_add_uart2(void)
 
 static inline struct device_d *imx53_add_fec(struct fec_platform_data *pdata)
 {
-	return imx_add_fec((void *)MX53_FEC_BASE_ADDR, pdata);
+	return imx_add_fec_imx27((void *)MX53_FEC_BASE_ADDR, pdata);
 }
 
 static inline struct device_d *imx53_add_mmc0(struct esdhc_platform_data *pdata)
diff --git a/arch/arm/mach-imx/include/mach/devices-imx6.h b/arch/arm/mach-imx/include/mach/devices-imx6.h
index 9310938..f8282e7 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx6.h
+++ b/arch/arm/mach-imx/include/mach/devices-imx6.h
@@ -42,7 +42,7 @@ static inline struct device_d *imx6_add_mmc3(struct esdhc_platform_data *pdata)
 
 static inline struct device_d *imx6_add_fec(struct fec_platform_data *pdata)
 {
-	return imx_add_fec((void *)MX6_ENET_BASE_ADDR, pdata);
+	return imx_add_fec_imx6((void *)MX6_ENET_BASE_ADDR, pdata);
 }
 
 static inline struct device_d *imx6_add_spi0(struct spi_imx_master *pdata)
diff --git a/arch/arm/mach-imx/include/mach/devices.h b/arch/arm/mach-imx/include/mach/devices.h
index 8679ade..f7824f5 100644
--- a/arch/arm/mach-imx/include/mach/devices.h
+++ b/arch/arm/mach-imx/include/mach/devices.h
@@ -8,7 +8,8 @@
 #include <mach/imx-ipu-fb.h>
 #include <mach/esdhc.h>
 
-struct device_d *imx_add_fec(void *base, struct fec_platform_data *pdata);
+struct device_d *imx_add_fec_imx27(void *base, struct fec_platform_data *pdata);
+struct device_d *imx_add_fec_imx6(void *base, struct fec_platform_data *pdata);
 struct device_d *imx_add_spi(void *base, int id, struct spi_imx_master *pdata);
 struct device_d *imx_add_i2c(void *base, int id, struct i2c_platform_data *pdata);
 struct device_d *imx_add_uart_imx1(void *base, int id);
diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index b95c4f0..89aaa64 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -310,7 +310,7 @@ static int fec_init(struct eth_device *dev)
 	}
 
 	if (fec->xcv_type == RMII) {
-		if (cpu_is_mx28()) {
+		if (fec_is_imx28(fec)) {
 			rcntl |= FEC_R_CNTRL_RMII_MODE | FEC_R_CNTRL_FCE |
 				FEC_R_CNTRL_NO_LGTH_CHECK;
 		} else {
@@ -340,7 +340,7 @@ static int fec_init(struct eth_device *dev)
 	xwmrk = 0x2;
 
 	/* set ENET tx at store and forward mode */
-	if (cpu_is_mx6())
+	if (fec_is_imx6(fec))
 		xwmrk |= 1 << 8;
 
 	writel(xwmrk, fec->regs + FEC_X_WMRK);
@@ -407,7 +407,7 @@ static int fec_open(struct eth_device *edev)
 	ecr = FEC_ECNTRL_ETHER_EN;
 
 	/* Enable Swap to support little-endian device */
-	if (cpu_is_mx6())
+	if (fec_is_imx6(fec))
 		ecr |= 0x100;
 
 	writel(ecr, fec->regs + FEC_ECNTRL);
@@ -481,7 +481,7 @@ static int fec_send(struct eth_device *dev, void *eth_data, int data_length)
 	 * Note: We are always using the first buffer for transmission,
 	 * the second will be empty and only used to stop the DMA engine
 	 */
-	if (cpu_is_mx28())
+	if (fec_is_imx28(fec))
 		eth_data = imx28_fix_endianess_wr(eth_data, (data_length + 3) >> 2);
 
 	writew(data_length, &fec->tbd_base[fec->tbd_index].data_length);
@@ -548,7 +548,7 @@ static int fec_recv(struct eth_device *dev)
 		printf("some error: 0x%08x\n", ievent);
 		return 0;
 	}
-	if (!cpu_is_mx28()) {
+	if (!fec_is_imx28(fec)) {
 		if (ievent & FEC_IEVENT_HBERR) {
 			/* Heartbeat error */
 			writel(readl(fec->regs + FEC_X_CNTRL) | 0x1,
@@ -574,7 +574,7 @@ static int fec_recv(struct eth_device *dev)
 		if ((bd_status & FEC_RBD_LAST) && !(bd_status & FEC_RBD_ERR) &&
 			((readw(&rbd->data_length) - 4) > 14)) {
 
-			if (cpu_is_mx28())
+			if (fec_is_imx28(fec))
 				imx28_fix_endianess_rd(
 					phys_to_virt(readl(&rbd->data_pointer)),
 					(readw(&rbd->data_length) + 3) >> 2);
@@ -628,10 +628,17 @@ static int fec_probe(struct device_d *dev)
 	struct fec_priv *fec;
 	void *base;
 	int ret;
+	enum fec_type type;
+
+	ret = dev_get_drvdata(dev, (unsigned long *)&type);
+	if (ret)
+		return ret;
+
 #ifdef CONFIG_ARCH_IMX27
 	PCCR0 |= PCCR0_FEC_EN;
 #endif
 	fec = xzalloc(sizeof(*fec));
+	fec->type = type;
 	edev = &fec->edev;
 	dev->priv = fec;
 	edev->priv = fec;
@@ -675,14 +682,19 @@ static int fec_probe(struct device_d *dev)
 
 	fec_alloc_receive_packets(fec, FEC_RBD_NUM, FEC_MAX_PKT_SIZE);
 
-	fec->xcv_type = pdata->xcv_type;
+	if (pdata) {
+		fec->xcv_type = pdata->xcv_type;
+		fec->phy_init = pdata->phy_init;
+		fec->phy_addr = pdata->phy_addr;
+	} else {
+		fec->xcv_type = MII100;
+		fec->phy_addr = -1;
+	}
 
 	if (fec->xcv_type != SEVENWIRE) {
-		fec->phy_init = pdata->phy_init;
 		fec->miibus.read = fec_miibus_read;
 		fec->miibus.write = fec_miibus_write;
-		fec->phy_addr = pdata->phy_addr;
-		switch (pdata->xcv_type) {
+		switch (fec->xcv_type) {
 		case RMII:
 			fec->interface = PHY_INTERFACE_MODE_RMII;
 			break;
@@ -719,13 +731,45 @@ static void fec_remove(struct device_d *dev)
 	fec_halt(&fec->edev);
 }
 
+static __maybe_unused struct of_device_id imx_fec_dt_ids[] = {
+	{
+		.compatible = "fsl,imx27-fec",
+		.data = FEC_TYPE_IMX27,
+	}, {
+		.compatible = "fsl,imx28-fec",
+		.data = FEC_TYPE_IMX28,
+	}, {
+		.compatible = "fsl,imx6q-fec",
+		.data = FEC_TYPE_IMX6,
+	}, {
+		/* sentinel */
+	}
+};
+
+static struct platform_device_id imx_fec_ids[] = {
+	{
+		.name = "imx27-fec",
+		.driver_data = (unsigned long)FEC_TYPE_IMX27,
+	}, {
+		.name = "imx28-fec",
+		.driver_data = (unsigned long)FEC_TYPE_IMX28,
+	}, {
+		.name = "imx6-fec",
+		.driver_data = (unsigned long)FEC_TYPE_IMX6,
+	}, {
+		/* sentinel */
+	},
+};
+
 /**
  * Driver description for registering
  */
 static struct driver_d fec_driver = {
-        .name   = "fec_imx",
-        .probe  = fec_probe,
+	.name   = "fec_imx",
+	.probe  = fec_probe,
 	.remove = fec_remove,
+	.of_compatible = DRV_OF_COMPAT(imx_fec_dt_ids),
+	.id_table = imx_fec_ids,
 };
 
 static int fec_register(void)
diff --git a/drivers/net/fec_imx.h b/drivers/net/fec_imx.h
index d147dca..1eb1eba 100644
--- a/drivers/net/fec_imx.h
+++ b/drivers/net/fec_imx.h
@@ -122,6 +122,12 @@ struct buffer_descriptor {
 	uint32_t data_pointer;		/**< payload's buffer address */
 };
 
+enum fec_type {
+	FEC_TYPE_IMX27,
+	FEC_TYPE_IMX28,
+	FEC_TYPE_IMX6,
+};
+
 /**
  * @brief i.MX27-FEC private structure
  */
@@ -139,8 +145,24 @@ struct fec_priv {
 	struct mii_bus miibus;
 	void (*phy_init)(struct phy_device *dev);
 	struct clk *clk;
+	enum fec_type type;
 };
 
+static inline int fec_is_imx27(struct fec_priv *priv)
+{
+	return priv->type == FEC_TYPE_IMX27;
+}
+
+static inline int fec_is_imx28(struct fec_priv *priv)
+{
+	return priv->type == FEC_TYPE_IMX28;
+}
+
+static inline int fec_is_imx6(struct fec_priv *priv)
+{
+	return priv->type == FEC_TYPE_IMX6;
+}
+
 /**
  * @brief Numbers of buffer descriptors for receiving
  *
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

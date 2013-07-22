Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V1DLz-0004RJ-UI
 for barebox@lists.infradead.org; Mon, 22 Jul 2013 10:28:33 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 22 Jul 2013 12:28:04 +0200
Message-Id: <1374488885-25488-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] mtd: nand: mxs-nand: Add i.MX6 support
To: barebox@lists.infradead.org

The i.MX6 uses the same GPMI NAND controller as i.MX23/28 do. This adds
i.MX6 support to the driver.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/clk-imx6.c               |   1 +
 arch/arm/mach-imx/include/mach/imx6-regs.h |   2 +
 drivers/dma/Kconfig                        |   2 +-
 drivers/mtd/nand/Kconfig                   |   2 +-
 drivers/mtd/nand/nand_mxs.c                | 102 ++++++++++++++++++++++-------
 5 files changed, 85 insertions(+), 24 deletions(-)

diff --git a/arch/arm/mach-imx/clk-imx6.c b/arch/arm/mach-imx/clk-imx6.c
index 3061779..4639c0b 100644
--- a/arch/arm/mach-imx/clk-imx6.c
+++ b/arch/arm/mach-imx/clk-imx6.c
@@ -303,6 +303,7 @@ static int imx6_ccm_probe(struct device_d *dev)
 	clkdev_add_physbase(clks[ahb], MX6_SATA_BASE_ADDR, NULL);
 	clkdev_add_physbase(clks[usbphy1], MX6_USBPHY1_BASE_ADDR, NULL);
 	clkdev_add_physbase(clks[usbphy2], MX6_USBPHY2_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[enfc_podf], MX6_GPMI_BASE_ADDR, NULL);
 
 	writel(0xffffffff, ccm_base + CCGR0);
 	writel(0xffffffff, ccm_base + CCGR1);
diff --git a/arch/arm/mach-imx/include/mach/imx6-regs.h b/arch/arm/mach-imx/include/mach/imx6-regs.h
index d947aa6..833280a 100644
--- a/arch/arm/mach-imx/include/mach/imx6-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx6-regs.h
@@ -1,6 +1,8 @@
 #ifndef __MACH_IMX6_REGS_H
 #define __MACH_IMX6_REGS_H
 
+#define MX6_GPMI_BASE_ADDR		0x00112000
+
 #define MX6_AIPS1_ARB_BASE_ADDR		0x02000000
 #define MX6_AIPS2_ARB_BASE_ADDR		0x02100000
 
diff --git a/drivers/dma/Kconfig b/drivers/dma/Kconfig
index c43c93e..c75fc8b 100644
--- a/drivers/dma/Kconfig
+++ b/drivers/dma/Kconfig
@@ -2,7 +2,7 @@ menu "DMA support"
 
 config MXS_APBH_DMA
 	tristate "MXS APBH DMA ENGINE"
-	depends on ARCH_IMX23 || ARCH_IMX28
+	depends on ARCH_IMX23 || ARCH_IMX28 || ARCH_IMX6
 	select STMP_DEVICE
 	help
 	  Experimental!
diff --git a/drivers/mtd/nand/Kconfig b/drivers/mtd/nand/Kconfig
index de7b03f..04fe3c8 100644
--- a/drivers/mtd/nand/Kconfig
+++ b/drivers/mtd/nand/Kconfig
@@ -80,7 +80,7 @@ config NAND_IMX_BBM
 config NAND_MXS
 	bool
 	select NAND_BBT
-	prompt "i.MX23/28 NAND driver"
+	prompt "i.MX23/28/6 NAND driver"
 	depends on MXS_APBH_DMA
 
 config NAND_OMAP_GPMC
diff --git a/drivers/mtd/nand/nand_mxs.c b/drivers/mtd/nand/nand_mxs.c
index 20c61bb..68eb040 100644
--- a/drivers/mtd/nand/nand_mxs.c
+++ b/drivers/mtd/nand/nand_mxs.c
@@ -23,6 +23,7 @@
 #include <linux/types.h>
 #include <linux/clk.h>
 #include <linux/err.h>
+#include <of_mtd.h>
 #include <common.h>
 #include <malloc.h>
 #include <errno.h>
@@ -121,12 +122,14 @@
 #define	BCH_FLASHLAYOUT0_META_SIZE_OFFSET		16
 #define	BCH_FLASHLAYOUT0_ECC0_MASK			(0xf << 12)
 #define	BCH_FLASHLAYOUT0_ECC0_OFFSET			12
+#define	IMX6_BCH_FLASHLAYOUT0_ECC0_OFFSET		11
 
 #define BCH_FLASH0LAYOUT1			0x00000090
 #define	BCH_FLASHLAYOUT1_PAGE_SIZE_MASK			(0xffff << 16)
 #define	BCH_FLASHLAYOUT1_PAGE_SIZE_OFFSET		16
 #define	BCH_FLASHLAYOUT1_ECCN_MASK			(0xf << 12)
 #define	BCH_FLASHLAYOUT1_ECCN_OFFSET			12
+#define	IMX6_BCH_FLASHLAYOUT1_ECCN_OFFSET		11
 
 #define	MXS_NAND_DMA_DESCRIPTOR_COUNT		4
 
@@ -137,12 +140,19 @@
 
 #define	MXS_NAND_BCH_TIMEOUT			10000
 
+enum gpmi_type {
+	GPMI_MXS,
+	GPMI_IMX6,
+};
+
 struct mxs_nand_info {
 	struct nand_chip	nand_chip;
 	void __iomem		*io_base;
 	void __iomem		*bch_base;
 	struct clk		*clk;
 	struct mtd_info		mtd;
+	enum gpmi_type		type;
+	int			dma_channel_base;
 	u32		version;
 
 	int		cur_chip;
@@ -171,6 +181,11 @@ struct mxs_nand_info {
 
 struct nand_ecclayout fake_ecc_layout;
 
+static inline int mxs_nand_is_imx6(struct mxs_nand_info *info)
+{
+	return info->type == GPMI_IMX6;
+}
+
 static struct mxs_dma_desc *mxs_nand_get_dma_desc(struct mxs_nand_info *info)
 {
 	struct mxs_dma_desc *desc;
@@ -332,7 +347,7 @@ static void mxs_nand_cmd_ctrl(struct mtd_info *mtd, int data, unsigned int ctrl)
 	struct nand_chip *nand = mtd->priv;
 	struct mxs_nand_info *nand_info = nand->priv;
 	struct mxs_dma_desc *d;
-	uint32_t channel = MXS_DMA_CHANNEL_AHB_APBH_GPMI0 + nand_info->cur_chip;
+	uint32_t channel = nand_info->dma_channel_base + nand_info->cur_chip;
 	int ret;
 
 	/*
@@ -485,7 +500,7 @@ static void mxs_nand_read_buf(struct mtd_info *mtd, uint8_t *buf, int length)
 	struct nand_chip *nand = mtd->priv;
 	struct mxs_nand_info *nand_info = nand->priv;
 	struct mxs_dma_desc *d;
-	uint32_t channel = MXS_DMA_CHANNEL_AHB_APBH_GPMI0 + nand_info->cur_chip;
+	uint32_t channel = nand_info->dma_channel_base + nand_info->cur_chip;
 	int ret;
 
 	if (length > NAND_MAX_PAGESIZE) {
@@ -563,7 +578,7 @@ static void mxs_nand_write_buf(struct mtd_info *mtd, const uint8_t *buf,
 	struct nand_chip *nand = mtd->priv;
 	struct mxs_nand_info *nand_info = nand->priv;
 	struct mxs_dma_desc *d;
-	uint32_t channel = MXS_DMA_CHANNEL_AHB_APBH_GPMI0 + nand_info->cur_chip;
+	uint32_t channel = nand_info->dma_channel_base + nand_info->cur_chip;
 	int ret;
 
 	if (length > NAND_MAX_PAGESIZE) {
@@ -623,7 +638,7 @@ static int mxs_nand_ecc_read_page(struct mtd_info *mtd, struct nand_chip *nand,
 {
 	struct mxs_nand_info *nand_info = nand->priv;
 	struct mxs_dma_desc *d;
-	uint32_t channel = MXS_DMA_CHANNEL_AHB_APBH_GPMI0 + nand_info->cur_chip;
+	uint32_t channel = nand_info->dma_channel_base + nand_info->cur_chip;
 	uint32_t corrected = 0, failed = 0;
 	uint8_t	*status;
 	int i, ret;
@@ -767,7 +782,7 @@ static int mxs_nand_ecc_write_page(struct mtd_info *mtd,
 {
 	struct mxs_nand_info *nand_info = nand->priv;
 	struct mxs_dma_desc *d;
-	uint32_t channel = MXS_DMA_CHANNEL_AHB_APBH_GPMI0 + nand_info->cur_chip;
+	uint32_t channel = nand_info->dma_channel_base + nand_info->cur_chip;
 	int ret = 0;
 
 	memcpy(nand_info->data_buf, buf, mtd->writesize);
@@ -1043,7 +1058,7 @@ static int mxs_nand_scan_bbt(struct mtd_info *mtd)
 	struct nand_chip *nand = mtd->priv;
 	struct mxs_nand_info *nand_info = nand->priv;
 	void __iomem *bch_regs = nand_info->bch_base;
-	uint32_t tmp;
+	uint32_t layout0, layout1;
 	int ret;
 
 	/* Reset BCH. Don't use SFTRST on MX23 due to Errata #2847 */
@@ -1052,21 +1067,36 @@ static int mxs_nand_scan_bbt(struct mtd_info *mtd)
 	if (ret)
 		return ret;
 
-	/* Configure layout 0 */
-	tmp = (mxs_nand_ecc_chunk_cnt(mtd->writesize) - 1)
-		<< BCH_FLASHLAYOUT0_NBLOCKS_OFFSET;
-	tmp |= MXS_NAND_METADATA_SIZE << BCH_FLASHLAYOUT0_META_SIZE_OFFSET;
-	tmp |= (mxs_nand_get_ecc_strength(mtd->writesize, mtd->oobsize) >> 1)
-		<< BCH_FLASHLAYOUT0_ECC0_OFFSET;
-	tmp |= MXS_NAND_CHUNK_DATA_CHUNK_SIZE;
-	writel(tmp, bch_regs + BCH_FLASH0LAYOUT0);
-
-	tmp = (mtd->writesize + mtd->oobsize)
-		<< BCH_FLASHLAYOUT1_PAGE_SIZE_OFFSET;
-	tmp |= (mxs_nand_get_ecc_strength(mtd->writesize, mtd->oobsize) >> 1)
-		<< BCH_FLASHLAYOUT1_ECCN_OFFSET;
-	tmp |= MXS_NAND_CHUNK_DATA_CHUNK_SIZE;
-	writel(tmp, bch_regs + BCH_FLASH0LAYOUT1);
+	if (mxs_nand_is_imx6(nand_info)) {
+		layout0 = (mxs_nand_ecc_chunk_cnt(mtd->writesize) - 1)
+					<< BCH_FLASHLAYOUT0_NBLOCKS_OFFSET |
+			MXS_NAND_METADATA_SIZE << BCH_FLASHLAYOUT0_META_SIZE_OFFSET |
+			(mxs_nand_get_ecc_strength(mtd->writesize, mtd->oobsize) >> 1)
+					<< IMX6_BCH_FLASHLAYOUT0_ECC0_OFFSET |
+			MXS_NAND_CHUNK_DATA_CHUNK_SIZE >> 2;
+
+		layout1 = (mtd->writesize + mtd->oobsize)
+					<< BCH_FLASHLAYOUT1_PAGE_SIZE_OFFSET |
+			(mxs_nand_get_ecc_strength(mtd->writesize, mtd->oobsize) >> 1)
+					<< IMX6_BCH_FLASHLAYOUT1_ECCN_OFFSET |
+			MXS_NAND_CHUNK_DATA_CHUNK_SIZE >> 2;
+	} else {
+		layout0 = (mxs_nand_ecc_chunk_cnt(mtd->writesize) - 1)
+					<< BCH_FLASHLAYOUT0_NBLOCKS_OFFSET |
+			MXS_NAND_METADATA_SIZE << BCH_FLASHLAYOUT0_META_SIZE_OFFSET |
+			(mxs_nand_get_ecc_strength(mtd->writesize, mtd->oobsize) >> 1)
+					<< BCH_FLASHLAYOUT0_ECC0_OFFSET |
+			MXS_NAND_CHUNK_DATA_CHUNK_SIZE;
+
+		layout1 = (mtd->writesize + mtd->oobsize)
+					<< BCH_FLASHLAYOUT1_PAGE_SIZE_OFFSET |
+			(mxs_nand_get_ecc_strength(mtd->writesize, mtd->oobsize) >> 1)
+					<< BCH_FLASHLAYOUT1_ECCN_OFFSET |
+			MXS_NAND_CHUNK_DATA_CHUNK_SIZE;
+	}
+
+	writel(layout0, bch_regs + BCH_FLASH0LAYOUT0);
+	writel(layout1, bch_regs + BCH_FLASH0LAYOUT1);
 
 	/* Set *all* chip selects to use layout 0 */
 	writel(0, bch_regs + BCH_LAYOUTSELECT);
@@ -1189,14 +1219,20 @@ static int mxs_nand_probe(struct device_d *dev)
 	struct mxs_nand_info *nand_info;
 	struct nand_chip *nand;
 	struct mtd_info *mtd;
+	enum gpmi_type type;
 	int err;
 
+	err = dev_get_drvdata(dev, (unsigned long *)&type);
+	if (err)
+		type = GPMI_MXS;
+
 	nand_info = kzalloc(sizeof(struct mxs_nand_info), GFP_KERNEL);
 	if (!nand_info) {
 		printf("MXS NAND: Failed to allocate private data\n");
 		return -ENOMEM;
 	}
 
+	nand_info->type = type;
 	nand_info->io_base = dev_request_mem_region(dev, 0);
 	nand_info->bch_base = dev_request_mem_region(dev, 1);
 
@@ -1204,7 +1240,13 @@ static int mxs_nand_probe(struct device_d *dev)
 	if (IS_ERR(nand_info->clk))
 		return PTR_ERR(nand_info->clk);
 
-	clk_enable(nand_info->clk);
+	if (mxs_nand_is_imx6(nand_info)) {
+		clk_set_rate(nand_info->clk, 96000000);
+		clk_enable(nand_info->clk);
+		nand_info->dma_channel_base = 0;
+	} else {
+		nand_info->dma_channel_base = MXS_DMA_CHANNEL_AHB_APBH_GPMI0;
+	}
 
 	err = mxs_nand_alloc_buffers(nand_info);
 	if (err)
@@ -1268,9 +1310,25 @@ err1:
 	return err;
 }
 
+static __maybe_unused struct of_device_id gpmi_dt_ids[] = {
+	{
+		.compatible = "fsl,imx23-gpmi-nand",
+		.data = GPMI_MXS,
+	}, {
+		.compatible = "fsl,imx28-gpmi-nand",
+		.data = GPMI_MXS,
+	}, {
+		.compatible = "fsl,imx6q-gpmi-nand",
+		.data = GPMI_IMX6,
+	}, {
+		/* sentinel */
+	}
+};
+
 static struct driver_d mxs_nand_driver = {
 	.name  = "mxs_nand",
 	.probe = mxs_nand_probe,
+	.of_compatible = DRV_OF_COMPAT(gpmi_dt_ids),
 };
 device_platform_driver(mxs_nand_driver);
 
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

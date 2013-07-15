Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uyot7-00071D-Up
 for barebox@lists.infradead.org; Mon, 15 Jul 2013 19:56:50 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 15 Jul 2013 21:56:31 +0200
Message-Id: <1373918191-3334-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] mtd: nand_imx: Add devicetree probe support
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_imx.c | 75 ++++++++++++++++++++++++++++++++++++++++-----
 1 file changed, 67 insertions(+), 8 deletions(-)

diff --git a/drivers/mtd/nand/nand_imx.c b/drivers/mtd/nand/nand_imx.c
index 75aefd6..426ee2e 100644
--- a/drivers/mtd/nand/nand_imx.c
+++ b/drivers/mtd/nand/nand_imx.c
@@ -27,6 +27,7 @@
 #include <mach/generic.h>
 #include <mach/imx-nand.h>
 #include <io.h>
+#include <of_mtd.h>
 #include <errno.h>
 
 #define NFC_V3_FLASH_CMD		(host->regs_axi + 0x00)
@@ -100,6 +101,10 @@ struct imx_nand_host {
 	int			spare_len;
 	int			eccsize;
 
+	int			hw_ecc;
+	int			data_width;
+	int			flash_bbt;
+
 	void			(*preset)(struct mtd_info *);
 	void			(*send_cmd)(struct imx_nand_host *, uint16_t);
 	void			(*send_addr)(struct imx_nand_host *, uint16_t);
@@ -1087,6 +1092,28 @@ static struct nand_bbt_descr bbt_mirror_descr = {
 	.pattern = mirror_pattern,
 };
 
+static int __init mxcnd_probe_dt(struct imx_nand_host *host)
+{
+	struct device_node *np = host->dev->device_node;
+	int buswidth;
+
+	if (!np)
+		return 1;
+
+	if (of_get_nand_ecc_mode(np) == NAND_ECC_HW)
+		host->hw_ecc = 1;
+
+	host->flash_bbt = of_get_nand_on_flash_bbt(np);
+
+	buswidth = of_get_nand_bus_width(np);
+	if (buswidth < 0)
+		return buswidth;
+
+	host->data_width = buswidth / 8;
+
+	return 0;
+}
+
 /*
  * This function is called during the driver binding process.
  *
@@ -1101,7 +1128,6 @@ static int __init imxnd_probe(struct device_d *dev)
 {
 	struct nand_chip *this;
 	struct mtd_info *mtd;
-	struct imx_nand_platform_data *pdata = dev->platform_data;
 	struct imx_nand_host *host;
 	struct nand_ecclayout *oob_smallpage, *oob_largepage, *oob_4kpage;
 	int err = 0;
@@ -1112,6 +1138,23 @@ static int __init imxnd_probe(struct device_d *dev)
 	if (!host)
 		return -ENOMEM;
 
+	host->dev = dev;
+
+	if (IS_ENABLED(CONFIG_OFDEVICE)) {
+		err = mxcnd_probe_dt(host);
+		if (err < 0)
+			goto escan;
+
+		if (err > 0) {
+			struct imx_nand_platform_data *pdata;
+
+			pdata = dev->platform_data;
+			host->flash_bbt = pdata->flash_bbt;
+			host->data_width = pdata->width;
+			host->hw_ecc = pdata->hw_ecc;
+		}
+	}
+
 	host->data_buf = (uint8_t *)(host + 1);
 
 	if (nfc_is_v1() || nfc_is_v21()) {
@@ -1173,7 +1216,6 @@ static int __init imxnd_probe(struct device_d *dev)
 		goto escan;
 	}
 
-	host->dev = dev;
 	/* structures must be linked */
 	this = &host->nand;
 	mtd = &host->mtd;
@@ -1194,7 +1236,7 @@ static int __init imxnd_probe(struct device_d *dev)
 	this->read_buf = imx_nand_read_buf;
 	this->verify_buf = imx_nand_verify_buf;
 
-	if (pdata->hw_ecc) {
+	if (host->hw_ecc) {
 		this->ecc.calculate = imx_nand_calculate_ecc;
 		this->ecc.hwctl = imx_nand_enable_hwecc;
 		if (nfc_is_v1())
@@ -1211,13 +1253,13 @@ static int __init imxnd_probe(struct device_d *dev)
 	this->ecc.layout = oob_smallpage;
 
 	/* NAND bus width determines access functions used by upper layer */
-	if (pdata->width == 2) {
+	if (host->data_width == 2) {
 		this->options |= NAND_BUSWIDTH_16;
 		this->ecc.layout = &nandv1_hw_eccoob_smallpage;
 		imx_nand_set_layout(0, 16);
 	}
 
-	if (pdata->flash_bbt) {
+	if (host->flash_bbt) {
 		this->bbt_td = &bbt_main_descr;
 		this->bbt_md = &bbt_mirror_descr;
 		/* update flash based bbt */
@@ -1233,10 +1275,10 @@ static int __init imxnd_probe(struct device_d *dev)
 	/* Call preset again, with correct writesize this time */
 	host->preset(mtd);
 
-	imx_nand_set_layout(mtd->writesize, pdata->width == 2 ? 16 : 8);
+	imx_nand_set_layout(mtd->writesize, host->data_width == 2 ? 16 : 8);
 
 	if (mtd->writesize >= 2048) {
-		if (!pdata->flash_bbt)
+		if (!host->flash_bbt)
 			dev_warn(dev, "2k or 4k flash detected without flash_bbt. "
 					"You will loose factory bad block markers!\n");
 
@@ -1261,7 +1303,7 @@ static int __init imxnd_probe(struct device_d *dev)
 		goto escan;
 	}
 
-	if (pdata->flash_bbt && this->bbt_td->pages[0] == -1 && this->bbt_md->pages[0] == -1) {
+	if (host->flash_bbt && this->bbt_td->pages[0] == -1 && this->bbt_md->pages[0] == -1) {
 		dev_warn(dev, "no BBT found. create one using the imx_nand_bbm command\n");
 	} else {
 		bbt_main_descr.options |= NAND_BBT_WRITE | NAND_BBT_CREATE;
@@ -1281,9 +1323,26 @@ escan:
 
 }
 
+static __maybe_unused struct of_device_id imx_nand_compatible[] = {
+	{
+		.compatible = "fsl,imx21-nand",
+	}, {
+		.compatible = "fsl,imx25-nand",
+	}, {
+		.compatible = "fsl,imx27-nand",
+	}, {
+		.compatible = "fsl,imx51-nand",
+	}, {
+		.compatible = "fsl,imx53-nand",
+	}, {
+		/* sentinel */
+	}
+};
+
 static struct driver_d imx_nand_driver = {
 	.name  = "imx_nand",
 	.probe = imxnd_probe,
+	.of_compatible = DRV_OF_COMPAT(imx_nand_compatible),
 };
 device_platform_driver(imx_nand_driver);
 
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

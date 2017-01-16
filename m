Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cT4su-0002kM-0f
 for barebox@lists.infradead.org; Mon, 16 Jan 2017 10:51:40 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 16 Jan 2017 11:50:59 +0100
Message-Id: <20170116105108.13617-15-s.hauer@pengutronix.de>
In-Reply-To: <20170116105108.13617-1-s.hauer@pengutronix.de>
References: <20170116105108.13617-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 14/23] mci: imx-esdhci: remove wrong write protection test
To: Barebox List <barebox@lists.infradead.org>

Testing for the write protection bit to determine if a card is write
protected or not is wrong. The bit may have the wrong value for
permanently plugged cards (eMMC) or for boards using a GPIO for
write protection detection.
Since the core will test for write protection before actually
calling into the driver this test can just be removed.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/imx-esdhc.c | 14 ++------------
 1 file changed, 2 insertions(+), 12 deletions(-)

diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index c845187a5..f4d57348e 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -218,13 +218,10 @@ static int esdhc_setup_data(struct mci_host *mci, struct mci_data *data)
 	u32 wml_value;
 
 	if (IS_ENABLED(CONFIG_MCI_IMX_ESDHC_PIO)) {
-		if (!(data->flags & MMC_DATA_READ)) {
-			if ((esdhc_read32(regs + SDHCI_PRESENT_STATE) & PRSSTAT_WPSPL) == 0)
-				goto err_locked;
+		if (!(data->flags & MMC_DATA_READ))
 			esdhc_write32(regs + SDHCI_DMA_ADDRESS, (u32)data->src);
-		} else {
+		else
 			esdhc_write32(regs + SDHCI_DMA_ADDRESS, (u32)data->dest);
-		}
 	} else {
 		wml_value = data->blocksize/4;
 
@@ -237,8 +234,6 @@ static int esdhc_setup_data(struct mci_host *mci, struct mci_data *data)
 		} else {
 			if (wml_value > 0x80)
 				wml_value = 0x80;
-			if ((esdhc_read32(regs + SDHCI_PRESENT_STATE) & PRSSTAT_WPSPL) == 0)
-				goto err_locked;
 
 			esdhc_clrsetbits32(regs + IMX_SDHCI_WML, WML_WR_WML_MASK,
 						wml_value << 16);
@@ -249,11 +244,6 @@ static int esdhc_setup_data(struct mci_host *mci, struct mci_data *data)
 	esdhc_write32(regs + SDHCI_BLOCK_SIZE__BLOCK_COUNT, data->blocks << 16 | data->blocksize);
 
 	return 0;
-
-err_locked:
-	dev_err(host->dev, "Can not write to locked card.\n\n");
-
-	return -ETIMEDOUT;
 }
 
 static int esdhc_do_data(struct mci_host *mci, struct mci_data *data)
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

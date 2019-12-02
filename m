Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibnUy-0004kZ-Ue
 for barebox@lists.infradead.org; Mon, 02 Dec 2019 15:20:31 +0000
Received: by mail-pj1-x1041.google.com with SMTP id r11so9190590pjp.12
 for <barebox@lists.infradead.org>; Mon, 02 Dec 2019 07:20:28 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon,  2 Dec 2019 07:19:52 -0800
Message-Id: <20191202151954.16032-11-andrew.smirnov@gmail.com>
In-Reply-To: <20191202151954.16032-1-andrew.smirnov@gmail.com>
References: <20191202151954.16032-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 10/12] mci: imx-esdhc: Share code for esdhc_(setup|do)_data
 operations
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

PBL and PIO case of the regular driver do exaclty the same thing
during esdhc_(setup|do)_data stages of esdhc_send_cmd(). Move the code
to a common file and adjust all of the users accordingly.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/mci/imx-esdhc-common.c | 75 +++++++++++++++++++++++++++++++++
 drivers/mci/imx-esdhc-pbl.c    | 12 +++---
 drivers/mci/imx-esdhc.c        | 77 ++--------------------------------
 drivers/mci/imx-esdhc.h        | 12 ++++++
 4 files changed, 95 insertions(+), 81 deletions(-)

diff --git a/drivers/mci/imx-esdhc-common.c b/drivers/mci/imx-esdhc-common.c
index bcdf661ed..55a337557 100644
--- a/drivers/mci/imx-esdhc-common.c
+++ b/drivers/mci/imx-esdhc-common.c
@@ -3,6 +3,7 @@
 #include <common.h>
 #include <io.h>
 #include <mci.h>
+#include <pbl.h>
 
 #include "sdhci.h"
 #include "imx-esdhc.h"
@@ -45,3 +46,77 @@ void esdhc_populate_sdhci(struct fsl_esdhc_host *host)
 		host->sdhci.write32 = esdhc_op_write32_le;
 	}
 }
+
+static bool esdhc_use_pio_mode(void)
+{
+	return IN_PBL || IS_ENABLED(CONFIG_MCI_IMX_ESDHC_PIO);
+}
+
+int esdhc_setup_data(struct fsl_esdhc_host *host, struct mci_data *data,
+		     struct fsl_esdhc_dma_transfer *tr)
+{
+	u32 wml_value;
+	void *ptr;
+
+	if (!esdhc_use_pio_mode()) {
+		wml_value = data->blocksize/4;
+
+		if (data->flags & MMC_DATA_READ) {
+			if (wml_value > 0x10)
+				wml_value = 0x10;
+
+			esdhc_clrsetbits32(host, IMX_SDHCI_WML, WML_RD_WML_MASK, wml_value);
+		} else {
+			if (wml_value > 0x80)
+				wml_value = 0x80;
+
+			esdhc_clrsetbits32(host, IMX_SDHCI_WML, WML_WR_WML_MASK,
+						wml_value << 16);
+		}
+
+		tr->size = data->blocks * data->blocksize;
+
+		if (data->flags & MMC_DATA_WRITE) {
+			ptr = (void *)data->src;
+			tr->dir = DMA_TO_DEVICE;
+		} else {
+			ptr = data->dest;
+			tr->dir = DMA_FROM_DEVICE;
+		}
+
+		tr->dma = dma_map_single(host->dev, ptr, tr->size, tr->dir);
+		if (dma_mapping_error(host->dev, tr->dma))
+			return -EFAULT;
+
+
+		sdhci_write32(&host->sdhci, SDHCI_DMA_ADDRESS, tr->dma);
+	}
+
+	sdhci_write32(&host->sdhci, SDHCI_BLOCK_SIZE__BLOCK_COUNT, data->blocks << 16 | data->blocksize);
+
+	return 0;
+}
+
+int esdhc_do_data(struct fsl_esdhc_host *host, struct mci_data *data,
+		  struct fsl_esdhc_dma_transfer *tr)
+{
+	u32 irqstat;
+
+	if (esdhc_use_pio_mode())
+		return sdhci_transfer_data(&host->sdhci, data);
+
+	do {
+		irqstat = sdhci_read32(&host->sdhci, SDHCI_INT_STATUS);
+
+		if (irqstat & DATA_ERR)
+			return -EIO;
+
+		if (irqstat & SDHCI_INT_DATA_TIMEOUT)
+			return -ETIMEDOUT;
+	} while (!(irqstat & SDHCI_INT_XFER_COMPLETE) &&
+		(sdhci_read32(&host->sdhci, SDHCI_PRESENT_STATE) & SDHCI_DATA_LINE_ACTIVE));
+
+	dma_unmap_single(host->dev, tr->dma, tr->size, tr->dir);
+
+	return 0;
+}
diff --git a/drivers/mci/imx-esdhc-pbl.c b/drivers/mci/imx-esdhc-pbl.c
index 43e0093cd..21aa758f9 100644
--- a/drivers/mci/imx-esdhc-pbl.c
+++ b/drivers/mci/imx-esdhc-pbl.c
@@ -37,14 +37,10 @@ static void __udelay(int us)
 	for (i = 0; i < us * 4; i++);
 }
 
-static int esdhc_do_data(struct fsl_esdhc_host *host, struct mci_data *data)
-{
-	return sdhci_transfer_data(&host->sdhci, data);
-}
-
 static int
 esdhc_send_cmd(struct fsl_esdhc_host *host, struct mci_cmd *cmd, struct mci_data *data)
 {
+	struct fsl_esdhc_dma_transfer tr = { 0 };
 	u32	xfertyp, mixctrl, command;
 	u32	irqstat;
 	int ret;
@@ -57,7 +53,9 @@ esdhc_send_cmd(struct fsl_esdhc_host *host, struct mci_cmd *cmd, struct mci_data
 
 	if (data) {
 		/* Set up for a data transfer if we have one */
-		sdhci_write32(&host->sdhci, SDHCI_BLOCK_SIZE__BLOCK_COUNT, data->blocks << 16 | SECTOR_SIZE);
+		ret = esdhc_setup_data(host, data, &tr);
+		if (ret)
+			return ret;
 	}
 
 	sdhci_set_cmd_xfer_mode(&host->sdhci, cmd, data,
@@ -104,7 +102,7 @@ esdhc_send_cmd(struct fsl_esdhc_host *host, struct mci_cmd *cmd, struct mci_data
 
 	/* Wait until all of the blocks are transferred */
 	if (data) {
-		ret = esdhc_do_data(host, data);
+		ret = esdhc_do_data(host, data, &tr);
 		if (ret)
 			return ret;
 	}
diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index 9dbf5bccc..8e6f66ce4 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -46,55 +46,6 @@
 
 #define to_fsl_esdhc(mci)	container_of(mci, struct fsl_esdhc_host, mci)
 
-static int esdhc_setup_data(struct fsl_esdhc_host *host, struct mci_data *data,
-			    dma_addr_t dma)
-{
-	u32 wml_value;
-
-	if (!IS_ENABLED(CONFIG_MCI_IMX_ESDHC_PIO)) {
-		wml_value = data->blocksize/4;
-
-		if (data->flags & MMC_DATA_READ) {
-			if (wml_value > 0x10)
-				wml_value = 0x10;
-
-			esdhc_clrsetbits32(host, IMX_SDHCI_WML, WML_RD_WML_MASK, wml_value);
-		} else {
-			if (wml_value > 0x80)
-				wml_value = 0x80;
-
-			esdhc_clrsetbits32(host, IMX_SDHCI_WML, WML_WR_WML_MASK,
-						wml_value << 16);
-		}
-		sdhci_write32(&host->sdhci, SDHCI_DMA_ADDRESS, dma);
-	}
-
-	sdhci_write32(&host->sdhci, SDHCI_BLOCK_SIZE__BLOCK_COUNT, data->blocks << 16 | data->blocksize);
-
-	return 0;
-}
-
-static int esdhc_do_data(struct fsl_esdhc_host *host, struct mci_data *data)
-{
-	u32 irqstat;
-
-	if (IS_ENABLED(CONFIG_MCI_IMX_ESDHC_PIO))
-		return sdhci_transfer_data(&host->sdhci, data);
-
-	do {
-		irqstat = sdhci_read32(&host->sdhci, SDHCI_INT_STATUS);
-
-		if (irqstat & DATA_ERR)
-			return -EIO;
-
-		if (irqstat & SDHCI_INT_DATA_TIMEOUT)
-			return -ETIMEDOUT;
-	} while (!(irqstat & SDHCI_INT_XFER_COMPLETE) &&
-		(sdhci_read32(&host->sdhci, SDHCI_PRESENT_STATE) & SDHCI_DATA_LINE_ACTIVE));
-
-	return 0;
-}
-
 /*
  * Sends a command out on the bus.  Takes the mci pointer,
  * a command pointer, and an optional data pointer.
@@ -105,11 +56,8 @@ esdhc_send_cmd(struct mci_host *mci, struct mci_cmd *cmd, struct mci_data *data)
 	u32	xfertyp, mixctrl, command;
 	u32	irqstat;
 	struct fsl_esdhc_host *host = to_fsl_esdhc(mci);
-	unsigned int num_bytes = 0;
+	struct fsl_esdhc_dma_transfer tr = { 0 };
 	int ret;
-	void *ptr;
-	enum dma_data_direction dir = 0;
-	dma_addr_t dma = 0;
 
 	sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, -1);
 
@@ -118,23 +66,7 @@ esdhc_send_cmd(struct mci_host *mci, struct mci_cmd *cmd, struct mci_data *data)
 
 	/* Set up for a data transfer if we have one */
 	if (data) {
-		if (!IS_ENABLED(CONFIG_MCI_IMX_ESDHC_PIO)) {
-			num_bytes = data->blocks * data->blocksize;
-
-			if (data->flags & MMC_DATA_WRITE) {
-				ptr = (void *)data->src;
-				dir = DMA_TO_DEVICE;
-			} else {
-				ptr = data->dest;
-				dir = DMA_FROM_DEVICE;
-			}
-
-			dma = dma_map_single(host->dev, ptr, num_bytes, dir);
-			if (dma_mapping_error(host->dev, dma))
-				return -EFAULT;
-		}
-
-		ret = esdhc_setup_data(host, data, dma);
+		ret = esdhc_setup_data(host, data, &tr);
 		if (ret)
 			return ret;
 	}
@@ -197,12 +129,9 @@ esdhc_send_cmd(struct mci_host *mci, struct mci_cmd *cmd, struct mci_data *data)
 
 	/* Wait until all of the blocks are transferred */
 	if (data) {
-		ret = esdhc_do_data(host, data);
+		ret = esdhc_do_data(host, data, &tr);
 		if (ret)
 			return ret;
-
-		if (!IS_ENABLED(CONFIG_MCI_IMX_ESDHC_PIO))
-			dma_unmap_single(host->dev, dma, num_bytes, dir);
 	}
 
 	sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, -1);
diff --git a/drivers/mci/imx-esdhc.h b/drivers/mci/imx-esdhc.h
index e5647187b..8ab6b0bb8 100644
--- a/drivers/mci/imx-esdhc.h
+++ b/drivers/mci/imx-esdhc.h
@@ -22,6 +22,7 @@
 #ifndef  __FSL_ESDHC_H__
 #define	__FSL_ESDHC_H__
 
+#include <dma.h>
 #include <errno.h>
 #include <asm/byteorder.h>
 #include <linux/bitfield.h>
@@ -128,6 +129,12 @@ struct fsl_esdhc_host {
 	struct sdhci	sdhci;
 };
 
+struct fsl_esdhc_dma_transfer {
+	dma_addr_t dma;
+	unsigned int size;
+	enum dma_data_direction dir;
+};
+
 
 static inline int esdhc_is_usdhc(struct fsl_esdhc_host *data)
 {
@@ -166,5 +173,10 @@ esdhc_setbits32(struct fsl_esdhc_host *host, unsigned int reg,
 }
 
 void esdhc_populate_sdhci(struct fsl_esdhc_host *host);
+int esdhc_setup_data(struct fsl_esdhc_host *host, struct mci_data *data,
+		     struct fsl_esdhc_dma_transfer *tr);
+int esdhc_do_data(struct fsl_esdhc_host *host, struct mci_data *data,
+		  struct fsl_esdhc_dma_transfer *tr);
+
 
 #endif  /* __FSL_ESDHC_H__ */
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

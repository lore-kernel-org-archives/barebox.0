Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX15p-0006A1-1X
 for barebox@lists.infradead.org; Tue, 19 Nov 2019 10:50:49 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 19 Nov 2019 11:50:28 +0100
Message-Id: <20191119105036.12300-14-s.hauer@pengutronix.de>
In-Reply-To: <20191119105036.12300-1-s.hauer@pengutronix.de>
References: <20191119105036.12300-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 13/21] mci: sdhci: remove duplicate register defines for
 interrupt bits
To: Barebox List <barebox@lists.infradead.org>

We have duplicate bit defines for the interrupt bits. Remove the duplicates.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/imx-esdhc-pbl.c | 12 ++++-----
 drivers/mci/imx-esdhc.c     | 21 ++++++++--------
 drivers/mci/imx-esdhc.h     |  4 +--
 drivers/mci/mci-bcm2835.c   | 14 +++++------
 drivers/mci/sdhci.h         | 50 ++++++++-----------------------------
 drivers/mci/tegra-sdmmc.c   | 10 ++++----
 6 files changed, 41 insertions(+), 70 deletions(-)

diff --git a/drivers/mci/imx-esdhc-pbl.c b/drivers/mci/imx-esdhc-pbl.c
index 82e1d83d2a..91390bd3aa 100644
--- a/drivers/mci/imx-esdhc-pbl.c
+++ b/drivers/mci/imx-esdhc-pbl.c
@@ -167,7 +167,7 @@ esdhc_send_cmd(struct esdhc *esdhc, struct mci_cmd *cmd, struct mci_data *data)
 
 	/* Wait for the command to complete */
 	timeout = 10000;
-	while (!(esdhc_read32(esdhc, SDHCI_INT_STATUS) & IRQSTAT_CC)) {
+	while (!(esdhc_read32(esdhc, SDHCI_INT_STATUS) & SDHCI_INT_CMD_COMPLETE)) {
 		__udelay(1);
 		if (!timeout--)
 			return -ETIMEDOUT;
@@ -179,7 +179,7 @@ esdhc_send_cmd(struct esdhc *esdhc, struct mci_cmd *cmd, struct mci_data *data)
 	if (irqstat & CMD_ERR)
 		return -EIO;
 
-	if (irqstat & IRQSTAT_CTOE)
+	if (irqstat & SDHCI_INT_TIMEOUT)
 		return -ETIMEDOUT;
 
 	/* Copy the response to the response buffer */
@@ -214,10 +214,10 @@ static int esdhc_read_blocks(struct esdhc *esdhc, void *dst, size_t len)
 	int ret;
 
 	esdhc_write32(esdhc, SDHCI_INT_ENABLE,
-		      IRQSTATEN_CC | IRQSTATEN_TC | IRQSTATEN_CINT | IRQSTATEN_CTOE |
-		      IRQSTATEN_CCE | IRQSTATEN_CEBE | IRQSTATEN_CIE |
-		      IRQSTATEN_DTOE | IRQSTATEN_DCE | IRQSTATEN_DEBE |
-		      IRQSTATEN_DINT);
+		      SDHCI_INT_CMD_COMPLETE | SDHCI_INT_XFER_COMPLETE |
+		      SDHCI_INT_CARD_INT | SDHCI_INT_TIMEOUT | SDHCI_INT_CRC |
+		      SDHCI_INT_END_BIT | SDHCI_INT_INDEX | SDHCI_INT_DATA_TIMEOUT |
+		      SDHCI_INT_DATA_CRC | SDHCI_INT_DATA_END_BIT | SDHCI_INT_DMA);
 
 	wml = FIELD_PREP(WML_WR_BRST_LEN, 16)         |
 	      FIELD_PREP(WML_WR_WML_MASK, SECTOR_WML) |
diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index 9f797bf7b1..5a553eebbc 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -229,7 +229,7 @@ esdhc_pio_read_write(struct mci_host *mci, struct mci_data *data)
 				dev_err(host->dev, "Data Read Failed\n");
 				return -ETIMEDOUT;
 			}
-			while (size && (!(irqstat & IRQSTAT_TC))) {
+			while (size && (!(irqstat & SDHCI_INT_XFER_COMPLETE))) {
 				udelay(100); /* Wait before last byte transfer complete */
 				irqstat = sdhci_read32(&host->sdhci, SDHCI_INT_STATUS);
 				databuf = sdhci_read32(&host->sdhci, SDHCI_BUFFER);
@@ -252,7 +252,7 @@ esdhc_pio_read_write(struct mci_host *mci, struct mci_data *data)
 				dev_err(host->dev, "Data Write Failed\n");
 				return -ETIMEDOUT;
 			}
-			while (size && (!(irqstat & IRQSTAT_TC))) {
+			while (size && (!(irqstat & SDHCI_INT_XFER_COMPLETE))) {
 				udelay(100); /* Wait before last byte transfer complete */
 				databuf = *((u32 *)buffer);
 				buffer += 4;
@@ -310,9 +310,9 @@ static int esdhc_do_data(struct mci_host *mci, struct mci_data *data)
 		if (irqstat & DATA_ERR)
 			return -EIO;
 
-		if (irqstat & IRQSTAT_DTOE)
+		if (irqstat & SDHCI_INT_DATA_TIMEOUT)
 			return -ETIMEDOUT;
-	} while (!(irqstat & IRQSTAT_TC) &&
+	} while (!(irqstat & SDHCI_INT_XFER_COMPLETE) &&
 		(sdhci_read32(&host->sdhci, SDHCI_PRESENT_STATE) & PRSSTAT_DLA));
 
 	return 0;
@@ -382,7 +382,7 @@ esdhc_send_cmd(struct mci_host *mci, struct mci_cmd *cmd, struct mci_data *data)
 
 	/* Wait for the command to complete */
 	ret = wait_on_timeout(100 * MSECOND,
-			sdhci_read32(&host->sdhci, SDHCI_INT_STATUS) & IRQSTAT_CC);
+			sdhci_read32(&host->sdhci, SDHCI_INT_STATUS) & SDHCI_INT_CMD_COMPLETE);
 	if (ret) {
 		dev_dbg(host->dev, "timeout 1\n");
 		return -ETIMEDOUT;
@@ -394,7 +394,7 @@ esdhc_send_cmd(struct mci_host *mci, struct mci_cmd *cmd, struct mci_data *data)
 	if (irqstat & CMD_ERR)
 		return -EIO;
 
-	if (irqstat & IRQSTAT_CTOE)
+	if (irqstat & SDHCI_INT_TIMEOUT)
 		return -ETIMEDOUT;
 
 	/* Workaround for ESDHC errata ENGcm03648 / ENGcm12360 */
@@ -613,10 +613,11 @@ static int esdhc_init(struct mci_host *mci, struct device_d *dev)
 	/* Set the initial clock speed */
 	set_sysctl(mci, 400000);
 
-	sdhci_write32(&host->sdhci, SDHCI_INT_ENABLE, IRQSTATEN_CC | IRQSTATEN_TC |
-			IRQSTATEN_CINT | IRQSTATEN_CTOE | IRQSTATEN_CCE |
-			IRQSTATEN_CEBE | IRQSTATEN_CIE | IRQSTATEN_DTOE |
-			IRQSTATEN_DCE | IRQSTATEN_DEBE | IRQSTATEN_DINT);
+	sdhci_write32(&host->sdhci, SDHCI_INT_ENABLE, SDHCI_INT_CMD_COMPLETE |
+			SDHCI_INT_XFER_COMPLETE | SDHCI_INT_CARD_INT |
+			SDHCI_INT_TIMEOUT | SDHCI_INT_CRC | SDHCI_INT_END_BIT |
+			SDHCI_INT_INDEX | SDHCI_INT_DATA_TIMEOUT |
+			SDHCI_INT_DATA_CRC | SDHCI_INT_DATA_END_BIT | SDHCI_INT_DMA);
 
 	/* Put the PROCTL reg back to the default */
 	sdhci_write32(&host->sdhci, SDHCI_HOST_CONTROL__POWER_CONTROL__BLOCK_GAP_CONTROL,
diff --git a/drivers/mci/imx-esdhc.h b/drivers/mci/imx-esdhc.h
index 2d5471969d..46f592e496 100644
--- a/drivers/mci/imx-esdhc.h
+++ b/drivers/mci/imx-esdhc.h
@@ -35,8 +35,8 @@
 #define SYSCTL_HCKEN		0x00000002
 #define SYSCTL_IPGEN		0x00000001
 
-#define CMD_ERR		(IRQSTAT_CIE | IRQSTAT_CEBE | IRQSTAT_CCE)
-#define DATA_ERR	(IRQSTAT_DEBE | IRQSTAT_DCE | IRQSTAT_DTOE)
+#define CMD_ERR		(SDHCI_INT_INDEX | SDHCI_INT_END_BIT | SDHCI_INT_CRC)
+#define DATA_ERR	(SDHCI_INT_DATA_END_BIT | SDHCI_INT_DATA_CRC | SDHCI_INT_DATA_TIMEOUT)
 
 #define PROCTL_INIT		0x00000020
 #define PROCTL_DTW_4		0x00000002
diff --git a/drivers/mci/mci-bcm2835.c b/drivers/mci/mci-bcm2835.c
index a16d192832..cb72235807 100644
--- a/drivers/mci/mci-bcm2835.c
+++ b/drivers/mci/mci-bcm2835.c
@@ -109,18 +109,18 @@ static int bcm2835_mci_transfer_data(struct bcm2835_mci_host *host,
 
 	if (data->flags & MMC_DATA_READ) {
 		p = (u32 *) data->dest;
-		data_ready_intr_mask = IRQSTAT_BRR;
+		data_ready_intr_mask = SDHCI_INT_DATA_AVAIL;
 		data_ready_status_mask = PRSSTAT_BREN;
 		read_write_func = &sdhci_read32_data;
 	} else {
 		p = (u32 *) data->src;
-		data_ready_intr_mask = IRQSTAT_BWR;
+		data_ready_intr_mask = SDHCI_INT_SPACE_AVAIL;
 		data_ready_status_mask = PRSSTAT_BWEN;
 		read_write_func = &sdhci_write32_data;
 	}
 	do {
 		intr_status = sdhci_read32(&host->sdhci, SDHCI_INT_STATUS);
-		if (intr_status & IRQSTAT_CIE) {
+		if (intr_status & SDHCI_INT_INDEX) {
 			dev_err(host->hw_dev,
 					"Error occured while transferring data: 0x%X\n",
 					intr_status);
@@ -139,7 +139,7 @@ static int bcm2835_mci_transfer_data(struct bcm2835_mci_host *host,
 				data_size -= 4;
 			}
 		}
-	} while ((intr_status & IRQSTAT_TC) == 0);
+	} while ((intr_status & SDHCI_INT_XFER_COMPLETE) == 0);
 
 	if (data_size != 0) {
 		if (data->flags & MMC_DATA_READ)
@@ -166,9 +166,9 @@ static u32 bcm2835_mci_wait_command_done(struct bcm2835_mci_host *host)
 
 	while (true) {
 		interrupt = sdhci_read32(&host->sdhci, SDHCI_INT_STATUS);
-		if (interrupt & IRQSTAT_CIE)
+		if (interrupt & SDHCI_INT_INDEX)
 			return -EPERM;
-		if (interrupt & IRQSTAT_CC)
+		if (interrupt & SDHCI_INT_CMD_COMPLETE)
 			break;
 	}
 	return 0;
@@ -262,7 +262,7 @@ static int bcm2835_mci_request(struct mci_host *mci, struct mci_cmd *cmd,
 	if (cmd->resp_type != 0 && ret != -1) {
 		sdhci_read_response(&host->sdhci, cmd);
 
-		sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, IRQSTAT_CC);
+		sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, SDHCI_INT_CMD_COMPLETE);
 	}
 
 	if (!ret && data)
diff --git a/drivers/mci/sdhci.h b/drivers/mci/sdhci.h
index 9ee8d6ff02..18db9a5c34 100644
--- a/drivers/mci/sdhci.h
+++ b/drivers/mci/sdhci.h
@@ -63,7 +63,17 @@
 #define  SDHCI_RESET_ALL			BIT(0)
 #define SDHCI_INT_STATUS					0x30
 #define SDHCI_INT_NORMAL_STATUS					0x30
+#define  SDHCI_INT_DATA_END_BIT			BIT(22)
+#define  SDHCI_INT_DATA_CRC			BIT(21)
+#define  SDHCI_INT_DATA_TIMEOUT			BIT(20)
+#define  SDHCI_INT_INDEX			BIT(19)
+#define  SDHCI_INT_END_BIT			BIT(18)
+#define  SDHCI_INT_CRC				BIT(17)
+#define  SDHCI_INT_TIMEOUT			BIT(16)
 #define  SDHCI_INT_ERROR			BIT(15)
+#define  SDHCI_INT_CARD_INT			BIT(8)
+#define  SDHCI_INT_DATA_AVAIL			BIT(5)
+#define  SDHCI_INT_SPACE_AVAIL			BIT(4)
 #define  SDHCI_INT_DMA				BIT(3)
 #define  SDHCI_INT_XFER_COMPLETE		BIT(1)
 #define  SDHCI_INT_CMD_COMPLETE			BIT(0)
@@ -82,46 +92,6 @@
 #define SDHCI_SPEC_200_MAX_CLK_DIVIDER	256
 #define SDHCI_MMC_BOOT						0xC4
 
-#define IRQSTAT_TE		0x04000000
-#define IRQSTAT_DMAE		0x02000000
-#define IRQSTAT_AC12E		0x01000000
-#define IRQSTAT_CLE		0x00800000
-#define IRQSTAT_DEBE		0x00400000
-#define IRQSTAT_DCE		0x00200000
-#define IRQSTAT_DTOE		0x00100000
-#define IRQSTAT_CIE		0x00080000
-#define IRQSTAT_CEBE		0x00040000
-#define IRQSTAT_CCE		0x00020000
-#define IRQSTAT_CTOE		0x00010000
-#define IRQSTAT_CINT		0x00000100
-#define IRQSTAT_CRM		0x00000080
-#define IRQSTAT_CINS		0x00000040
-#define IRQSTAT_BRR		0x00000020
-#define IRQSTAT_BWR		0x00000010
-#define IRQSTAT_DINT		0x00000008
-#define IRQSTAT_BGE		0x00000004
-#define IRQSTAT_TC		0x00000002
-#define IRQSTAT_CC		0x00000001
-
-#define IRQSTATEN_DMAE		0x10000000
-#define IRQSTATEN_AC12E		0x01000000
-#define IRQSTATEN_DEBE		0x00400000
-#define IRQSTATEN_DCE		0x00200000
-#define IRQSTATEN_DTOE		0x00100000
-#define IRQSTATEN_CIE		0x00080000
-#define IRQSTATEN_CEBE		0x00040000
-#define IRQSTATEN_CCE		0x00020000
-#define IRQSTATEN_CTOE		0x00010000
-#define IRQSTATEN_CINT		0x00000100
-#define IRQSTATEN_CRM		0x00000080
-#define IRQSTATEN_CINS		0x00000040
-#define IRQSTATEN_BRR		0x00000020
-#define IRQSTATEN_BWR		0x00000010
-#define IRQSTATEN_DINT		0x00000008
-#define IRQSTATEN_BGE		0x00000004
-#define IRQSTATEN_TC		0x00000002
-#define IRQSTATEN_CC		0x00000001
-
 #define PRSSTAT_DAT0		0x01000000
 #define PRSSTAT_CLSL		0x00800000
 #define PRSSTAT_WPSPL		0x00080000
diff --git a/drivers/mci/tegra-sdmmc.c b/drivers/mci/tegra-sdmmc.c
index 034081ec62..6cdf808f16 100644
--- a/drivers/mci/tegra-sdmmc.c
+++ b/drivers/mci/tegra-sdmmc.c
@@ -180,14 +180,14 @@ static int tegra_sdmmc_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
 
 	ret = wait_on_timeout(100 * MSECOND,
 			(val = sdhci_read32(&host->sdhci, SDHCI_INT_STATUS))
-			& IRQSTAT_CC);
+			& SDHCI_INT_CMD_COMPLETE);
 
 	if (ret) {
 		sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, val);
 		return ret;
 	}
 
-	if ((val & IRQSTAT_CC) && !data)
+	if ((val & SDHCI_INT_CMD_COMPLETE) && !data)
 		sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, val);
 
 	if (val & TEGRA_SDMMC_INTERRUPT_STATUS_CMD_TIMEOUT) {
@@ -232,7 +232,7 @@ static int tegra_sdmmc_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
 				dev_err(mci->hw_dev,
 					"error during transfer: 0x%08x\n", val);
 				return -EIO;
-			} else if (val & IRQSTAT_DINT) {
+			} else if (val & SDHCI_INT_DMA) {
 				/*
 				 * DMA Interrupt, restart the transfer where
 				 * it was interrupted.
@@ -240,9 +240,9 @@ static int tegra_sdmmc_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
 				u32 address = readl(host->regs +
 						    SDHCI_DMA_ADDRESS);
 
-				sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, IRQSTAT_DINT);
+				sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, SDHCI_INT_DMA);
 				sdhci_write32(&host->sdhci, SDHCI_DMA_ADDRESS, address);
-			} else if (val & IRQSTAT_TC) {
+			} else if (val & SDHCI_INT_XFER_COMPLETE) {
 				/* Transfer Complete */;
 				break;
 			} else if (is_timeout(start, 2 * SECOND)) {
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

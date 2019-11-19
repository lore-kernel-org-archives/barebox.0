Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX15p-0006A0-1h
 for barebox@lists.infradead.org; Tue, 19 Nov 2019 10:50:51 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 19 Nov 2019 11:50:29 +0100
Message-Id: <20191119105036.12300-15-s.hauer@pengutronix.de>
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
Subject: [PATCH 14/21] mci: sdhci: remove duplicate register defines for
 prsstat bits
To: Barebox List <barebox@lists.infradead.org>

We have duplicate register bit defines for the prsstat register.
Remove the duplicates.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/imx-esdhc-pbl.c |  6 +++---
 drivers/mci/imx-esdhc.c     | 17 +++++++++++------
 drivers/mci/mci-bcm2835.c   |  8 ++++----
 drivers/mci/sdhci.h         | 16 ++++------------
 drivers/mci/tegra-sdmmc.c   |  2 +-
 5 files changed, 23 insertions(+), 26 deletions(-)

diff --git a/drivers/mci/imx-esdhc-pbl.c b/drivers/mci/imx-esdhc-pbl.c
index 91390bd3aa..5e3157e6cd 100644
--- a/drivers/mci/imx-esdhc-pbl.c
+++ b/drivers/mci/imx-esdhc-pbl.c
@@ -105,7 +105,7 @@ static int esdhc_do_data(struct esdhc *esdhc, struct mci_data *data)
 		int timeout = 1000000;
 
 		while (1) {
-			present = esdhc_read32(esdhc, SDHCI_PRESENT_STATE) & PRSSTAT_BREN;
+			present = esdhc_read32(esdhc, SDHCI_PRESENT_STATE) & SDHCI_BUFFER_READ_ENABLE;
 			if (present)
 				break;
 			if (!--timeout) {
@@ -196,8 +196,8 @@ esdhc_send_cmd(struct esdhc *esdhc, struct mci_cmd *cmd, struct mci_data *data)
 
 	/* Wait for the bus to be idle */
 	timeout = 10000;
-	while (esdhc_read32(esdhc, SDHCI_PRESENT_STATE) &
-			(PRSSTAT_CICHB | PRSSTAT_CIDHB | PRSSTAT_DLA)) {
+	while (esdhc_read32(esdhc, SDHCI_PRESENT_STATE) & (SDHCI_CMD_INHIBIT_CMD |
+			SDHCI_CMD_INHIBIT_DATA | SDHCI_DATA_LINE_ACTIVE)) {
 		__udelay(1);
 		if (!timeout--)
 			return -ETIMEDOUT;
diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index 5a553eebbc..c2c9d1e24c 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -84,6 +84,9 @@
 /* Enable cache snooping */
 #define ESDHC_FLAG_CACHE_SNOOPING	BIT(11)
 
+#define PRSSTAT_DAT0  0x01000000
+#define PRSSTAT_SDSTB 0x00000008
+
 struct esdhc_soc_data {
 	u32 flags;
 	const char *clkidx;
@@ -223,7 +226,8 @@ esdhc_pio_read_write(struct mci_host *mci, struct mci_data *data)
 			timeout = PIO_TIMEOUT;
 			size = data->blocksize;
 			irqstat = sdhci_read32(&host->sdhci, SDHCI_INT_STATUS);
-			while (!(sdhci_read32(&host->sdhci, SDHCI_PRESENT_STATE) & PRSSTAT_BREN)
+			while (!(sdhci_read32(&host->sdhci, SDHCI_PRESENT_STATE) &
+					SDHCI_BUFFER_READ_ENABLE)
 				&& --timeout);
 			if (timeout <= 0) {
 				dev_err(host->dev, "Data Read Failed\n");
@@ -246,7 +250,8 @@ esdhc_pio_read_write(struct mci_host *mci, struct mci_data *data)
 			timeout = PIO_TIMEOUT;
 			size = data->blocksize;
 			irqstat = sdhci_read32(&host->sdhci, SDHCI_INT_STATUS);
-			while (!(sdhci_read32(&host->sdhci, SDHCI_PRESENT_STATE) & PRSSTAT_BWEN)
+			while (!(sdhci_read32(&host->sdhci, SDHCI_PRESENT_STATE) &
+					SDHCI_BUFFER_WRITE_ENABLE)
 				&& --timeout);
 			if (timeout <= 0) {
 				dev_err(host->dev, "Data Write Failed\n");
@@ -313,7 +318,7 @@ static int esdhc_do_data(struct mci_host *mci, struct mci_data *data)
 		if (irqstat & SDHCI_INT_DATA_TIMEOUT)
 			return -ETIMEDOUT;
 	} while (!(irqstat & SDHCI_INT_XFER_COMPLETE) &&
-		(sdhci_read32(&host->sdhci, SDHCI_PRESENT_STATE) & PRSSTAT_DLA));
+		(sdhci_read32(&host->sdhci, SDHCI_PRESENT_STATE) & SDHCI_DATA_LINE_ACTIVE));
 
 	return 0;
 }
@@ -429,14 +434,14 @@ esdhc_send_cmd(struct mci_host *mci, struct mci_cmd *cmd, struct mci_data *data)
 	/* Wait for the bus to be idle */
 	ret = wait_on_timeout(SECOND,
 			!(sdhci_read32(&host->sdhci, SDHCI_PRESENT_STATE) &
-				(PRSSTAT_CICHB | PRSSTAT_CIDHB)));
+				(SDHCI_CMD_INHIBIT_CMD | SDHCI_CMD_INHIBIT_DATA)));
 	if (ret) {
 		dev_err(host->dev, "timeout 2\n");
 		return -ETIMEDOUT;
 	}
 
 	ret = wait_on_timeout(100 * MSECOND,
-			!(sdhci_read32(&host->sdhci, SDHCI_PRESENT_STATE) & PRSSTAT_DLA));
+			!(sdhci_read32(&host->sdhci, SDHCI_PRESENT_STATE) & SDHCI_DATA_LINE_ACTIVE));
 	if (ret) {
 		dev_err(host->dev, "timeout 3\n");
 		return -ETIMEDOUT;
@@ -545,7 +550,7 @@ static int esdhc_card_present(struct mci_host *mci)
 	case ESDHC_CD_PERMANENT:
 		return 1;
 	case ESDHC_CD_CONTROLLER:
-		return !(sdhci_read32(&host->sdhci, SDHCI_PRESENT_STATE) & PRSSTAT_WPSPL);
+		return !(sdhci_read32(&host->sdhci, SDHCI_PRESENT_STATE) & SDHCI_WRITE_PROTECT);
 	case ESDHC_CD_GPIO:
 		ret = gpio_direction_input(pdata->cd_gpio);
 		if (ret)
diff --git a/drivers/mci/mci-bcm2835.c b/drivers/mci/mci-bcm2835.c
index cb72235807..61995a2883 100644
--- a/drivers/mci/mci-bcm2835.c
+++ b/drivers/mci/mci-bcm2835.c
@@ -110,12 +110,12 @@ static int bcm2835_mci_transfer_data(struct bcm2835_mci_host *host,
 	if (data->flags & MMC_DATA_READ) {
 		p = (u32 *) data->dest;
 		data_ready_intr_mask = SDHCI_INT_DATA_AVAIL;
-		data_ready_status_mask = PRSSTAT_BREN;
+		data_ready_status_mask = SDHCI_BUFFER_READ_ENABLE;
 		read_write_func = &sdhci_read32_data;
 	} else {
 		p = (u32 *) data->src;
 		data_ready_intr_mask = SDHCI_INT_SPACE_AVAIL;
-		data_ready_status_mask = PRSSTAT_BWEN;
+		data_ready_status_mask = SDHCI_BUFFER_WRITE_ENABLE;
 		read_write_func = &sdhci_write32_data;
 	}
 	do {
@@ -204,7 +204,7 @@ static void bcm2835_mci_reset_emmc(struct bcm2835_mci_host *host, u32 reset,
 static int bcm2835_mci_request(struct mci_host *mci, struct mci_cmd *cmd,
 		struct mci_data *data) {
 	u32 command, block_data = 0, ret = 0, transfer_mode = 0;
-	u32 wait_inhibit_mask = PRSSTAT_CICHB | PRSSTAT_CIDHB;
+	u32 wait_inhibit_mask = SDHCI_CMD_INHIBIT_CMD | SDHCI_CMD_INHIBIT_DATA;
 	struct bcm2835_mci_host *host = to_bcm2835_host(mci);
 
 	command = SDHCI_CMD_INDEX(cmd->cmdidx);
@@ -236,7 +236,7 @@ static int bcm2835_mci_request(struct mci_host *mci, struct mci_cmd *cmd,
 	/* We shouldn't wait for data inihibit for stop commands, even
 	though they might use busy signaling */
 	if (cmd->cmdidx == MMC_CMD_STOP_TRANSMISSION)
-		wait_inhibit_mask = PRSSTAT_CICHB;
+		wait_inhibit_mask = SDHCI_CMD_INHIBIT_CMD;
 
 	/*Wait for old command*/
 	while (sdhci_read32(&host->sdhci, SDHCI_PRESENT_STATE)
diff --git a/drivers/mci/sdhci.h b/drivers/mci/sdhci.h
index 18db9a5c34..7071fc8d52 100644
--- a/drivers/mci/sdhci.h
+++ b/drivers/mci/sdhci.h
@@ -40,6 +40,10 @@
 #define SDHCI_RESPONSE_3					0x1c
 #define SDHCI_BUFFER						0x20
 #define SDHCI_PRESENT_STATE					0x24
+#define  SDHCI_WRITE_PROTECT			BIT(19)
+#define  SDHCI_BUFFER_READ_ENABLE		BIT(11)
+#define  SDHCI_BUFFER_WRITE_ENABLE		BIT(10)
+#define  SDHCI_DATA_LINE_ACTIVE			BIT(2)
 #define  SDHCI_CMD_INHIBIT_DATA			BIT(1)
 #define  SDHCI_CMD_INHIBIT_CMD			BIT(0)
 #define SDHCI_PRESENT_STATE1					0x26
@@ -92,18 +96,6 @@
 #define SDHCI_SPEC_200_MAX_CLK_DIVIDER	256
 #define SDHCI_MMC_BOOT						0xC4
 
-#define PRSSTAT_DAT0		0x01000000
-#define PRSSTAT_CLSL		0x00800000
-#define PRSSTAT_WPSPL		0x00080000
-#define PRSSTAT_CDPL		0x00040000
-#define PRSSTAT_CINS		0x00010000
-#define PRSSTAT_BREN		0x00000800
-#define PRSSTAT_BWEN		0x00000400
-#define PRSSTAT_SDSTB		0x00000008
-#define PRSSTAT_DLA		0x00000004
-#define PRSSTAT_CIDHB		0x00000002
-#define PRSSTAT_CICHB		0x00000001
-
 struct sdhci {
 	u32 (*read32)(struct sdhci *host, int reg);
 	u16 (*read16)(struct sdhci *host, int reg);
diff --git a/drivers/mci/tegra-sdmmc.c b/drivers/mci/tegra-sdmmc.c
index 6cdf808f16..69de39b180 100644
--- a/drivers/mci/tegra-sdmmc.c
+++ b/drivers/mci/tegra-sdmmc.c
@@ -403,7 +403,7 @@ static int tegra_sdmmc_card_present(struct mci_host *mci)
 		return gpio_get_value(host->gpio_cd) ? 0 : 1;
 	}
 
-	return !(sdhci_read32(&host->sdhci, SDHCI_PRESENT_STATE) & PRSSTAT_WPSPL);
+	return !(sdhci_read32(&host->sdhci, SDHCI_PRESENT_STATE) & SDHCI_WRITE_PROTECT);
 }
 
 static int tegra_sdmmc_detect(struct device_d *dev)
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

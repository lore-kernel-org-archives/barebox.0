Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX161-0006Kn-AE
 for barebox@lists.infradead.org; Tue, 19 Nov 2019 10:51:04 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 19 Nov 2019 11:50:27 +0100
Message-Id: <20191119105036.12300-13-s.hauer@pengutronix.de>
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
Subject: [PATCH 12/21] mci: sdhci: remove duplicate transfer mode register
 defines
To: Barebox List <barebox@lists.infradead.org>

We have duplicate register bit defines for the transfer mode register.
Remove the duplicates.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/imx-esdhc-pbl.c | 4 ++--
 drivers/mci/imx-esdhc.c     | 8 ++++----
 drivers/mci/mci-bcm2835.c   | 6 +++---
 drivers/mci/sdhci.h         | 6 ------
 drivers/mci/tegra-sdmmc.c   | 6 +++---
 5 files changed, 12 insertions(+), 18 deletions(-)

diff --git a/drivers/mci/imx-esdhc-pbl.c b/drivers/mci/imx-esdhc-pbl.c
index 0d15668fbe..82e1d83d2a 100644
--- a/drivers/mci/imx-esdhc-pbl.c
+++ b/drivers/mci/imx-esdhc-pbl.c
@@ -67,8 +67,8 @@ static u32 esdhc_xfertyp(struct mci_cmd *cmd, struct mci_data *data)
 
 	if (data) {
 		command |= SDHCI_DATA_PRESENT;
-		xfertyp |= TRANSFER_MODE_MSBSEL | TRANSFER_MODE_BCEN |
-			   TRANSFER_MODE_DTDSEL;
+		xfertyp |= SDHCI_MULTIPLE_BLOCKS | SDHCI_BLOCK_COUNT_EN |
+			   SDHCI_DATA_TO_HOST;
 	}
 
 	if (cmd->resp_type & MMC_RSP_CRC)
diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index 11ece677d3..9f797bf7b1 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -172,15 +172,15 @@ static u32 esdhc_xfertyp(struct fsl_esdhc_host *host,
 		command |= SDHCI_DATA_PRESENT;
 
 		if (!IS_ENABLED(CONFIG_MCI_IMX_ESDHC_PIO))
-			xfertyp |= TRANSFER_MODE_DMAEN;
+			xfertyp |= SDHCI_DMA_EN;
 
 		if (data->blocks > 1) {
-			xfertyp |= TRANSFER_MODE_MSBSEL;
-			xfertyp |= TRANSFER_MODE_BCEN;
+			xfertyp |= SDHCI_MULTIPLE_BLOCKS;
+			xfertyp |= SDHCI_BLOCK_COUNT_EN;
 		}
 
 		if (data->flags & MMC_DATA_READ)
-			xfertyp |= TRANSFER_MODE_DTDSEL;
+			xfertyp |= SDHCI_DATA_TO_HOST;
 	}
 
 	if (cmd->resp_type & MMC_RSP_CRC)
diff --git a/drivers/mci/mci-bcm2835.c b/drivers/mci/mci-bcm2835.c
index d154dfa46d..a16d192832 100644
--- a/drivers/mci/mci-bcm2835.c
+++ b/drivers/mci/mci-bcm2835.c
@@ -221,13 +221,13 @@ static int bcm2835_mci_request(struct mci_host *mci, struct mci_cmd *cmd,
 	}
 	if (data != NULL) {
 		command |= SDHCI_DATA_PRESENT;
-		transfer_mode |= TRANSFER_MODE_BCEN;
+		transfer_mode |= SDHCI_BLOCK_COUNT_EN;
 
 		if (data->blocks > 1)
-			transfer_mode |= TRANSFER_MODE_MSBSEL;
+			transfer_mode |= SDHCI_MULTIPLE_BLOCKS;
 
 		if (data->flags & MMC_DATA_READ)
-			transfer_mode |= TRANSFER_MODE_DTDSEL;
+			transfer_mode |= SDHCI_DATA_TO_HOST;
 
 		block_data = (data->blocks << BLOCK_SHIFT);
 		block_data |= data->blocksize;
diff --git a/drivers/mci/sdhci.h b/drivers/mci/sdhci.h
index c1e4f06606..9ee8d6ff02 100644
--- a/drivers/mci/sdhci.h
+++ b/drivers/mci/sdhci.h
@@ -82,12 +82,6 @@
 #define SDHCI_SPEC_200_MAX_CLK_DIVIDER	256
 #define SDHCI_MMC_BOOT						0xC4
 
-#define TRANSFER_MODE_MSBSEL	0x00000020
-#define TRANSFER_MODE_DTDSEL	0x00000010
-#define TRANSFER_MODE_AC12EN	0x00000004
-#define TRANSFER_MODE_BCEN	0x00000002
-#define TRANSFER_MODE_DMAEN	0x00000001
-
 #define IRQSTAT_TE		0x04000000
 #define IRQSTAT_DMAE		0x02000000
 #define IRQSTAT_AC12E		0x01000000
diff --git a/drivers/mci/tegra-sdmmc.c b/drivers/mci/tegra-sdmmc.c
index 79c76bbb0f..034081ec62 100644
--- a/drivers/mci/tegra-sdmmc.c
+++ b/drivers/mci/tegra-sdmmc.c
@@ -148,12 +148,12 @@ static int tegra_sdmmc_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
 
 	if (data) {
 		if (data->blocks > 1)
-			val |= TRANSFER_MODE_MSBSEL;
+			val |= SDHCI_MULTIPLE_BLOCKS;
 
 		if (data->flags & MMC_DATA_READ)
-			val |= TRANSFER_MODE_DTDSEL;
+			val |= SDHCI_DATA_TO_HOST;
 
-		val |= TRANSFER_MODE_DMAEN | TRANSFER_MODE_BCEN;
+		val |= SDHCI_DMA_EN | SDHCI_BLOCK_COUNT_EN;
 	}
 
 	if (!(cmd->resp_type & MMC_RSP_PRESENT))
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

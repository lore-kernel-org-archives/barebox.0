Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibnUw-0004i3-S0
 for barebox@lists.infradead.org; Mon, 02 Dec 2019 15:20:29 +0000
Received: by mail-pf1-x441.google.com with SMTP id l22so6152124pff.9
 for <barebox@lists.infradead.org>; Mon, 02 Dec 2019 07:20:26 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon,  2 Dec 2019 07:19:50 -0800
Message-Id: <20191202151954.16032-9-andrew.smirnov@gmail.com>
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
Subject: [PATCH 08/12] mci: imx-esdhc-pbl: Use sdhci_transfer_data()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Drop some extra code by converting esdhc_do_data() to use
sdhci_transfer_data().

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/mci/Kconfig         |  1 +
 drivers/mci/Makefile        |  2 +-
 drivers/mci/imx-esdhc-pbl.c | 35 +----------------------------------
 drivers/mci/sdhci.c         | 13 +++++++++++++
 4 files changed, 16 insertions(+), 35 deletions(-)

diff --git a/drivers/mci/Kconfig b/drivers/mci/Kconfig
index c269b71e8..13fa58504 100644
--- a/drivers/mci/Kconfig
+++ b/drivers/mci/Kconfig
@@ -105,6 +105,7 @@ config MCI_IMX_ESDHC_PIO
 
 config MCI_IMX_ESDHC_PBL
 	bool
+        select MCI_SDHCI
 
 config MCI_OMAP_HSMMC
 	bool "OMAP HSMMC"
diff --git a/drivers/mci/Makefile b/drivers/mci/Makefile
index cfb84a899..54eb65978 100644
--- a/drivers/mci/Makefile
+++ b/drivers/mci/Makefile
@@ -16,4 +16,4 @@ obj-$(CONFIG_MCI_SPI)		+= mci_spi.o
 obj-$(CONFIG_MCI_DW)		+= dw_mmc.o
 obj-$(CONFIG_MCI_MMCI)		+= mmci.o
 obj-$(CONFIG_MCI_STM32_SDMMC2)	+= stm32_sdmmc2.o
-obj-$(CONFIG_MCI_SDHCI)		+= sdhci.o
+obj-pbl-$(CONFIG_MCI_SDHCI)	+= sdhci.o
diff --git a/drivers/mci/imx-esdhc-pbl.c b/drivers/mci/imx-esdhc-pbl.c
index 08f28471c..b61cba2ba 100644
--- a/drivers/mci/imx-esdhc-pbl.c
+++ b/drivers/mci/imx-esdhc-pbl.c
@@ -66,40 +66,7 @@ static u32 esdhc_xfertyp(struct mci_cmd *cmd, struct mci_data *data)
 
 static int esdhc_do_data(struct fsl_esdhc_host *host, struct mci_data *data)
 {
-	char *buffer;
-	u32 databuf;
-	u32 size;
-	u32 irqstat;
-	u32 present;
-
-	buffer = data->dest;
-
-	size = data->blocksize * data->blocks;
-	irqstat = sdhci_read32(&host->sdhci, SDHCI_INT_STATUS);
-
-	while (size) {
-		int i;
-		int timeout = 1000000;
-
-		while (1) {
-			present = sdhci_read32(&host->sdhci, SDHCI_PRESENT_STATE) & SDHCI_BUFFER_READ_ENABLE;
-			if (present)
-				break;
-			if (!--timeout) {
-				pr_err("read time out\n");
-				return -ETIMEDOUT;
-			}
-		}
-
-		for (i = 0; i < SECTOR_WML; i++) {
-			databuf = sdhci_read32(&host->sdhci, SDHCI_BUFFER);
-			*((u32 *)buffer) = databuf;
-			buffer += 4;
-			size -= 4;
-		}
-	}
-
-	return 0;
+	return sdhci_transfer_data(&host->sdhci, data);
 }
 
 static int
diff --git a/drivers/mci/sdhci.c b/drivers/mci/sdhci.c
index 1ab1c0f23..172c8343a 100644
--- a/drivers/mci/sdhci.c
+++ b/drivers/mci/sdhci.c
@@ -88,6 +88,19 @@ static void sdhci_tx_pio(struct sdhci *sdhci, struct mci_data *data,
 		sdhci_write32(sdhci, SDHCI_BUFFER, buf[i]);
 }
 
+#ifdef __PBL__
+/*
+ * Stubs to make timeout logic below work in PBL
+ */
+
+#define get_time_ns()		0
+/*
+ * Use time in us as a busy counter timeout value
+ */
+#define is_timeout(s, t)	((s)++ > ((t) / 1000))
+
+#endif
+
 int sdhci_transfer_data(struct sdhci *sdhci, struct mci_data *data)
 {
 	unsigned int block = 0;
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

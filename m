Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h0nUm-0002Hl-Lv
 for barebox@lists.infradead.org; Mon, 04 Mar 2019 13:19:06 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Mar 2019 14:18:53 +0100
Message-Id: <20190304131853.30864-6-s.hauer@pengutronix.de>
In-Reply-To: <20190304131853.30864-1-s.hauer@pengutronix.de>
References: <20190304131853.30864-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/5] esdhc-xload: check for PRSSTAT_BREN only after each block
To: Barebox List <barebox@lists.infradead.org>

The BREN bit tells us a watermark level sized buffer is ready for read.
Instead of testing it before each FIFO read we must only check it once
and then read a watermark level sized buffer. This is at least necessary
on Layerscape, otherwise timeouts occur while reading the buffer.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/imx-esdhc-pbl.c | 25 ++++++++++++++++---------
 1 file changed, 16 insertions(+), 9 deletions(-)

diff --git a/drivers/mci/imx-esdhc-pbl.c b/drivers/mci/imx-esdhc-pbl.c
index 33d78aad05..f77530d310 100644
--- a/drivers/mci/imx-esdhc-pbl.c
+++ b/drivers/mci/imx-esdhc-pbl.c
@@ -84,28 +84,33 @@ static int esdhc_do_data(struct esdhc *esdhc, struct mci_data *data)
 	u32 databuf;
 	u32 size;
 	u32 irqstat;
-	u32 timeout;
 	u32 present;
 
 	buffer = data->dest;
 
-	timeout = 1000000;
 	size = data->blocksize * data->blocks;
 	irqstat = esdhc_read32(esdhc, SDHCI_INT_STATUS);
 
 	while (size) {
-		present = esdhc_read32(esdhc, SDHCI_PRESENT_STATE) & PRSSTAT_BREN;
-		if (present) {
+		int i;
+		int timeout = 1000000;
+
+		while (1) {
+			present = esdhc_read32(esdhc, SDHCI_PRESENT_STATE) & PRSSTAT_BREN;
+			if (present)
+				break;
+			if (!--timeout) {
+				pr_err("read time out\n");
+				return -ETIMEDOUT;
+			}
+		}
+
+		for (i = 0; i < SECTOR_SIZE / sizeof(uint32_t); i++) {
 			databuf = esdhc_read32(esdhc, SDHCI_BUFFER);
 			*((u32 *)buffer) = databuf;
 			buffer += 4;
 			size -= 4;
 		}
-
-		if (!timeout--) {
-			pr_err("read time out\n");
-			return -ETIMEDOUT;
-		}
 	}
 
 	return 0;
@@ -205,6 +210,8 @@ static int esdhc_read_blocks(struct esdhc *esdhc, void *dst, size_t len)
 		      IRQSTATEN_DTOE | IRQSTATEN_DCE | IRQSTATEN_DEBE |
 		      IRQSTATEN_DINT);
 
+	esdhc_write32(esdhc, IMX_SDHCI_WML, 0x0);
+
 	val = esdhc_read32(esdhc, SDHCI_CLOCK_CONTROL__TIMEOUT_CONTROL__SOFTWARE_RESET);
 	val |= SYSCTL_HCKEN | SYSCTL_IPGEN;
 	esdhc_write32(esdhc, SDHCI_CLOCK_CONTROL__TIMEOUT_CONTROL__SOFTWARE_RESET, val);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

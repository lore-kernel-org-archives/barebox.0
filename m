Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gXoHg-00005c-1K
 for barebox@lists.infradead.org; Fri, 14 Dec 2018 14:17:48 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 14 Dec 2018 15:17:11 +0100
Message-Id: <20181214141730.26181-5-s.hauer@pengutronix.de>
In-Reply-To: <20181214141730.26181-1-s.hauer@pengutronix.de>
References: <20181214141730.26181-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/23] mci: omap: Improve error handling
To: Barebox List <barebox@lists.infradead.org>

Return proper error code from read/write functions rather than '1'. Also
add messages printing the status register to give a glue what went
wrong.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/omap_hsmmc.c | 16 +++++++++++-----
 1 file changed, 11 insertions(+), 5 deletions(-)

diff --git a/drivers/mci/omap_hsmmc.c b/drivers/mci/omap_hsmmc.c
index cbc69e4083..9e7ecabf85 100644
--- a/drivers/mci/omap_hsmmc.c
+++ b/drivers/mci/omap_hsmmc.c
@@ -316,13 +316,16 @@ static int mmc_read_data(struct omap_hsmmc *hsmmc, char *buf, unsigned int size)
 		do {
 			mmc_stat = readl(&mmc_base->stat);
 			if (is_timeout(start, SECOND)) {
-				dev_dbg(hsmmc->dev, "timedout waiting for status!\n");
+				dev_err(hsmmc->dev, "timedout waiting for status!\n");
 				return -ETIMEDOUT;
 			}
 		} while (mmc_stat == 0);
 
-		if ((mmc_stat & ERRI_MASK) != 0)
-			return 1;
+		if ((mmc_stat & ERRI_MASK) != 0) {
+			dev_err(hsmmc->dev, "Error while reading data. status: 0x%08x\n",
+				mmc_stat);
+			return -EIO;
+		}
 
 		if (mmc_stat & BRR_MASK) {
 			unsigned int k;
@@ -373,8 +376,11 @@ static int mmc_write_data(struct omap_hsmmc *hsmmc, const char *buf, unsigned in
 			}
 		} while (mmc_stat == 0);
 
-		if ((mmc_stat & ERRI_MASK) != 0)
-			return 1;
+		if ((mmc_stat & ERRI_MASK) != 0) {
+			dev_err(hsmmc->dev, "Error while reading data. status: 0x%08x\n",
+				mmc_stat);
+			return -EIO;
+		}
 
 		if (mmc_stat & BWR_MASK) {
 			unsigned int k;
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

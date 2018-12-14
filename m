Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gXoHg-00005e-1G
 for barebox@lists.infradead.org; Fri, 14 Dec 2018 14:17:46 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 14 Dec 2018 15:17:12 +0100
Message-Id: <20181214141730.26181-6-s.hauer@pengutronix.de>
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
Subject: [PATCH 05/23] mci: omap: use IS_ENABLED() rather than #ifdef
To: Barebox List <barebox@lists.infradead.org>

While touching it propagate the errors from read/write functions instead
of silently ignoring them.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/omap_hsmmc.c | 21 ++++++++++++---------
 1 file changed, 12 insertions(+), 9 deletions(-)

diff --git a/drivers/mci/omap_hsmmc.c b/drivers/mci/omap_hsmmc.c
index 9e7ecabf85..d8e40aba20 100644
--- a/drivers/mci/omap_hsmmc.c
+++ b/drivers/mci/omap_hsmmc.c
@@ -352,7 +352,6 @@ static int mmc_read_data(struct omap_hsmmc *hsmmc, char *buf, unsigned int size)
 	return 0;
 }
 
-#ifdef CONFIG_MCI_WRITE
 static int mmc_write_data(struct omap_hsmmc *hsmmc, const char *buf, unsigned int size)
 {
 	struct hsmmc *mmc_base = hsmmc->base;
@@ -406,7 +405,6 @@ static int mmc_write_data(struct omap_hsmmc *hsmmc, const char *buf, unsigned in
 	}
 	return 0;
 }
-#endif
 
 static int mmc_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
 		struct mci_data *data)
@@ -517,13 +515,18 @@ static int mmc_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
 		}
 	}
 
-	if (data && (data->flags & MMC_DATA_READ))
-		mmc_read_data(hsmmc, data->dest, data->blocksize * data->blocks);
-#ifdef CONFIG_MCI_WRITE
-	else if (data && (data->flags & MMC_DATA_WRITE))
-		mmc_write_data(hsmmc, data->src, data->blocksize * data->blocks);
-#endif
-	return 0;
+	if (!data)
+		return 0;
+
+	if (data->flags & MMC_DATA_READ)
+		return mmc_read_data(hsmmc, data->dest,
+				     data->blocksize * data->blocks);
+
+	if (IS_ENABLED(CONFIG_MCI_WRITE))
+		return mmc_write_data(hsmmc, data->src,
+				      data->blocksize * data->blocks);
+
+	return -ENOSYS;
 }
 
 static void mmc_set_ios(struct mci_host *mci, struct mci_ios *ios)
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

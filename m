Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RvUEO-0006g8-P9
 for barebox@lists.infradead.org; Thu, 09 Feb 2012 13:40:16 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  9 Feb 2012 14:39:55 +0100
Message-Id: <1328794798-17699-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1328794798-17699-1-git-send-email-s.hauer@pengutronix.de>
References: <1328794798-17699-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/5] mci i.MX esdhc: use timeout loops
To: barebox@lists.infradead.org

Too often I have waited to get a reaction from this driver
when something goes wrong. Use timeout loops instead of
inifinite polling loops.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/imx-esdhc.c |   27 ++++++++++++++++++++-------
 1 files changed, 20 insertions(+), 7 deletions(-)

diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index 2123a8b..d36d211 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -238,6 +238,7 @@ esdhc_send_cmd(struct mci_host *mci, struct mci_cmd *cmd, struct mci_data *data)
 	u32	irqstat;
 	struct fsl_esdhc_host *host = to_fsl_esdhc(mci);
 	struct fsl_esdhc *regs = host->regs;
+	int ret;
 
 	esdhc_write32(&regs->irqstat, -1);
 
@@ -268,8 +269,12 @@ esdhc_send_cmd(struct mci_host *mci, struct mci_cmd *cmd, struct mci_data *data)
 	esdhc_write32(&regs->xfertyp, xfertyp);
 
 	/* Wait for the command to complete */
-	while (!(esdhc_read32(&regs->irqstat) & IRQSTAT_CC))
-		;
+	ret = wait_on_timeout(100 * MSECOND,
+			esdhc_read32(&regs->irqstat) & IRQSTAT_CC);
+	if (ret) {
+		dev_err(host->dev, "timeout 1\n");
+		return -ETIMEDOUT;
+	}
 
 	irqstat = esdhc_read32(&regs->irqstat);
 	esdhc_write32(&regs->irqstat, irqstat);
@@ -321,12 +326,20 @@ esdhc_send_cmd(struct mci_host *mci, struct mci_cmd *cmd, struct mci_data *data)
 	esdhc_write32(&regs->irqstat, -1);
 
 	/* Wait for the bus to be idle */
-	while ((esdhc_read32(&regs->prsstat) & PRSSTAT_CICHB) ||
-			(esdhc_read32(&regs->prsstat) & PRSSTAT_CIDHB))
-		;
+	ret = wait_on_timeout(100 * MSECOND,
+			!(esdhc_read32(&regs->prsstat) &
+				(PRSSTAT_CICHB | PRSSTAT_CIDHB)));
+	if (ret) {
+		dev_err(host->dev, "timeout 2\n");
+		return -ETIMEDOUT;
+	}
 
-	while (esdhc_read32(&regs->prsstat) & PRSSTAT_DLA)
-		;
+	ret = wait_on_timeout(100 * MSECOND,
+			!(esdhc_read32(&regs->prsstat) & PRSSTAT_DLA));
+	if (ret) {
+		dev_err(host->dev, "timeout 3\n");
+		return -ETIMEDOUT;
+	}
 
 	return 0;
 }
-- 
1.7.9


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

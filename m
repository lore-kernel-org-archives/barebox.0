Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYBcs-0000E2-Eb
 for barebox@lists.infradead.org; Mon, 11 May 2020 16:50:00 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>) id 1jYBcr-0004op-BM
 for barebox@lists.infradead.org; Mon, 11 May 2020 18:49:57 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon, 11 May 2020 18:49:56 +0200
Message-Id: <20200511164957.21930-1-l.stach@pengutronix.de>
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
Subject: [PATCH 1/2] mci: stm32_sdmmc2: don't retry commands
To: barebox@lists.infradead.org

No other MCI does retry failing commands on its own (if at all
this should be done by the MCI core). Remove the retry, as we
don't want to paper over board level issues.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/mci/stm32_sdmmc2.c | 16 ++--------------
 1 file changed, 2 insertions(+), 14 deletions(-)

diff --git a/drivers/mci/stm32_sdmmc2.c b/drivers/mci/stm32_sdmmc2.c
index 0c26869b0378..de96f0974489 100644
--- a/drivers/mci/stm32_sdmmc2.c
+++ b/drivers/mci/stm32_sdmmc2.c
@@ -481,11 +481,8 @@ static int stm32_sdmmc2_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
 {
 	struct stm32_sdmmc2_priv *priv = to_mci_host(mci);
 	u32 cmdat = data ? SDMMC_CMD_CMDTRANS : 0;
-	u32 data_length;
-	int ret, retry = 3;
-
-retry_cmd:
-	data_length = 0;
+	u32 data_length = 0;
+	int ret;
 
 	if (data) {
 		data_length = data->blocks * data->blocksize;
@@ -530,15 +527,6 @@ retry_cmd:
 		writel(SDMMC_ICR_STATIC_FLAGS, priv->base + SDMMC_ICR);
 	}
 
-	if (ret && retry) {
-		dev_warn(priv->dev, "%s: cmd %d failed, retrying ...\n",
-			 __func__, cmd->cmdidx);
-
-		retry--;
-
-		goto retry_cmd;
-	}
-
 	dev_dbg(priv->dev, "%s: end for CMD %d, ret = %d\n", __func__,
 		cmd->cmdidx, ret);
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1mpd-0004UP-5u
 for barebox@lists.infradead.org; Wed, 12 Feb 2020 07:53:14 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 12 Feb 2020 08:53:11 +0100
Message-Id: <20200212075311.3787-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] mci: imx-esdhc: lower timeout message priority to dev_dbg
To: Barebox List <barebox@lists.infradead.org>

The timeout when waiting for a command to complete is expected in
some cases, so do not bark loudly. This used to be dev_dbg() earlier
already.

Fixes: 4a7d7b16e2 ("mci: imx-esdhc: Share code for esdhc_send_cmd()")
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/imx-esdhc-common.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mci/imx-esdhc-common.c b/drivers/mci/imx-esdhc-common.c
index d0bef9470c..c9d589468f 100644
--- a/drivers/mci/imx-esdhc-common.c
+++ b/drivers/mci/imx-esdhc-common.c
@@ -214,7 +214,7 @@ int __esdhc_send_cmd(struct fsl_esdhc_host *host, struct mci_cmd *cmd,
 			 SDHCI_INT_CMD_COMPLETE, SDHCI_INT_CMD_COMPLETE,
 			 100 * MSECOND);
 	if (ret) {
-		dev_err(host->dev, "timeout 1\n");
+		dev_dbg(host->dev, "timeout 1\n");
 		return -ETIMEDOUT;
 	}
 
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

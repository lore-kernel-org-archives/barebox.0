Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eZBX8-0006Md-Dt
 for barebox@lists.infradead.org; Wed, 10 Jan 2018 08:14:51 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Wed, 10 Jan 2018 09:14:20 +0100
Message-Id: <20180110081420.10722-4-s.trumtrar@pengutronix.de>
In-Reply-To: <20180110081420.10722-1-s.trumtrar@pengutronix.de>
References: <20180110081420.10722-1-s.trumtrar@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 4/4] net: designware: add warning for drvdata
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Instead of silently using a wrong value, check if drvdata is defined
before use.
Print a warning if there is no drvdata found.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 drivers/net/designware.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/net/designware.c b/drivers/net/designware.c
index ec20da09b388..862ee2f0463e 100644
--- a/drivers/net/designware.c
+++ b/drivers/net/designware.c
@@ -434,7 +434,11 @@ struct dw_eth_dev *dwc_drv_probe(struct device_d *dev)
 	if (ret)
 		return ERR_PTR(ret);
 
-	priv->enh_desc = drvdata->enh_desc;
+	if (drvdata && drvdata->enh_desc)
+		priv->enh_desc = drvdata->enh_desc;
+	else
+		dev_warn(dev, "No drvdata specified\n");
+
 
 	if (pdata) {
 		priv->phy_addr = pdata->phy_addr;
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TRkiX-0002ia-C6
 for barebox@lists.infradead.org; Fri, 26 Oct 2012 14:16:58 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 26 Oct 2012 16:16:54 +0200
Message-Id: <1351261014-25235-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] net fec: connect phy at probe time
To: barebox@lists.infradead.org

Several i.MX boards (all i.MX6 boards) need to do some adjustments
to phy registers. If barebox itself does not use network, networking
won't work in the kernel if the kernel does not have the fixups. Connect
the phy at probe time so that these tweaks are done during probe so that
the kernel works without phy register tweaks. Also this has the effect
that the phy device is present and introspectable without doing fake
network transfers beforehand.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/fec_imx.c |   42 ++++++++++++++++++++++++++++++------------
 1 file changed, 30 insertions(+), 12 deletions(-)

diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index fde6658..29faff3 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -373,6 +373,26 @@ static void fec_update_linkspeed(struct eth_device *edev)
 	writel(rcntl, fec->regs + FEC_R_CNTRL);
 }
 
+static int fec_phy_connect(struct eth_device *edev)
+{
+	struct fec_priv *fec = (struct fec_priv *)edev->priv;
+	int ret;
+
+	if (fec->xcv_type == SEVENWIRE)
+		return 0;
+
+	ret = phy_device_connect(edev, &fec->miibus, fec->phy_addr,
+			 fec_update_linkspeed, fec->phy_flags,
+			 fec->interface);
+	if (ret)
+		return ret;
+
+	if (fec->phy_init)
+		fec->phy_init(edev->phydev);
+
+	return 0;
+}
+
 /**
  * Start the FEC engine
  * @param[in] edev Our device to handle
@@ -383,17 +403,6 @@ static int fec_open(struct eth_device *edev)
 	int ret;
 	u32 ecr;
 
-	if (fec->xcv_type != SEVENWIRE) {
-		ret = phy_device_connect(edev, &fec->miibus, fec->phy_addr,
-					 fec_update_linkspeed, fec->phy_flags,
-					 fec->interface);
-		if (ret)
-			return ret;
-
-		if (fec->phy_init)
-			fec->phy_init(edev->phydev);
-	}
-
 	/*
 	 * Initialize RxBD/TxBD rings
 	 */
@@ -706,9 +715,18 @@ static int fec_probe(struct device_d *dev)
 		mdiobus_register(&fec->miibus);
 	}
 
-	eth_register(edev);
+	ret = eth_register(edev);
+	if (ret)
+		goto err_free;
+
+	ret = fec_phy_connect(edev);
+	if (ret)
+		goto err_unregister;
+
 	return 0;
 
+err_unregister:
+	eth_unregister(edev);
 err_free:
 	free(fec);
 	return ret;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

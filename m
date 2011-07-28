Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QmQqm-0004Ca-Tz
	for barebox@lists.infradead.org; Thu, 28 Jul 2011 13:42:13 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 28 Jul 2011 15:42:01 +0200
Message-Id: <1311860524-28566-9-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1311860524-28566-1-git-send-email-s.hauer@pengutronix.de>
References: <1311860524-28566-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 08/11] smc911x: embed eth_device into priv
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/smc911x.c |    9 ++++-----
 1 files changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/net/smc911x.c b/drivers/net/smc911x.c
index 615fd61..8c6f9fc 100644
--- a/drivers/net/smc911x.c
+++ b/drivers/net/smc911x.c
@@ -368,6 +368,7 @@
 #define CHIP_9221	0x9221
 
 struct smc911x_priv {
+	struct eth_device edev;
 	struct mii_device miidev;
 	void __iomem *base;
 };
@@ -712,12 +713,10 @@ static int smc911x_probe(struct device_d *dev)
 
 	dev_info(dev, "detected %s controller\n", chip_ids[i].name);
 
-	edev = xzalloc(sizeof(struct eth_device) +
-			sizeof(struct smc911x_priv));
+	priv = xzalloc(sizeof(*priv));
+	edev = &priv->edev;
 	dev->type_data = edev;
-	edev->priv = (struct smc911x_priv *)(edev + 1);
-
-	priv = edev->priv;
+	edev->priv = priv;
 
 	edev->init = smc911x_init_dev;
 	edev->open = smc911x_eth_open;
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

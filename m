Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 63.mail-out.ovh.net ([91.121.185.56])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PsIC9-0003L9-M1
	for barebox@lists.infradead.org; Wed, 23 Feb 2011 17:08:10 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 23 Feb 2011 18:03:58 +0100
Message-Id: <1298480638-8522-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH] dm9000: read the mac address from the register if none are
	specified
To: barebox@lists.infradead.org

as barebox can be run as a second stage the first stage may have init it
before so re-used it

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/net/dm9000.c |   18 ++++++++++++------
 1 files changed, 12 insertions(+), 6 deletions(-)

diff --git a/drivers/net/dm9000.c b/drivers/net/dm9000.c
index b0e8822..c8d8517 100644
--- a/drivers/net/dm9000.c
+++ b/drivers/net/dm9000.c
@@ -169,6 +169,7 @@ struct dm9000_priv {
 	void __iomem *iodata;
 	struct mii_device miidev;
 	int buswidth;
+	int srom;
 };
 
 #ifdef CONFIG_DM9000_DEBUG
@@ -433,12 +434,17 @@ static u16 read_srom_word(struct dm9000_priv *priv, int offset)
 static int dm9000_get_ethaddr(struct eth_device *edev, unsigned char *adr)
 {
 	struct dm9000_priv *priv = (struct dm9000_priv *)edev->priv;
-	int i;
+	int i, oft;
 
-        for (i = 0; i < 3; i++)
-		((u16 *) adr)[i] = read_srom_word(priv, i);
+	if (priv->srom) {
+		for (i = 0; i < 3; i++)
+			((u16 *) adr)[i] = read_srom_word(priv, i);
+	} else {
+		for (i = 0, oft = 0x10; i < 6; i++, oft++)
+			adr[i] = DM9000_ior(priv, oft);
+	}
 
-        return 0;
+	return 0;
 }
 
 static int dm9000_set_ethaddr(struct eth_device *edev, unsigned char *adr)
@@ -491,6 +497,7 @@ static int dm9000_probe(struct device_d *dev)
 	priv->buswidth = pdata->buswidth;
 	priv->iodata = (void *)pdata->iodata;
 	priv->iobase = (void *)pdata->iobase;
+	priv->srom = pdata->srom;
 
 	edev->init = dm9000_init_dev;
 	edev->open = dm9000_eth_open;
@@ -498,8 +505,7 @@ static int dm9000_probe(struct device_d *dev)
 	edev->recv = dm9000_eth_rx;
 	edev->halt = dm9000_eth_halt;
 	edev->set_ethaddr = dm9000_set_ethaddr;
-	if (pdata->srom)
-		edev->get_ethaddr = dm9000_get_ethaddr;
+	edev->get_ethaddr = dm9000_get_ethaddr;
 
 	/* RESET device */
 	dm9000_reset(priv);
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

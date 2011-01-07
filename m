Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Pb9nm-00026R-7p
	for barebox@lists.infradead.org; Fri, 07 Jan 2011 10:44:20 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  7 Jan 2011 11:43:51 +0100
Message-Id: <1294397044-5008-12-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1294397044-5008-1-git-send-email-s.hauer@pengutronix.de>
References: <1294397044-5008-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 11/24] dm9000: fix printf compiler warnings
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/dm9000.c |   12 ++++++------
 1 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/net/dm9000.c b/drivers/net/dm9000.c
index c31cf1a..b0e8822 100644
--- a/drivers/net/dm9000.c
+++ b/drivers/net/dm9000.c
@@ -165,8 +165,8 @@
 #define IMR_PRM			(1<<0)
 
 struct dm9000_priv {
-	unsigned long iobase;
-	unsigned long iodata;
+	void __iomem *iobase;
+	void __iomem *iodata;
 	struct mii_device miidev;
 	int buswidth;
 };
@@ -246,11 +246,11 @@ static int dm9000_check_id(struct dm9000_priv *priv)
 	id_val |= DM9000_ior(priv, DM9000_PIDL) << 16;
 	id_val |= DM9000_ior(priv, DM9000_PIDH) << 24;
 	if (id_val == DM9000_ID) {
-		printf("dm9000 i/o: 0x%x, id: 0x%x \n", priv->iobase,
+		printf("dm9000 i/o: 0x%p, id: 0x%x \n", priv->iobase,
 		       id_val);
 		return 0;
 	} else {
-		printf("dm9000 not found at 0x%08x id: 0x%08x\n",
+		printf("dm9000 not found at 0x%p id: 0x%08x\n",
 		       priv->iobase, id_val);
 		return -1;
 	}
@@ -489,8 +489,8 @@ static int dm9000_probe(struct device_d *dev)
 
 	priv = edev->priv;
 	priv->buswidth = pdata->buswidth;
-	priv->iodata = pdata->iodata;
-	priv->iobase = pdata->iobase;
+	priv->iodata = (void *)pdata->iodata;
+	priv->iobase = (void *)pdata->iobase;
 
 	edev->init = dm9000_init_dev;
 	edev->open = dm9000_eth_open;
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

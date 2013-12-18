Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VtJJb-0001dL-J0
 for barebox@lists.infradead.org; Wed, 18 Dec 2013 15:45:40 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 18 Dec 2013 16:45:15 +0100
Message-Id: <1387381515-15476-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1387381515-15476-1-git-send-email-s.hauer@pengutronix.de>
References: <1387381515-15476-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] net: dm9k: bail out when resources can't be claimed
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/dm9k.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/net/dm9k.c b/drivers/net/dm9k.c
index 090482c..4c28870 100644
--- a/drivers/net/dm9k.c
+++ b/drivers/net/dm9k.c
@@ -722,7 +722,11 @@ static int dm9k_probe(struct device_d *dev)
 
 	priv->buswidth = dev->resource[0].flags & IORESOURCE_MEM_TYPE_MASK;
 	priv->iodata = dev_request_mem_region(dev, 1);
+	if (!priv->iodata)
+		return -EBUSY;
 	priv->iobase = dev_request_mem_region(dev, 0);
+	if (!priv->iobase)
+		return -EBUSY;
 	priv->srom = pdata->srom;
 
 	edev->init = dm9k_init_dev;
-- 
1.8.5.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

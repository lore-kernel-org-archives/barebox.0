Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QmQqm-0004CZ-Rs
	for barebox@lists.infradead.org; Thu, 28 Jul 2011 13:42:11 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 28 Jul 2011 15:42:00 +0200
Message-Id: <1311860524-28566-8-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 07/11] smc911x: switch to use resources
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/smc911x.c |   15 +++++++++------
 1 files changed, 9 insertions(+), 6 deletions(-)

diff --git a/drivers/net/smc911x.c b/drivers/net/smc911x.c
index 9d84be4..615fd61 100644
--- a/drivers/net/smc911x.c
+++ b/drivers/net/smc911x.c
@@ -369,7 +369,7 @@
 
 struct smc911x_priv {
 	struct mii_device miidev;
-	unsigned long base;
+	void __iomem *base;
 };
 
 struct chip_id {
@@ -690,15 +690,18 @@ static int smc911x_probe(struct device_d *dev)
 	struct smc911x_priv *priv;
 	uint32_t val;
 	int i;
+	void *base;
 
-	val = readl(dev->map_base + BYTE_TEST);
+	base = dev_request_mem_region(dev, 0);
+
+	val = readl(base + BYTE_TEST);
 	if(val != 0x87654321) {
-		dev_err(dev, "no smc911x found on 0x%08x (byte_test=0x%08x)\n",
-			dev->map_base, val);
+		dev_err(dev, "no smc911x found on 0x%p (byte_test=0x%08x)\n",
+			base, val);
 		return -ENODEV;
 	}
 
-	val = readl(dev->map_base + ID_REV) >> 16;
+	val = readl(base + ID_REV) >> 16;
 	for(i = 0; chip_ids[i].id != 0; i++) {
 		if (chip_ids[i].id == val) break;
 	}
@@ -729,7 +732,7 @@ static int smc911x_probe(struct device_d *dev)
 	priv->miidev.address = 1;
 	priv->miidev.flags = 0;
 	priv->miidev.edev = edev;
-	priv->base = dev->map_base;
+	priv->base = base;
 
 	smc911x_reset(edev);
 	smc911x_phy_reset(edev);
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

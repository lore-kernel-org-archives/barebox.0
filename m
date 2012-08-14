Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo4.mail-out.ovh.net ([178.33.253.54]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T1KyX-0004mg-3u
 for barebox@lists.infradead.org; Tue, 14 Aug 2012 17:32:18 +0000
Received: from mail628.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 3F3E910585DB
 for <barebox@lists.infradead.org>; Tue, 14 Aug 2012 19:36:55 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 14 Aug 2012 19:32:20 +0200
Message-Id: <1344965540-31534-7-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1344965540-31534-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120814172555.GP6271@game.jcrosoft.org>
 <1344965540-31534-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 7/7] smm911x: check if the device is ready before using it
To: barebox@lists.infradead.org

poll the READY bit in PMT_CTRL. Any other access to the device is
forbidden while this bit isn't set. Try for 100ms

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/net/smc911x.c |   12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/net/smc911x.c b/drivers/net/smc911x.c
index 021a194..f695dd2 100644
--- a/drivers/net/smc911x.c
+++ b/drivers/net/smc911x.c
@@ -413,6 +413,7 @@ static int smc911x_probe(struct device_d *dev)
 	struct smc911x_priv *priv;
 	uint32_t val;
 	struct smc911x_plat *pdata = dev->platform_data;
+	unsigned int to = 100;
 
 	priv = xzalloc(sizeof(*priv));
 	priv->width = dev->resource[0].flags & IORESOURCE_MEM_TYPE_MASK;
@@ -431,6 +432,17 @@ static int smc911x_probe(struct device_d *dev)
 		priv->reg_write = __smc911x_reg_write;
 	}
 
+	/*
+	 * poll the READY bit in PMT_CTRL. Any other access to the device is
+	 * forbidden while this bit isn't set. Try for 100ms
+	 */
+	while (!(smc911x_reg_read(priv, PMT_CTRL) & PMT_CTRL_READY) && --to)
+		udelay(1000);
+	if (to == 0) {
+		dev_err(dev, "Device not READY in 100ms aborting\n");
+		return -ENODEV;
+	}
+
 	val = smc911x_reg_read(priv, BYTE_TEST);
 	if (val == 0x43218765) {
 		dev_info(dev, "BYTE_TEST looks swapped, "
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

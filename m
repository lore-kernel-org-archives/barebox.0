Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 3.mo2.mail-out.ovh.net ([46.105.58.226]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T6aTo-0008E4-Df
 for barebox@lists.infradead.org; Wed, 29 Aug 2012 05:06:17 +0000
Received: from mail21.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 5FDD7DC44B2
 for <barebox@lists.infradead.org>; Wed, 29 Aug 2012 07:11:14 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 29 Aug 2012 07:06:18 +0200
Message-Id: <1346216778-14100-7-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1346216778-14100-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120829042727.GA18708@game.jcrosoft.org>
 <1346216778-14100-1-git-send-email-plagnioj@jcrosoft.com>
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
index cfcd83f..3695d32 100644
--- a/drivers/net/smc911x.c
+++ b/drivers/net/smc911x.c
@@ -422,6 +422,7 @@ static int smc911x_probe(struct device_d *dev)
 	uint32_t val;
 	int is_32bit;
 	struct smc911x_plat *pdata = dev->platform_data;
+	unsigned int to = 100;
 
 	priv = xzalloc(sizeof(*priv));
 	is_32bit = dev->resource[0].flags & IORESOURCE_MEM_TYPE_MASK;
@@ -452,6 +453,17 @@ static int smc911x_probe(struct device_d *dev)
 		}
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

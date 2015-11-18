Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycard.co.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zyyjr-0006EO-HM
 for barebox@lists.infradead.org; Wed, 18 Nov 2015 09:09:16 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 6593CA004EE
 for <barebox@lists.infradead.org>; Wed, 18 Nov 2015 10:09:18 +0100 (CET)
From: Stefan Christ <s.christ@phytec.de>
Date: Wed, 18 Nov 2015 10:08:44 +0100
Message-Id: <1447837725-21625-2-git-send-email-s.christ@phytec.de>
In-Reply-To: <1447837725-21625-1-git-send-email-s.christ@phytec.de>
References: <1447837725-21625-1-git-send-email-s.christ@phytec.de>
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
Subject: [PATCH v2 2/3] net: fec: implement dtb property phy-reset-duration
To: barebox@lists.infradead.org

Implement device tree property phy-reset-duration to adjust length of
phy reset.

Signed-off-by: Stefan Christ <s.christ@phytec.de>
---
 drivers/net/fec_imx.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index f19d046..70087ad 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -654,6 +654,7 @@ static int fec_probe(struct device_d *dev)
 	int ret;
 	enum fec_type type;
 	int phy_reset;
+	u32 msec = 1;
 
 	ret = dev_get_drvdata(dev, (const void **)&type);
 	if (ret)
@@ -684,6 +685,8 @@ static int fec_probe(struct device_d *dev)
 
 	phy_reset = of_get_named_gpio(dev->device_node, "phy-reset-gpios", 0);
 	if (gpio_is_valid(phy_reset)) {
+		of_property_read_u32(dev->device_node, "phy-reset-duration", &msec);
+
 		ret = gpio_request(phy_reset, "phy-reset");
 		if (ret)
 			goto err_free;
@@ -692,7 +695,7 @@ static int fec_probe(struct device_d *dev)
 		if (ret)
 			goto err_free;
 
-		mdelay(1);
+		mdelay(msec);
 		gpio_set_value(phy_reset, 1);
 	}
 
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

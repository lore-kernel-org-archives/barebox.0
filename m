Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.4.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dIYIi-0006Vx-Ev
 for barebox@lists.infradead.org; Wed, 07 Jun 2017 10:34:59 +0000
Received: from birne.hi.pengutronix.de ([2001:67c:670:100:feaa:14ff:fe28:e6f5]
 helo=birne) by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.84_2)
 (envelope-from <mgr@pengutronix.de>) id 1dIYIE-0000ke-Bc
 for barebox@lists.infradead.org; Wed, 07 Jun 2017 12:34:26 +0200
Received: from mgr by birne with local (Exim 4.84_2)
 (envelope-from <mgr@pengutronix.de>) id 1dIYIE-0001FT-43
 for barebox@lists.infradead.org; Wed, 07 Jun 2017 12:34:26 +0200
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Wed,  7 Jun 2017 12:34:21 +0200
Message-Id: <20170607103422.4673-4-m.grzeschik@pengutronix.de>
In-Reply-To: <20170607103422.4673-1-m.grzeschik@pengutronix.de>
References: <20170607103422.4673-1-m.grzeschik@pengutronix.de>
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
Subject: [PATCH v3 3/4] i.MX: fec: add post PHY reset delay DT property
To: barebox@lists.infradead.org

Some PHY require to wait for a bit after the reset GPIO has been
toggled. This adds support for the DT property `phy-reset-post-delay`
which gives the delay in milliseconds to wait after reset.

If the DT property is not given, no delay is observed. Post reset
delay greater than 1000ms are invalid.

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
 drivers/net/fec_imx.c | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index 8cf7c4fbda..d506fd64f1 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -743,7 +743,7 @@ static int fec_probe(struct device_d *dev)
 	int ret;
 	enum fec_type type;
 	int phy_reset;
-	u32 msec = 1;
+	u32 msec = 1, phy_post_delay = 0;
 	u64 start;
 
 	ret = dev_get_drvdata(dev, (const void **)&type);
@@ -781,6 +781,11 @@ static int fec_probe(struct device_d *dev)
 	phy_reset = of_get_named_gpio(dev->device_node, "phy-reset-gpios", 0);
 	if (gpio_is_valid(phy_reset)) {
 		of_property_read_u32(dev->device_node, "phy-reset-duration", &msec);
+		of_property_read_u32(dev->device_node, "phy-reset-post-delay",
+				     &phy_post_delay);
+		/* valid reset duration should be less than 1s */
+		if (phy_post_delay > 1000)
+			goto release_res;
 
 		ret = gpio_request(phy_reset, "phy-reset");
 		if (ret)
@@ -792,6 +797,9 @@ static int fec_probe(struct device_d *dev)
 
 		mdelay(msec);
 		gpio_set_value(phy_reset, 1);
+
+		if (phy_post_delay)
+			mdelay(phy_post_delay);
 	}
 
 	/* Reset chip. */
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

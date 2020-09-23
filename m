Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kL0YW-0002SC-QH
 for barebox@lists.infradead.org; Wed, 23 Sep 2020 08:55:17 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 23 Sep 2020 10:55:14 +0200
Message-Id: <20200923085514.23231-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] usb: dwc3: Whitespace cleanup
To: Barebox List <barebox@lists.infradead.org>

Replace spaces with tabs.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/dwc3/dwc3-of-simple.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/usb/dwc3/dwc3-of-simple.c b/drivers/usb/dwc3/dwc3-of-simple.c
index e58d9f95fe..a0aab4f114 100644
--- a/drivers/usb/dwc3/dwc3-of-simple.c
+++ b/drivers/usb/dwc3/dwc3-of-simple.c
@@ -70,7 +70,7 @@ static int dwc3_of_simple_probe(struct device_d *dev)
 	if (!simple)
 		return -ENOMEM;
 
-        dev->priv = simple;
+	dev->priv = simple;
 	simple->dev = dev;
 
 	ret = dwc3_of_simple_clk_init(simple, of_count_phandle_with_args(np,
@@ -78,7 +78,7 @@ static int dwc3_of_simple_probe(struct device_d *dev)
 	if (ret)
 		return ret;
 
-        ret = of_platform_populate(np, NULL, dev);
+	ret = of_platform_populate(np, NULL, dev);
 	if (ret) {
 		for (i = 0; i < simple->num_clocks; i++) {
 			clk_disable(simple->clks[i]);
@@ -87,7 +87,7 @@ static int dwc3_of_simple_probe(struct device_d *dev)
 		return ret;
 	}
 
-        return 0;
+	return 0;
 }
 
 static void dwc3_of_simple_remove(struct device_d *dev)
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

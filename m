Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cj5IN-00048W-90
 for barebox@lists.infradead.org; Wed, 01 Mar 2017 14:32:08 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.84_2)
 (envelope-from <l.stach@pengutronix.de>) id 1cj5I1-0005ON-VN
 for barebox@lists.infradead.org; Wed, 01 Mar 2017 15:31:37 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Wed,  1 Mar 2017 15:31:33 +0100
Message-Id: <20170301143137.11570-5-l.stach@pengutronix.de>
In-Reply-To: <20170301143137.11570-1-l.stach@pengutronix.de>
References: <20170301143137.11570-1-l.stach@pengutronix.de>
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
Subject: [PATCH 5/9] clocksource: bcm2835: use clock-frequency property when
 available
To: barebox@lists.infradead.org

From: Enrico Joerns <ejo@pengutronix.de>

If the clock frequency is given by a DT property, use this and don't
try to use the clock handle.

Signed-off-by: Enrico Joerns <ejo@pengutronix.de>
Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
lst: reworked to fall back gracefully
---
 drivers/clocksource/bcm2835.c | 35 ++++++++++++++++++++++-------------
 1 file changed, 22 insertions(+), 13 deletions(-)

diff --git a/drivers/clocksource/bcm2835.c b/drivers/clocksource/bcm2835.c
index b5831d5f107b..9130a4b14f9a 100644
--- a/drivers/clocksource/bcm2835.c
+++ b/drivers/clocksource/bcm2835.c
@@ -44,24 +44,33 @@ static int bcm2835_cs_probe(struct device_d *dev)
 {
 	struct resource *iores;
 	static struct clk *stc_clk;
-	u32 rate;
+	u32 rate = 0;
 	int ret;
 
-	stc_clk = clk_get(dev, NULL);
-	if (IS_ERR(stc_clk)) {
-		ret = PTR_ERR(stc_clk);
-		dev_err(dev, "clock not found: %d\n", ret);
-		return ret;
-	}
+	/* try to read rate from DT property first */
+	if (IS_ENABLED(CONFIG_OFTREE))
+		of_property_read_u32(dev->device_node, "clock-frequency",
+				     &rate);
+
+	/* if rate is still empty, try to get rate from clk */
+	if (!rate) {
+		stc_clk = clk_get(dev, NULL);
+		if (IS_ERR(stc_clk)) {
+			ret = PTR_ERR(stc_clk);
+			dev_err(dev, "clock not found: %d\n", ret);
+			return ret;
+		}
+
+		ret = clk_enable(stc_clk);
+		if (ret) {
+			dev_err(dev, "clock failed to enable: %d\n", ret);
+			clk_put(stc_clk);
+			return ret;
+		}
 
-	ret = clk_enable(stc_clk);
-	if (ret) {
-		dev_err(dev, "clock failed to enable: %d\n", ret);
-		clk_put(stc_clk);
-		return ret;
+		rate = clk_get_rate(stc_clk);
 	}
 
-	rate = clk_get_rate(stc_clk);
 	iores = dev_request_mem_resource(dev, 0);
 	if (IS_ERR(iores))
 		return PTR_ERR(iores);
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

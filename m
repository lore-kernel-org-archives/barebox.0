Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kL0h6-0004BX-Sa
 for barebox@lists.infradead.org; Wed, 23 Sep 2020 09:04:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 23 Sep 2020 11:03:58 +0200
Message-Id: <20200923090358.26942-2-s.hauer@pengutronix.de>
In-Reply-To: <20200923090358.26942-1-s.hauer@pengutronix.de>
References: <20200923090358.26942-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] usb: dwc3-of-simple: Use clk_bulk API
To: Barebox List <barebox@lists.infradead.org>

Use clk_bulk_get_all() to retrieve all clocks rather than open code
this. Also actually enable the clocks, previously they had been disabled
in the error path, but never enabled before. Also this fixes a memory
corruption: The driver populated an array of clks, but only allocated
space for a single entry.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/dwc3/dwc3-of-simple.c | 58 ++++++-------------------------
 1 file changed, 10 insertions(+), 48 deletions(-)

diff --git a/drivers/usb/dwc3/dwc3-of-simple.c b/drivers/usb/dwc3/dwc3-of-simple.c
index a0aab4f114..ac16d22624 100644
--- a/drivers/usb/dwc3/dwc3-of-simple.c
+++ b/drivers/usb/dwc3/dwc3-of-simple.c
@@ -21,50 +21,16 @@
 
 struct dwc3_of_simple {
 	struct device_d		*dev;
-	struct clk		**clks;
+	struct clk_bulk_data	*clks;
 	int			num_clocks;
 };
 
-static int dwc3_of_simple_clk_init(struct dwc3_of_simple *simple, int count)
-{
-	struct device_d		*dev = simple->dev;
-	struct device_node	*np = dev->device_node;
-	int			i;
-
-	simple->num_clocks = count;
-
-	if (!count)
-		return 0;
-
-	simple->clks = xzalloc(sizeof(struct clk *));
-	if (!simple->clks)
-		return -ENOMEM;
-
-	for (i = 0; i < simple->num_clocks; i++) {
-		struct clk	*clk;
-
-		clk = of_clk_get(np, i);
-		if (IS_ERR(clk)) {
-			while (--i >= 0) {
-				clk_disable(simple->clks[i]);
-				clk_put(simple->clks[i]);
-			}
-			return PTR_ERR(clk);
-		}
-
-		simple->clks[i] = clk;
-	}
-
-	return 0;
-}
-
 static int dwc3_of_simple_probe(struct device_d *dev)
 {
 	struct dwc3_of_simple	*simple;
 	struct device_node	*np = dev->device_node;
 
 	int			ret;
-	int			i;
 
 	simple = xzalloc(sizeof(*simple));
 	if (!simple)
@@ -73,17 +39,18 @@ static int dwc3_of_simple_probe(struct device_d *dev)
 	dev->priv = simple;
 	simple->dev = dev;
 
-	ret = dwc3_of_simple_clk_init(simple, of_count_phandle_with_args(np,
-						"clocks", "#clock-cells"));
+	ret = clk_bulk_get_all(simple->dev, &simple->clks);
+	if (ret < 0)
+		return ret;
+
+	simple->num_clocks = ret;
+	ret = clk_bulk_enable(simple->num_clocks, simple->clks);
 	if (ret)
 		return ret;
 
-	ret = of_platform_populate(np, NULL, dev);
+        ret = of_platform_populate(np, NULL, dev);
 	if (ret) {
-		for (i = 0; i < simple->num_clocks; i++) {
-			clk_disable(simple->clks[i]);
-			clk_put(simple->clks[i]);
-		}
+		clk_bulk_disable(simple->num_clocks, simple->clks);
 		return ret;
 	}
 
@@ -93,13 +60,8 @@ static int dwc3_of_simple_probe(struct device_d *dev)
 static void dwc3_of_simple_remove(struct device_d *dev)
 {
 	struct dwc3_of_simple	*simple = dev->priv;
-	int			i;
 
-	for (i = 0; i < simple->num_clocks; i++) {
-		clk_disable(simple->clks[i]);
-		clk_put(simple->clks[i]);
-	}
-	simple->num_clocks = 0;
+	clk_bulk_disable(simple->num_clocks, simple->clks);
 }
 
 static const struct of_device_id of_dwc3_simple_match[] = {
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

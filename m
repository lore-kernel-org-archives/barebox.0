Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X1WNz-0002CQ-FZ
 for barebox@lists.infradead.org; Mon, 30 Jun 2014 07:52:24 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon, 30 Jun 2014 09:51:56 +0200
Message-Id: <1404114716-27533-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH] regulator: fixed: add always-on property
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Support the "regulator-always-on" property for fixed regulators.
The regulator gets enabled on probe and subsequent disable calls are
ignored.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 drivers/regulator/fixed.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/regulator/fixed.c b/drivers/regulator/fixed.c
index 7e64919..2515d3e 100644
--- a/drivers/regulator/fixed.c
+++ b/drivers/regulator/fixed.c
@@ -27,6 +27,7 @@
 struct regulator_fixed {
 	int gpio;
 	int active_low;
+	int always_on;
 	struct regulator_dev rdev;
 };
 
@@ -44,6 +45,9 @@ static int regulator_fixed_disable(struct regulator_dev *rdev)
 {
 	struct regulator_fixed *fix = container_of(rdev, struct regulator_fixed, rdev);
 
+	if (fix->always_on)
+		return 0;
+
 	if (!gpio_is_valid(fix->gpio))
 		return 0;
 
@@ -79,6 +83,11 @@ static int regulator_fixed_probe(struct device_d *dev)
 
 	fix->rdev.ops = &fixed_ops;
 
+	if (of_find_property(dev->device_node, "regulator-always-on", NULL)) {
+		fix->always_on = 1;
+		regulator_fixed_enable(&fix->rdev);
+	}
+
 	ret = of_regulator_register(&fix->rdev, dev->device_node);
 	if (ret)
 		return ret;
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

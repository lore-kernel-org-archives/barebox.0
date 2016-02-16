Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aVdeK-0005fW-6O
 for barebox@lists.infradead.org; Tue, 16 Feb 2016 11:18:34 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 16 Feb 2016 12:18:07 +0100
Message-Id: <1455621487-12670-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] regulator: fixed: Init gpio properly
To: Barebox List <barebox@lists.infradead.org>

gpio has to be initialized with an invalid gpio number. 0 is a valid
number and it will be requested and used by the driver.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/regulator/fixed.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/regulator/fixed.c b/drivers/regulator/fixed.c
index 2515d3e..87554d2 100644
--- a/drivers/regulator/fixed.c
+++ b/drivers/regulator/fixed.c
@@ -69,6 +69,7 @@ static int regulator_fixed_probe(struct device_d *dev)
 		return -EINVAL;
 
 	fix = xzalloc(sizeof(*fix));
+	fix->gpio = -EINVAL;
 
 	if (of_get_property(dev->device_node, "gpio", NULL)) {
 		fix->gpio = of_get_named_gpio_flags(dev->device_node, "gpio", 0, &gpioflags);
-- 
2.7.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

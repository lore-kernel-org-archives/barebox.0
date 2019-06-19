Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdWHy-0004Yj-JI
 for barebox@lists.infradead.org; Wed, 19 Jun 2019 08:49:55 +0000
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Wed, 19 Jun 2019 10:49:48 +0200
Message-Id: <20190619084948.1307-1-m.felsch@pengutronix.de>
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
Subject: [PATCH] i2c: gpio: fix sda/scl-gpios property support
To: barebox@lists.infradead.org

Fix checking the correct pins introduced by commit 5a17fc5863 ("i2c: gpio:
add sda/scl-gpios property support").

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/i2c/busses/i2c-gpio.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/i2c/busses/i2c-gpio.c b/drivers/i2c/busses/i2c-gpio.c
index 9508adab06..5ab43fe935 100644
--- a/drivers/i2c/busses/i2c-gpio.c
+++ b/drivers/i2c/busses/i2c-gpio.c
@@ -97,7 +97,7 @@ static int of_i2c_gpio_probe(struct device_node *np,
 	pdata->sda_pin = of_get_named_gpio_flags(np, "sda-gpios", 0, NULL);
 	pdata->scl_pin = of_get_named_gpio_flags(np, "scl-gpios", 0, NULL);
 
-	if ((!gpio_is_valid(pdata->sda_pin) || !gpio_is_valid(pdata->sda_pin))
+	if ((!gpio_is_valid(pdata->sda_pin) || !gpio_is_valid(pdata->scl_pin))
 	    && (of_gpio_count(np) >= 2)) {
 		/* Note: The gpios property is marked as deprecated */
 		ret = of_get_gpio(np, 0);
@@ -111,7 +111,7 @@ static int of_i2c_gpio_probe(struct device_node *np,
 		pdata->scl_pin = ret;
 	}
 
-	if (!gpio_is_valid(pdata->sda_pin) || !gpio_is_valid(pdata->sda_pin))
+	if (!gpio_is_valid(pdata->sda_pin) || !gpio_is_valid(pdata->scl_pin))
 		return -ENODEV;
 
 	of_property_read_u32(np, "i2c-gpio,delay-us", &pdata->udelay);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

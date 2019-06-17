Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcoRg-0002IR-OC
 for barebox@lists.infradead.org; Mon, 17 Jun 2019 10:01:03 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.lab.pengutronix.de)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1hcoRf-0003U0-DP
 for barebox@lists.infradead.org; Mon, 17 Jun 2019 12:00:59 +0200
Received: from mfe by dude02.lab.pengutronix.de with local (Exim 4.89)
 (envelope-from <mfe@pengutronix.de>) id 1hcoRf-0001xz-38
 for barebox@lists.infradead.org; Mon, 17 Jun 2019 12:00:59 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Mon, 17 Jun 2019 12:00:56 +0200
Message-Id: <20190617100056.25331-5-m.felsch@pengutronix.de>
In-Reply-To: <20190617100056.25331-1-m.felsch@pengutronix.de>
References: <20190617100056.25331-1-m.felsch@pengutronix.de>
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
Subject: [PATCH 4/4] i2c: gpio: add sda/scl-gpios property support
To: barebox@lists.infradead.org

The gpios property is marked as deprecated since kernel 4.15 so we
should support the "new" mechanism too. The new mechanism has a higher
priority than the deprecated one.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/i2c/busses/i2c-gpio.c | 27 +++++++++++++++++----------
 1 file changed, 17 insertions(+), 10 deletions(-)

diff --git a/drivers/i2c/busses/i2c-gpio.c b/drivers/i2c/busses/i2c-gpio.c
index 708193344a..9508adab06 100644
--- a/drivers/i2c/busses/i2c-gpio.c
+++ b/drivers/i2c/busses/i2c-gpio.c
@@ -94,18 +94,25 @@ static int of_i2c_gpio_probe(struct device_node *np,
 	if (!IS_ENABLED(CONFIG_OFDEVICE))
 		return -ENODEV;
 
-	if (of_gpio_count(np) < 2)
-		return -ENODEV;
+	pdata->sda_pin = of_get_named_gpio_flags(np, "sda-gpios", 0, NULL);
+	pdata->scl_pin = of_get_named_gpio_flags(np, "scl-gpios", 0, NULL);
+
+	if ((!gpio_is_valid(pdata->sda_pin) || !gpio_is_valid(pdata->sda_pin))
+	    && (of_gpio_count(np) >= 2)) {
+		/* Note: The gpios property is marked as deprecated */
+		ret = of_get_gpio(np, 0);
+		if (ret < 0)
+			return ret;
+		pdata->sda_pin = ret;
 
-	ret = of_get_gpio(np, 0);
-	if (ret < 0)
-		return ret;
-	pdata->sda_pin = ret;
+		ret = of_get_gpio(np, 1);
+		if (ret < 0)
+			return ret;
+		pdata->scl_pin = ret;
+	}
 
-	ret = of_get_gpio(np, 1);
-	if (ret < 0)
-		return ret;
-	pdata->scl_pin = ret;
+	if (!gpio_is_valid(pdata->sda_pin) || !gpio_is_valid(pdata->sda_pin))
+		return -ENODEV;
 
 	of_property_read_u32(np, "i2c-gpio,delay-us", &pdata->udelay);
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

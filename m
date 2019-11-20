Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXIvD-00024H-4m
 for barebox@lists.infradead.org; Wed, 20 Nov 2019 05:53:00 +0000
Received: by mail-lf1-x143.google.com with SMTP id y19so171177lfl.9
 for <barebox@lists.infradead.org>; Tue, 19 Nov 2019 21:52:58 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed, 20 Nov 2019 08:52:50 +0300
Message-Id: <20191120055250.21711-1-antonynpavlov@gmail.com>
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
Subject: [PATCH] i2c: gpio: use of_get_named_gpio() instead of
 of_get_named_gpio_flags()
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/i2c/busses/i2c-gpio.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/i2c/busses/i2c-gpio.c b/drivers/i2c/busses/i2c-gpio.c
index 5ab43fe935..7ccdb0b222 100644
--- a/drivers/i2c/busses/i2c-gpio.c
+++ b/drivers/i2c/busses/i2c-gpio.c
@@ -94,8 +94,8 @@ static int of_i2c_gpio_probe(struct device_node *np,
 	if (!IS_ENABLED(CONFIG_OFDEVICE))
 		return -ENODEV;
 
-	pdata->sda_pin = of_get_named_gpio_flags(np, "sda-gpios", 0, NULL);
-	pdata->scl_pin = of_get_named_gpio_flags(np, "scl-gpios", 0, NULL);
+	pdata->sda_pin = of_get_named_gpio(np, "sda-gpios", 0);
+	pdata->scl_pin = of_get_named_gpio(np, "scl-gpios", 0);
 
 	if ((!gpio_is_valid(pdata->sda_pin) || !gpio_is_valid(pdata->scl_pin))
 	    && (of_gpio_count(np) >= 2)) {
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gD5mk-0006vU-4w
 for barebox@lists.infradead.org; Thu, 18 Oct 2018 10:44:14 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <mfe@pengutronix.de>) id 1gD5mi-0000Ax-J4
 for barebox@lists.infradead.org; Thu, 18 Oct 2018 12:44:08 +0200
Received: from mfe by dude.hi.pengutronix.de with local (Exim 4.91)
 (envelope-from <mfe@pengutronix.de>) id 1gD5mi-0007oQ-Bc
 for barebox@lists.infradead.org; Thu, 18 Oct 2018 12:44:08 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Thu, 18 Oct 2018 12:43:46 +0200
Message-Id: <20181018104349.26332-2-m.felsch@pengutronix.de>
In-Reply-To: <20181018104349.26332-1-m.felsch@pengutronix.de>
References: <20181018104349.26332-1-m.felsch@pengutronix.de>
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
Subject: [PATCH 1/4] gpiolib: fix of_gpio_hog error handling
To: barebox@lists.infradead.org

Currently the error handling of gpio_get_num() checks the return value
of the previous of_property_read_u32_index() which has it's own error
check. Fix it by using the correct return value variable.

Fixes: 37e6bee7e5 ("gpiolib: Add support for GPIO "hog" nodes")
Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/gpio/gpiolib.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
index b83a27de7d..4e0bf73742 100644
--- a/drivers/gpio/gpiolib.c
+++ b/drivers/gpio/gpiolib.c
@@ -352,12 +352,12 @@ static int of_hog_gpio(struct device_node *np, struct gpio_chip *chip,
 		flags |= GPIOF_ACTIVE_LOW;
 
 	gpio = gpio_get_num(chip->dev, gpio_num);
-	if (ret == -EPROBE_DEFER)
-		return ret;
+	if (gpio == -EPROBE_DEFER)
+		return gpio;
 
-	if (ret < 0) {
+	if (gpio < 0) {
 		dev_err(chip->dev, "unable to get gpio %u\n", gpio_num);
-		return ret;
+		return gpio;
 	}
 
 
-- 
2.19.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

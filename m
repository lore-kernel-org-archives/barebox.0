Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gD5mk-0006vW-4x
 for barebox@lists.infradead.org; Thu, 18 Oct 2018 10:44:11 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <mfe@pengutronix.de>) id 1gD5mi-0000Ay-KG
 for barebox@lists.infradead.org; Thu, 18 Oct 2018 12:44:08 +0200
Received: from mfe by dude.hi.pengutronix.de with local (Exim 4.91)
 (envelope-from <mfe@pengutronix.de>) id 1gD5mi-0007oS-C1
 for barebox@lists.infradead.org; Thu, 18 Oct 2018 12:44:08 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Thu, 18 Oct 2018 12:43:47 +0200
Message-Id: <20181018104349.26332-3-m.felsch@pengutronix.de>
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
Subject: [PATCH 2/4] gpiolib: fix of_hog_gpio gpio label assignment
To: barebox@lists.infradead.org

Current the label is retrieved by the line-name property but this is a
optional property. In case of a missing line-name property the label is
NULL. As the binding documentation told, the gpio-label must be set to
the device-node name in case of missing line-name property.

Fixes: 37e6bee7e5 ("gpiolib: Add support for GPIO "hog" nodes")
Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/gpio/gpiolib.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
index 4e0bf73742..982bec0b69 100644
--- a/drivers/gpio/gpiolib.c
+++ b/drivers/gpio/gpiolib.c
@@ -382,7 +382,10 @@ static int of_hog_gpio(struct device_node *np, struct gpio_chip *chip,
 	else
 		return -EINVAL;
 
-	of_property_read_string(np, "line-name", &name);
+	/* The line-name is optional and if not present the node name is used */
+	ret = of_property_read_string(np, "line-name", &name);
+	if (ret < 0)
+		name = np->name;
 
 	return gpio_request_one(gpio, flags, name);
 }
-- 
2.19.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

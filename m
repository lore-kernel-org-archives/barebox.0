Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f179.google.com ([209.85.217.179])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XApaz-00082n-U9
 for barebox@lists.infradead.org; Sat, 26 Jul 2014 00:12:26 +0000
Received: by mail-lb0-f179.google.com with SMTP id v6so3860492lbi.24
 for <barebox@lists.infradead.org>; Fri, 25 Jul 2014 17:11:11 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sat, 26 Jul 2014 04:11:04 +0400
Message-Id: <1406333464-16863-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC] led: try to get LED's label from the 'label' property
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/led/led-gpio.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/led/led-gpio.c b/drivers/led/led-gpio.c
index 7bb3b49..31ae627 100644
--- a/drivers/led/led-gpio.c
+++ b/drivers/led/led-gpio.c
@@ -212,7 +212,9 @@ static int led_gpio_of_probe(struct device_d *dev)
 			continue;
 
 		gled = xzalloc(sizeof(*gled));
-		gled->led.name = xstrdup(child->name);
+		gled->led.name = of_get_property(child, "label", NULL);
+		if (!gled->led.name)
+			gled->led.name = xstrdup(child->name);
 		gled->gpio = gpio;
 		gled->active_low = (flags & OF_GPIO_ACTIVE_LOW) ? 1 : 0;
 
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

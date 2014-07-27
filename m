Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22d.google.com ([2a00:1450:4010:c03::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XBJwO-0004LP-Re
 for barebox@lists.infradead.org; Sun, 27 Jul 2014 08:36:28 +0000
Received: by mail-la0-f45.google.com with SMTP id ty20so4388790lab.32
 for <barebox@lists.infradead.org>; Sun, 27 Jul 2014 01:36:02 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sun, 27 Jul 2014 12:35:52 +0400
Message-Id: <1406450152-23298-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] led: try to get LED's label from the 'label' property
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/led/led-gpio.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/led/led-gpio.c b/drivers/led/led-gpio.c
index 7bb3b49..cddac08 100644
--- a/drivers/led/led-gpio.c
+++ b/drivers/led/led-gpio.c
@@ -212,7 +212,9 @@ static int led_gpio_of_probe(struct device_d *dev)
 			continue;
 
 		gled = xzalloc(sizeof(*gled));
-		gled->led.name = xstrdup(child->name);
+		gled->led.name = xstrdup(of_get_property(child, "label", NULL));
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

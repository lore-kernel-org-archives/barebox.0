Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x233.google.com ([2a00:1450:4010:c04::233])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XC05w-0006mV-TB
 for barebox@lists.infradead.org; Tue, 29 Jul 2014 05:37:05 +0000
Received: by mail-lb0-f179.google.com with SMTP id v6so6430315lbi.24
 for <barebox@lists.infradead.org>; Mon, 28 Jul 2014 22:36:43 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue, 29 Jul 2014 09:36:36 +0400
Message-Id: <1406612196-15297-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH v3] led: try to get LED's label from the 'label' property
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 Documentation/devicetree/bindings/leds/common.rst | 2 ++
 drivers/led/led-gpio.c                            | 6 +++++-
 2 files changed, 7 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/leds/common.rst b/Documentation/devicetree/bindings/leds/common.rst
index c1fd1ab..1f5ae42 100644
--- a/Documentation/devicetree/bindings/leds/common.rst
+++ b/Documentation/devicetree/bindings/leds/common.rst
@@ -8,3 +8,5 @@ Common leds properties
     * ``panic`` - LED turns on when barebox panics
     * ``net`` - LED indicates network activity
 
+* ``label``: The label for this LED. If omitted, the label is taken
+  from the node name (excluding the unit address).
diff --git a/drivers/led/led-gpio.c b/drivers/led/led-gpio.c
index 7bb3b49..a1a6617 100644
--- a/drivers/led/led-gpio.c
+++ b/drivers/led/led-gpio.c
@@ -206,13 +206,17 @@ static int led_gpio_of_probe(struct device_d *dev)
 		struct gpio_led *gled;
 		enum of_gpio_flags flags;
 		int gpio;
+		const char *label;
 
 		gpio = of_get_named_gpio_flags(child, "gpios", 0, &flags);
 		if (gpio < 0)
 			continue;
 
 		gled = xzalloc(sizeof(*gled));
-		gled->led.name = xstrdup(child->name);
+		if (of_property_read_string(child, "label", &label))
+			label = child->name;
+		gled->led.name = xstrdup(label);
+
 		gled->gpio = gpio;
 		gled->active_low = (flags & OF_GPIO_ACTIVE_LOW) ? 1 : 0;
 
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-x232.google.com ([2a00:1450:400c:c03::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YNLL9-0007uC-Bm
 for barebox@lists.infradead.org; Mon, 16 Feb 2015 13:03:59 +0000
Received: by mail-we0-f178.google.com with SMTP id w62so29028438wes.9
 for <barebox@lists.infradead.org>; Mon, 16 Feb 2015 05:03:33 -0800 (PST)
From: h.feurstein@gmail.com
Date: Mon, 16 Feb 2015 14:03:28 +0100
Message-Id: <1424091808-23455-1-git-send-email-h.feurstein@gmail.com>
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
Subject: [PATCH] led: gpio: add support for default-state dt-property
To: barebox@lists.infradead.org
Cc: Hubert Feurstein <hubert.feurstein@deto.at>

From: Hubert Feurstein <hubert.feurstein@deto.at>

This patch adds support for the default-state device tree property.

Signed-off-by: Hubert Feurstein <h.feurstein@gmail.com>
---
 drivers/led/led-gpio.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/led/led-gpio.c b/drivers/led/led-gpio.c
index a1a6617..69ad7e7 100644
--- a/drivers/led/led-gpio.c
+++ b/drivers/led/led-gpio.c
@@ -204,6 +204,7 @@ static int led_gpio_of_probe(struct device_d *dev)
 
 	for_each_child_of_node(dev->device_node, child) {
 		struct gpio_led *gled;
+		const char *default_state;
 		enum of_gpio_flags flags;
 		int gpio;
 		const char *label;
@@ -225,6 +226,18 @@ static int led_gpio_of_probe(struct device_d *dev)
 
 		led_gpio_register(gled);
 		led_of_parse_trigger(&gled->led, child);
+
+		if (!of_property_read_string(child, "default-state", &default_state)) {
+			int state = -1;
+
+			if (!strcmp(default_state, "on"))
+				state = 1;
+			else if (!strcmp(default_state, "off"))
+				state = 0;
+
+			if (state >= 0)
+				led_gpio_set(&gled->led, state ^ gled->active_low);
+		}
 	}
 
 	return 0;
-- 
2.3.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

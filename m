Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x232.google.com ([2a00:1450:400c:c00::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YT5yy-0003zs-Gd
 for barebox@lists.infradead.org; Wed, 04 Mar 2015 09:52:49 +0000
Received: by wggx12 with SMTP id x12so45424086wgg.6
 for <barebox@lists.infradead.org>; Wed, 04 Mar 2015 01:52:24 -0800 (PST)
From: Hubert Feurstein <h.feurstein@gmail.com>
Date: Wed,  4 Mar 2015 10:52:04 +0100
Message-Id: <1425462724-10581-1-git-send-email-h.feurstein@gmail.com>
In-Reply-To: <20150217075906.GP12209@pengutronix.de>
References: <20150217075906.GP12209@pengutronix.de>
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
Subject: [PATCH v2] led: gpio: add support for default-state dt-property
To: barebox@lists.infradead.org

This patch adds support for the default-state device tree property.

Signed-off-by: Hubert Feurstein <h.feurstein@gmail.com>
---
 drivers/led/led-gpio.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/led/led-gpio.c b/drivers/led/led-gpio.c
index a1a6617..ae3f13f 100644
--- a/drivers/led/led-gpio.c
+++ b/drivers/led/led-gpio.c
@@ -204,6 +204,7 @@ static int led_gpio_of_probe(struct device_d *dev)
 
 	for_each_child_of_node(dev->device_node, child) {
 		struct gpio_led *gled;
+		const char *default_state;
 		enum of_gpio_flags flags;
 		int gpio;
 		const char *label;
@@ -225,6 +226,13 @@ static int led_gpio_of_probe(struct device_d *dev)
 
 		led_gpio_register(gled);
 		led_of_parse_trigger(&gled->led, child);
+
+		if (!of_property_read_string(child, "default-state", &default_state)) {
+			if (!strcmp(default_state, "on"))
+				led_gpio_set(&gled->led, 1);
+			else if (!strcmp(default_state, "off"))
+				led_gpio_set(&gled->led, 0);
+		}
 	}
 
 	return 0;
-- 
2.3.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

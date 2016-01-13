Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aJNUo-0004JF-1A
 for barebox@lists.infradead.org; Wed, 13 Jan 2016 15:38:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 13 Jan 2016 16:37:36 +0100
Message-Id: <1452699456-1025-16-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1452699456-1025-1-git-send-email-s.hauer@pengutronix.de>
References: <1452699456-1025-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 15/15] input: gpio-keys: convert to input framework
To: Barebox List <barebox@lists.infradead.org>

To allow asking for the button states.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/input/gpio_keys.c | 64 +++++++++++++----------------------------------
 1 file changed, 17 insertions(+), 47 deletions(-)

diff --git a/drivers/input/gpio_keys.c b/drivers/input/gpio_keys.c
index acb9e07..38c0f11 100644
--- a/drivers/input/gpio_keys.c
+++ b/drivers/input/gpio_keys.c
@@ -12,7 +12,7 @@
 #include <poller.h>
 #include <gpio.h>
 #include <of_gpio.h>
-#include <input/keyboard.h>
+#include <input/input.h>
 
 struct gpio_key {
 	int code;
@@ -30,12 +30,9 @@ struct gpio_keys {
 	struct gpio_key *buttons;
 	int nbuttons;
 
-	/* optional */
-	int fifo_size;
-
-	struct kfifo *recv_fifo;
 	struct poller_struct poller;
-	struct console_device cdev;
+	struct input_device input;
+	struct device_d *dev;
 };
 
 static inline struct gpio_keys *
@@ -44,12 +41,6 @@ poller_to_gk_pdata(struct poller_struct *poller)
 	return container_of(poller, struct gpio_keys, poller);
 }
 
-static inline struct gpio_keys *
-cdev_to_gk_pdata(struct console_device *cdev)
-{
-	return container_of(cdev, struct gpio_keys, cdev);
-}
-
 static void gpio_key_poller(struct poller_struct *poller)
 {
 	struct gpio_keys *gk = poller_to_gk_pdata(poller);
@@ -65,33 +56,17 @@ static void gpio_key_poller(struct poller_struct *poller)
 			continue;
 
 		if (val != gb->previous_state) {
+			int pressed = val != gb->active_low;
+
 			gb->debounce_start = get_time_ns();
-			if (val != gb->active_low) {
-				kfifo_put(gk->recv_fifo, (u_char*)&gb->code, sizeof(int));
-				debug("pressed gpio(%d) as %d\n", gb->gpio, gb->code);
-			}
+			input_report_key_event(&gk->input, gb->code, pressed);
+			dev_dbg(gk->dev, "%s gpio(%d) as %d\n",
+				pressed ? "pressed" : "released", gb->gpio, gb->code);
 			gb->previous_state = val;
 		}
 	}
 }
 
-static int gpio_keys_tstc(struct console_device *cdev)
-{
-	struct gpio_keys *gk = cdev_to_gk_pdata(cdev);
-
-	return (kfifo_len(gk->recv_fifo) == 0) ? 0 : 1;
-}
-
-static int gpio_keys_getc(struct console_device *cdev)
-{
-	int code = 0;
-	struct gpio_keys *gk = cdev_to_gk_pdata(cdev);
-
-	kfifo_get(gk->recv_fifo, (u_char*)&code, sizeof(int));
-
-	return keycode_bb_keys[code];
-}
-
 static int gpio_keys_probe_pdata(struct gpio_keys *gk, struct device_d *dev)
 {
 	struct gpio_keys_platform_data *pdata;
@@ -105,9 +80,6 @@ static int gpio_keys_probe_pdata(struct gpio_keys *gk, struct device_d *dev)
 		return -ENODEV;
 	}
 
-	if (pdata->fifo_size)
-		gk->fifo_size = pdata->fifo_size;
-
 	gk->buttons = xzalloc(pdata->nbuttons * sizeof(*gk->buttons));
 	gk->nbuttons = pdata->nbuttons;
 
@@ -163,11 +135,11 @@ static int gpio_keys_probe_dt(struct gpio_keys *gk, struct device_d *dev)
 static int __init gpio_keys_probe(struct device_d *dev)
 {
 	int ret, i, gpio;
-	struct console_device *cdev;
 	struct gpio_keys *gk;
 
 	gk = xzalloc(sizeof(*gk));
-	gk->fifo_size = 50;
+
+	gk->dev = dev;
 
 	if (dev->device_node)
 		ret = gpio_keys_probe_dt(gk, dev);
@@ -177,8 +149,6 @@ static int __init gpio_keys_probe(struct device_d *dev)
 	if (ret)
 		return ret;
 
-	gk->recv_fifo = kfifo_alloc(gk->fifo_size);
-
 	for (i = 0; i < gk->nbuttons; i++) {
 		gpio = gk->buttons[i].gpio;
 		ret = gpio_request(gpio, "gpio_keys");
@@ -192,15 +162,15 @@ static int __init gpio_keys_probe(struct device_d *dev)
 
 	gk->poller.func = gpio_key_poller;
 
-	cdev = &gk->cdev;
-	dev->type_data = cdev;
-	cdev->dev = dev;
-	cdev->tstc = gpio_keys_tstc;
-	cdev->getc = gpio_keys_getc;
+	ret = input_device_register(&gk->input);
+	if (ret)
+		return ret;
 
-	console_register(&gk->cdev);
+	ret = poller_register(&gk->poller);
+	if (ret)
+		return ret;
 
-	return poller_register(&gk->poller);
+	return 0;
 }
 
 static struct of_device_id key_gpio_of_ids[] = {
-- 
2.6.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

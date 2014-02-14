Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WEKrL-0004W9-Ab
 for barebox@lists.infradead.org; Fri, 14 Feb 2014 15:39:25 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 14 Feb 2014 16:38:52 +0100
Message-Id: <1392392334-20254-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1392392334-20254-1-git-send-email-s.hauer@pengutronix.de>
References: <1392392334-20254-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/4] input: gpio-keys: separate internal data from
 platform_data
To: barebox@lists.infradead.org

Do not abuse platform data for internal driver data, instead
use a separate struct for that.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/input/gpio_keys.c | 80 +++++++++++++++++++++++++++++++++--------------
 include/gpio_keys.h       |  7 -----
 2 files changed, 57 insertions(+), 30 deletions(-)

diff --git a/drivers/input/gpio_keys.c b/drivers/input/gpio_keys.c
index 18a29f0..418158f 100644
--- a/drivers/input/gpio_keys.c
+++ b/drivers/input/gpio_keys.c
@@ -12,31 +12,52 @@
 #include <poller.h>
 #include <gpio.h>
 
-static inline struct gpio_keys_platform_data *
+struct gpio_key {
+	int code;
+
+	int gpio;
+	int active_low;
+
+	int previous_state;
+};
+
+struct gpio_keys {
+	struct gpio_key *buttons;
+	int nbuttons;
+
+	/* optional */
+	int fifo_size;
+
+	struct kfifo *recv_fifo;
+	struct poller_struct poller;
+	struct console_device cdev;
+};
+
+static inline struct gpio_keys *
 poller_to_gk_pdata(struct poller_struct *poller)
 {
-	return container_of(poller, struct gpio_keys_platform_data, poller);
+	return container_of(poller, struct gpio_keys, poller);
 }
 
-static inline struct gpio_keys_platform_data *
+static inline struct gpio_keys *
 cdev_to_gk_pdata(struct console_device *cdev)
 {
-	return container_of(cdev, struct gpio_keys_platform_data, cdev);
+	return container_of(cdev, struct gpio_keys, cdev);
 }
 
 static void gpio_key_poller(struct poller_struct *poller)
 {
-	struct gpio_keys_platform_data *pdata = poller_to_gk_pdata(poller);
-	struct gpio_keys_button *gb;
+	struct gpio_keys *gk = poller_to_gk_pdata(poller);
+	struct gpio_key *gb;
 	int i, val;
 
-	for (i = 0; i < pdata->nbuttons; i++) {
+	for (i = 0; i < gk->nbuttons; i++) {
 
-		gb = &pdata->buttons[i];
+		gb = &gk->buttons[i];
 		val = gpio_get_value(gb->gpio);
 
 		if (val != gb->previous_state && val != gb->active_low) {
-			kfifo_put(pdata->recv_fifo, (u_char*)&gb->code, sizeof(int));
+			kfifo_put(gk->recv_fifo, (u_char*)&gb->code, sizeof(int));
 			debug("pressed gpio(%d) as %d\n", gb->gpio, gb->code);
 		}
 		gb->previous_state = val;
@@ -45,17 +66,17 @@ static void gpio_key_poller(struct poller_struct *poller)
 
 static int gpio_keys_tstc(struct console_device *cdev)
 {
-	struct gpio_keys_platform_data *pdata = cdev_to_gk_pdata(cdev);
+	struct gpio_keys *gk = cdev_to_gk_pdata(cdev);
 
-	return (kfifo_len(pdata->recv_fifo) == 0) ? 0 : 1;
+	return (kfifo_len(gk->recv_fifo) == 0) ? 0 : 1;
 }
 
 static int gpio_keys_getc(struct console_device *cdev)
 {
 	int code = 0;
-	struct gpio_keys_platform_data *pdata = cdev_to_gk_pdata(cdev);
+	struct gpio_keys *gk = cdev_to_gk_pdata(cdev);
 
-	kfifo_get(pdata->recv_fifo, (u_char*)&code, sizeof(int));
+	kfifo_get(gk->recv_fifo, (u_char*)&code, sizeof(int));
 	return code;
 }
 
@@ -64,6 +85,7 @@ static int __init gpio_keys_probe(struct device_d *dev)
 	int ret, i, gpio;
 	struct gpio_keys_platform_data *pdata;
 	struct console_device *cdev;
+	struct gpio_keys *gk;
 
 	pdata = dev->platform_data;
 
@@ -73,34 +95,46 @@ static int __init gpio_keys_probe(struct device_d *dev)
 		return -ENODEV;
 	}
 
-	if (!pdata->fifo_size)
-		pdata->fifo_size = 50;
+	gk = xzalloc(sizeof(*gk));
+
+	gk->fifo_size = 50;
+
+	if (pdata->fifo_size)
+		gk->fifo_size = pdata->fifo_size;
 
-	pdata->recv_fifo = kfifo_alloc(pdata->fifo_size);
+	gk->recv_fifo = kfifo_alloc(pdata->fifo_size);
+
+	gk->buttons = xzalloc(pdata->nbuttons * sizeof(*gk->buttons));
+	gk->nbuttons = pdata->nbuttons;
+
+	for (i = 0; i < gk->nbuttons; i++) {
+		gk->buttons[i].gpio = pdata->buttons[i].gpio;
+		gk->buttons[i].code = pdata->buttons[i].code;
+		gk->buttons[i].active_low = pdata->buttons[i].active_low;
+	}
 
 	for (i = 0; i < pdata->nbuttons; i++) {
-		gpio = pdata->buttons[i].gpio;
+		gpio = gk->buttons[i].gpio;
 		ret = gpio_request(gpio, "gpio_keys");
 		if (ret) {
 			pr_err("gpio_keys: (%d) can not be requested\n", gpio);
 			return ret;
 		}
 		gpio_direction_input(gpio);
-		pdata->buttons[i].previous_state =
-			pdata->buttons[i].active_low;
+		gk->buttons[i].previous_state = gk->buttons[i].active_low;
 	}
 
-	pdata->poller.func = gpio_key_poller;
+	gk->poller.func = gpio_key_poller;
 
-	cdev = &pdata->cdev;
+	cdev = &gk->cdev;
 	dev->type_data = cdev;
 	cdev->dev = dev;
 	cdev->tstc = gpio_keys_tstc;
 	cdev->getc = gpio_keys_getc;
 
-	console_register(&pdata->cdev);
+	console_register(&gk->cdev);
 
-	return poller_register(&pdata->poller);
+	return poller_register(&gk->poller);
 }
 
 static struct driver_d gpio_keys_driver = {
diff --git a/include/gpio_keys.h b/include/gpio_keys.h
index fc548fa..f4a22e1 100644
--- a/include/gpio_keys.h
+++ b/include/gpio_keys.h
@@ -10,9 +10,6 @@ struct gpio_keys_button {
 
 	int gpio;
 	int active_low;
-
-	/* internal */
-	int previous_state;
 };
 
 struct gpio_keys_platform_data {
@@ -21,10 +18,6 @@ struct gpio_keys_platform_data {
 
 	/* optional */
 	int fifo_size;
-
-	struct kfifo *recv_fifo;
-	struct poller_struct poller;
-	struct console_device cdev;
 };
 
 #endif
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

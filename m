Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRADf-0003F2-DL
 for barebox@lists.infradead.org; Wed, 22 Apr 2020 07:54:57 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 22 Apr 2020 09:54:42 +0200
Message-Id: <20200422075452.25226-2-s.hauer@pengutronix.de>
In-Reply-To: <20200422075452.25226-1-s.hauer@pengutronix.de>
References: <20200422075452.25226-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 01/11] poller: Give pollers a name
To: Barebox List <barebox@lists.infradead.org>
Cc: Edmund Henniges <eh@emlix.com>, =?UTF-8?q?Daniel=20Gl=C3=B6ckner?= <dg@emlix.com>

It helps debugging when pollers have a name, so give them one.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/poller.c                | 8 +++++---
 common/ratp/ratp.c             | 2 +-
 drivers/input/gpio_keys.c      | 2 +-
 drivers/input/imx_keypad.c     | 2 +-
 drivers/input/input.c          | 2 +-
 drivers/input/qt1070.c         | 2 +-
 drivers/input/twl6030_pwrbtn.c | 2 +-
 drivers/led/core.c             | 2 +-
 drivers/usb/gadget/udc-core.c  | 2 +-
 drivers/watchdog/wd_core.c     | 2 +-
 include/poller.h               | 5 +++--
 11 files changed, 17 insertions(+), 14 deletions(-)

diff --git a/common/poller.c b/common/poller.c
index 32795b641f..b1a2122f91 100644
--- a/common/poller.c
+++ b/common/poller.c
@@ -16,11 +16,12 @@
 static LIST_HEAD(poller_list);
 static int poller_active;
 
-int poller_register(struct poller_struct *poller)
+int poller_register(struct poller_struct *poller, const char *name)
 {
 	if (poller->registered)
 		return -EBUSY;
 
+	poller->name = xstrdup(name);
 	list_add_tail(&poller->list, &poller_list);
 	poller->registered = 1;
 
@@ -35,6 +36,7 @@ int poller_unregister(struct poller_struct *poller)
 
 	list_del(&poller->list);
 	poller->registered = 0;
+	free(poller->name);
 
 	return 0;
 }
@@ -92,12 +94,12 @@ int poller_call_async(struct poller_async *pa, uint64_t delay_ns,
 	return 0;
 }
 
-int poller_async_register(struct poller_async *pa)
+int poller_async_register(struct poller_async *pa, const char *name)
 {
 	pa->poller.func = poller_async_callback;
 	pa->active = 0;
 
-	return poller_register(&pa->poller);
+	return poller_register(&pa->poller, name);
 }
 
 int poller_async_unregister(struct poller_async *pa)
diff --git a/common/ratp/ratp.c b/common/ratp/ratp.c
index e84ad22167..9625a31b18 100644
--- a/common/ratp/ratp.c
+++ b/common/ratp/ratp.c
@@ -454,7 +454,7 @@ int barebox_ratp(struct console_device *cdev)
 	if (ret < 0)
 		goto out;
 
-	ret = poller_register(&ctx->poller);
+	ret = poller_register(&ctx->poller, "ratp");
 	if (ret)
 		goto out1;
 
diff --git a/drivers/input/gpio_keys.c b/drivers/input/gpio_keys.c
index 38c0f11535..11d598c402 100644
--- a/drivers/input/gpio_keys.c
+++ b/drivers/input/gpio_keys.c
@@ -166,7 +166,7 @@ static int __init gpio_keys_probe(struct device_d *dev)
 	if (ret)
 		return ret;
 
-	ret = poller_register(&gk->poller);
+	ret = poller_register(&gk->poller, dev_name(dev));
 	if (ret)
 		return ret;
 
diff --git a/drivers/input/imx_keypad.c b/drivers/input/imx_keypad.c
index 44ff9b7856..6757fac72b 100644
--- a/drivers/input/imx_keypad.c
+++ b/drivers/input/imx_keypad.c
@@ -410,7 +410,7 @@ static int __init imx_keypad_probe(struct device_d *dev)
 
 	keypad->poller.func = imx_keypad_check_for_events;
 
-	ret = poller_register(&keypad->poller);
+	ret = poller_register(&keypad->poller, dev_name(dev));
 	if (ret)
 		return ret;
 
diff --git a/drivers/input/input.c b/drivers/input/input.c
index 1e8f6e178e..bcc8667417 100644
--- a/drivers/input/input.c
+++ b/drivers/input/input.c
@@ -201,7 +201,7 @@ static int input_init(void)
 	ic->fifo = kfifo_alloc(32);
 	ic->notifier.notify = input_console_notify;
 	input_register_notfier(&ic->notifier);
-	poller_async_register(&ic->poller);
+	poller_async_register(&ic->poller, "input");
 
 	return console_register(&ic->console);
 }
diff --git a/drivers/input/qt1070.c b/drivers/input/qt1070.c
index 59acee5c39..9e1dcc57ee 100644
--- a/drivers/input/qt1070.c
+++ b/drivers/input/qt1070.c
@@ -269,7 +269,7 @@ static int qt1070_probe(struct device_d *dev)
 
 	console_register(&data->cdev);
 
-	ret = poller_register(&data->poller);
+	ret = poller_register(&data->poller, dev_name(dev));
 	if (ret)
 		goto err;
 
diff --git a/drivers/input/twl6030_pwrbtn.c b/drivers/input/twl6030_pwrbtn.c
index fc4c728778..481688b4a9 100644
--- a/drivers/input/twl6030_pwrbtn.c
+++ b/drivers/input/twl6030_pwrbtn.c
@@ -97,7 +97,7 @@ static int __init twl6030_pwrbtn_probe(struct device_d *dev)
 	idata->cdev.getc = twl6030_pwrbtn_getc;
 	console_register(&idata->cdev);
 
-	return poller_register(&idata->poller);
+	return poller_register(&idata->poller, dev_name(dev));
 }
 
 static struct driver_d twl6030_pwrbtn_driver = {
diff --git a/drivers/led/core.c b/drivers/led/core.c
index e727148a24..4cce5dfc97 100644
--- a/drivers/led/core.c
+++ b/drivers/led/core.c
@@ -212,7 +212,7 @@ static struct poller_struct led_poller = {
 
 static int led_blink_init(void)
 {
-	return poller_register(&led_poller);
+	return poller_register(&led_poller, "led");
 }
 late_initcall(led_blink_init);
 
diff --git a/drivers/usb/gadget/udc-core.c b/drivers/usb/gadget/udc-core.c
index 096f05ed48..126d76e8bb 100644
--- a/drivers/usb/gadget/udc-core.c
+++ b/drivers/usb/gadget/udc-core.c
@@ -319,7 +319,7 @@ static int udc_bind_to_driver(struct usb_udc *udc, struct usb_gadget_driver *dri
 
 	if (udc->gadget->ops->udc_poll) {
 		udc->poller.func = udc_poll_driver;
-		ret = poller_register(&udc->poller);
+		ret = poller_register(&udc->poller, dev_name(&udc->dev));
 		if (ret)
 			return ret;
 	}
diff --git a/drivers/watchdog/wd_core.c b/drivers/watchdog/wd_core.c
index 34040408f7..a17234f4b6 100644
--- a/drivers/watchdog/wd_core.c
+++ b/drivers/watchdog/wd_core.c
@@ -116,7 +116,7 @@ static int watchdog_register_poller(struct watchdog *wd)
 	struct param_d *p;
 	int ret;
 
-	ret = poller_async_register(&wd->poller);
+	ret = poller_async_register(&wd->poller, dev_name(&wd->dev));
 	if (ret)
 		return ret;
 
diff --git a/include/poller.h b/include/poller.h
index b22b8a1b89..886557252b 100644
--- a/include/poller.h
+++ b/include/poller.h
@@ -12,9 +12,10 @@ struct poller_struct {
 	void (*func)(struct poller_struct *poller);
 	int registered;
 	struct list_head list;
+	char *name;
 };
 
-int poller_register(struct poller_struct *poller);
+int poller_register(struct poller_struct *poller, const char *name);
 int poller_unregister(struct poller_struct *poller);
 
 struct poller_async;
@@ -27,7 +28,7 @@ struct poller_async {
 	int active;
 };
 
-int poller_async_register(struct poller_async *pa);
+int poller_async_register(struct poller_async *pa, const char *name);
 int poller_async_unregister(struct poller_async *pa);
 
 int poller_call_async(struct poller_async *pa, uint64_t delay_ns,
-- 
2.26.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

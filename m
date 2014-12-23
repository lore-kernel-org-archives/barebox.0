Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 18.mo6.mail-out.ovh.net ([46.105.73.110])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Y3U6N-0004Pl-6m
 for barebox@lists.infradead.org; Tue, 23 Dec 2014 18:22:38 +0000
Received: from mail179.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo6.mail-out.ovh.net (Postfix) with SMTP id C0FD5FF927E
 for <barebox@lists.infradead.org>; Tue, 23 Dec 2014 19:22:10 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 23 Dec 2014 19:21:55 +0100
Message-Id: <1419358918-25569-6-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1419358918-25569-1-git-send-email-plagnioj@jcrosoft.com>
References: <20141223170709.GA15818@ns203013.ovh.net>
 <1419358918-25569-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 6/9] console: factorize kfifo input support
To: barebox@lists.infradead.org

handle input fifo at console framework level instead of driver

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/Kconfig                 |  3 ++
 common/console.c               |  8 +++++
 common/console_common.c        | 71 ++++++++++++++++++++++++++++++++++++++++++
 common/console_simple.c        |  4 +++
 drivers/input/Kconfig          |  4 +++
 drivers/input/gpio_keys.c      | 43 ++++---------------------
 drivers/input/imx_keypad.c     | 29 ++---------------
 drivers/input/qt1070.c         | 28 ++---------------
 drivers/input/twl6030_pwrbtn.c | 32 ++-----------------
 include/console.h              | 22 +++++++++++++
 include/gpio_keys.h            |  1 -
 11 files changed, 124 insertions(+), 121 deletions(-)

diff --git a/common/Kconfig b/common/Kconfig
index 4614965..05f76ae 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -507,6 +507,9 @@ config KERNEL_INSTALL_TARGET
 	  compiler. The utility for the target will be under
 	  scripts/kernel-install-target
 
+config CONSOLE_KFIFO
+	bool
+
 choice
 	prompt "console support"
 	default CONSOLE_FULL
diff --git a/common/console.c b/common/console.c
index e5f4267..bba13a5 100644
--- a/common/console.c
+++ b/common/console.c
@@ -182,6 +182,7 @@ int console_register(struct console_device *newcdev)
 {
 	struct device_d *dev = &newcdev->class_dev;
 	int activate = 0;
+	int ret;
 
 	if (initialized == CONSOLE_UNINITIALIZED)
 		console_init_early();
@@ -196,6 +197,11 @@ int console_register(struct console_device *newcdev)
 
 	if (newcdev->dev)
 		dev->parent = newcdev->dev;
+
+	ret = console_kfifo_input_init(newcdev);
+	if (ret)
+		return ret;
+
 	platform_device_register(dev);
 
 	if (newcdev->setbrg) {
@@ -243,6 +249,8 @@ int console_unregister(struct console_device *cdev)
 	if (list_empty(&console_list))
 		initialized = CONSOLE_UNINITIALIZED;
 
+	console_kfifo_input_clean(cdev);
+
 	status = unregister_device(dev);
 	if (!status)
 		memset(cdev, 0, sizeof(*cdev));
diff --git a/common/console_common.c b/common/console_common.c
index cc25f97..17cd834 100644
--- a/common/console_common.c
+++ b/common/console_common.c
@@ -326,3 +326,74 @@ struct console_device *console_get_first_active(void)
 	return NULL;
 }
 EXPORT_SYMBOL(console_get_first_active);
+
+#ifdef CONFIG_CONSOLE_KFIFO
+void console_kfifo_putc(struct console_device *cdev, int c)
+{
+	kfifo_put(cdev->recv_fifo, (u_char*)&c, sizeof(int));
+}
+EXPORT_SYMBOL(console_kfifo_putc);
+
+void console_kfifo_puts(struct console_device *cdev,char *s, int len)
+{
+	int i;
+
+	for (i = 0; i < len; i++)
+		console_kfifo_putc(cdev, (u_char)s[i]);
+}
+EXPORT_SYMBOL(console_kfifo_puts);
+
+static int console_kfifo_getc(struct console_device *cdev)
+{
+	int code = 0;
+
+	if (kfifo_len(cdev->recv_fifo) > 0) {
+		kfifo_get(cdev->recv_fifo, (u_char*)&code, sizeof(int));
+
+		return code;
+	}
+
+	if (cdev->drv_getc)
+		return cdev->drv_getc(cdev);
+
+	return -1;
+}
+
+static int console_kfifo_tstc(struct console_device *cdev)
+{
+	if (kfifo_len(cdev->recv_fifo) > 0)
+		return 1;
+
+	if (cdev->drv_tstc)
+		return cdev->drv_tstc(cdev);
+
+	return 0;
+}
+
+int console_kfifo_input_init(struct console_device *cdev)
+{
+	if (cdev->fifo_input_size <= 0)
+		return 0;
+
+	cdev->recv_fifo = kfifo_alloc(cdev->fifo_input_size * sizeof(int));
+
+	if (!cdev->recv_fifo)
+		return -ENOMEM;
+
+	if (cdev->getc)
+		cdev->drv_getc = cdev->getc;
+
+	if (cdev->tstc)
+		cdev->drv_tstc = cdev->tstc;
+
+	cdev->getc = console_kfifo_getc;
+	cdev->tstc = console_kfifo_tstc;
+
+	return 0;
+}
+
+void console_kfifo_input_clean(struct console_device *cdev)
+{
+	kfifo_free(cdev->recv_fifo);
+}
+#endif
diff --git a/common/console_simple.c b/common/console_simple.c
index 6cb72bb..eda40ac 100644
--- a/common/console_simple.c
+++ b/common/console_simple.c
@@ -89,6 +89,10 @@ int console_register(struct console_device *newcdev)
 	console_list.prev = console_list.next = &newcdev->list;
 	newcdev->list.prev = newcdev->list.next = &console_list;
 
+	ret = console_kfifo_input_init(newcdev);
+	if (ret)
+		return ret;
+
 	if (newcdev->setbrg) {
 		newcdev->baudrate = CONFIG_BAUDRATE;
 		newcdev->setbrg(newcdev, newcdev->baudrate);
diff --git a/drivers/input/Kconfig b/drivers/input/Kconfig
index b4e86fd..ceee21c 100644
--- a/drivers/input/Kconfig
+++ b/drivers/input/Kconfig
@@ -9,6 +9,7 @@ config KEYBOARD_GPIO
 	bool "GPIO Buttons"
 	depends on GENERIC_GPIO
 	select POLLER
+	select CONSOLE_KFIFO
 	help
 	  This driver implements support for buttons connected
 	  to GPIO pins of various CPUs (and some other chips).
@@ -22,6 +23,7 @@ config KEYBOARD_IMX_KEYPAD
 	bool "IMX Keypad"
 	depends on ARCH_IMX
 	select POLLER
+	select CONSOLE_KFIFO
 	help
 	  This driver implements support for buttons connected
 	  to the IMX keypad matrix.
@@ -35,6 +37,7 @@ config KEYBOARD_QT1070
 	tristate "Atmel AT42QT1070 Touch Sensor Chip"
 	depends on I2C && GENERIC_GPIO
 	select POLLER
+	select CONSOLE_KFIFO
 	help
 	  Say Y here if you want to use Atmel AT42QT1070 QTouch
 	  Sensor chip as input device.
@@ -43,6 +46,7 @@ config KEYBOARD_TWL6030
 	tristate "TWL6030 power button"
 	depends on MFD_TWL6030
 	select POLLER
+	select CONSOLE_KFIFO
 	help
 	  Say Y here if you want to use TWL6030 power button as a key.
 
diff --git a/drivers/input/gpio_keys.c b/drivers/input/gpio_keys.c
index d017594..27e464f 100644
--- a/drivers/input/gpio_keys.c
+++ b/drivers/input/gpio_keys.c
@@ -27,14 +27,8 @@ struct gpio_keys {
 	struct gpio_key *buttons;
 	int nbuttons;
 
-	/* optional */
-	int fifo_size;
-
-	struct kfifo *recv_fifo;
 	struct poller_struct poller;
 	struct console_device cdev;
-
-	int use_keycodes;
 };
 
 static inline struct gpio_keys *
@@ -61,33 +55,13 @@ static void gpio_key_poller(struct poller_struct *poller)
 		val = gpio_get_value(gb->gpio);
 
 		if (val != gb->previous_state && val != gb->active_low) {
-			kfifo_put(gk->recv_fifo, (u_char*)&gb->code, sizeof(int));
+			console_kfifo_putc(&gk->cdev, gb->code);
 			debug("pressed gpio(%d) as %d\n", gb->gpio, gb->code);
 		}
 		gb->previous_state = val;
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
-	if (IS_ENABLED(CONFIG_OFDEVICE) && gk->use_keycodes)
-		return keycode_bb_keys[code];
-	else
-		return code;
-}
-
 static int gpio_keys_probe_pdata(struct gpio_keys *gk, struct device_d *dev)
 {
 	struct gpio_keys_platform_data *pdata;
@@ -102,7 +76,7 @@ static int gpio_keys_probe_pdata(struct gpio_keys *gk, struct device_d *dev)
 	}
 
 	if (pdata->fifo_size)
-		gk->fifo_size = pdata->fifo_size;
+		gk->cdev.fifo_input_size = pdata->fifo_size;
 
 	gk->buttons = xzalloc(pdata->nbuttons * sizeof(*gk->buttons));
 	gk->nbuttons = pdata->nbuttons;
@@ -142,13 +116,11 @@ static int gpio_keys_probe_dt(struct gpio_keys *gk, struct device_d *dev)
 		if (ret)
 			return ret;
 
-		gk->buttons[i].code = keycode;
+		gk->buttons[i].code =  keycode_bb_keys[keycode];
 
 		i++;
 	}
 
-	gk->use_keycodes = 1;
-
 	return 0;
 }
 
@@ -159,7 +131,9 @@ static int __init gpio_keys_probe(struct device_d *dev)
 	struct gpio_keys *gk;
 
 	gk = xzalloc(sizeof(*gk));
-	gk->fifo_size = 50;
+
+	cdev = &gk->cdev;
+	cdev->fifo_input_size = 50;
 
 	if (dev->device_node)
 		ret = gpio_keys_probe_dt(gk, dev);
@@ -169,8 +143,6 @@ static int __init gpio_keys_probe(struct device_d *dev)
 	if (ret)
 		return ret;
 
-	gk->recv_fifo = kfifo_alloc(gk->fifo_size);
-
 	for (i = 0; i < gk->nbuttons; i++) {
 		gpio = gk->buttons[i].gpio;
 		ret = gpio_request(gpio, "gpio_keys");
@@ -184,11 +156,8 @@ static int __init gpio_keys_probe(struct device_d *dev)
 
 	gk->poller.func = gpio_key_poller;
 
-	cdev = &gk->cdev;
 	dev->type_data = cdev;
 	cdev->dev = dev;
-	cdev->tstc = gpio_keys_tstc;
-	cdev->getc = gpio_keys_getc;
 
 	console_register(&gk->cdev);
 
diff --git a/drivers/input/imx_keypad.c b/drivers/input/imx_keypad.c
index 331eadd..4f1b586 100644
--- a/drivers/input/imx_keypad.c
+++ b/drivers/input/imx_keypad.c
@@ -44,7 +44,6 @@
 #include <init.h>
 #include <io.h>
 #include <poller.h>
-#include <kfifo.h>
 #include <malloc.h>
 #include <matrix_keypad.h>
 #include <linux/err.h>
@@ -78,10 +77,6 @@ struct imx_keypad {
 	struct console_device cdev;
 	void __iomem *mmio_base;
 
-	/* optional */
-	int fifo_size;
-
-	struct kfifo *recv_fifo;
 	struct poller_struct poller;
 
 	/*
@@ -118,22 +113,6 @@ cdev_to_imx_kp_pdata(struct console_device *cdev)
 	return container_of(cdev, struct imx_keypad, cdev);
 }
 
-static int imx_keypad_tstc(struct console_device *cdev)
-{
-	struct imx_keypad *kp = cdev_to_imx_kp_pdata(cdev);
-
-	return (kfifo_len(kp->recv_fifo) == 0) ? 0 : 1;
-}
-
-static int imx_keypad_getc(struct console_device *cdev)
-{
-	int code = 0;
-	struct imx_keypad *kp = cdev_to_imx_kp_pdata(cdev);
-
-	kfifo_get(kp->recv_fifo, (u_char*)&code, sizeof(int));
-	return code;
-}
-
 /* Scan the matrix and return the new state in *matrix_volatile_state. */
 static void imx_keypad_scan_matrix(struct imx_keypad *keypad,
 				  unsigned short *matrix_volatile_state)
@@ -226,7 +205,7 @@ static void imx_keypad_fire_events(struct imx_keypad *keypad,
 
 			code = MATRIX_SCAN_CODE(row, col, MATRIX_ROW_SHIFT);
 
-			kfifo_put(keypad->recv_fifo, (u_char*)(&keypad->keycodes[code]), sizeof(int));
+			console_kfifo_putc(&keypad->cdev, gb->keypad->keycodes[code]);
 
 			pr_debug("Event code: %d, val: %d",
 				keypad->keycodes[code],
@@ -406,9 +385,7 @@ static int __init imx_keypad_probe(struct device_d *dev)
 		return PTR_ERR(keypad->mmio_base);
 
 	if(!keypad->fifo_size)
-		keypad->fifo_size = 50;
-
-	keypad->recv_fifo = kfifo_alloc(keypad->fifo_size);
+		keypad->cdev.fifo_input_size = 50;
 
 	/* Search for rows and cols enabled */
 	for (i = 0; i < keymap_data->keymap_size; i++) {
@@ -438,8 +415,6 @@ static int __init imx_keypad_probe(struct device_d *dev)
 	cdev = &keypad->cdev;
 	dev->type_data = cdev;
 	cdev->dev = dev;
-	cdev->tstc = imx_keypad_tstc;
-	cdev->getc = imx_keypad_getc;
 	cdev->f_active = CONSOLE_STDIN;
 
 	console_register(&keypad->cdev);
diff --git a/drivers/input/qt1070.c b/drivers/input/qt1070.c
index 1ee868d..e023711 100644
--- a/drivers/input/qt1070.c
+++ b/drivers/input/qt1070.c
@@ -9,7 +9,6 @@
 #include <init.h>
 #include <clock.h>
 #include <poller.h>
-#include <kfifo.h>
 #include <i2c/i2c.h>
 #include <malloc.h>
 #include <readkey.h>
@@ -42,14 +41,10 @@ struct qt1070_data {
 
 	u64 start;
 
-	/* optional */
-	int fifo_size;
-
 	struct i2c_client *client;
 	u8 button_state[QT1070_NB_BUTTONS];
 	u8 previous_state;
 
-	struct kfifo *recv_fifo;
 	struct poller_struct poller;
 	struct console_device cdev;
 };
@@ -117,7 +112,7 @@ static void qt1070_poller(struct poller_struct *poller)
 
 		if (!bt && data->button_state[i]) {
 			dev_dbg(data->cdev.dev, "release key(%d) as %d\n", i, data->code[i]);
-			kfifo_put(data->recv_fifo, (u_char*)&data->code[i], sizeof(int));
+			console_kfifo_putc(&data->cdev, data->code[i]);
 		} else if (bt) {
 			dev_dbg(data->cdev.dev, "pressed key(%d) as %d\n", i, data->code[i]);
 		}
@@ -163,22 +158,6 @@ static void qt1070_calibrate_poller(struct poller_struct *poller)
 	poller->func = qt1070_reset_poller;
 }
 
-static int qt1070_tstc(struct console_device *cdev)
-{
-	struct qt1070_data *data = cdev_to_qt_data(cdev);
-
-	return (kfifo_len(data->recv_fifo) == 0) ? 0 : 1;
-}
-
-static int qt1070_getc(struct console_device *cdev)
-{
-	int code = 0;
-	struct qt1070_data *data = cdev_to_qt_data(cdev);
-
-	kfifo_get(data->recv_fifo, (u_char*)&code, sizeof(int));
-	return code;
-}
-
 static int qt1070_pdata_init(struct device_d *dev, struct qt1070_data *data)
 {
 	struct qt1070_platform_data *pdata = dev->platform_data;
@@ -258,15 +237,12 @@ static int qt1070_probe(struct device_d *dev)
 	data->start = get_time_ns();
 
 
-	data->fifo_size = 50;
-	data->recv_fifo = kfifo_alloc(data->fifo_size);
+	data->cdev.fifo_input_size = 50;
 
 	data->poller.func = qt1070_calibrate_poller;
 
 	cdev = &data->cdev;
 	cdev->dev = dev;
-	cdev->tstc = qt1070_tstc;
-	cdev->getc = qt1070_getc;
 
 	console_register(&data->cdev);
 
diff --git a/drivers/input/twl6030_pwrbtn.c b/drivers/input/twl6030_pwrbtn.c
index fc4c728..346dff5 100644
--- a/drivers/input/twl6030_pwrbtn.c
+++ b/drivers/input/twl6030_pwrbtn.c
@@ -14,7 +14,6 @@
 #include <init.h>
 #include <malloc.h>
 #include <poller.h>
-#include <kfifo.h>
 #include <mfd/twl6030.h>
 #include <twl6030_pwrbtn.h>
 
@@ -22,7 +21,6 @@ struct twl6030_pwrbtn_internal_data {
 	int code;
 	u8 previous_state;
 	struct twl6030 *twl6030;
-	struct kfifo *recv_fifo;
 	struct console_device cdev;
 	struct poller_struct poller;
 };
@@ -41,32 +39,13 @@ static void ic2_key_poller(struct poller_struct *poller)
 	}
 	val = !(val & PWR_PWRON_IRQ);
 	if (val != idata->previous_state && val) {
-		kfifo_put(idata->recv_fifo, (u_char *)&idata->code,
-			sizeof(int));
+		console_kfifo_putc(&idata->cdev, idata->code);
 		dev_dbg(idata->cdev.dev, "pressed power button as %d\n",
 			idata->code);
 	}
 	idata->previous_state = val;
 }
 
-static int twl6030_pwrbtn_tstc(struct console_device *cdev)
-{
-	struct twl6030_pwrbtn_internal_data *idata = container_of(
-		cdev, struct twl6030_pwrbtn_internal_data, cdev);
-
-	return kfifo_len(idata->recv_fifo) ? 1 : 0;
-}
-
-static int twl6030_pwrbtn_getc(struct console_device *cdev)
-{
-	int code = 0;
-	struct twl6030_pwrbtn_internal_data *idata = container_of(
-		cdev, struct twl6030_pwrbtn_internal_data, cdev);
-
-	kfifo_get(idata->recv_fifo, (u_char *)&code, sizeof(int));
-	return code;
-}
-
 static int __init twl6030_pwrbtn_probe(struct device_d *dev)
 {
 	struct twl6030_pwrbtn_internal_data *idata;
@@ -80,12 +59,7 @@ static int __init twl6030_pwrbtn_probe(struct device_d *dev)
 
 	idata = xzalloc(sizeof(struct twl6030_pwrbtn_internal_data));
 
-	idata->recv_fifo = kfifo_alloc(sizeof(int));
-	if (!idata->recv_fifo) {
-		dev_err(dev, "out of memory allocating kfifo\n");
-		free(idata);
-		return -ENOMEM;
-	}
+	idata->cdev.fifo_input_size = 1;
 
 	idata->code = pdata->code;
 	idata->twl6030 = twl6030_get();
@@ -93,8 +67,6 @@ static int __init twl6030_pwrbtn_probe(struct device_d *dev)
 
 	dev->type_data = &idata->cdev;
 	idata->cdev.dev = dev;
-	idata->cdev.tstc = twl6030_pwrbtn_tstc;
-	idata->cdev.getc = twl6030_pwrbtn_getc;
 	console_register(&idata->cdev);
 
 	return poller_register(&idata->poller);
diff --git a/include/console.h b/include/console.h
index 97a406d..89514b6 100644
--- a/include/console.h
+++ b/include/console.h
@@ -23,6 +23,7 @@
 #include <param.h>
 #include <linux/list.h>
 #include <driver.h>
+#include <kfifo.h>
 
 #define CONSOLE_STDIN           (1 << 0)
 #define CONSOLE_STDOUT          (1 << 1)
@@ -49,6 +50,12 @@ struct console_device {
 
 	struct list_head list;
 
+	struct kfifo *recv_fifo;
+	int  (*drv_getc)(struct console_device *cdev);
+	int (*drv_tstc)(struct console_device *cdev);
+
+	int fifo_input_size;
+
 	unsigned char f_active;
 
 	unsigned int baudrate;
@@ -73,4 +80,19 @@ extern int barebox_loglevel;
 
 struct console_device *console_get_first_active(void);
 
+#ifdef CONFIG_CONSOLE_KFIFO
+void console_kfifo_putc(struct console_device *cdev, int c);
+void console_kfifo_puts(struct console_device *cdev,char *s, int len);
+int console_kfifo_input_init(struct console_device *cdev);
+void console_kfifo_input_clean(struct console_device *cdev);
+#else
+static inline void console_kfifo_putc(struct console_device *cdev, int c) {}
+static inline void console_kfifo_puts(struct console_device *cdev,char *s, int len) {}
+static inline int console_kfifo_input_init(struct console_device *cdev)
+{
+	return 0;
+}
+static void inline console_kfifo_input_clean(struct console_device *cdev) {}
+#endif
+
 #endif
diff --git a/include/gpio_keys.h b/include/gpio_keys.h
index f4a22e1..02b6933 100644
--- a/include/gpio_keys.h
+++ b/include/gpio_keys.h
@@ -2,7 +2,6 @@
 #define _GPIO_KEYS_H
 
 #include <poller.h>
-#include <kfifo.h>
 
 struct gpio_keys_button {
 	/* Configuration parameters */
-- 
2.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

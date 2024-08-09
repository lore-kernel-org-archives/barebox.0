Delivery-date: Fri, 09 Aug 2024 16:52:52 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1scQz6-007rvB-2M
	for lore@lore.pengutronix.de;
	Fri, 09 Aug 2024 16:52:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1scQz5-00039N-VN
	for lore@pengutronix.de; Fri, 09 Aug 2024 16:52:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zyW7WmcjDcIHFc1WoFJ0oQVFV9UeSVOpRnAxig9lc+k=; b=y8U72YEp2x1A4EGaZG/oiHSFrh
	2AWRubxjIoK2CFVaw94OK4zXmjvrVWJ6trA4D8Q0CT1jHlMlSu6ahKw/Enb1y9xKvic76sefqJGF7
	BGjMkTgkJjNIbE021B6sLrpRXus++syi70tZtJw/4gZsrq8gp8eRBW/4dve84Ly40EIn7v2CQ2xef
	+lC6YlGAof+BCDfWlUfIzweDsthU0rQOkJu9ob/S+BDv6W7XohNLzY7UmFbKwdxZs/dlXtGAnudJR
	vmRQubVzWlbd/XAjw10pjY7EOyeHwsGixocvMdmQcM2w2aivmwUQjCzVFelSOuwfT+Mz8byCWaRFp
	rAPtTO+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scQye-0000000BbGO-47Z7;
	Fri, 09 Aug 2024 14:52:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scQyc-0000000BbEo-0sLW
	for barebox@lists.infradead.org;
	Fri, 09 Aug 2024 14:52:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1scQya-0002zS-Hn; Fri, 09 Aug 2024 16:52:20 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1scQya-005goA-4k; Fri, 09 Aug 2024 16:52:20 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1scQXH-001K4s-0Z;
	Fri, 09 Aug 2024 16:24:07 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Chris Fiege <c.fiege@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  9 Aug 2024 16:24:04 +0200
Message-Id: <20240809142405.315244-11-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240809142405.315244-1-a.fatoum@pengutronix.de>
References: <20240809142405.315244-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240809_075222_276424_CE89CA12 
X-CRM114-Status: GOOD (  18.56  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 10/11] input: gpio_keys: switch to GPIO descriptor API
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Pull-ups that are only configured in the OF GPIO description like:

  gpios = <&gpioe 7 (GPIO_ACTIVE_LOW | GPIO_PULL_UP)>;

are currently ignored. This is because we open coded determination of
the GPIO flags and discarded all of them, except for active-low, thereby
giving gpiolib no chance to apply other flags.

Fix this by using dev_gpiod_get instead to parse the GPIO description
and request it.

This lets us support the aforementioned binding and handles active low
configuration transparently.

Reported-by: Chris Fiege <c.fiege@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/input/Kconfig     |  2 +-
 drivers/input/gpio_keys.c | 66 ++++++++++++++++++---------------------
 2 files changed, 32 insertions(+), 36 deletions(-)

diff --git a/drivers/input/Kconfig b/drivers/input/Kconfig
index 01e0b722c20f..fc4198b556f1 100644
--- a/drivers/input/Kconfig
+++ b/drivers/input/Kconfig
@@ -25,7 +25,7 @@ config INPUT_EVBUG
 
 config KEYBOARD_GPIO
 	bool "GPIO Buttons"
-	depends on GENERIC_GPIO
+	depends on GPIOLIB
 	select POLLER
 	select INPUT
 	help
diff --git a/drivers/input/gpio_keys.c b/drivers/input/gpio_keys.c
index c897acf3bd02..3701817788ca 100644
--- a/drivers/input/gpio_keys.c
+++ b/drivers/input/gpio_keys.c
@@ -9,16 +9,13 @@
 #include <clock.h>
 #include <gpio_keys.h>
 #include <poller.h>
-#include <gpio.h>
-#include <of_gpio.h>
+#include <linux/gpio/consumer.h>
 #include <input/input.h>
 
 struct gpio_key {
+	struct gpio_desc *gpio;
 	int code;
 
-	int gpio;
-	int active_low;
-
 	int previous_state;
 
 	int debounce_interval;
@@ -37,31 +34,29 @@ static void gpio_key_poller(void *data)
 {
 	struct gpio_keys *gk = data;
 	struct gpio_key *gb;
-	int i, val;
+	int i, pressed;
 
 	for (i = 0; i < gk->nbuttons; i++) {
 		gb = &gk->buttons[i];
 
-		if (gpio_slice_acquired(gb->gpio))
+		if (gpiod_slice_acquired(gb->gpio))
 			goto out;
 	}
 
 	for (i = 0; i < gk->nbuttons; i++) {
 
 		gb = &gk->buttons[i];
-		val = gpio_get_value(gb->gpio);
+		pressed = gpiod_get_value(gb->gpio);
 
 		if (!is_timeout(gb->debounce_start, gb->debounce_interval * MSECOND))
 			continue;
 
-		if (val != gb->previous_state) {
-			int pressed = val != gb->active_low;
-
+		if (pressed != gb->previous_state) {
 			gb->debounce_start = get_time_ns();
 			input_report_key_event(&gk->input, gb->code, pressed);
-			dev_dbg(gk->input.parent, "%s gpio(%d) as %d\n",
-				pressed ? "pressed" : "released", gb->gpio, gb->code);
-			gb->previous_state = val;
+			dev_dbg(gk->input.parent, "%s gpio #%d as %d\n",
+				pressed ? "pressed" : "released", i, gb->code);
+			gb->previous_state = pressed;
 		}
 	}
 out:
@@ -85,9 +80,20 @@ static int gpio_keys_probe_pdata(struct gpio_keys *gk, struct device *dev)
 	gk->nbuttons = pdata->nbuttons;
 
 	for (i = 0; i < gk->nbuttons; i++) {
-		gk->buttons[i].gpio = pdata->buttons[i].gpio;
+		struct gpio_desc *gpio;
+		ulong flags = GPIOF_DIR_IN;
+
+		if (pdata->buttons[i].active_low)
+			flags |= GPIOF_ACTIVE_LOW;
+
+		gpio = gpiod_request_one(pdata->buttons[i].gpio, flags, "gpio_keys");
+		if (IS_ERR(gpio)) {
+			pr_err("gpio_keys: gpio #%d can not be requested\n", i);
+			return PTR_ERR(gpio);
+		}
+
+		gk->buttons[i].gpio = gpio;
 		gk->buttons[i].code = pdata->buttons[i].code;
-		gk->buttons[i].active_low = pdata->buttons[i].active_low;
 		gk->buttons[i].debounce_interval = 20;
 	}
 
@@ -106,15 +112,16 @@ static int gpio_keys_probe_dt(struct gpio_keys *gk, struct device *dev)
 	gk->buttons = xzalloc(gk->nbuttons * sizeof(*gk->buttons));
 
 	for_each_child_of_node(np, npkey) {
-		enum of_gpio_flags gpioflags;
+		struct gpio_desc *gpio;
 		uint32_t keycode;
 
-		gk->buttons[i].gpio = of_get_named_gpio_flags(npkey, "gpios", 0, &gpioflags);
-		if (gk->buttons[i].gpio < 0)
-			return gk->buttons[i].gpio;
+		gpio = dev_gpiod_get(dev, npkey, "gpios", GPIOD_IN, NULL);
+		if (IS_ERR(gpio)) {
+			pr_err("gpio_keys: gpio #%d can not be requested\n", i);
+			return PTR_ERR(gpio);
+		}
 
-		if (gpioflags & OF_GPIO_ACTIVE_LOW)
-			gk->buttons[i].active_low = 1;
+		gk->buttons[i].gpio = gpio;
 
 		ret = of_property_read_u32(npkey, "linux,code", &keycode);
 		if (ret)
@@ -135,12 +142,12 @@ static int gpio_keys_probe_dt(struct gpio_keys *gk, struct device *dev)
 
 static int __init gpio_keys_probe(struct device *dev)
 {
-	int ret, i, gpio;
+	int ret;
 	struct gpio_keys *gk;
 
 	gk = xzalloc(sizeof(*gk));
 
-	if (dev->of_node)
+	if (dev_of_node(dev))
 		ret = gpio_keys_probe_dt(gk, dev);
 	else
 		ret = gpio_keys_probe_pdata(gk, dev);
@@ -148,17 +155,6 @@ static int __init gpio_keys_probe(struct device *dev)
 	if (ret)
 		return ret;
 
-	for (i = 0; i < gk->nbuttons; i++) {
-		gpio = gk->buttons[i].gpio;
-		ret = gpio_request(gpio, "gpio_keys");
-		if (ret) {
-			pr_err("gpio_keys: (%d) can not be requested\n", gpio);
-			return ret;
-		}
-		gpio_direction_input(gpio);
-		gk->buttons[i].previous_state = gk->buttons[i].active_low;
-	}
-
 	gk->input.parent = dev;
 	ret = input_device_register(&gk->input);
 	if (ret)
-- 
2.39.2




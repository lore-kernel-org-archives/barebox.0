Delivery-date: Thu, 22 Jun 2023 09:25:24 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qCEh4-00GhR9-4t
	for lore@lore.pengutronix.de; Thu, 22 Jun 2023 09:25:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qCEh0-0001fU-Jc
	for lore@pengutronix.de; Thu, 22 Jun 2023 09:25:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+5L4PKt8HERwWgNCV4Wrqp4QyEpayE4vx+FRc4rWMfA=; b=T1vgiZeMxxZwh9u9/4DHcwXl16
	3t6mAr58jSW0gFoUUS6Atso3iPKe9PELJyqY/bGTm+4rQkaXY9GLg2GZHL2jfMawOFIu09Ycbovrx
	l8Y9tnqltE0uxGYH4lTrkCIkHnUFAGDMa3o3ASLzd2S2YmeU/JBYPDx8tQKIhYDkpY3R0ALgChS6c
	zMACKWGvKWgtR+iB0Q45fdvwOATHW4Sq9I+NXWWP1A8t3dNhVgxFgZI5BWo2IcPbyRtOrfyhnHP+W
	FnPGjWSgh2k6HJ39ukY8H9X+3a2Gr7btPJwof2mFaPI2VeT+Uy3EHRsAroUBd7DK38fO0ReTBcVQU
	f261d+rw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qCEfd-00HDwZ-0n;
	Thu, 22 Jun 2023 07:23:57 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qCEfR-00HDpz-2f
	for barebox@lists.infradead.org;
	Thu, 22 Jun 2023 07:23:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qCEfM-0000zt-WC; Thu, 22 Jun 2023 09:23:41 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qCEfM-009Djq-CB; Thu, 22 Jun 2023 09:23:40 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qCEfL-005cRV-0G;
	Thu, 22 Jun 2023 09:23:39 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Marco Felsch <m.felsch@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 22 Jun 2023 09:23:24 +0200
Message-Id: <20230622072329.1339317-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230622072329.1339317-1-a.fatoum@pengutronix.de>
References: <20230622072329.1339317-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230622_002346_191742_518B9111 
X-CRM114-Status: GOOD (  16.99  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 4/9] gpio: gpiolib: rename struct gpio_info to gpio_desc
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We already have GPIO descriptors in use internally, but return an
index into the array of all available GPIOs to the outside world.
In preparation for returning a pointer, let's rename the gpio_info
struct into gpio_desc and the gi variables into desc.

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/gpio/gpiolib.c | 206 ++++++++++++++++++++---------------------
 1 file changed, 103 insertions(+), 103 deletions(-)

diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
index ee1bc5f6156f..07ca2d31a633 100644
--- a/drivers/gpio/gpiolib.c
+++ b/drivers/gpio/gpiolib.c
@@ -13,7 +13,7 @@
 
 static LIST_HEAD(chip_list);
 
-struct gpio_info {
+struct gpio_desc {
 	struct gpio_chip *chip;
 	bool requested;
 	bool active_low;
@@ -21,25 +21,25 @@ struct gpio_info {
 	const char *name;
 };
 
-static struct gpio_info *gpio_desc;
+static struct gpio_desc *gpio_desc;
 
 static int gpio_desc_alloc(void)
 {
-	gpio_desc = xzalloc(sizeof(struct gpio_info) * ARCH_NR_GPIOS);
+	gpio_desc = xzalloc(sizeof(struct gpio_desc) * ARCH_NR_GPIOS);
 
 	return 0;
 }
 pure_initcall(gpio_desc_alloc);
 
-static int gpio_ensure_requested(struct gpio_info *gi, int gpio)
+static int gpio_ensure_requested(struct gpio_desc *desc, int gpio)
 {
-	if (gi->requested)
+	if (desc->requested)
 		return 0;
 
 	return gpio_request(gpio, "gpio");
 }
 
-static struct gpio_info *gpio_to_desc(unsigned gpio)
+static struct gpio_desc *gpio_to_desc(unsigned gpio)
 {
 	if (gpio_is_valid(gpio))
 		if (gpio_desc[gpio].chip)
@@ -50,46 +50,46 @@ static struct gpio_info *gpio_to_desc(unsigned gpio)
 	return NULL;
 }
 
-static unsigned gpioinfo_chip_offset(struct gpio_info *gi)
+static unsigned gpioinfo_chip_offset(struct gpio_desc *desc)
 {
-	return (gi - gpio_desc) - gi->chip->base;
+	return (desc - gpio_desc) - desc->chip->base;
 }
 
-static int gpio_adjust_value(struct gpio_info *gi,
+static int gpio_adjust_value(struct gpio_desc *desc,
 			     int value)
 {
 	if (value < 0)
 		return value;
 
-	return !!value ^ gi->active_low;
+	return !!value ^ desc->active_low;
 }
 
-static int gpioinfo_request(struct gpio_info *gi, const char *label)
+static int gpioinfo_request(struct gpio_desc *desc, const char *label)
 {
 	int ret;
 
-	if (gi->requested) {
+	if (desc->requested) {
 		ret = -EBUSY;
 		goto done;
 	}
 
 	ret = 0;
 
-	if (gi->chip->ops->request) {
-		ret = gi->chip->ops->request(gi->chip,
-					     gpioinfo_chip_offset(gi));
+	if (desc->chip->ops->request) {
+		ret = desc->chip->ops->request(desc->chip,
+					     gpioinfo_chip_offset(desc));
 		if (ret)
 			goto done;
 	}
 
-	gi->requested = true;
-	gi->active_low = false;
-	gi->label = xstrdup(label);
+	desc->requested = true;
+	desc->active_low = false;
+	desc->label = xstrdup(label);
 
 done:
 	if (ret)
 		pr_err("_gpio_request: gpio-%td (%s) status %d\n",
-		       gi - gpio_desc, label ? : "?", ret);
+		       desc - gpio_desc, label ? : "?", ret);
 
 	return ret;
 }
@@ -99,7 +99,7 @@ int gpio_find_by_label(const char *label)
 	int i;
 
 	for (i = 0; i < ARCH_NR_GPIOS; i++) {
-		struct gpio_info *info = &gpio_desc[i];
+		struct gpio_desc *info = &gpio_desc[i];
 
 		if (!info->requested || !info->chip || !info->label)
 			continue;
@@ -116,7 +116,7 @@ int gpio_find_by_name(const char *name)
 	int i;
 
 	for (i = 0; i < ARCH_NR_GPIOS; i++) {
-		struct gpio_info *info = &gpio_desc[i];
+		struct gpio_desc *info = &gpio_desc[i];
 
 		if (!info->chip || !info->name)
 			continue;
@@ -130,174 +130,174 @@ int gpio_find_by_name(const char *name)
 
 int gpio_request(unsigned gpio, const char *label)
 {
-	struct gpio_info *gi = gpio_to_desc(gpio);
+	struct gpio_desc *desc = gpio_to_desc(gpio);
 
-	if (!gi) {
+	if (!desc) {
 		pr_err("_gpio_request: gpio-%d (%s) status %d\n",
 			 gpio, label ? : "?", -ENODEV);
 		return -ENODEV;
 	}
 
-	return gpioinfo_request(gi, label);
+	return gpioinfo_request(desc, label);
 }
 
-static void gpioinfo_free(struct gpio_info *gi)
+static void gpioinfo_free(struct gpio_desc *desc)
 {
-	if (!gi->requested)
+	if (!desc->requested)
 		return;
 
-	if (gi->chip->ops->free)
-		gi->chip->ops->free(gi->chip, gpioinfo_chip_offset(gi));
+	if (desc->chip->ops->free)
+		desc->chip->ops->free(desc->chip, gpioinfo_chip_offset(desc));
 
-	gi->requested = false;
-	gi->active_low = false;
-	free(gi->label);
-	gi->label = NULL;
+	desc->requested = false;
+	desc->active_low = false;
+	free(desc->label);
+	desc->label = NULL;
 }
 
 void gpio_free(unsigned gpio)
 {
-	struct gpio_info *gi = gpio_to_desc(gpio);
+	struct gpio_desc *desc = gpio_to_desc(gpio);
 
-	if (!gi)
+	if (!desc)
 		return;
 
-	gpioinfo_free(gi);
+	gpioinfo_free(desc);
 }
 
-static void gpioinfo_set_value(struct gpio_info *gi, int value)
+static void gpioinfo_set_value(struct gpio_desc *desc, int value)
 {
-	if (gi->chip->ops->set)
-		gi->chip->ops->set(gi->chip, gpioinfo_chip_offset(gi), value);
+	if (desc->chip->ops->set)
+		desc->chip->ops->set(desc->chip, gpioinfo_chip_offset(desc), value);
 }
 
 void gpio_set_value(unsigned gpio, int value)
 {
-	struct gpio_info *gi = gpio_to_desc(gpio);
+	struct gpio_desc *desc = gpio_to_desc(gpio);
 
-	if (!gi)
+	if (!desc)
 		return;
 
-	if (gpio_ensure_requested(gi, gpio))
+	if (gpio_ensure_requested(desc, gpio))
 		return;
 
-	gpioinfo_set_value(gi, value);
+	gpioinfo_set_value(desc, value);
 }
 EXPORT_SYMBOL(gpio_set_value);
 
 void gpio_set_active(unsigned gpio, bool value)
 {
-	struct gpio_info *gi = gpio_to_desc(gpio);
+	struct gpio_desc *desc = gpio_to_desc(gpio);
 
-	if (!gi)
+	if (!desc)
 		return;
 
-	gpio_set_value(gpio, gpio_adjust_value(gi, value));
+	gpio_set_value(gpio, gpio_adjust_value(desc, value));
 }
 EXPORT_SYMBOL(gpio_set_active);
 
-static int gpioinfo_get_value(struct gpio_info *gi)
+static int gpioinfo_get_value(struct gpio_desc *desc)
 {
-	if (!gi->chip->ops->get)
+	if (!desc->chip->ops->get)
 		return -ENOSYS;
 
-	return gi->chip->ops->get(gi->chip, gpioinfo_chip_offset(gi));
+	return desc->chip->ops->get(desc->chip, gpioinfo_chip_offset(desc));
 }
 
 int gpio_get_value(unsigned gpio)
 {
-	struct gpio_info *gi = gpio_to_desc(gpio);
+	struct gpio_desc *desc = gpio_to_desc(gpio);
 	int ret;
 
-	if (!gi)
+	if (!desc)
 		return -ENODEV;
 
-	ret = gpio_ensure_requested(gi, gpio);
+	ret = gpio_ensure_requested(desc, gpio);
 	if (ret)
 		return ret;
 
-	return gpioinfo_get_value(gi);
+	return gpioinfo_get_value(desc);
 }
 EXPORT_SYMBOL(gpio_get_value);
 
 int gpio_is_active(unsigned gpio)
 {
-	struct gpio_info *gi = gpio_to_desc(gpio);
+	struct gpio_desc *desc = gpio_to_desc(gpio);
 
-	if (!gi)
+	if (!desc)
 		return -ENODEV;
 
-	return gpio_adjust_value(gi, gpio_get_value(gpio));
+	return gpio_adjust_value(desc, gpio_get_value(gpio));
 }
 EXPORT_SYMBOL(gpio_is_active);
 
-static int gpioinfo_direction_output(struct gpio_info *gi, int value)
+static int gpioinfo_direction_output(struct gpio_desc *desc, int value)
 {
-	if (!gi->chip->ops->direction_output)
+	if (!desc->chip->ops->direction_output)
 		return -ENOSYS;
 
-	return gi->chip->ops->direction_output(gi->chip,
-					       gpioinfo_chip_offset(gi), value);
+	return desc->chip->ops->direction_output(desc->chip,
+					       gpioinfo_chip_offset(desc), value);
 }
 
 int gpio_direction_output(unsigned gpio, int value)
 {
-	struct gpio_info *gi = gpio_to_desc(gpio);
+	struct gpio_desc *desc = gpio_to_desc(gpio);
 	int ret;
 
-	if (!gi)
+	if (!desc)
 		return -ENODEV;
 
-	ret = gpio_ensure_requested(gi, gpio);
+	ret = gpio_ensure_requested(desc, gpio);
 	if (ret)
 		return ret;
 
-	return gpioinfo_direction_output(gi, value);
+	return gpioinfo_direction_output(desc, value);
 }
 EXPORT_SYMBOL(gpio_direction_output);
 
-static int gpioinfo_direction_active(struct gpio_info *gi, bool value)
+static int gpioinfo_direction_active(struct gpio_desc *desc, bool value)
 {
-	return gpioinfo_direction_output(gi, gpio_adjust_value(gi, value));
+	return gpioinfo_direction_output(desc, gpio_adjust_value(desc, value));
 }
 
 int gpio_direction_active(unsigned gpio, bool value)
 {
-	struct gpio_info *gi = gpio_to_desc(gpio);
+	struct gpio_desc *desc = gpio_to_desc(gpio);
 
-	if (!gi)
+	if (!desc)
 		return -ENODEV;
 
-	return gpioinfo_direction_active(gi, value);
+	return gpioinfo_direction_active(desc, value);
 }
 EXPORT_SYMBOL(gpio_direction_active);
 
-static int gpioinfo_direction_input(struct gpio_info *gi)
+static int gpioinfo_direction_input(struct gpio_desc *desc)
 {
-	if (!gi->chip->ops->direction_input)
+	if (!desc->chip->ops->direction_input)
 		return -ENOSYS;
 
-	return gi->chip->ops->direction_input(gi->chip,
-					      gpioinfo_chip_offset(gi));
+	return desc->chip->ops->direction_input(desc->chip,
+					      gpioinfo_chip_offset(desc));
 }
 
 int gpio_direction_input(unsigned gpio)
 {
-	struct gpio_info *gi = gpio_to_desc(gpio);
+	struct gpio_desc *desc = gpio_to_desc(gpio);
 	int ret;
 
-	if (!gi)
+	if (!desc)
 		return -ENODEV;
 
-	ret = gpio_ensure_requested(gi, gpio);
+	ret = gpio_ensure_requested(desc, gpio);
 	if (ret)
 		return ret;
 
-	return gpioinfo_direction_input(gi);
+	return gpioinfo_direction_input(desc);
 }
 EXPORT_SYMBOL(gpio_direction_input);
 
-static int gpioinfo_request_one(struct gpio_info *gi, unsigned long flags,
+static int gpioinfo_request_one(struct gpio_desc *desc, unsigned long flags,
 				const char *label)
 {
 	int err;
@@ -312,21 +312,21 @@ static int gpioinfo_request_one(struct gpio_info *gi, unsigned long flags,
 	const bool init_active = (flags & GPIOF_INIT_ACTIVE) == GPIOF_INIT_ACTIVE;
 	const bool init_high   = (flags & GPIOF_INIT_HIGH) == GPIOF_INIT_HIGH;
 
-	err = gpioinfo_request(gi, label);
+	err = gpioinfo_request(desc, label);
 	if (err)
 		return err;
 
-	gi->active_low = active_low;
+	desc->active_low = active_low;
 
 	if (dir_in)
-		err = gpioinfo_direction_input(gi);
+		err = gpioinfo_direction_input(desc);
 	else if (logical)
-		err = gpioinfo_direction_active(gi, init_active);
+		err = gpioinfo_direction_active(desc, init_active);
 	else
-		err = gpioinfo_direction_output(gi, init_high);
+		err = gpioinfo_direction_output(desc, init_high);
 
 	if (err)
-		gpioinfo_free(gi);
+		gpioinfo_free(desc);
 
 	return err;
 }
@@ -339,12 +339,12 @@ static int gpioinfo_request_one(struct gpio_info *gi, unsigned long flags,
  */
 int gpio_request_one(unsigned gpio, unsigned long flags, const char *label)
 {
-	struct gpio_info *gi = gpio_to_desc(gpio);
+	struct gpio_desc *desc = gpio_to_desc(gpio);
 
-	if (!gi)
+	if (!desc)
 		return -ENODEV;
 
-	return gpioinfo_request_one(gi, flags, label);
+	return gpioinfo_request_one(desc, flags, label);
 }
 EXPORT_SYMBOL_GPL(gpio_request_one);
 
@@ -782,9 +782,9 @@ int gpio_get_num(struct device *dev, int gpio)
 
 struct gpio_chip *gpio_get_chip(int gpio)
 {
-	struct gpio_info *gi = gpio_to_desc(gpio);
+	struct gpio_desc *desc = gpio_to_desc(gpio);
 
-	return gi ? gi->chip : NULL;
+	return desc ? desc->chip : NULL;
 }
 
 #ifdef CONFIG_CMD_GPIO
@@ -809,38 +809,38 @@ static int do_gpiolib(int argc, char *argv[])
 	}
 
 	for (i = 0; i < ARCH_NR_GPIOS; i++) {
-		struct gpio_info *gi = &gpio_desc[i];
+		struct gpio_desc *desc = &gpio_desc[i];
 		int val = -1, dir = -1;
 		int idx;
 
-		if (!gi->chip)
+		if (!desc->chip)
 			continue;
 
-		if (chip && chip != gi->chip)
+		if (chip && chip != desc->chip)
 			continue;
 
 		/* print chip information and header on first gpio */
-		if (gi->chip->base == i) {
+		if (desc->chip->base == i) {
 			printf("\nGPIOs %u-%u, chip %s:\n",
-				gi->chip->base,
-				gi->chip->base + gi->chip->ngpio - 1,
-				dev_name(gi->chip->dev));
+				desc->chip->base,
+				desc->chip->base + desc->chip->ngpio - 1,
+				dev_name(desc->chip->dev));
 			printf("             %-3s %-3s %-9s %-20s %-20s\n", "dir", "val", "requested", "name", "label");
 		}
 
-		idx = i - gi->chip->base;
+		idx = i - desc->chip->base;
 
-		if (gi->chip->ops->get_direction)
-			dir = gi->chip->ops->get_direction(gi->chip, idx);
-		if (gi->chip->ops->get)
-			val = gi->chip->ops->get(gi->chip, idx);
+		if (desc->chip->ops->get_direction)
+			dir = desc->chip->ops->get_direction(desc->chip, idx);
+		if (desc->chip->ops->get)
+			val = desc->chip->ops->get(desc->chip, idx);
 
 		printf("  GPIO %4d: %-3s %-3s %-9s %-20s %-20s\n", chip ? idx : i,
 			(dir < 0) ? "unk" : ((dir == GPIOF_DIR_IN) ? "in" : "out"),
 			(val < 0) ? "unk" : ((val == 0) ? "lo" : "hi"),
-		        gi->requested ? (gi->active_low ? "active low" : "true") : "false",
-			gi->name ? gi->name : "",
-			gi->label ? gi->label : "");
+		        desc->requested ? (desc->active_low ? "active low" : "true") : "false",
+			desc->name ? desc->name : "",
+			desc->label ? desc->label : "");
 	}
 
 	return 0;
-- 
2.39.2




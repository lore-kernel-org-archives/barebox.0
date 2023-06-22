Delivery-date: Thu, 22 Jun 2023 09:25:17 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qCEgx-00GhPo-0p
	for lore@lore.pengutronix.de; Thu, 22 Jun 2023 09:25:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qCEgu-0001Yr-1k
	for lore@pengutronix.de; Thu, 22 Jun 2023 09:25:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XP/1x0RUZ8P59W9sFg1FW9IiWWq65lG9jkyogqcFVmU=; b=YT4JJhYWKtC1yWAn0JGGbR9Mib
	1+BOnugmS2BhiMDmPxniXibTz2JlX5l6JcUVp/14meJFfhStaD0SMD1UziBBiiXs/NMklTE3Y1g6V
	J8OOsJ1EzYA6GdyoMETsKU27iQA+9d+gCd/U3WnVhberafN+M956dGx7X9d1Mt2ME99kZiomSdeYv
	tJBhvMLF6Id7J6GnT35fI+mtW8wwwT4I235VlGxUjm1aZKeu42ZQX2Hcjb79FWPUVZZKR7BU6dZMb
	0ms+DwdpqVtzPh5zFe+ll6PVgYKJfrcC6ga0lo37lCRb18wqqdCbYIWPEwj52KmWwiRbh8ze4MHxG
	IaGqcK1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qCEfe-00HDxA-05;
	Thu, 22 Jun 2023 07:23:58 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qCEfR-00HDpr-2k
	for barebox@lists.infradead.org;
	Thu, 22 Jun 2023 07:23:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qCEfM-0000z9-D7; Thu, 22 Jun 2023 09:23:40 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qCEfL-009DjY-N7; Thu, 22 Jun 2023 09:23:39 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qCEfL-005cRZ-0H;
	Thu, 22 Jun 2023 09:23:39 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Marco Felsch <m.felsch@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 22 Jun 2023 09:23:25 +0200
Message-Id: <20230622072329.1339317-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230622072329.1339317-1-a.fatoum@pengutronix.de>
References: <20230622072329.1339317-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230622_002346_215240_93902FCC 
X-CRM114-Status: GOOD (  26.51  )
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
Subject: [PATCH v2 5/9] gpiolib: export proper gpio descriptor API
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Our current gpiod API doesn't return actual struct gpio_desc pointers
that can be dereferenced by the GPIO core, like in Linux. We actually
have all the infrastructure in place to do that, but we just aren't
using this yet. Rename the relevant gpioinfo_ functions to gpiod_,
document them, export them and have them observe the same semantics as
their Linux equivalents.

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/gpio/gpiolib.c        | 173 ++++++++++++++++++++++++++++++----
 include/linux/gpio/consumer.h | 130 ++++++++++++++-----------
 2 files changed, 227 insertions(+), 76 deletions(-)

diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
index 07ca2d31a633..11d2506deca4 100644
--- a/drivers/gpio/gpiolib.c
+++ b/drivers/gpio/gpiolib.c
@@ -21,6 +21,36 @@ struct gpio_desc {
 	const char *name;
 };
 
+/*
+ * This descriptor validation needs to be inserted verbatim into each
+ * function taking a descriptor, so we need to use a preprocessor
+ * macro to avoid endless duplication. If the desc is NULL it is an
+ * optional GPIO and calls should just bail out.
+ */
+static int validate_desc(const struct gpio_desc *desc, const char *func)
+{
+	if (!desc)
+		return 0;
+	if (IS_ERR(desc)) {
+		pr_warn("%s: invalid GPIO (errorpointer)\n", func);
+		return PTR_ERR(desc);
+	}
+
+	return 1;
+}
+
+#define VALIDATE_DESC(desc) do { \
+	int __valid = validate_desc(desc, __func__); \
+	if (__valid <= 0) \
+		return __valid; \
+	} while (0)
+
+#define VALIDATE_DESC_VOID(desc) do { \
+	int __valid = validate_desc(desc, __func__); \
+	if (__valid <= 0) \
+		return; \
+	} while (0)
+
 static struct gpio_desc *gpio_desc;
 
 static int gpio_desc_alloc(void)
@@ -50,12 +80,12 @@ static struct gpio_desc *gpio_to_desc(unsigned gpio)
 	return NULL;
 }
 
-static unsigned gpioinfo_chip_offset(struct gpio_desc *desc)
+static unsigned gpioinfo_chip_offset(const struct gpio_desc *desc)
 {
 	return (desc - gpio_desc) - desc->chip->base;
 }
 
-static int gpio_adjust_value(struct gpio_desc *desc,
+static int gpio_adjust_value(const struct gpio_desc *desc,
 			     int value)
 {
 	if (value < 0)
@@ -159,17 +189,40 @@ void gpio_free(unsigned gpio)
 {
 	struct gpio_desc *desc = gpio_to_desc(gpio);
 
+	gpioinfo_free(desc);
+}
+
+/**
+ * gpiod_put - dispose of a GPIO descriptor
+ * @desc:	GPIO descriptor to dispose of
+ *
+ * No descriptor can be used after gpiod_put() has been called on it.
+ */
+void gpiod_put(struct gpio_desc *desc)
+{
 	if (!desc)
 		return;
 
 	gpioinfo_free(desc);
 }
+EXPORT_SYMBOL(gpiod_put);
 
-static void gpioinfo_set_value(struct gpio_desc *desc, int value)
+/**
+ * gpiod_set_raw_value() - assign a gpio's raw value
+ * @desc: gpio whose value will be assigned
+ * @value: value to assign
+ *
+ * Set the raw value of the GPIO, i.e. the value of its physical line without
+ * regard for its ACTIVE_LOW status.
+ */
+void gpiod_set_raw_value(struct gpio_desc *desc, int value)
 {
+	VALIDATE_DESC_VOID(desc);
+
 	if (desc->chip->ops->set)
 		desc->chip->ops->set(desc->chip, gpioinfo_chip_offset(desc), value);
 }
+EXPORT_SYMBOL(gpiod_set_raw_value);
 
 void gpio_set_value(unsigned gpio, int value)
 {
@@ -181,10 +234,25 @@ void gpio_set_value(unsigned gpio, int value)
 	if (gpio_ensure_requested(desc, gpio))
 		return;
 
-	gpioinfo_set_value(desc, value);
+	gpiod_set_raw_value(desc, value);
 }
 EXPORT_SYMBOL(gpio_set_value);
 
+/**
+ * gpiod_set_value() - assign a gpio's value
+ * @desc: gpio whose value will be assigned
+ * @value: value to assign
+ *
+ * Set the logical value of the GPIO, i.e. taking its ACTIVE_LOW,
+ * OPEN_DRAIN and OPEN_SOURCE flags into account.
+ */
+void gpiod_set_value(struct gpio_desc *desc, int value)
+{
+	VALIDATE_DESC_VOID(desc);
+	gpiod_set_raw_value(desc, gpio_adjust_value(desc, value));
+}
+EXPORT_SYMBOL_GPL(gpiod_set_value);
+
 void gpio_set_active(unsigned gpio, bool value)
 {
 	struct gpio_desc *desc = gpio_to_desc(gpio);
@@ -192,17 +260,27 @@ void gpio_set_active(unsigned gpio, bool value)
 	if (!desc)
 		return;
 
-	gpio_set_value(gpio, gpio_adjust_value(desc, value));
+	gpiod_set_value(desc, value);
 }
 EXPORT_SYMBOL(gpio_set_active);
 
-static int gpioinfo_get_value(struct gpio_desc *desc)
+/**
+ * gpiod_get_raw_value() - return a gpio's raw value
+ * @desc: gpio whose value will be returned
+ *
+ * Return the GPIO's raw value, i.e. the value of the physical line disregarding
+ * its ACTIVE_LOW status, or negative errno on failure.
+ */
+int gpiod_get_raw_value(const struct gpio_desc *desc)
 {
+	VALIDATE_DESC(desc);
+
 	if (!desc->chip->ops->get)
 		return -ENOSYS;
 
 	return desc->chip->ops->get(desc->chip, gpioinfo_chip_offset(desc));
 }
+EXPORT_SYMBOL_GPL(gpiod_get_raw_value);
 
 int gpio_get_value(unsigned gpio)
 {
@@ -216,10 +294,25 @@ int gpio_get_value(unsigned gpio)
 	if (ret)
 		return ret;
 
-	return gpioinfo_get_value(desc);
+	return gpiod_get_raw_value(desc);
 }
 EXPORT_SYMBOL(gpio_get_value);
 
+/**
+ * gpiod_get_value() - return a gpio's value
+ * @desc: gpio whose value will be returned
+ *
+ * Return the GPIO's logical value, i.e. taking the ACTIVE_LOW status into
+ * account, or negative errno on failure.
+ */
+int gpiod_get_value(const struct gpio_desc *desc)
+{
+	VALIDATE_DESC(desc);
+
+	return gpio_adjust_value(desc, gpiod_get_raw_value(desc));
+}
+EXPORT_SYMBOL_GPL(gpiod_get_value);
+
 int gpio_is_active(unsigned gpio)
 {
 	struct gpio_desc *desc = gpio_to_desc(gpio);
@@ -227,18 +320,32 @@ int gpio_is_active(unsigned gpio)
 	if (!desc)
 		return -ENODEV;
 
-	return gpio_adjust_value(desc, gpio_get_value(gpio));
+	return gpiod_get_value(desc);
 }
 EXPORT_SYMBOL(gpio_is_active);
 
-static int gpioinfo_direction_output(struct gpio_desc *desc, int value)
+/**
+ * gpiod_direction_output_raw - set the GPIO direction to output
+ * @desc:	GPIO to set to output
+ * @value:	initial output value of the GPIO
+ *
+ * Set the direction of the passed GPIO to output, such as gpiod_set_value() can
+ * be called safely on it. The initial value of the output must be specified
+ * as raw value on the physical line without regard for the ACTIVE_LOW status.
+ *
+ * Return 0 in case of success, else an error code.
+ */
+int gpiod_direction_output_raw(struct gpio_desc *desc, int value)
 {
+	VALIDATE_DESC(desc);
+
 	if (!desc->chip->ops->direction_output)
 		return -ENOSYS;
 
 	return desc->chip->ops->direction_output(desc->chip,
 					       gpioinfo_chip_offset(desc), value);
 }
+EXPORT_SYMBOL(gpiod_direction_output_raw);
 
 int gpio_direction_output(unsigned gpio, int value)
 {
@@ -252,13 +359,27 @@ int gpio_direction_output(unsigned gpio, int value)
 	if (ret)
 		return ret;
 
-	return gpioinfo_direction_output(desc, value);
+	return gpiod_direction_output_raw(desc, value);
 }
 EXPORT_SYMBOL(gpio_direction_output);
 
-static int gpioinfo_direction_active(struct gpio_desc *desc, bool value)
+/**
+ * gpiod_direction_output - set the GPIO direction to output
+ * @desc:	GPIO to set to output
+ * @value:	initial output value of the GPIO
+ *
+ * Set the direction of the passed GPIO to output, such as gpiod_set_value() can
+ * be called safely on it. The initial value of the output must be specified
+ * as the logical value of the GPIO, i.e. taking its ACTIVE_LOW status into
+ * account.
+ *
+ * Return 0 in case of success, else an error code.
+ */
+int gpiod_direction_output(struct gpio_desc *desc, int value)
 {
-	return gpioinfo_direction_output(desc, gpio_adjust_value(desc, value));
+	VALIDATE_DESC(desc);
+
+	return gpiod_direction_output_raw(desc, gpio_adjust_value(desc, value));
 }
 
 int gpio_direction_active(unsigned gpio, bool value)
@@ -268,18 +389,30 @@ int gpio_direction_active(unsigned gpio, bool value)
 	if (!desc)
 		return -ENODEV;
 
-	return gpioinfo_direction_active(desc, value);
+	return gpiod_direction_output(desc, value);
 }
 EXPORT_SYMBOL(gpio_direction_active);
 
-static int gpioinfo_direction_input(struct gpio_desc *desc)
+/**
+ * gpiod_direction_input - set the GPIO direction to input
+ * @desc:	GPIO to set to input
+ *
+ * Set the direction of the passed GPIO to input, such as gpiod_get_value() can
+ * be called safely on it.
+ *
+ * Return 0 in case of success, else an error code.
+ */
+int gpiod_direction_input(struct gpio_desc *desc)
 {
+	VALIDATE_DESC(desc);
+
 	if (!desc->chip->ops->direction_input)
 		return -ENOSYS;
 
 	return desc->chip->ops->direction_input(desc->chip,
 					      gpioinfo_chip_offset(desc));
 }
+EXPORT_SYMBOL(gpiod_direction_input);
 
 int gpio_direction_input(unsigned gpio)
 {
@@ -293,7 +426,7 @@ int gpio_direction_input(unsigned gpio)
 	if (ret)
 		return ret;
 
-	return gpioinfo_direction_input(desc);
+	return gpiod_direction_input(desc);
 }
 EXPORT_SYMBOL(gpio_direction_input);
 
@@ -319,11 +452,11 @@ static int gpioinfo_request_one(struct gpio_desc *desc, unsigned long flags,
 	desc->active_low = active_low;
 
 	if (dir_in)
-		err = gpioinfo_direction_input(desc);
+		err = gpiod_direction_input(desc);
 	else if (logical)
-		err = gpioinfo_direction_active(desc, init_active);
+		err = gpiod_direction_output(desc, init_active);
 	else
-		err = gpioinfo_direction_output(desc, init_high);
+		err = gpiod_direction_output_raw(desc, init_high);
 
 	if (err)
 		gpioinfo_free(desc);
@@ -698,7 +831,7 @@ struct gpio_desc *dev_gpiod_get_index(struct device *dev,
 		free(con_id);
 
 		if (gpio_is_valid(gpio)) {
-			desc = __tmp_gpio_to_desc(gpio);
+			desc = gpio_to_desc(gpio);
 			break;
 		}
 	}
@@ -718,7 +851,7 @@ struct gpio_desc *dev_gpiod_get_index(struct device *dev,
 			label = dev_name(dev);
 	}
 
-	ret = gpio_request_one(__tmp_desc_to_gpio(desc), flags, label);
+	ret = gpioinfo_request_one(desc, flags, label);
 	free(buf);
 
 	return ret ? ERR_PTR(ret): desc;
diff --git a/include/linux/gpio/consumer.h b/include/linux/gpio/consumer.h
index 577b3955848e..2547e4ba7be3 100644
--- a/include/linux/gpio/consumer.h
+++ b/include/linux/gpio/consumer.h
@@ -5,8 +5,7 @@
 #include <gpio.h>
 #include <of_gpio.h>
 #include <driver.h>
-#include <linux/err.h>
-#include <errno.h>
+#include <linux/bug.h>
 #include <linux/iopoll.h>
 
 /**
@@ -24,33 +23,11 @@ enum gpiod_flags {
 	GPIOD_OUT_HIGH	= GPIOF_OUT_INIT_ACTIVE,
 };
 
-#define GPIO_DESC_OK		BIT(BITS_PER_LONG - 1)
-
 #define gpiod_not_found(desc)	(IS_ERR(desc) && PTR_ERR(desc) == -ENOENT)
 
 struct gpio_desc;
 
-static inline int __tmp_desc_to_gpio(struct gpio_desc *desc)
-{
-	if (!desc)
-		return -ENOENT;
-	if (IS_ERR(desc))
-		return PTR_ERR(desc);
-
-	return ((ulong)desc & ~GPIO_DESC_OK);
-}
-
-static inline struct gpio_desc *__tmp_gpio_to_desc(int gpio)
-{
-	if (gpio == -ENOENT)
-		return NULL;
-	if (gpio < 0)
-		return ERR_PTR(gpio);
-
-	return (struct gpio_desc *)(gpio | GPIO_DESC_OK);
-}
-
-#ifdef CONFIG_OFDEVICE
+#if defined(CONFIG_OFDEVICE) && defined(CONFIG_GPIOLIB)
 
 /* returned gpio descriptor can be passed to any normal gpio_* function */
 struct gpio_desc *dev_gpiod_get_index(struct device *dev,
@@ -70,6 +47,78 @@ static inline struct gpio_desc *dev_gpiod_get_index(struct device *dev,
 }
 #endif
 
+#ifdef CONFIG_GPIOLIB
+
+int gpiod_direction_input(struct gpio_desc *desc);
+
+int gpiod_direction_output_raw(struct gpio_desc *desc, int value);
+int gpiod_direction_output(struct gpio_desc *desc, int value);
+
+void gpiod_set_raw_value(struct gpio_desc *desc, int value);
+void gpiod_set_value(struct gpio_desc *desc, int value);
+
+int gpiod_get_raw_value(const struct gpio_desc *desc);
+int gpiod_get_value(const struct gpio_desc *desc);
+
+void gpiod_put(struct gpio_desc *desc);
+
+#else
+
+static inline int gpiod_direction_input(struct gpio_desc *desc)
+{
+	/* GPIO can never have been requested */
+	WARN_ON(desc);
+	return 0;
+}
+
+static inline int gpiod_direction_output_raw(struct gpio_desc *desc, int value)
+{
+	/* GPIO can never have been requested */
+	WARN_ON(desc);
+	return 0;
+}
+
+static inline int gpiod_direction_output(struct gpio_desc *desc, int value)
+{
+	/* GPIO can never have been requested */
+	WARN_ON(desc);
+	return 0;
+}
+
+static inline void gpiod_set_raw_value(struct gpio_desc *desc, int value)
+{
+	/* GPIO can never have been requested */
+	WARN_ON(desc);
+}
+
+static inline void gpiod_set_value(struct gpio_desc *desc, int value)
+{
+	/* GPIO can never have been requested */
+	WARN_ON(desc);
+}
+
+static inline int gpiod_get_raw_value(const struct gpio_desc *desc)
+{
+	/* GPIO can never have been requested */
+	WARN_ON(desc);
+	return 0;
+}
+
+static inline int gpiod_get_value(const struct gpio_desc *desc)
+{
+	/* GPIO can never have been requested */
+	WARN_ON(desc);
+	return 0;
+}
+
+static inline void gpiod_put(struct gpio_desc *desc)
+{
+	/* GPIO can never have been requested */
+	WARN_ON(desc);
+}
+
+#endif
+
 static inline struct gpio_desc *dev_gpiod_get(struct device *dev,
 				struct device_node *np,
 				const char *con_id,
@@ -99,37 +148,6 @@ gpiod_get_optional(struct device *dev, const char *con_id,
 	return desc;
 }
 
-static inline int gpiod_direction_input(struct gpio_desc *gpiod)
-{
-	if (gpiod_not_found(gpiod))
-		return 0;
-
-	return gpio_direction_input(__tmp_desc_to_gpio(gpiod));
-}
-
-static inline int gpiod_direction_output(struct gpio_desc *gpiod, bool value)
-{
-	if (gpiod_not_found(gpiod))
-		return 0;
-
-	return gpio_direction_active(__tmp_desc_to_gpio(gpiod), value);
-}
-
-static inline int gpiod_set_value(struct gpio_desc *gpiod, bool value)
-{
-	return gpiod_direction_output(gpiod, value);
-}
-
-static inline int gpiod_get_value(struct gpio_desc *gpiod)
-{
-	if (gpiod_not_found(gpiod))
-		return 0;
-	if (IS_ERR(gpiod))
-		return PTR_ERR(gpiod);
-
-	return gpio_is_active(__tmp_desc_to_gpio(gpiod));
-}
-
 /**
  * gpiod_poll_timeout_us - poll till gpio descriptor reaches requested active state
  * @gpiod: gpio descriptor to poll
-- 
2.39.2




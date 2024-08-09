Delivery-date: Fri, 09 Aug 2024 16:24:41 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1scQXp-007rUp-1t
	for lore@lore.pengutronix.de;
	Fri, 09 Aug 2024 16:24:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1scQXn-0008EY-C6
	for lore@pengutronix.de; Fri, 09 Aug 2024 16:24:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=P6gCQOXj67SrGvGmaxTclcWLwRxREsU9piNGgyQNqXs=; b=gJwE49fJe97jWOY8giwONK1kEc
	rYDLSuF+fz/otNp1Lj5CNjCvSJG7d+/f/1baaTUnK/fkFoJwKb0DeqrEczGz4uOXYeBww93K+tr0u
	/dyD4B2p8PCC2OrVvsIObZH5C8fJ+qK+FgTMSjMxRP95VJkK5UtIsSH65jPNf4F1GZ1wOlqKEH2Ng
	ekJrXJtkdqCzlIFdZy7v5N6fj7ZVZ93O+iCTe2YBFWFbbOsZHQPTe9IeeohE5elTx5Ta8fL208LVa
	unfOyrzT6RUgU5ZkKaMpeoFrqwTLcVQ0+DXBPpgWldnhSHJIN6D3HROkyHkyNL/RgKYufEhV2UgVh
	cb3Ht5Vw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scQXN-0000000BWI6-01qZ;
	Fri, 09 Aug 2024 14:24:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scQXI-0000000BWEU-3JZn
	for barebox@lists.infradead.org;
	Fri, 09 Aug 2024 14:24:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1scQXH-0007ok-AA; Fri, 09 Aug 2024 16:24:07 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1scQXG-005geI-TE; Fri, 09 Aug 2024 16:24:06 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1scQXG-001K4s-2c;
	Fri, 09 Aug 2024 16:24:06 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  9 Aug 2024 16:23:56 +0200
Message-Id: <20240809142405.315244-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240809142405.315244-1-a.fatoum@pengutronix.de>
References: <20240809142405.315244-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240809_072408_858619_0A45D564 
X-CRM114-Status: GOOD (  18.74  )
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
Subject: [PATCH 02/11] gpiolib: permit GPIO drivers to implement struct gpio_ops::set_config
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

So far, GPIO bias configuration was done exclusively by pinctrl drivers.
All barebox pinctrl drivers work by consuming a device tree node with
a binding that differs from driver to driver and then applying the
configuration described within.

Neither GPIO or pinctrl node have any insight on what in particular is
being configured.

This is problematic when wanting to support following device tree
binding, which is so far being ignored:

  gpios = <&gpioe 7 (GPIO_ACTIVE_LOW | GPIO_PULL_DOWN)>;

In preparation for enabling support, let's give GPIO drivers a way to
set configuration. This will be implemented by the STM32 pinctrl/gpio
driver in a follow-up commit.

The new functionality will be selected by a new OF_GPIO_PINCONF option
that is going to be introduced later.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/gpio/Kconfig          | 14 ++++++++++++++
 drivers/gpio/gpiolib.c        | 28 ++++++++++++++++++++++++++++
 include/gpio.h                |  1 +
 include/linux/gpio/consumer.h |  9 +++++++++
 4 files changed, 52 insertions(+)

diff --git a/drivers/gpio/Kconfig b/drivers/gpio/Kconfig
index d9bb68e06b25..76b11d93aa64 100644
--- a/drivers/gpio/Kconfig
+++ b/drivers/gpio/Kconfig
@@ -10,6 +10,20 @@ menu "GPIO"
 config GPIO_GENERIC
 	bool
 
+config HAVE_GPIO_PINCONF
+	bool
+	help
+	  This is selected by drivers who implement struct gpio_ops::set_config
+
+config GPIO_PINCONF
+	bool "support for configuring GPIO lines directly" if COMPILE_TEST
+	help
+	  This option enables compilation and use of the optional
+	  struct gpio_ops::set_config callback. Drivers that export
+	  it allow configuring bias and other configuration directly
+	  on the GPIO line without having to interact directly with
+	  the pinctrl subsystem.
+
 config GPIO_DIGIC
 	bool "GPIO support for Canon DIGIC"
 	depends on ARCH_DIGIC || COMPILE_TEST
diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
index f34dce0e98c6..e8d788d4d791 100644
--- a/drivers/gpio/gpiolib.c
+++ b/drivers/gpio/gpiolib.c
@@ -238,6 +238,34 @@ void gpiod_put_array(struct gpio_descs *descs)
 }
 EXPORT_SYMBOL_GPL(gpiod_put_array);
 
+static int gpio_do_set_config(struct gpio_chip *gc, unsigned int offset,
+			      unsigned long config)
+{
+	if (!IS_ENABLED(CONFIG_GPIO_PINCONF))
+		return -ENOSYS;
+	if (!gc->ops->set_config)
+		return -ENOTSUPP;
+
+	return gc->ops->set_config(gc, offset, config);
+}
+
+/**
+ * gpiod_set_config - sets @config for a GPIO
+ * @desc: descriptor of the GPIO for which to set the configuration
+ * @config: Same packed config format as generic pinconf
+ *
+ * Returns:
+ * 0 on success, %-ENOTSUPP if the controller doesn't support setting the
+ * configuration.
+ */
+int gpiod_set_config(struct gpio_desc *desc, unsigned long config)
+{
+	VALIDATE_DESC(desc);
+
+	return gpio_do_set_config(desc->chip, gpiodesc_chip_offset(desc), config);
+}
+EXPORT_SYMBOL_GPL(gpiod_set_config);
+
 /**
  * gpiod_set_raw_value() - assign a gpio's raw value
  * @desc: gpio whose value will be assigned
diff --git a/include/gpio.h b/include/gpio.h
index cc56c91c3ee2..beda10efde08 100644
--- a/include/gpio.h
+++ b/include/gpio.h
@@ -195,6 +195,7 @@ struct gpio_ops {
 	int (*get_direction)(struct gpio_chip *chip, unsigned offset);
 	int (*get)(struct gpio_chip *chip, unsigned offset);
 	void (*set)(struct gpio_chip *chip, unsigned offset, int value);
+	int (*set_config)(struct gpio_chip *chip, unsigned offset, unsigned long config);
 
 #if defined(CONFIG_OF_GPIO)
 	/*
diff --git a/include/linux/gpio/consumer.h b/include/linux/gpio/consumer.h
index e04f516b3155..64366a6f3302 100644
--- a/include/linux/gpio/consumer.h
+++ b/include/linux/gpio/consumer.h
@@ -69,6 +69,8 @@ static inline struct gpio_desc *dev_gpiod_get_index(struct device *dev,
 
 #ifdef CONFIG_GPIOLIB
 
+int gpiod_set_config(struct gpio_desc *desc, unsigned long config);
+
 int gpiod_direction_input(struct gpio_desc *desc);
 
 int gpiod_direction_output_raw(struct gpio_desc *desc, int value);
@@ -97,6 +99,13 @@ int gpiod_set_array_value(unsigned int array_size,
 
 #else
 
+static inline int gpiod_set_config(struct gpio_desc *desc, unsigned long config)
+{
+	/* GPIO can never have been requested */
+	WARN_ON(desc);
+	return 0;
+}
+
 static inline int gpiod_direction_input(struct gpio_desc *desc)
 {
 	/* GPIO can never have been requested */
-- 
2.39.2




Delivery-date: Fri, 09 Aug 2024 16:24:44 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1scQXs-007rVv-0r
	for lore@lore.pengutronix.de;
	Fri, 09 Aug 2024 16:24:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1scQXr-0008I2-2J
	for lore@pengutronix.de; Fri, 09 Aug 2024 16:24:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nIWy05JUukxIRj6T3odIFixN71LQPVWfoFD+XIOct+M=; b=duU9tPKzZgIhSqyllxJvNHc9k/
	m3EYVgynDTn0xaEhowkvUPmsMmRIB2FmC2bRXoRkbBrXT0PC3BvJCOQJq2yYkgq22cSF9comFXLvi
	WXguHQ71m4uPhkvVEyHpAlLddyVP6nQbmAAdcouPKi8M9FjL4MN4J4m8+XmEWlbgMSIPul4s67kVi
	/AkmIiiXbOppkuLE7duCotpa5muPow3jgumv1l58kBDqKD3LAXKovlVC1eTahiv4C7k5vP09YnQWW
	zD2ALfdVLdqXa9HBCRqNeQCHjtlmP7OLoC4MxAmTVPwYF9GQ9taktqbV9aEN4VODaMcPmvufrExUX
	LbbxVA7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scQXO-0000000BWIl-1j7a;
	Fri, 09 Aug 2024 14:24:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scQXI-0000000BWEZ-41XW
	for barebox@lists.infradead.org;
	Fri, 09 Aug 2024 14:24:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1scQXH-0007ox-M1; Fri, 09 Aug 2024 16:24:07 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1scQXH-005geX-4N; Fri, 09 Aug 2024 16:24:07 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1scQXH-001K4s-08;
	Fri, 09 Aug 2024 16:24:07 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  9 Aug 2024 16:24:01 +0200
Message-Id: <20240809142405.315244-8-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240809142405.315244-1-a.fatoum@pengutronix.de>
References: <20240809142405.315244-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240809_072409_126300_FBBE93D3 
X-CRM114-Status: GOOD (  22.79  )
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
Subject: [PATCH 07/11] gpiolib: add support for OF GPIO configuration binding
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Previous commits laid the groundwork:

  - Flags in the DT are saved into GPIO descriptors
  - GPIO drivers can implement a set_config operation

Let's wire them together, so we call the set_config operation when
requesting a GPIO as necessary.

For this to be usable:

  - The GPIO consumer must request the GPIO with gpiod_get
  - The GPIO provider must implement set_config

This is not yet the case for the overwhelming majority of barebox GPIO
consumers and providers, so we allow disabling this functionality via a
Kconfig option.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/gpio/gpiolib.c | 94 +++++++++++++++++++++++++++++++++++++++++-
 drivers/of/Kconfig     | 15 +++++++
 include/of_gpio.h      |  5 +++
 3 files changed, 112 insertions(+), 2 deletions(-)

diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
index 539fd3c7c25f..4a1792a8df1f 100644
--- a/drivers/gpio/gpiolib.c
+++ b/drivers/gpio/gpiolib.c
@@ -8,6 +8,7 @@
 #include <gpio.h>
 #include <of_gpio.h>
 #include <linux/gpio/consumer.h>
+#include <linux/pinctrl/pinconf-generic.h>
 #include <linux/overflow.h>
 #include <errno.h>
 #include <malloc.h>
@@ -437,6 +438,61 @@ int gpio_direction_output(unsigned gpio, int value)
 }
 EXPORT_SYMBOL(gpio_direction_output);
 
+static int gpio_set_config_with_argument(struct gpio_desc *desc,
+					 enum pin_config_param mode,
+					 u32 argument)
+{
+	unsigned long config;
+
+	config = pinconf_to_config_packed(mode, argument);
+	return gpio_do_set_config(desc->chip, gpiodesc_chip_offset(desc), config);
+}
+
+static int gpio_set_config_with_argument_optional(struct gpio_desc *desc,
+						  enum pin_config_param mode,
+						  u32 argument)
+{
+	int ret;
+
+	ret = gpio_set_config_with_argument(desc, mode, argument);
+	if (ret != -ENOTSUPP)
+		return ret;
+	return 0;
+}
+
+static int gpio_set_config(struct gpio_desc *desc, enum pin_config_param mode)
+{
+	return gpio_set_config_with_argument(desc, mode, 0);
+}
+
+static int gpio_set_bias(struct gpio_desc *desc)
+{
+	enum pin_config_param bias;
+	unsigned int arg;
+
+	if (desc->flags & OF_GPIO_PULL_DISABLE)
+		bias = PIN_CONFIG_BIAS_DISABLE;
+	else if (desc->flags & OF_GPIO_PULL_UP)
+		bias = PIN_CONFIG_BIAS_PULL_UP;
+	else if (desc->flags & OF_GPIO_PULL_DOWN)
+		bias = PIN_CONFIG_BIAS_PULL_DOWN;
+	else
+		return 0;
+
+	switch (bias) {
+	case PIN_CONFIG_BIAS_PULL_DOWN:
+	case PIN_CONFIG_BIAS_PULL_UP:
+		arg = 1;
+		break;
+
+	default:
+		arg = 0;
+		break;
+	}
+
+	return gpio_set_config_with_argument_optional(desc, bias, arg);
+}
+
 /**
  * gpiod_direction_output - set the GPIO direction to output
  * @desc:	GPIO to set to output
@@ -451,8 +507,36 @@ EXPORT_SYMBOL(gpio_direction_output);
  */
 int gpiod_direction_output(struct gpio_desc *desc, int value)
 {
+	int ret;
+
 	VALIDATE_DESC(desc);
 
+	if (IS_ENABLED(CONFIG_GPIO_PINCONF)) {
+		if (desc->flags & (OF_GPIO_OPEN_DRAIN | OF_GPIO_SINGLE_ENDED)) {
+			/* First see if we can enable open drain in hardware */
+			ret = gpio_set_config(desc, PIN_CONFIG_DRIVE_OPEN_DRAIN);
+			if (!ret)
+				goto set_output_value;
+			/* Emulate open drain by not actively driving the line high */
+			if (value)
+				return gpiod_direction_input(desc);
+		} else if (desc->flags & OF_GPIO_SINGLE_ENDED) {
+			ret = gpio_set_config(desc, PIN_CONFIG_DRIVE_OPEN_SOURCE);
+			if (!ret)
+				goto set_output_value;
+			/* Emulate open source by not actively driving the line low */
+			if (!value)
+				return gpiod_direction_input(desc);
+		} else {
+			gpio_set_config(desc, PIN_CONFIG_DRIVE_PUSH_PULL);
+		}
+
+set_output_value:
+		ret = gpio_set_bias(desc);
+		if (ret)
+			return ret;
+	}
+
 	return gpiod_direction_output_raw(desc, gpio_adjust_value(desc, value));
 }
 
@@ -478,13 +562,19 @@ EXPORT_SYMBOL(gpio_direction_active);
  */
 int gpiod_direction_input(struct gpio_desc *desc)
 {
+	int ret;
+
 	VALIDATE_DESC(desc);
 
 	if (!desc->chip->ops->direction_input)
 		return -ENOSYS;
 
-	return desc->chip->ops->direction_input(desc->chip,
-					      gpiodesc_chip_offset(desc));
+	ret = desc->chip->ops->direction_input(desc->chip,
+					       gpiodesc_chip_offset(desc));
+	if (ret == 0 && IS_ENABLED(CONFIG_GPIO_PINCONF))
+		ret = gpio_set_bias(desc);
+
+	return ret;
 }
 EXPORT_SYMBOL(gpiod_direction_input);
 
diff --git a/drivers/of/Kconfig b/drivers/of/Kconfig
index 2791100a2d9c..6c9aedf355b4 100644
--- a/drivers/of/Kconfig
+++ b/drivers/of/Kconfig
@@ -40,6 +40,21 @@ config OF_GPIO
 	depends on OFDEVICE
 	def_bool y
 
+config OF_GPIO_PINCONF
+	depends on OF_GPIO && HAVE_GPIO_PINCONF
+	select GPIO_PINCONF
+	bool "Enable support for extra GPIO pin configuration binding"
+	default y
+	help
+	  In addition to the normal pinctrl-names/pinctrl-X binding, there's
+	  also a binding to add flags like GPIO_OPEN_DRAIN or GPIO_PULL_UP
+	  OR-ed into the cell of the gpios property used for
+	  GPIO_ACTIVE_HIGH/LOW. This latter binding is optional and many
+	  drivers don't support it.
+
+	  If unsure and not size conscious, say y here to enable the
+	  extra binding.
+
 config OF_PCI
 	bool
 	depends on PCI
diff --git a/include/of_gpio.h b/include/of_gpio.h
index a7a3493473c8..4ab5de6ed580 100644
--- a/include/of_gpio.h
+++ b/include/of_gpio.h
@@ -17,6 +17,11 @@
  */
 enum of_gpio_flags {
 	OF_GPIO_ACTIVE_LOW = 0x1,
+	OF_GPIO_SINGLE_ENDED = 0x2,
+	OF_GPIO_OPEN_DRAIN = 0x4,
+	OF_GPIO_PULL_UP = 0x10,
+	OF_GPIO_PULL_DOWN = 0x20,
+	OF_GPIO_PULL_DISABLE = 0x40,
 	OF_GPIO_REQUESTED = 0x80000000, /* internal use */
 };
 
-- 
2.39.2




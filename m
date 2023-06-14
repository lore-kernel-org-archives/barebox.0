Delivery-date: Wed, 14 Jun 2023 12:09:18 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q9NRI-006ULr-2N
	for lore@lore.pengutronix.de; Wed, 14 Jun 2023 12:09:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q9NRF-00068w-Jc
	for lore@pengutronix.de; Wed, 14 Jun 2023 12:09:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=toZPXBIOqK531KENc9y84Szmsh8nSLyrayIyKVheJGk=; b=iDzGD8GOavx6ALnyGBBLn3iXig
	WXx2bf7ym9AiSET1tmy1kAM5WgPcEvSuYBxqm3HYHMilfOAcUYFGQeeRTCpB4nBJdwWkLmhgYDL0P
	tosnjuQi4ov8SaKo/JAbLQSOzMNpt1hfQ7cS6IhZGq7qeFJqCncpc6biN4cOZM8edzB6EJMjI5ABP
	9bfcLkkcEReGxpCpJ5U3h494Lo8cQNgCeiUnm6nPevkM0OKNVpKxQdV2dF7rum3Hs2Nokk+fbP6ZI
	CTDuNLonNKiXVocBAekEYIypoaHkke3pCaxjo0OjKqGWgyE2frHKuIqRYxRcbtmUFifjcKwRh5Taz
	YvMWqSsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9NQC-00BAYx-1q;
	Wed, 14 Jun 2023 10:08:12 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q9NQ2-00BATJ-2w
	for barebox@lists.infradead.org;
	Wed, 14 Jun 2023 10:08:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q9NPt-0005cT-K6; Wed, 14 Jun 2023 12:07:53 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q9NPs-007KbY-Oy; Wed, 14 Jun 2023 12:07:52 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q9NPr-00E9vE-NZ; Wed, 14 Jun 2023 12:07:51 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: mfe@pengutronix.de,
	Jules Maselbas <jmaselbas@kalray.eu>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 14 Jun 2023 12:07:47 +0200
Message-Id: <20230614100747.3368109-11-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230614100747.3368109-1-a.fatoum@pengutronix.de>
References: <20230614100747.3368109-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230614_030803_124851_A8ED5B2C 
X-CRM114-Status: GOOD (  28.19  )
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
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 10/10] gpiolib: add of_xlate support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Marco Felsch <m.felsch@pengutronix.de>

The of_xlate function can be used to by drivers which need a other gpio
encoding than:

  gpio = <&phandle gpio-nr gpio-flags>;

The of_xlate code is as close as possible to the kernel counter part
which makes it easier to add 'struct gpio_desc' support later on.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - fix typos (Jules)
  - forward-declare struct of_phandle_args in header
  - use WARN_ON in if condition instead of WARN_ON(1) in body
  - use early exits in of_find_gpiochip_by_xlate
---
 drivers/gpio/gpiolib.c | 49 ++++++++++++++++++++++++++++++++++++
 drivers/of/of_gpio.c   | 56 +++++++++++++++++++++++++++++++++---------
 include/gpio.h         | 26 ++++++++++++++++++++
 3 files changed, 119 insertions(+), 12 deletions(-)

diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
index 5e753d1c7300..f353ce50196c 100644
--- a/drivers/gpio/gpiolib.c
+++ b/drivers/gpio/gpiolib.c
@@ -590,6 +590,41 @@ static int of_gpiochip_set_names(struct gpio_chip *chip)
 	return 0;
 }
 
+/**
+ * of_gpio_simple_xlate - translate gpiospec to the GPIO number and flags
+ * @gc:		pointer to the gpio_chip structure
+ * @gpiospec:	GPIO specifier as found in the device tree
+ * @flags:	a flags pointer to fill in
+ *
+ * This is simple translation function, suitable for the most 1:1 mapped
+ * GPIO chips. This function performs only one sanity check: whether GPIO
+ * is less than ngpios (that is specified in the gpio_chip).
+ */
+static int of_gpio_simple_xlate(struct gpio_chip *gc,
+				const struct of_phandle_args *gpiospec,
+				u32 *flags)
+{
+	/*
+	 * We're discouraging gpio_cells < 2, since that way you'll have to
+	 * write your own xlate function (that will have to retrieve the GPIO
+	 * number and the flags from a single gpio cell -- this is possible,
+	 * but not recommended).
+	 */
+	if (WARN_ON(gc->of_gpio_n_cells < 2))
+		return -EINVAL;
+
+	if (WARN_ON(gpiospec->args_count < gc->of_gpio_n_cells))
+		return -EINVAL;
+
+	if (gpiospec->args[0] >= gc->ngpio)
+		return -EINVAL;
+
+	if (flags)
+		*flags = gpiospec->args[1];
+
+	return gc->base + gpiospec->args[0];
+}
+
 static int of_gpiochip_add(struct gpio_chip *chip)
 {
 	struct device_node *np;
@@ -599,6 +634,20 @@ static int of_gpiochip_add(struct gpio_chip *chip)
 	if (!np)
 		return 0;
 
+	if (!chip->ops->of_xlate)
+		chip->ops->of_xlate = of_gpio_simple_xlate;
+
+	/*
+	 * Separate check since the 'struct gpio_ops' is always the same for
+	 * every 'struct gpio_chip' of the same instance (e.g. 'struct
+	 * imx_gpio_chip').
+	 */
+	if (chip->ops->of_xlate == of_gpio_simple_xlate)
+		chip->of_gpio_n_cells = 2;
+
+	if (chip->of_gpio_n_cells > MAX_PHANDLE_ARGS)
+		return -EINVAL;
+
 	ret = of_gpiochip_set_names(chip);
 	if (ret)
 		return ret;
diff --git a/drivers/of/of_gpio.c b/drivers/of/of_gpio.c
index 76398f75422f..7a6435e2296a 100644
--- a/drivers/of/of_gpio.c
+++ b/drivers/of/of_gpio.c
@@ -46,6 +46,44 @@ static void of_gpio_flags_quirks(struct device_node *np,
 
 }
 
+static struct gpio_chip *of_find_gpiochip_by_xlate(
+					struct of_phandle_args *gpiospec)
+{
+	struct gpio_chip *chip;
+	struct device *dev;
+
+	dev = of_find_device_by_node(gpiospec->np);
+	if (!dev) {
+		pr_debug("%s: unable to find device of node %pOF\n",
+			 __func__, gpiospec->np);
+		return NULL;
+	}
+
+	chip = gpio_get_chip_by_dev(dev);
+	if (!chip) {
+		pr_debug("%s: unable to find gpiochip\n", __func__);
+		return NULL;
+	}
+
+	if (!chip->ops->of_xlate ||
+	    chip->ops->of_xlate(chip, gpiospec, NULL) < 0) {
+		pr_err("%s: failed to execute of_xlate\n", __func__);
+		return NULL;
+	}
+
+	return chip;
+}
+
+static int of_xlate_and_get_gpiod_flags(struct gpio_chip *chip,
+					struct of_phandle_args *gpiospec,
+					enum of_gpio_flags *flags)
+{
+	if (chip->of_gpio_n_cells != gpiospec->args_count)
+		return -EINVAL;
+
+	return chip->ops->of_xlate(chip, gpiospec, flags);
+}
+
 /**
  * of_get_named_gpio_flags() - Get a GPIO number and flags to use with GPIO API
  * @np:		device node to get GPIO from
@@ -61,7 +99,7 @@ int of_get_named_gpio_flags(struct device_node *np, const char *propname,
 			   int index, enum of_gpio_flags *flags)
 {
 	struct of_phandle_args gpiospec;
-	struct device *dev;
+	struct gpio_chip *chip;
 	int ret;
 
 	ret = of_parse_phandle_with_args(np, propname, "#gpio-cells",
@@ -72,27 +110,21 @@ int of_get_named_gpio_flags(struct device_node *np, const char *propname,
 		return ret;
 	}
 
-	dev = of_find_device_by_node(gpiospec.np);
-	if (!dev) {
-		pr_debug("%s: unable to find device of node %s\n",
-			 __func__, gpiospec.np->full_name);
+	chip = of_find_gpiochip_by_xlate(&gpiospec);
+	if (!chip) {
 		ret = -EPROBE_DEFER;
 		goto out;
 	}
 
-	ret = gpio_get_num(dev, gpiospec.args[0]);
-	if (ret == -EPROBE_DEFER)
-		goto out;
+	ret = of_xlate_and_get_gpiod_flags(chip, &gpiospec, flags);
 	if (ret < 0) {
 		pr_err("%s: unable to get gpio num of device %s: %d\n",
-			__func__, dev_name(dev), ret);
+			__func__, dev_name(chip->dev), ret);
 		goto out;
 	}
 
-	if (flags) {
-		*flags = gpiospec.args[1];
+	if (flags)
 		of_gpio_flags_quirks(np, propname, flags, index);
-	}
 
 out:
 	of_node_put(gpiospec.np);
diff --git a/include/gpio.h b/include/gpio.h
index 5f2c16584c3b..9951532084ac 100644
--- a/include/gpio.h
+++ b/include/gpio.h
@@ -168,6 +168,7 @@ int gpio_array_to_id(const struct gpio *array, size_t num, u32 *val);
 #endif
 
 struct gpio_chip;
+struct of_phandle_args;
 
 struct gpio_ops {
 	int (*request)(struct gpio_chip *chip, unsigned offset);
@@ -177,6 +178,22 @@ struct gpio_ops {
 	int (*get_direction)(struct gpio_chip *chip, unsigned offset);
 	int (*get)(struct gpio_chip *chip, unsigned offset);
 	void (*set)(struct gpio_chip *chip, unsigned offset, int value);
+
+#if defined(CONFIG_OF_GPIO)
+	/*
+	 * If CONFIG_OF_GPIO is enabled, then all GPIO controllers described in
+	 * the device tree automatically may have an OF translation
+	 */
+
+	/**
+	 * @of_xlate:
+	 *
+	 * Callback to translate a device tree GPIO specifier into a chip-
+	 * relative GPIO number and flags.
+	 */
+	int (*of_xlate)(struct gpio_chip *gc,
+			const struct of_phandle_args *gpiospec, u32 *flags);
+#endif
 };
 
 struct gpio_chip {
@@ -185,6 +202,15 @@ struct gpio_chip {
 	int base;
 	int ngpio;
 
+#if defined(CONFIG_OF_GPIO)
+	/**
+	 * @of_gpio_n_cells:
+	 *
+	 * Number of cells used to form the GPIO specifier.
+	 */
+	unsigned int of_gpio_n_cells;
+#endif
+
 	struct gpio_ops *ops;
 
 	struct list_head list;
-- 
2.39.2




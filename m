Delivery-date: Fri, 09 Aug 2024 16:24:53 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1scQY1-007rXf-01
	for lore@lore.pengutronix.de;
	Fri, 09 Aug 2024 16:24:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1scQY0-0008Qv-5O
	for lore@pengutronix.de; Fri, 09 Aug 2024 16:24:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OB90l7C226bF7wHmx/BVNix9lh+4169hkc6utyEV7K0=; b=vklClJgkMKNwRIwIj50tWFZjnI
	NYlos8ms20KAAaW12dVaNVeJ5r1Zi7Q8pbWa1tjVEoJgDIMtBrMYJ3TzvKmQ/yFcazf7XP9knyaBx
	p3NTzn6dDz3aAKP7vSwGb8eYCKw5w8HGhgy0AcFQ1FIkUbzgFMiP/okmx9mOj7ffVWF2sadLRmbUZ
	3a8ajXtxqyyktsSuFX9p6dA2SauFn492iBI4afHSkrrfcziwjlCbJfONlfi3a3E3e3KPtEdei/fkz
	lytVFrX/sgs+b9/rcWjKnp/Nj9u5BVvUjNkWmSHnflzLUkKnf/Toc1U7Yii9hHUjaM87ZGulv79zL
	1zjcB03g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scQXb-0000000BWVa-2Web;
	Fri, 09 Aug 2024 14:24:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scQXR-0000000BWL9-0M40
	for barebox@lists.infradead.org;
	Fri, 09 Aug 2024 14:24:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1scQXH-0007os-JW; Fri, 09 Aug 2024 16:24:07 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1scQXH-005geU-2v; Fri, 09 Aug 2024 16:24:07 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1scQXG-001K4s-3C;
	Fri, 09 Aug 2024 16:24:07 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  9 Aug 2024 16:24:00 +0200
Message-Id: <20240809142405.315244-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240809142405.315244-1-a.fatoum@pengutronix.de>
References: <20240809142405.315244-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240809_072417_327869_3715F5B8 
X-CRM114-Status: GOOD (  16.10  )
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
Subject: [PATCH 06/11] gpiolib: store all OF flags into GPIO descriptor
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The last cell in GPIO OF description usually only holds either
GPIO_ACTIVE_HIGH or GPIO_ACTIVE_LOW, but some device trees also contain
extra flags like GPIO_PULL_UP or GPIO_OPEN_DRAIN.

To prepare acting on these flags, store all of them into the GPIO descriptor.

Like Linux, we have two kinds of flags, lookup flags from DT and request
flags from the drivers. To avoid confusion, we give gpiodesc_request_one
two parameters for each and have that function worry about combining
them.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/gpio/gpiolib.c | 45 ++++++++++++++++++++++++------------------
 1 file changed, 26 insertions(+), 19 deletions(-)

diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
index 0c6c0fcc1aeb..539fd3c7c25f 100644
--- a/drivers/gpio/gpiolib.c
+++ b/drivers/gpio/gpiolib.c
@@ -504,8 +504,20 @@ int gpio_direction_input(unsigned gpio)
 }
 EXPORT_SYMBOL(gpio_direction_input);
 
-static int gpiodesc_request_one(struct gpio_desc *desc, unsigned long flags,
-				const char *label)
+/**
+ * gpiodesc_request_one - request GPIO descriptor
+ * @desc: GPIO descriptor
+ * @lflags: OF lookup flags for this GPIO or 0 if default
+ * such as GPIOF_ACTIVE_LOW
+ * @dflags: descriptor request flags (GPIOF_*) for this GPIO or 0 if default
+ *
+ * Function is used to request a GPIO descriptor and configure it for use.
+ *
+ * Returns:
+ * 0 on success and a negative error code otherwise.
+ */
+static int gpiodesc_request_one(struct gpio_desc *desc, unsigned long lflags,
+				unsigned long dflags, const char *label)
 {
 	int err;
 
@@ -513,16 +525,17 @@ static int gpiodesc_request_one(struct gpio_desc *desc, unsigned long flags,
 	 * Not all of the flags below are mulit-bit, but, for the sake
 	 * of consistency, the code is written as if all of them were.
 	 */
-	const bool active_low  = (flags & GPIOF_ACTIVE_LOW) == GPIOF_ACTIVE_LOW;
-	const bool dir_in      = (flags & GPIOF_DIR_IN) == GPIOF_DIR_IN;
-	const bool logical     = (flags & GPIOF_LOGICAL) == GPIOF_LOGICAL;
-	const bool init_active = (flags & GPIOF_INIT_ACTIVE) == GPIOF_INIT_ACTIVE;
-	const bool init_high   = (flags & GPIOF_INIT_HIGH) == GPIOF_INIT_HIGH;
+	const bool active_low  = (dflags & GPIOF_ACTIVE_LOW) == GPIOF_ACTIVE_LOW;
+	const bool dir_in      = (dflags & GPIOF_DIR_IN) == GPIOF_DIR_IN;
+	const bool logical     = (dflags & GPIOF_LOGICAL) == GPIOF_LOGICAL;
+	const bool init_active = (dflags & GPIOF_INIT_ACTIVE) == GPIOF_INIT_ACTIVE;
+	const bool init_high   = (dflags & GPIOF_INIT_HIGH) == GPIOF_INIT_HIGH;
 
 	err = gpiodesc_request(desc, label);
 	if (err)
 		return err;
 
+	desc->flags |= lflags;
 	if (active_low)
 		desc->flags |= OF_GPIO_ACTIVE_LOW;
 
@@ -552,7 +565,7 @@ int gpio_request_one(unsigned gpio, unsigned long flags, const char *label)
 	if (!desc)
 		return -ENODEV;
 
-	return gpiodesc_request_one(desc, flags, label);
+	return gpiodesc_request_one(desc, 0, flags, label);
 }
 EXPORT_SYMBOL_GPL(gpio_request_one);
 
@@ -656,7 +669,7 @@ static int of_hog_gpio(struct device_node *np, struct gpio_chip *chip,
 {
 	struct device_node *chip_np = chip->dev->of_node;
 	unsigned long flags = 0;
-	u32 gpio_cells, gpio_num, gpio_flags;
+	u32 gpio_cells, gpio_num, of_flags;
 	int ret;
 	const char *name = NULL;
 
@@ -677,13 +690,10 @@ static int of_hog_gpio(struct device_node *np, struct gpio_chip *chip,
 		return ret;
 
 	ret = of_property_read_u32_index(np, "gpios", idx * gpio_cells + 1,
-					 &gpio_flags);
+					 &of_flags);
 	if (ret)
 		return ret;
 
-	if (gpio_flags & OF_GPIO_ACTIVE_LOW)
-		flags |= GPIOF_ACTIVE_LOW;
-
 	/*
 	 * Note that, in order to be compatible with Linux, the code
 	 * below interprets 'output-high' as to mean 'output-active'.
@@ -711,7 +721,7 @@ static int of_hog_gpio(struct device_node *np, struct gpio_chip *chip,
 		name = np->name;
 
 	return gpiodesc_request_one(gpiochip_get_desc(chip, gpio_num),
-				    flags, name);
+				    of_flags, flags, name);
 }
 
 static int of_gpiochip_scan_hogs(struct gpio_chip *chip)
@@ -901,7 +911,7 @@ static struct property *of_find_gpio_property(struct device_node *np,
 struct gpio_desc *dev_gpiod_get_index(struct device *dev,
 			struct device_node *np,
 			const char *con_id, int index,
-			enum gpiod_flags flags,
+			enum gpiod_flags dflags,
 			const char *label)
 {
 	struct gpio_desc *desc = NULL;
@@ -925,9 +935,6 @@ struct gpio_desc *dev_gpiod_get_index(struct device *dev,
 
 	desc = gpio_to_desc(gpio);
 
-	if (of_flags & OF_GPIO_ACTIVE_LOW)
-		flags |= GPIOF_ACTIVE_LOW;
-
 	buf = NULL;
 
 	if (!label) {
@@ -937,7 +944,7 @@ struct gpio_desc *dev_gpiod_get_index(struct device *dev,
 			label = dev_name(dev);
 	}
 
-	ret = gpiodesc_request_one(desc, flags, label);
+	ret = gpiodesc_request_one(desc, of_flags, dflags, label);
 	free(buf);
 
 	return ret ? ERR_PTR(ret): desc;
-- 
2.39.2




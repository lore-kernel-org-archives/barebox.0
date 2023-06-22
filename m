Delivery-date: Thu, 22 Jun 2023 09:25:18 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qCEgx-00GhQ2-Kt
	for lore@lore.pengutronix.de; Thu, 22 Jun 2023 09:25:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qCEgv-0001Zf-54
	for lore@pengutronix.de; Thu, 22 Jun 2023 09:25:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=chBgTYCF7XrUCxqYvbsgLBTOTe44wTYg0PgMeeWNOVY=; b=LcJUeB18VK66mud/diO1T3CFyY
	qeOqDPVl3HVQUvR6srIVy7r1io4QzYb8kS6P0m1r3Z07/71wTlx9tz6/Hq5hEiCwlMgeGSc2cx5Ae
	HOSPi/YH+t7UCEy9tlAaVVE3bIa8YGWzEPvKne8HJ462vGp2fu+uBaiC5uMBMB4Tm2urzKSj1pHso
	fG9mNcmUm31BT5WBGdaAv7YwCWi1wjTVxOBpnJK8mrWFR6/F4v6VTRWXP3AYXgUNd3G2E0lAtn32E
	6r8YkEhc1g57bzt1qDrKliLHDoLqXWJu7aIcjFNkLY/VXX1NXmjLeI3OU34/ykMOHf81X6c1VZQiT
	sNjGYEJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qCEfZ-00HDv9-1i;
	Thu, 22 Jun 2023 07:23:53 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qCEfR-00HDps-2l
	for barebox@lists.infradead.org;
	Thu, 22 Jun 2023 07:23:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qCEfM-0000zA-LF; Thu, 22 Jun 2023 09:23:40 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qCEfM-009Djb-00; Thu, 22 Jun 2023 09:23:40 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qCEfL-005cRp-0O;
	Thu, 22 Jun 2023 09:23:39 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Marco Felsch <m.felsch@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 22 Jun 2023 09:23:29 +0200
Message-Id: <20230622072329.1339317-10-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230622072329.1339317-1-a.fatoum@pengutronix.de>
References: <20230622072329.1339317-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230622_002345_902789_F6ED99C7 
X-CRM114-Status: GOOD (  12.37  )
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
Subject: [PATCH v2 9/9] gpiolib: rename gpioinfo_ to gpiodesc_
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Before renaming struct gpio_info to struct gpio_desc, the name made
sense. With the rename, it might confuse readers, so rename it to
gpiodesc_ instead. The naming scheme is thus: gpiod_ for public API
and gpiodesc_ for private API.

Suggested-by: Marco Felsch <m.felsch@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/gpio/gpiolib.c | 34 +++++++++++++++++-----------------
 1 file changed, 17 insertions(+), 17 deletions(-)

diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
index 2808ac3612fe..bcfdd5a0dd30 100644
--- a/drivers/gpio/gpiolib.c
+++ b/drivers/gpio/gpiolib.c
@@ -81,7 +81,7 @@ static struct gpio_desc *gpio_to_desc(unsigned gpio)
 	return NULL;
 }
 
-static unsigned gpioinfo_chip_offset(const struct gpio_desc *desc)
+static unsigned gpiodesc_chip_offset(const struct gpio_desc *desc)
 {
 	return (desc - gpio_desc) - desc->chip->base;
 }
@@ -95,7 +95,7 @@ static int gpio_adjust_value(const struct gpio_desc *desc,
 	return !!value ^ desc->active_low;
 }
 
-static int gpioinfo_request(struct gpio_desc *desc, const char *label)
+static int gpiodesc_request(struct gpio_desc *desc, const char *label)
 {
 	int ret;
 
@@ -108,7 +108,7 @@ static int gpioinfo_request(struct gpio_desc *desc, const char *label)
 
 	if (desc->chip->ops->request) {
 		ret = desc->chip->ops->request(desc->chip,
-					     gpioinfo_chip_offset(desc));
+					     gpiodesc_chip_offset(desc));
 		if (ret)
 			goto done;
 	}
@@ -169,16 +169,16 @@ int gpio_request(unsigned gpio, const char *label)
 		return -ENODEV;
 	}
 
-	return gpioinfo_request(desc, label);
+	return gpiodesc_request(desc, label);
 }
 
-static void gpioinfo_free(struct gpio_desc *desc)
+static void gpiodesc_free(struct gpio_desc *desc)
 {
 	if (!desc->requested)
 		return;
 
 	if (desc->chip->ops->free)
-		desc->chip->ops->free(desc->chip, gpioinfo_chip_offset(desc));
+		desc->chip->ops->free(desc->chip, gpiodesc_chip_offset(desc));
 
 	desc->requested = false;
 	desc->active_low = false;
@@ -190,7 +190,7 @@ void gpio_free(unsigned gpio)
 {
 	struct gpio_desc *desc = gpio_to_desc(gpio);
 
-	gpioinfo_free(desc);
+	gpiodesc_free(desc);
 }
 
 /**
@@ -204,7 +204,7 @@ void gpiod_put(struct gpio_desc *desc)
 	if (!desc)
 		return;
 
-	gpioinfo_free(desc);
+	gpiodesc_free(desc);
 }
 EXPORT_SYMBOL(gpiod_put);
 
@@ -236,7 +236,7 @@ void gpiod_set_raw_value(struct gpio_desc *desc, int value)
 	VALIDATE_DESC_VOID(desc);
 
 	if (desc->chip->ops->set)
-		desc->chip->ops->set(desc->chip, gpioinfo_chip_offset(desc), value);
+		desc->chip->ops->set(desc->chip, gpiodesc_chip_offset(desc), value);
 }
 EXPORT_SYMBOL(gpiod_set_raw_value);
 
@@ -294,7 +294,7 @@ int gpiod_get_raw_value(const struct gpio_desc *desc)
 	if (!desc->chip->ops->get)
 		return -ENOSYS;
 
-	return desc->chip->ops->get(desc->chip, gpioinfo_chip_offset(desc));
+	return desc->chip->ops->get(desc->chip, gpiodesc_chip_offset(desc));
 }
 EXPORT_SYMBOL_GPL(gpiod_get_raw_value);
 
@@ -359,7 +359,7 @@ int gpiod_direction_output_raw(struct gpio_desc *desc, int value)
 		return -ENOSYS;
 
 	return desc->chip->ops->direction_output(desc->chip,
-					       gpioinfo_chip_offset(desc), value);
+					       gpiodesc_chip_offset(desc), value);
 }
 EXPORT_SYMBOL(gpiod_direction_output_raw);
 
@@ -426,7 +426,7 @@ int gpiod_direction_input(struct gpio_desc *desc)
 		return -ENOSYS;
 
 	return desc->chip->ops->direction_input(desc->chip,
-					      gpioinfo_chip_offset(desc));
+					      gpiodesc_chip_offset(desc));
 }
 EXPORT_SYMBOL(gpiod_direction_input);
 
@@ -446,7 +446,7 @@ int gpio_direction_input(unsigned gpio)
 }
 EXPORT_SYMBOL(gpio_direction_input);
 
-static int gpioinfo_request_one(struct gpio_desc *desc, unsigned long flags,
+static int gpiodesc_request_one(struct gpio_desc *desc, unsigned long flags,
 				const char *label)
 {
 	int err;
@@ -461,7 +461,7 @@ static int gpioinfo_request_one(struct gpio_desc *desc, unsigned long flags,
 	const bool init_active = (flags & GPIOF_INIT_ACTIVE) == GPIOF_INIT_ACTIVE;
 	const bool init_high   = (flags & GPIOF_INIT_HIGH) == GPIOF_INIT_HIGH;
 
-	err = gpioinfo_request(desc, label);
+	err = gpiodesc_request(desc, label);
 	if (err)
 		return err;
 
@@ -475,7 +475,7 @@ static int gpioinfo_request_one(struct gpio_desc *desc, unsigned long flags,
 		err = gpiod_direction_output_raw(desc, init_high);
 
 	if (err)
-		gpioinfo_free(desc);
+		gpiodesc_free(desc);
 
 	return err;
 }
@@ -493,7 +493,7 @@ int gpio_request_one(unsigned gpio, unsigned long flags, const char *label)
 	if (!desc)
 		return -ENODEV;
 
-	return gpioinfo_request_one(desc, flags, label);
+	return gpiodesc_request_one(desc, flags, label);
 }
 EXPORT_SYMBOL_GPL(gpio_request_one);
 
@@ -884,7 +884,7 @@ struct gpio_desc *dev_gpiod_get_index(struct device *dev,
 			label = dev_name(dev);
 	}
 
-	ret = gpioinfo_request_one(desc, flags, label);
+	ret = gpiodesc_request_one(desc, flags, label);
 	free(buf);
 
 	return ret ? ERR_PTR(ret): desc;
-- 
2.39.2




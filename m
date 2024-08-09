Delivery-date: Fri, 09 Aug 2024 16:24:42 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1scQXq-007rVW-1l
	for lore@lore.pengutronix.de;
	Fri, 09 Aug 2024 16:24:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1scQXp-0008Fn-0L
	for lore@pengutronix.de; Fri, 09 Aug 2024 16:24:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JstZKRx2KSDsnPje6Iy0RjxUNPAcghKdw0QsRmQYX7A=; b=Lw1hw4Ed39xYuBOPBRi7ICCI5Y
	hz1O8kEuah3LddXGyA+nZ5AvxHcdevc37FKYfAPGeLOr0XpM3UrRENyHDpc8rNLHF2M1XOj1R2uIK
	6XlfFnD/rm0CzUqmfAR0azwD5e4TbYUI0gP6bbXzdi6kDi7TzzV9X+yf6ZV5JOMiVjsciO+ipC5f7
	sBMtQda3xVYTyoqKjInBP3aSZO5ltZe2R35To34i6zDHhNla3s+7PHfc+szmAJP50w/3ncBeDSAzT
	A34rslygN7sDNFeEHwtf5zdykzWIHUQx85VFO69GZf7M0IZHDMPYDwYsimoQkmCb+q8VCtpVCLEkn
	B+iaSMdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scQXN-0000000BWIP-2NX7;
	Fri, 09 Aug 2024 14:24:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scQXI-0000000BWEX-3gvA
	for barebox@lists.infradead.org;
	Fri, 09 Aug 2024 14:24:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1scQXH-0007on-Fi; Fri, 09 Aug 2024 16:24:07 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1scQXG-005geO-WF; Fri, 09 Aug 2024 16:24:07 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1scQXG-001K4s-2u;
	Fri, 09 Aug 2024 16:24:06 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  9 Aug 2024 16:23:58 +0200
Message-Id: <20240809142405.315244-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240809142405.315244-1-a.fatoum@pengutronix.de>
References: <20240809142405.315244-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240809_072408_959740_413D5A07 
X-CRM114-Status: GOOD (  16.52  )
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
Subject: [PATCH 04/11] gpiolib: turn request/active_low into bit flags
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We will be adding mroe flags for pull and single-ended pin
configuration, so prepare for that by turning the individual struct
members of bool types into a flag field.

Linux defines its own flags here (e.g. FLAG_PULL_UP) and translates
to/from them, but for barebox, let's just use the values described in
enum of_gpio_flags, even for non-OF platforms.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/gpio/gpiolib.c | 41 ++++++++++++++++++++++++++++-------------
 include/of_gpio.h      |  1 +
 2 files changed, 29 insertions(+), 13 deletions(-)

diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
index e8d788d4d791..70c78a9ad4af 100644
--- a/drivers/gpio/gpiolib.c
+++ b/drivers/gpio/gpiolib.c
@@ -16,10 +16,9 @@ static LIST_HEAD(chip_list);
 
 struct gpio_desc {
 	struct gpio_chip *chip;
-	bool requested;
-	bool active_low;
 	char *label;
 	const char *name;
+	u32 flags; /* OR-d enum of_gpio_flags */
 };
 
 /*
@@ -62,9 +61,14 @@ static int gpio_desc_alloc(void)
 }
 pure_initcall(gpio_desc_alloc);
 
+static inline bool gpiod_is_requested(struct gpio_desc *desc)
+{
+	return desc->flags & OF_GPIO_REQUESTED;
+}
+
 static int gpio_ensure_requested(struct gpio_desc *desc, int gpio)
 {
-	if (desc->requested)
+	if (gpiod_is_requested(desc))
 		return 0;
 
 	return gpio_request(gpio, "gpio");
@@ -86,20 +90,28 @@ static unsigned gpiodesc_chip_offset(const struct gpio_desc *desc)
 	return (desc - gpio_desc) - desc->chip->base + desc->chip->gpio_offset;
 }
 
+static int gpiod_is_active_low(const struct gpio_desc *desc)
+{
+	return desc->flags & OF_GPIO_ACTIVE_LOW;
+}
+
 static int gpio_adjust_value(const struct gpio_desc *desc,
 			     int value)
 {
 	if (value < 0)
 		return value;
 
-	return !!value ^ desc->active_low;
+	if (gpiod_is_active_low(desc))
+		value = !value;
+
+	return (bool)value;
 }
 
 static int gpiodesc_request(struct gpio_desc *desc, const char *label)
 {
 	int ret;
 
-	if (desc->requested) {
+	if (gpiod_is_requested(desc)) {
 		ret = -EBUSY;
 		goto done;
 	}
@@ -113,8 +125,7 @@ static int gpiodesc_request(struct gpio_desc *desc, const char *label)
 			goto done;
 	}
 
-	desc->requested = true;
-	desc->active_low = false;
+	desc->flags = OF_GPIO_REQUESTED;
 	desc->label = xstrdup(label);
 
 done:
@@ -132,7 +143,7 @@ int gpio_find_by_label(const char *label)
 	for (i = 0; i < ARCH_NR_GPIOS; i++) {
 		struct gpio_desc *info = &gpio_desc[i];
 
-		if (!info->requested || !info->chip || !info->label)
+		if (!gpiod_is_requested(info) || !info->chip || !info->label)
 			continue;
 
 		if (!strcmp(info->label, label))
@@ -189,14 +200,13 @@ bool gpio_slice_acquired(unsigned gpio)
 
 static void gpiodesc_free(struct gpio_desc *desc)
 {
-	if (!desc->requested)
+	if (!gpiod_is_requested(desc))
 		return;
 
 	if (desc->chip->ops->free)
 		desc->chip->ops->free(desc->chip, gpiodesc_chip_offset(desc));
 
-	desc->requested = false;
-	desc->active_low = false;
+	desc->flags = 0;
 	free(desc->label);
 	desc->label = NULL;
 }
@@ -508,7 +518,8 @@ static int gpiodesc_request_one(struct gpio_desc *desc, unsigned long flags,
 	if (err)
 		return err;
 
-	desc->active_low = active_low;
+	if (active_low)
+		desc->flags |= OF_GPIO_ACTIVE_LOW;
 
 	if (dir_in)
 		err = gpiod_direction_input(desc);
@@ -1148,6 +1159,7 @@ static int do_gpiolib(int argc, char *argv[])
 
 	for (i = 0; i < ARCH_NR_GPIOS; i++) {
 		struct gpio_desc *desc = &gpio_desc[i];
+		bool requested, active_low;
 		int val = -1, dir = -1;
 		int idx;
 
@@ -1173,10 +1185,13 @@ static int do_gpiolib(int argc, char *argv[])
 		if (desc->chip->ops->get)
 			val = desc->chip->ops->get(desc->chip, idx);
 
+		requested  = gpiod_is_requested(desc);
+		active_low = gpiod_is_active_low(desc);
+
 		printf("  GPIO %4d: %-3s %-3s %-9s %-20s %-20s\n", chip ? idx : i,
 			(dir < 0) ? "unk" : ((dir == GPIOF_DIR_IN) ? "in" : "out"),
 			(val < 0) ? "unk" : ((val == 0) ? "lo" : "hi"),
-		        desc->requested ? (desc->active_low ? "active low" : "true") : "false",
+		        requested ? (active_low ? "active low" : "true") : "false",
 			desc->name ? desc->name : "",
 			desc->label ? desc->label : "");
 	}
diff --git a/include/of_gpio.h b/include/of_gpio.h
index 794a9926cdbb..a7a3493473c8 100644
--- a/include/of_gpio.h
+++ b/include/of_gpio.h
@@ -17,6 +17,7 @@
  */
 enum of_gpio_flags {
 	OF_GPIO_ACTIVE_LOW = 0x1,
+	OF_GPIO_REQUESTED = 0x80000000, /* internal use */
 };
 
 #ifdef CONFIG_OF_GPIO
-- 
2.39.2




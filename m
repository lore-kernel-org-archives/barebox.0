Delivery-date: Wed, 14 Jun 2023 15:57:08 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q9Qzm-006j6f-1P
	for lore@lore.pengutronix.de; Wed, 14 Jun 2023 15:57:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q9Qzj-0005l8-Et
	for lore@pengutronix.de; Wed, 14 Jun 2023 15:57:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vjEA2uXedrB+axVR/9twvjHQHNz91xZNKFv3iMNhTfg=; b=Uskd4RE+++nHm3QbDKp7HnGZl9
	NzETrG6dB/fwMVKzp+ZiqBibGvIk2c7QCC1FMpti4DuLEr4QirtrD2cZYhKB4WpF6RTAP6/2s28iL
	wYpXOpl0hTH3sag/Prm27sStHQHPWe6jotice/ljo0K6Ppwh4HzbyByqmKtoOjJhd/XVD1faCc+Kv
	6sCx6NqvEOQRKkKOvf6/cZLz0JjKXewXEPJcT4qexYY1Bm2waH5X0QFd6Prt7NTEUvN2V2WUx4QK3
	NsRf4y2+tn0A2z5NoF/FJhYrM45OivYZMfjMafs1FMfZoNK9yGZz+AUPRjDq1QTJrTuRtOylYDxWN
	Y80oMAXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9Qyd-00BpAn-0r;
	Wed, 14 Jun 2023 13:55:59 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q9QyV-00Bp5V-1x
	for barebox@lists.infradead.org;
	Wed, 14 Jun 2023 13:55:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q9QyU-0005Dr-D6; Wed, 14 Jun 2023 15:55:50 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q9QyT-007Mxt-Q8; Wed, 14 Jun 2023 15:55:49 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q9QyR-008D8x-Hy; Wed, 14 Jun 2023 15:55:47 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 14 Jun 2023 15:54:50 +0200
Message-Id: <20230614135452.1884124-9-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230614135452.1884124-1-a.fatoum@pengutronix.de>
References: <20230614135452.1884124-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230614_065551_649595_65D6D73A 
X-CRM114-Status: GOOD (  15.06  )
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
Subject: [PATCH 08/10] gpiolib: factor out finding gpio property
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The GPIO property may end with -gpios or -gpio or if there's only a
single GPIO, may have no dash at all. We will add more functions that
need to find the gpio property, so let's factor this out into
of_find_gpio_property.

This introduces functional change: When a foo-gpios property is found,
but points at an invalid GPIO, that failure will be propagated instead
of trying foo-gpio. This is deemed acceptable as this sounds like the
saner choice anyway.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/gpio/gpiolib.c | 61 +++++++++++++++++++++++++++---------------
 1 file changed, 39 insertions(+), 22 deletions(-)

diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
index 25d91d250dc8..3e57cf6239c3 100644
--- a/drivers/gpio/gpiolib.c
+++ b/drivers/gpio/gpiolib.c
@@ -794,21 +794,12 @@ static const char *gpio_suffixes[] = {
 	"gpio",
 };
 
-/* Linux compatibility helper: Get a GPIO descriptor from device tree */
-struct gpio_desc *dev_gpiod_get_index(struct device *dev,
-			struct device_node *np,
-			const char *_con_id, int index,
-			enum gpiod_flags flags,
-			const char *label)
+static struct property *of_find_gpio_property(struct device_node *np,
+					      const char *_con_id)
 {
-	struct gpio_desc *desc = NULL;
-	enum of_gpio_flags of_flags;
-	char *buf = NULL, *con_id;
-	int gpio;
-	int ret, i;
-
-	if (!np)
-		return ERR_PTR(-ENODEV);
+	struct property *pp = NULL;
+	char *con_id;
+	int i;
 
 	for (i = 0; i < ARRAY_SIZE(gpio_suffixes); i++) {
 		if (_con_id)
@@ -819,26 +810,52 @@ struct gpio_desc *dev_gpiod_get_index(struct device *dev,
 		if (!con_id)
 			return ERR_PTR(-ENOMEM);
 
-		gpio = of_get_named_gpio_flags(np, con_id, index, &of_flags);
+		pp = of_find_property(np, con_id, NULL);
 		free(con_id);
 
-		if (gpio_is_valid(gpio)) {
-			desc = gpio_to_desc(gpio);
-			break;
-		}
+		if (pp)
+			return pp;
 	}
 
-	if (!desc)
+	return NULL;
+}
+
+/* Linux compatibility helper: Get a GPIO descriptor from device tree */
+struct gpio_desc *dev_gpiod_get_index(struct device *dev,
+			struct device_node *np,
+			const char *con_id, int index,
+			enum gpiod_flags flags,
+			const char *label)
+{
+	struct gpio_desc *desc = NULL;
+	enum of_gpio_flags of_flags;
+	struct property *pp;
+	char *buf = NULL;
+	int gpio;
+	int ret;
+
+	if (!np)
+		return ERR_PTR(-ENODEV);
+
+	pp = of_find_gpio_property(np, con_id);
+	if (!pp)
+		return ERR_PTR(-ENOENT);
+
+	gpio = of_get_named_gpio_flags(dev->device_node, pp->name,
+				       index, &of_flags);
+	if (!gpio_is_valid(gpio))
 		return ERR_PTR(gpio < 0 ? gpio : -EINVAL);
 
+	desc = gpio_to_desc(gpio);
+
 	if (of_flags & OF_GPIO_ACTIVE_LOW)
 		flags |= GPIOF_ACTIVE_LOW;
 
 	buf = NULL;
 
 	if (!label) {
-		if (_con_id)
-			label = buf = basprintf("%s-%s", dev_name(dev), _con_id);
+		if (con_id)
+			label = buf = basprintf("%s-%s", dev_name(dev), con_id);
 		else
 			label = dev_name(dev);
 	}
-- 
2.39.2




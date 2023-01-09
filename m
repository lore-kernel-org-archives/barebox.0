Delivery-date: Mon, 09 Jan 2023 17:00:26 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pEuZW-006oFQ-W3
	for lore@lore.pengutronix.de; Mon, 09 Jan 2023 17:00:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pEuZV-0002z1-4C
	for lore@pengutronix.de; Mon, 09 Jan 2023 17:00:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=b2AQLMero1km4/MEgZDmGPrBIOOvJrkWMSvY4h4HMAk=; b=lOIH6D9v6OZsa9+KGtKK03NxOr
	DrDr3UC2mLSKCZAu/fvww3NZ/iP0ZnTZ/nWbGV8C9dw2tNdccEFOZCPjGR8CXxL545IN1dbeoWezx
	bcrrTIDlnpdH74DbXFav1xwebYpgcVEBnC8afBv3y2pt8UJ/aX+5EbGKACi+ex/hCmp2xwQbHNCM1
	62kU+eTpd1SV+stYLe68/w9sJhma1SngRnIBlOHRyW9WNeW4SjqaAKAV3z43zUUxFD6eBzN0kWOkw
	uNOc6om1EIM21xQ6EtVgE7FcuJKZQ/31EzJkHLnNLJMznejTqW1qpTXuds8REfseXSPKrhq/5QSsc
	DX7r8lqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEuY5-002RsJ-IH; Mon, 09 Jan 2023 15:58:57 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEuXr-002Rj7-DZ
	for barebox@lists.infradead.org; Mon, 09 Jan 2023 15:58:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pEuXq-0002Wa-7U; Mon, 09 Jan 2023 16:58:42 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pEuXp-004sjG-LS; Mon, 09 Jan 2023 16:58:41 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pEuXo-009Jbs-Fh; Mon, 09 Jan 2023 16:58:40 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  9 Jan 2023 16:58:35 +0100
Message-Id: <20230109155836.2220277-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230109155836.2220277-1-a.fatoum@pengutronix.de>
References: <20230109155836.2220277-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230109_075843_625156_864F53B6 
X-CRM114-Status: GOOD (  15.99  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/4] gpiolib: implement dev_gpiod_get_index
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Linux devm_gpiod_get_index is a superset of devm_gpiod_get.
We already support gpiod_get to simplify kernel code porting, so
reimplement it in terms of a new dev_gpiod_get_index to simplify
porting kernel code using that as well.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/gpio/gpiolib.c | 23 ++++++++++++++---------
 include/gpiod.h        | 36 +++++++++++++++++++++++++++++++++++-
 2 files changed, 49 insertions(+), 10 deletions(-)

diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
index 773d07c1308f..4e8244b25f00 100644
--- a/drivers/gpio/gpiolib.c
+++ b/drivers/gpio/gpiolib.c
@@ -542,17 +542,20 @@ static const char *gpio_suffixes[] = {
 	"gpio",
 };
 
+#ifdef CONFIG_OFDEVICE
 /* Linux compatibility helper: Get a GPIO descriptor from device tree */
-int gpiod_get(struct device *dev, const char *_con_id, enum gpiod_flags flags)
+int dev_gpiod_get_index(struct device *dev,
+			struct device_node *np,
+			const char *_con_id, int index,
+			enum gpiod_flags flags,
+			const char *label)
 {
-	struct device_node *np = dev->of_node;
 	enum of_gpio_flags of_flags;
-	const char *label = dev_name(dev);
 	char *buf = NULL, *con_id;
 	int gpio;
 	int ret, i;
 
-	if (!IS_ENABLED(CONFIG_OFDEVICE) || !dev->of_node)
+	if (!np)
 		return -ENODEV;
 
 	for (i = 0; i < ARRAY_SIZE(gpio_suffixes); i++) {
@@ -564,7 +567,7 @@ int gpiod_get(struct device *dev, const char *_con_id, enum gpiod_flags flags)
 		if (!con_id)
 			return -ENOMEM;
 
-		gpio = of_get_named_gpio_flags(np, con_id, 0, &of_flags);
+		gpio = of_get_named_gpio_flags(np, con_id, index, &of_flags);
 		free(con_id);
 
 		if (gpio_is_valid(gpio))
@@ -579,10 +582,11 @@ int gpiod_get(struct device *dev, const char *_con_id, enum gpiod_flags flags)
 
 	buf = NULL;
 
-	if (_con_id) {
-		label = buf = basprintf("%s-%s", dev_name(dev), _con_id);
-		if (!label)
-			return -ENOMEM;
+	if (!label) {
+		if (con_id)
+			label = buf = basprintf("%s-%s", dev_name(dev), _con_id);
+		else
+			label = dev_name(dev);
 	}
 
 	ret = gpio_request_one(gpio, flags, label);
@@ -590,6 +594,7 @@ int gpiod_get(struct device *dev, const char *_con_id, enum gpiod_flags flags)
 
 	return ret ?: gpio;
 }
+#endif
 
 int gpiochip_add(struct gpio_chip *chip)
 {
diff --git a/include/gpiod.h b/include/gpiod.h
index cc3fb966a010..f76cc98155e0 100644
--- a/include/gpiod.h
+++ b/include/gpiod.h
@@ -4,6 +4,7 @@
 
 #include <gpio.h>
 #include <of_gpio.h>
+#include <driver.h>
 
 /**
  * Optional flags that can be passed to one of gpiod_* to configure direction
@@ -20,8 +21,41 @@ enum gpiod_flags {
 	GPIOD_OUT_HIGH	= GPIOF_OUT_INIT_ACTIVE,
 };
 
+#ifdef CONFIG_OFDEVICE
+
 /* returned gpio descriptor can be passed to any normal gpio_* function */
-int gpiod_get(struct device *dev, const char *_con_id, enum gpiod_flags flags);
+int dev_gpiod_get_index(struct device *dev,
+			struct device_node *np,
+			const char *_con_id, int index,
+			enum gpiod_flags flags,
+			const char *label);
+
+#else
+static inline int dev_gpiod_get_index(struct device *dev,
+		struct device_node *np,
+		const char *_con_id, int index,
+		enum gpiod_flags flags,
+		const char *label)
+{
+	return -ENODEV;
+}
+#endif
+
+static inline int dev_gpiod_get(struct device *dev,
+				struct device_node *np,
+				const char *con_id,
+				enum gpiod_flags flags,
+				const char *label)
+{
+	return dev_gpiod_get_index(dev, np, con_id, 0, flags, label);
+}
+
+static inline int gpiod_get(struct device *dev,
+			    const char *_con_id,
+			    enum gpiod_flags flags)
+{
+	return dev_gpiod_get(dev, dev->of_node, _con_id, flags, NULL);
+}
 
 static inline void gpiod_set_value(int gpio, bool value)
 {
-- 
2.30.2




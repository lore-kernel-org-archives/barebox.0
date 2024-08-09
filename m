Delivery-date: Fri, 09 Aug 2024 16:24:46 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1scQXu-007rWm-1v
	for lore@lore.pengutronix.de;
	Fri, 09 Aug 2024 16:24:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1scQXt-0008LB-Nu
	for lore@pengutronix.de; Fri, 09 Aug 2024 16:24:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=G6zvX7qWx92FbV0TJfFKxEKMecXGKhagKxT4wi1BsKk=; b=eMb84l4cGdlOuUo4Caug8Liw+/
	RFHHvzz1kdgp0I0n5cIKXIriCzUHKR8mh56D4CyguvhwUPWwnZSNs8zaMQuG856QKQaYHljgTkKQ5
	cpGPOwa7AhddL1h4D1DjWXnSygyl+MJB1RNjTu1AvQUkv452Uej1Juo7XC3bjkgwTwrkIac0KsgnY
	CTiJ7lz9DAXiiwM5qPlToT5W3zHcTaqrS7kQWwB8npr6A4G7dTLZi1PrPcozd8Rg5bWdgpChlf2Bh
	HNJXWxqID2RYiy8Wr63m6x7jcK55izMB/iFNsErFKlNxuiC9mVI/O90FNqkqbdcOd/ibIH/i7UST3
	5kMEkVYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scQXT-0000000BWM6-1nxg;
	Fri, 09 Aug 2024 14:24:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scQXI-0000000BWEa-4BiE
	for barebox@lists.infradead.org;
	Fri, 09 Aug 2024 14:24:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1scQXH-0007pG-PC; Fri, 09 Aug 2024 16:24:07 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1scQXH-005ged-7U; Fri, 09 Aug 2024 16:24:07 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1scQXH-001K4s-0R;
	Fri, 09 Aug 2024 16:24:07 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  9 Aug 2024 16:24:03 +0200
Message-Id: <20240809142405.315244-10-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240809142405.315244-1-a.fatoum@pengutronix.de>
References: <20240809142405.315244-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240809_072409_118641_92782AF3 
X-CRM114-Status: GOOD (  11.88  )
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
Subject: [PATCH 09/11] gpiolib: export function to get struct gpio_desc from index
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

For use in legacy non-DT board code, let's introduce a function that
translates an absolute GPIO number into the corresponding GPIO descriptor.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/gpio/gpiolib.c        | 26 ++++++++++++++++++++------
 include/linux/gpio/consumer.h | 10 ++++++++++
 2 files changed, 30 insertions(+), 6 deletions(-)

diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
index 5d5458374869..146eaf9af138 100644
--- a/drivers/gpio/gpiolib.c
+++ b/drivers/gpio/gpiolib.c
@@ -642,6 +642,24 @@ static int gpiodesc_request_one(struct gpio_desc *desc, unsigned long lflags,
 	return err;
 }
 
+struct gpio_desc *gpiod_request_one(unsigned gpio,
+				    unsigned long flags, const char *label)
+{
+	struct gpio_desc *desc = gpio_to_desc(gpio);
+	int ret;
+
+	if (!desc)
+		return ERR_PTR(-ENODEV);
+
+	ret = gpiodesc_request_one(desc, 0, flags, label);
+	if (ret)
+		return ERR_PTR(ret);
+
+	return desc;
+}
+EXPORT_SYMBOL_GPL(gpio_request_one);
+
+
 /**
  * gpio_request_one - request a single GPIO with initial configuration
  * @gpio:	the GPIO number
@@ -650,15 +668,11 @@ static int gpiodesc_request_one(struct gpio_desc *desc, unsigned long lflags,
  */
 int gpio_request_one(unsigned gpio, unsigned long flags, const char *label)
 {
-	struct gpio_desc *desc = gpio_to_desc(gpio);
-
-	if (!desc)
-		return -ENODEV;
-
-	return gpiodesc_request_one(desc, 0, flags, label);
+	return PTR_ERR_OR_ZERO(gpiod_request_one(gpio, flags, label));
 }
 EXPORT_SYMBOL_GPL(gpio_request_one);
 
+
 /**
  * gpio_request_array - request multiple GPIOs in a single call
  * @array:	array of the 'struct gpio'
diff --git a/include/linux/gpio/consumer.h b/include/linux/gpio/consumer.h
index 64366a6f3302..f0d5bf7b255b 100644
--- a/include/linux/gpio/consumer.h
+++ b/include/linux/gpio/consumer.h
@@ -97,6 +97,9 @@ int gpiod_set_array_value(unsigned int array_size,
 			  struct gpio_array *array_info,
 			  unsigned long *value_bitmap);
 
+struct gpio_desc *gpiod_request_one(unsigned gpio,
+				    unsigned long flags, const char *label);
+
 #else
 
 static inline int gpiod_set_config(struct gpio_desc *desc, unsigned long config)
@@ -186,6 +189,13 @@ static inline int gpiod_set_array_value(unsigned int array_size,
 	return 0;
 }
 
+static inline
+struct gpio_desc *gpiod_request_one(unsigned gpio,
+				    unsigned long flags, const char *label)
+{
+	return ERR_PTR(-ENODEV);
+}
+
 #endif
 
 static inline struct gpio_desc *dev_gpiod_get(struct device *dev,
-- 
2.39.2




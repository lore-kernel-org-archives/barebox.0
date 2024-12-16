Delivery-date: Mon, 16 Dec 2024 14:04:16 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tNAlk-008pM5-0v
	for lore@lore.pengutronix.de;
	Mon, 16 Dec 2024 14:04:16 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tNAlh-0005Bk-UE
	for lore@pengutronix.de; Mon, 16 Dec 2024 14:04:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YYEst6bKeX1O999ArWzIH8cKAGBPab52gXqpur4txA4=; b=y7ONFf0OqMbVHWkx845drDTf/A
	zHmzZVboI0G8IGnk5LlNDED71W8K9uHG4hIi6zNGWyQHwYiJOCkRmeW8TEfPKF1tQHXSbwGXim8qC
	8tPpSreowPWmF57IIYUC53E5ZH5bhGPFX+Pb1LTirs1ILzJOfhJjrcTCwv7cDvMaJeoYj/Z69TRoy
	AJogDemX/k7N7T6gnxR93ZmaE7FXz0P99U72UrFWU2Zgu4nxLBIC1ZUr5b1bgMO7s61SUr6L9D+0M
	dN/oe1ut4WtLE0O0wwhG9mx5D/4cup5sek7dFmDbLEOt+35YwhhmftE/ra5BoSczFjLia9NBqscNz
	PPsBWgQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tNAlA-0000000A1zJ-3aEF;
	Mon, 16 Dec 2024 13:03:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tNAl6-0000000A1ut-2gVk
	for barebox@lists.infradead.org;
	Mon, 16 Dec 2024 13:03:38 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1tNAl3-0004cI-FN
	for barebox@lists.infradead.org; Mon, 16 Dec 2024 14:03:33 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 16 Dec 2024 14:03:17 +0100
Message-Id: <20241216130324.1592755-5-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241216130324.1592755-1-m.felsch@pengutronix.de>
References: <20241216130324.1592755-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241216_050336_706503_1DC1C675 
X-CRM114-Status: GOOD (  11.24  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 05/12] gpiolib: add support for gpiod_set_consumer_name
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add support for the Linux gpiod_set_consumer_name() API to make it
easier to port drivers. Compared to Linux the function itself is very
different.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
Changelog:
v2:
 - no changes

 drivers/gpio/gpiolib.c        | 19 +++++++++++++++++++
 include/linux/gpio/consumer.h | 10 ++++++++++
 2 files changed, 29 insertions(+)

diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
index 55beaba6acbc..ec4d8e889bb1 100644
--- a/drivers/gpio/gpiolib.c
+++ b/drivers/gpio/gpiolib.c
@@ -1223,6 +1223,25 @@ int gpiod_set_array_value(unsigned int array_size,
 }
 EXPORT_SYMBOL_GPL(gpiod_set_array_value);
 
+/**
+ * gpiod_set_consumer_name() - set the consumer name for the descriptor
+ * @desc: gpio to set the consumer name on
+ * @name: the new consumer name
+ *
+ * Returns:
+ * 0 on success, or negative errno on failure.
+ */
+int gpiod_set_consumer_name(struct gpio_desc *desc, const char *name)
+{
+	VALIDATE_DESC(desc);
+
+	free(desc->label);
+	desc->label = xstrdup(name);
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(gpiod_set_consumer_name);
+
 int gpiochip_add(struct gpio_chip *chip)
 {
 	int i;
diff --git a/include/linux/gpio/consumer.h b/include/linux/gpio/consumer.h
index 34e5795cbc07..d411c3aa3608 100644
--- a/include/linux/gpio/consumer.h
+++ b/include/linux/gpio/consumer.h
@@ -84,6 +84,8 @@ int gpiod_get_value(const struct gpio_desc *desc);
 
 void gpiod_put(struct gpio_desc *desc);
 
+int gpiod_set_consumer_name(struct gpio_desc *desc, const char *name);
+
 int gpiod_count(struct device *dev, const char *con_id);
 
 struct gpio_desc *__must_check gpiod_get_index(struct device *dev,
@@ -172,6 +174,14 @@ static inline void gpiod_put(struct gpio_desc *desc)
 	WARN_ON(desc);
 }
 
+static inline int gpiod_set_consumer_name(struct gpio_desc *desc,
+					  const char *name)
+{
+	/* GPIO can never have been requested */
+	WARN_ON(desc);
+	return -EINVAL;
+}
+
 static inline int gpiod_count(struct device *dev, const char *con_id)
 {
 	return 0;
-- 
2.39.5




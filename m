Delivery-date: Fri, 15 Nov 2024 20:58:38 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tC2Sk-002N5u-11
	for lore@lore.pengutronix.de;
	Fri, 15 Nov 2024 20:58:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tC2Si-0001iU-S6
	for lore@pengutronix.de; Fri, 15 Nov 2024 20:58:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ag+M4nnQcvQ0cQME28LZ+qsPorKBuwFGD00clAOe/vM=; b=R9eDhn49ws2wB99UqvOotdUbax
	B9fw4E0x0k0Mus3XYSWpcTPPX0gf2zK0zVgEMi8qF+bssDEbh1vH9z8R6pcz0nLPp7MfVtYOJixiT
	tl0JyG5SLkq6nvw0cAMKxVX/8ZflITQoMkQa0xHktgELiDcqlJ+F+k2muW64u0jOWQ1SWANpuubzh
	i/AISLzmZP2tPa5ZlwpronTh2htiDHjR0ZALnlp1dslJGyaWbF+GJvmpDDv1bxYOin/010bTt28xg
	xxAmTS8S2g9QDYfbH8B4szb1xYAhI2ksaKJDT9dJkZkHt9OD55P67azAn4sh2wPBq4B1Zi1Suu2qD
	1W11WaXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tC2S9-00000003wbN-1of8;
	Fri, 15 Nov 2024 19:58:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tC2S4-00000003wXI-02JI
	for barebox@lists.infradead.org;
	Fri, 15 Nov 2024 19:57:58 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1tC2S1-00017y-Gd
	for barebox@lists.infradead.org; Fri, 15 Nov 2024 20:57:53 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 15 Nov 2024 20:57:40 +0100
Message-Id: <20241115195747.997164-5-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241115195747.997164-1-m.felsch@pengutronix.de>
References: <20241115195747.997164-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241115_115756_043062_F3C09C3A 
X-CRM114-Status: GOOD (  11.50  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 05/12] gpiolib: add support for gpiod_set_consumer_name
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add support for the Linux gpiod_set_consumer_name() API to make it
easier to port drivers. Compared to Linux the function itself is very
different.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
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




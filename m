Delivery-date: Fri, 15 Nov 2024 20:58:41 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tC2Sm-002N7P-3A
	for lore@lore.pengutronix.de;
	Fri, 15 Nov 2024 20:58:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tC2Sk-0001k4-MI
	for lore@pengutronix.de; Fri, 15 Nov 2024 20:58:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=a4yu68eyQ+5FCCVpEN/F2FQyeIsfcqL0AqpGM+QykMY=; b=L2V7VGSl8b4Ha6kOUrlVX6joYj
	E/+VkjwJ5Fog9wtUonnwRM6faP8sGKs2ysmK3co+UuC/e9XSw3mDoZKmjCf0p6GGrnnXRcI5HdC5Q
	r2MDJKwdlvVDDI9IeDmXlVAflc1880eUh8FEUXNKLeFKfslSFofH775co8A6iGKehU9PyTiU+tebf
	siFgpG7VHOGi9i94KG9sCO1yuYqNWg3yiCsfh45w1RJpMZSmqAH6Uv29nyLunWJXz8lDV33DRRcwt
	ppSpTf3l2En/EnmY2KVAL2jf0Y5Npw1rQQCYNqUZxgoxTa9bE1zuxFDpi5lRIXFXAKP63tumGP7SG
	i4MKmnnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tC2S8-00000003waW-020r;
	Fri, 15 Nov 2024 19:58:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tC2S3-00000003wXH-3lhl
	for barebox@lists.infradead.org;
	Fri, 15 Nov 2024 19:57:58 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1tC2S1-00017y-FS
	for barebox@lists.infradead.org; Fri, 15 Nov 2024 20:57:53 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 15 Nov 2024 20:57:39 +0100
Message-Id: <20241115195747.997164-4-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241115195747.997164-1-m.felsch@pengutronix.de>
References: <20241115195747.997164-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241115_115755_939183_E5C2D3B1 
X-CRM114-Status: GOOD (  16.25  )
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
Subject: [PATCH 04/12] gpiolib: add support for gpiod_get_index and gpiod_get_index_optional
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add Linux compatible APIs to make it easier to port code from Linux to
barebox. This aligns the GPIO label naming scheme with Linux too.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/gpio/gpiolib.c        | 62 +++++++++++++++++++++++++++++++++++
 include/linux/gpio/consumer.h | 26 +++++++++++++++
 2 files changed, 88 insertions(+)

diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
index 146eaf9af138..55beaba6acbc 100644
--- a/drivers/gpio/gpiolib.c
+++ b/drivers/gpio/gpiolib.c
@@ -22,6 +22,8 @@ struct gpio_desc {
 	u32 flags; /* OR-d enum of_gpio_flags */
 };
 
+#define gpiod_not_found(desc)           (IS_ERR(desc) && PTR_ERR(desc) == -ENOENT)
+
 /*
  * This descriptor validation needs to be inserted verbatim into each
  * function taking a descriptor, so we need to use a preprocessor
@@ -1053,6 +1055,66 @@ struct gpio_desc *dev_gpiod_get_index(struct device *dev,
 	return ret ? ERR_PTR(ret): desc;
 }
 
+/**
+ * gpiod_get_index - obtain a GPIO from a multi-index GPIO function
+ * @dev:	GPIO consumer, can be NULL for system-global GPIOs
+ * @con_id:	function within the GPIO consumer
+ * @idx:	index of the GPIO to obtain in the consumer
+ * @flags:	optional GPIO initialization flags
+ *
+ * This variant of gpiod_get() allows to access GPIOs other than the first
+ * defined one for functions that define several GPIOs.
+ *
+ * Returns:
+ * A valid GPIO descriptor, -ENOENT if no GPIO has been assigned to the
+ * requested function and/or index, or another IS_ERR() code if an error
+ * occurred while trying to acquire the GPIO.
+ */
+struct gpio_desc *__must_check gpiod_get_index(struct device *dev,
+					       const char *con_id,
+					       unsigned int idx,
+					       enum gpiod_flags flags)
+{
+	struct device_node *np = dev_of_node(dev);
+	const char *devname = dev ? dev_name(dev) : "?";
+	const char *label = con_id ?: devname;
+
+	return dev_gpiod_get_index(dev, np, con_id, idx, flags, label);
+}
+EXPORT_SYMBOL_GPL(gpiod_get_index);
+
+/**
+ * gpiod_get_index_optional - obtain an optional GPIO from a multi-index GPIO
+ *                            function
+ * @dev: GPIO consumer, can be NULL for system-global GPIOs
+ * @con_id: function within the GPIO consumer
+ * @index: index of the GPIO to obtain in the consumer
+ * @flags: optional GPIO initialization flags
+ *
+ * This is equivalent to gpiod_get_index(), except that when no GPIO with the
+ * specified index was assigned to the requested function it will return NULL.
+ * This is convenient for drivers that need to handle optional GPIOs.
+ *
+ * Returns:
+ * A valid GPIO descriptor, NULL if no GPIO has been assigned to the
+ * requested function and/or index, or another IS_ERR() code if an error
+ * occurred while trying to acquire the GPIO.
+ */
+struct gpio_desc *__must_check gpiod_get_index_optional(struct device *dev,
+							const char *con_id,
+							unsigned int index,
+							enum gpiod_flags flags)
+{
+	struct gpio_desc *desc;
+
+	desc = gpiod_get_index(dev, con_id, index, flags);
+	if (gpiod_not_found(desc))
+		return NULL;
+
+	return desc;
+}
+EXPORT_SYMBOL_GPL(gpiod_get_index_optional);
+
 /**
  * gpiod_count - return the number of GPIOs associated with a device / function
  *		or -ENOENT if no GPIO has been assigned to the requested function
diff --git a/include/linux/gpio/consumer.h b/include/linux/gpio/consumer.h
index f0d5bf7b255b..34e5795cbc07 100644
--- a/include/linux/gpio/consumer.h
+++ b/include/linux/gpio/consumer.h
@@ -86,6 +86,16 @@ void gpiod_put(struct gpio_desc *desc);
 
 int gpiod_count(struct device *dev, const char *con_id);
 
+struct gpio_desc *__must_check gpiod_get_index(struct device *dev,
+					       const char *con_id,
+					       unsigned int idx,
+					       enum gpiod_flags flags);
+
+struct gpio_desc *__must_check gpiod_get_index_optional(struct device *dev,
+							const char *con_id,
+							unsigned int index,
+							enum gpiod_flags flags);
+
 struct gpio_descs *__must_check gpiod_get_array(struct device *dev,
 						const char *con_id,
 						enum gpiod_flags flags);
@@ -167,6 +177,22 @@ static inline int gpiod_count(struct device *dev, const char *con_id)
 	return 0;
 }
 
+static inline struct gpio_desc *__must_check
+gpiod_get_index(struct device *dev,
+		const char *con_id,
+		unsigned int idx,
+		enum gpiod_flags flags)
+{
+	return ERR_PTR(-ENOSYS);
+}
+
+static inline struct gpio_desc *__must_check
+gpiod_get_index_optional(struct device *dev, const char *con_id,
+			 unsigned int index, enum gpiod_flags flags)
+{
+	return NULL;
+}
+
 static inline struct gpio_descs *__must_check
 gpiod_get_array(struct device *dev, const char *con_id, enum gpiod_flags flags)
 {
-- 
2.39.5




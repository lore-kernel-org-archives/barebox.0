Delivery-date: Wed, 14 Jun 2023 15:57:03 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q9Qzh-006j57-2q
	for lore@lore.pengutronix.de; Wed, 14 Jun 2023 15:57:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q9Qze-0005jf-Dy
	for lore@pengutronix.de; Wed, 14 Jun 2023 15:57:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qQhnYeHrBVM5rn8yvwEBwXAaDPp5rDcqBLRkGAumSR8=; b=ZZ0pVAkukUacEVaSyO9+1dujeI
	nUpLq1J33wy2PJeTaGZ53NzKaKdDSScPdpFrjpFMNKBposGGD0HXOzp308Roux8zMelRDBy/3qW5j
	X6Je01e17ZZXFe90sOXnarVu9bQYOn71yD+csTkSEEOaJ1OhkjRYhAmtiTLRGspWZkMxKb0K/VrhZ
	4uhk22dGpFHN0hHekqSm03/XrFFFLlHFDmc0a6E3hR7u+V+ahrb0D6wfWUcV024BUqn2EEOV3yGJy
	+Q3S7HSbWUuDic/VRaj+dL4JarHz853FbgBl8qd83NrE3lzApcOCuVC1h7Nzm+yPoeEc2FQRP3GR8
	U/6C8lBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9Qyd-00BpBH-33;
	Wed, 14 Jun 2023 13:55:59 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q9QyV-00Bp5X-2q
	for barebox@lists.infradead.org;
	Wed, 14 Jun 2023 13:55:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q9QyU-0005E5-Lb; Wed, 14 Jun 2023 15:55:50 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q9QyU-007Mxw-0v; Wed, 14 Jun 2023 15:55:50 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q9QyR-008D97-IV; Wed, 14 Jun 2023 15:55:47 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 14 Jun 2023 15:54:51 +0200
Message-Id: <20230614135452.1884124-10-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230614135452.1884124-1-a.fatoum@pengutronix.de>
References: <20230614135452.1884124-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230614_065551_923138_3015C07F 
X-CRM114-Status: GOOD (  23.75  )
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
Subject: [PATCH 09/10] gpiolib: add support for requesting and setting gpiod arrays
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The added API is aligned with the API in Linux, but has the caveat that
barebox has no set_multiple callbacks implemented in the GPIO drivers,
so switching may result in a bad intermediate state. We add a note about
that and implement the API in the easiest possible way.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/gpio/gpiolib.c        | 123 ++++++++++++++++++++++++++++++++++
 include/linux/gpio/consumer.h |  31 +++++++++
 2 files changed, 154 insertions(+)

diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
index 3e57cf6239c3..40010262bd81 100644
--- a/drivers/gpio/gpiolib.c
+++ b/drivers/gpio/gpiolib.c
@@ -8,6 +8,7 @@
 #include <gpio.h>
 #include <of_gpio.h>
 #include <linux/gpio/consumer.h>
+#include <linux/overflow.h>
 #include <errno.h>
 #include <malloc.h>
 
@@ -207,6 +208,21 @@ void gpiod_put(struct gpio_desc *desc)
 }
 EXPORT_SYMBOL(gpiod_put);
 
+/**
+ * gpiod_put_array - dispose of multiple GPIO descriptors
+ * @descs:	struct gpio_descs containing an array of descriptors
+ */
+void gpiod_put_array(struct gpio_descs *descs)
+{
+	unsigned int i;
+
+	for (i = 0; i < descs->ndescs; i++)
+		gpiod_put(descs->desc[i]);
+
+	kfree(descs);
+}
+EXPORT_SYMBOL_GPL(gpiod_put_array);
+
 /**
  * gpiod_set_raw_value() - assign a gpio's raw value
  * @desc: gpio whose value will be assigned
@@ -865,8 +881,115 @@ struct gpio_desc *dev_gpiod_get_index(struct device *dev,
 
 	return ret ? ERR_PTR(ret): desc;
 }
+
+/**
+ * gpiod_count - return the number of GPIOs associated with a device / function
+ *		or -ENOENT if no GPIO has been assigned to the requested function
+ * @dev:	GPIO consumer, can be NULL for system-global GPIOs
+ * @_con_id:	function within the GPIO consumer
+ */
+int gpiod_count(struct device *dev, const char *con_id)
+{
+	struct device_node *np = dev_of_node(dev);
+	struct property *pp;
+
+	if (!np)
+		return -ENODEV;
+
+	pp = of_find_gpio_property(np, con_id);
+	if (!pp)
+		return -ENOENT;
+
+	return of_gpio_named_count(np, pp->name);
+}
+EXPORT_SYMBOL_GPL(gpiod_count);
+
+/**
+ * gpiod_get_array - obtain multiple GPIOs from a multi-index GPIO function
+ * @dev:	GPIO consumer, can be NULL for system-global GPIOs
+ * @con_id:	function within the GPIO consumer
+ * @flags:	optional GPIO initialization flags
+ *
+ * This function acquires all the GPIOs defined under a given function.
+ *
+ * Return a struct gpio_descs containing an array of descriptors, -ENOENT if
+ * no GPIO has been assigned to the requested function, or another IS_ERR()
+ * code if an error occurred while trying to acquire the GPIOs.
+ */
+struct gpio_descs *__must_check gpiod_get_array(struct device *dev,
+						const char *con_id,
+						enum gpiod_flags flags)
+{
+	struct gpio_desc *desc;
+	struct gpio_descs *descs;
+	int count;
+
+	count = gpiod_count(dev, con_id);
+	if (count < 0)
+		return ERR_PTR(count);
+
+	descs = kzalloc(struct_size(descs, desc, count), GFP_KERNEL);
+	if (!descs)
+		return ERR_PTR(-ENOMEM);
+
+	for (descs->ndescs = 0; descs->ndescs < count; descs->ndescs++) {
+		desc = dev_gpiod_get_index(dev, dev_of_node(dev), con_id,
+					   descs->ndescs, flags, NULL);
+		if (IS_ERR(desc)) {
+			gpiod_put_array(descs);
+			return ERR_CAST(desc);
+		}
+
+		descs->desc[descs->ndescs] = desc;
+	}
+
+	return descs;
+}
+EXPORT_SYMBOL_GPL(gpiod_get_array);
+
 #endif
 
+static int gpiod_set_array_value_complex(bool raw,
+					 unsigned int array_size,
+					 struct gpio_desc **desc_array,
+					 struct gpio_array *array_info,
+					 unsigned long *value_bitmap)
+{
+	int i;
+
+	BUG_ON(array_info != NULL);
+
+	for (i = 0; i < array_size; i++)
+		gpiod_set_value(desc_array[i], test_bit(i, value_bitmap));
+
+	return 0;
+}
+
+/**
+ * gpiod_set_array_value() - assign values to an array of GPIOs
+ * @array_size: number of elements in the descriptor array / value bitmap
+ * @desc_array: array of GPIO descriptors whose values will be assigned
+ * @array_info: information on applicability of fast bitmap processing path
+ * @value_bitmap: bitmap of values to assign
+ *
+ * Set the logical values of the GPIOs, i.e. taking their ACTIVE_LOW status
+ * into account. NOTE: This function has no special handling for GPIOs
+ * in the same bank that could've been set atomically: GPIO sequencing
+ * is not guaranteed to always remain in the same order.
+ */
+int gpiod_set_array_value(unsigned int array_size,
+			  struct gpio_desc **desc_array,
+			  struct gpio_array *array_info,
+			  unsigned long *value_bitmap)
+{
+	if (!desc_array)
+		return -EINVAL;
+	return gpiod_set_array_value_complex(false, array_size,
+					     desc_array, array_info,
+					     value_bitmap);
+}
+EXPORT_SYMBOL_GPL(gpiod_set_array_value);
+
 int gpiochip_add(struct gpio_chip *chip)
 {
 	int i;
diff --git a/include/linux/gpio/consumer.h b/include/linux/gpio/consumer.h
index c89b0c48ee2b..6ad3b265c835 100644
--- a/include/linux/gpio/consumer.h
+++ b/include/linux/gpio/consumer.h
@@ -25,6 +25,24 @@ enum gpiod_flags {
 #define gpiod_not_found(desc)	(IS_ERR(desc) && PTR_ERR(desc) == -ENOENT)
 
 struct gpio_desc;
+struct gpio_array;
+
+/**
+ * struct gpio_descs - Struct containing an array of descriptors that can be
+ *                     obtained using gpiod_get_array()
+ *
+ * @info:	Pointer to the opaque gpio_array structure
+ * @ndescs:	Number of held descriptors
+ * @desc:	Array of pointers to GPIO descriptors
+ */
+struct gpio_descs {
+	unsigned int ndescs;
+	/* info is used for fastpath, which we don't have in barebox.
+	 * We define the member anyway, as not to change API
+	 */
+	struct gpio_array *info;
+	DECLARE_FLEX_ARRAY(struct gpio_desc *, desc);
+};
 
 #ifdef CONFIG_OFDEVICE
 
@@ -103,4 +121,17 @@ int gpiod_get_value(const struct gpio_desc *desc);
 				   __state == (active), timeout_us);	\
 	})
 
+int gpiod_count(struct device *dev, const char *con_id);
+
+struct gpio_descs *__must_check gpiod_get_array(struct device *dev,
+						const char *con_id,
+						enum gpiod_flags flags);
+
+void gpiod_put_array(struct gpio_descs *descs);
+
+int gpiod_set_array_value(unsigned int array_size,
+			  struct gpio_desc **desc_array,
+			  struct gpio_array *array_info,
+			  unsigned long *value_bitmap);
+
 #endif
-- 
2.39.2




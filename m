Delivery-date: Wed, 21 Feb 2024 15:28:47 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rcnaY-00HKrX-3B
	for lore@lore.pengutronix.de;
	Wed, 21 Feb 2024 15:28:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rcnaY-0005uR-C2
	for lore@pengutronix.de; Wed, 21 Feb 2024 15:28:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mRsYZ437mOJj/2wsJuyVEd2FNTdO8ZrtErYmSHJrC9U=; b=H1bv21Gkh4of9rDIki7AtofJ8O
	9UlWYAhHYVEh16bRCN3vFZCDf5KT2K6sev2BKCHIsbBq3AnPRkT6UVmzudUzk159jUd9yRsUq9YP9
	FCS8jvUuSTgVdeGs8fSVrUMlGJfypWBGkGY/HydG8SRkOCQJc2XWG9B8aIzixbISua9KJ5WgwuGMJ
	v6ZFhHsl2Dh1nygz5HiBqFE/veKBhcu0i9cxunnxI8TIYo0MDBXak2WBdOJmKfjCi6IZGtc34Zwky
	6bwcQfz2Pewcz0oOAbiRQVK5uZXPDpGSmXM+Duq+mOuoZO67rSlHWS1oOGqoIM/QvkyviolhSIpBm
	aVjvxkIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcnZz-00000001Gqk-10LW;
	Wed, 21 Feb 2024 14:28:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcnZs-00000001Gnc-2Ox2
	for barebox@lists.infradead.org;
	Wed, 21 Feb 2024 14:28:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rcnZp-0005bz-Vh; Wed, 21 Feb 2024 15:28:01 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rcnZp-0023cQ-Io; Wed, 21 Feb 2024 15:28:01 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rcnZp-008kpE-1Z;
	Wed, 21 Feb 2024 15:28:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 21 Feb 2024 15:27:57 +0100
Message-Id: <20240221142800.1958810-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240221142800.1958810-1-s.hauer@pengutronix.de>
References: <20240221142800.1958810-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240221_062804_686941_EB47F032 
X-CRM114-Status: GOOD (  12.78  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/4] gpio: add slice support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

GPIOs are not only provided by raw register accesses but also by I2C
devices. Add a slice to a gpio chip so that a gpio user can check if the
slice is acquired before using it in a poller.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/gpio/gpiolib.c | 11 +++++++++++
 include/gpio.h         | 15 +++++++++++++++
 2 files changed, 26 insertions(+)

diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
index bcfdd5a0dd..5bc261a010 100644
--- a/drivers/gpio/gpiolib.c
+++ b/drivers/gpio/gpiolib.c
@@ -172,6 +172,16 @@ int gpio_request(unsigned gpio, const char *label)
 	return gpiodesc_request(desc, label);
 }
 
+bool gpio_slice_acquired(unsigned gpio)
+{
+	struct gpio_desc *desc = gpio_to_desc(gpio);
+
+	if (!desc)
+		return false;
+
+	return slice_acquired(&desc->chip->slice);
+}
+
 static void gpiodesc_free(struct gpio_desc *desc)
 {
 	if (!desc->requested)
@@ -1013,6 +1023,7 @@ int gpiochip_add(struct gpio_chip *chip)
 			return -ENOSPC;
 	}
 
+	slice_init(&chip->slice, dev_name(chip->dev));
 
 	list_add_tail(&chip->list, &chip_list);
 
diff --git a/include/gpio.h b/include/gpio.h
index 9951532084..adc1eb39ac 100644
--- a/include/gpio.h
+++ b/include/gpio.h
@@ -2,6 +2,7 @@
 #ifndef __GPIO_H
 #define __GPIO_H
 
+#include <slice.h>
 #include <linux/types.h>
 #include <linux/list.h>
 #include <linux/iopoll.h>
@@ -156,6 +157,12 @@ static inline int gpio_array_to_id(const struct gpio *array, size_t num, u32 *va
 {
 	return -EINVAL;
 }
+
+static inline bool gpio_slice_acquired(unsigned gpio)
+{
+	return false;
+}
+
 #else
 int gpio_request(unsigned gpio, const char *label);
 int gpio_find_by_name(const char *name);
@@ -165,6 +172,7 @@ int gpio_request_one(unsigned gpio, unsigned long flags, const char *label);
 int gpio_request_array(const struct gpio *array, size_t num);
 void gpio_free_array(const struct gpio *array, size_t num);
 int gpio_array_to_id(const struct gpio *array, size_t num, u32 *val);
+bool gpio_slice_acquired(unsigned gpio);
 #endif
 
 struct gpio_chip;
@@ -213,9 +221,16 @@ struct gpio_chip {
 
 	struct gpio_ops *ops;
 
+	struct slice slice;
+
 	struct list_head list;
 };
 
+static inline struct slice *gpiochip_slice(struct gpio_chip *chip)
+{
+	return &chip->slice;
+}
+
 int gpiochip_add(struct gpio_chip *chip);
 void gpiochip_remove(struct gpio_chip *chip);
 
-- 
2.39.2




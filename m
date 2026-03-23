Delivery-date: Mon, 23 Mar 2026 09:59:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w4b7v-0044U8-2b
	for lore@lore.pengutronix.de;
	Mon, 23 Mar 2026 09:59:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w4b7u-0003g4-Vr
	for lore@pengutronix.de; Mon, 23 Mar 2026 09:59:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+OoqVoGVHAdRza1ztWjg4MfR+wtF3Wi/FXH+Tw/YnBo=; b=NhRydxUI3leSl1ztwu2v97Jvlo
	aipfvEkSQT6ImEnMVk0+0O8cEKW8v9UZ0SDiGfQEDpRHIJBaMcx9Nq6dmng7M1yYpBfi1kN3DScuv
	0lk/OBCiscRcKHFloCE6dhP+YgiTXo+2auDNcS3IOj2Af+3mN6QMEOVDU/CqFfsnu2rGx2+O78dMO
	CUn2vL3MK4x94ayPXgGwgmOrao/+bDshLfwbG5eNyxrVeOabk0rq4g9gzG+tU+nNBJ+jVBLnBRvme
	Ec9mdkQ700LSN3KGifc1p6PZhI196RT0nEGZTakz8oCxciyxk5U5mXz09PVfCk7+sGJhwble8+5Bt
	ZxzvYTKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4b7P-0000000GJqC-1H3A;
	Mon, 23 Mar 2026 08:58:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4b7N-0000000GJp9-05sd
	for barebox@lists.infradead.org;
	Mon, 23 Mar 2026 08:58:38 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=localhost.localdomain)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1w4b7L-0003Vc-FP; Mon, 23 Mar 2026 09:58:35 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 23 Mar 2026 09:58:30 +0100
Message-ID: <20260323085833.4073078-2-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260323085833.4073078-1-a.fatoum@barebox.org>
References: <20260323085833.4073078-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260323_015837_102904_90361DE6 
X-CRM114-Status: GOOD (  13.15  )
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
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] gpiolib: propagate errors from gpiod_set_(raw_)?value
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Now that gpio_chip::set returns an error code, make gpiod_set_value
propagate it. gpio_set_value continues to return void.

Besides aligning us with Linux and making driver porting easier,
this will also allow more robustness in future, especially for slow GPIO
devices where failure in setting a GPIO is more likely.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/gpio/gpiolib.c        | 26 ++++++++++++++++----------
 include/linux/gpio/consumer.h |  7 ++++---
 2 files changed, 20 insertions(+), 13 deletions(-)

diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
index 37a98995f2e8..9646f5bdb3de 100644
--- a/drivers/gpio/gpiolib.c
+++ b/drivers/gpio/gpiolib.c
@@ -292,12 +292,14 @@ EXPORT_SYMBOL_GPL(gpiod_set_config);
  * Set the raw value of the GPIO, i.e. the value of its physical line without
  * regard for its ACTIVE_LOW status.
  */
-void gpiod_set_raw_value(struct gpio_desc *desc, int value)
+int gpiod_set_raw_value(struct gpio_desc *desc, int value)
 {
-	VALIDATE_DESC_VOID(desc);
+	VALIDATE_DESC(desc);
 
-	if (desc->chip->ops->set)
-		desc->chip->ops->set(desc->chip, gpiodesc_chip_offset(desc), value);
+	if (!desc->chip->ops->set)
+		return -ENOSYS;
+
+	return desc->chip->ops->set(desc->chip, gpiodesc_chip_offset(desc), value);
 }
 EXPORT_SYMBOL(gpiod_set_raw_value);
 
@@ -323,10 +325,10 @@ EXPORT_SYMBOL(gpio_set_value);
  * Set the logical value of the GPIO, i.e. taking its ACTIVE_LOW,
  * OPEN_DRAIN and OPEN_SOURCE flags into account.
  */
-void gpiod_set_value(struct gpio_desc *desc, int value)
+int gpiod_set_value(struct gpio_desc *desc, int value)
 {
-	VALIDATE_DESC_VOID(desc);
-	gpiod_set_raw_value(desc, gpio_adjust_value(desc, value));
+	VALIDATE_DESC(desc);
+	return gpiod_set_raw_value(desc, gpio_adjust_value(desc, value));
 }
 EXPORT_SYMBOL_GPL(gpiod_set_value);
 
@@ -1191,14 +1193,18 @@ static int gpiod_set_array_value_complex(bool raw,
 					 struct gpio_array *array_info,
 					 unsigned long *value_bitmap)
 {
+	int ret, err = 0;
 	int i;
 
 	BUG_ON(array_info != NULL);
 
-	for (i = 0; i < array_size; i++)
-		gpiod_set_value(desc_array[i], test_bit(i, value_bitmap));
+	for (i = 0; i < array_size; i++) {
+		ret = gpiod_set_value(desc_array[i], test_bit(i, value_bitmap));
+		if (ret)
+			err = ret;
+	}
 
-	return 0;
+	return err;
 }
 
 /**
diff --git a/include/linux/gpio/consumer.h b/include/linux/gpio/consumer.h
index a425145351b0..0bfa5c354040 100644
--- a/include/linux/gpio/consumer.h
+++ b/include/linux/gpio/consumer.h
@@ -119,8 +119,8 @@ int gpiod_direction_input(struct gpio_desc *desc);
 int gpiod_direction_output_raw(struct gpio_desc *desc, int value);
 int gpiod_direction_output(struct gpio_desc *desc, int value);
 
-void gpiod_set_raw_value(struct gpio_desc *desc, int value);
-void gpiod_set_value(struct gpio_desc *desc, int value);
+int gpiod_set_raw_value(struct gpio_desc *desc, int value);
+int gpiod_set_value(struct gpio_desc *desc, int value);
 
 int gpiod_get_raw_value(const struct gpio_desc *desc);
 int gpiod_get_value(const struct gpio_desc *desc);
@@ -175,10 +175,11 @@ static inline void gpiod_set_raw_value(struct gpio_desc *desc, int value)
 	WARN_ON(desc);
 }
 
-static inline void gpiod_set_value(struct gpio_desc *desc, int value)
+static inline int gpiod_set_value(struct gpio_desc *desc, int value)
 {
 	/* GPIO can never have been requested */
 	WARN_ON(desc);
+	return 0;
 }
 
 static inline int gpiod_get_raw_value(const struct gpio_desc *desc)
-- 
2.47.3




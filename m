Delivery-date: Tue, 07 Jan 2025 07:50:47 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tV3QM-000DGH-2M
	for lore@lore.pengutronix.de;
	Tue, 07 Jan 2025 07:50:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tV3QH-0007PM-OP
	for lore@pengutronix.de; Tue, 07 Jan 2025 07:50:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qWr5O7KoAMnhTSbicsFtoKzzIIJSjDe+t61qbEUhFJ0=; b=p9zSxQOAsNWjgIlH5KNqvMyXAT
	3tQOnD/ltohvPb2HzNLJlLbI3tg87s3efO9WE7wCzmOrGEreDb7SQKXdyIu+4R0CVbIzbv1JDOAdp
	4GJcXvF7BcWgam9JMSNDaPzB8CUQalh2RY8BwElBC3J10Nre/I/nN3CzzAyYEmalcv6+r9/hBZXnG
	qXb1IOHX0hURWyBKFSIsH2l/+sKpC1c99X/WycttM1V40ykTuDnvD7oLX/TZYTzMAf0lSR+BaXbWH
	DQxfuGpbSeo521XUtl78ww4T2tySd43ZmGZmmoNCGOgpQDXhjucD8pt+MwT1k4EbATc3qTuMDzjJR
	PceoHE8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tV3PU-00000003gXF-0IYx;
	Tue, 07 Jan 2025 06:49:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tV3PQ-00000003gVv-0z2x
	for barebox@lists.infradead.org;
	Tue, 07 Jan 2025 06:49:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tV3PO-0007Ca-Cp; Tue, 07 Jan 2025 07:49:46 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tV3PN-007INn-1Q;
	Tue, 07 Jan 2025 07:49:46 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tV3PO-00BggZ-0Q;
	Tue, 07 Jan 2025 07:49:46 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  7 Jan 2025 07:49:44 +0100
Message-Id: <20250107064945.2785670-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250107064945.2785670-1-a.fatoum@pengutronix.de>
References: <20250107064945.2785670-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250106_224948_272774_5A685987 
X-CRM114-Status: GOOD (  10.18  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] fixup! gpio: fix static inline stub selection
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

gpiod_count depends on OFDEVICE, but the stub was so far only defined
for CONFIG_GPIOLIB-less systems ignoring OFDEVICE. Move it into the
correct #ifdef branch to fix CI failure.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/linux/gpio/consumer.h | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/include/linux/gpio/consumer.h b/include/linux/gpio/consumer.h
index c5c9e14e4053..7dfac56239eb 100644
--- a/include/linux/gpio/consumer.h
+++ b/include/linux/gpio/consumer.h
@@ -66,6 +66,8 @@ struct gpio_desc *__must_check gpiod_get_index_optional(struct device *dev,
 							unsigned int index,
 							enum gpiod_flags flags);
 
+int gpiod_count(struct device *dev, const char *con_id);
+
 struct gpio_descs *__must_check gpiod_get_array(struct device *dev,
 						const char *con_id,
 						enum gpiod_flags flags);
@@ -96,6 +98,11 @@ gpiod_get_index_optional(struct device *dev, const char *con_id,
 	return NULL;
 }
 
+static inline int gpiod_count(struct device *dev, const char *con_id)
+{
+	return 0;
+}
+
 static inline struct gpio_descs *__must_check
 gpiod_get_array(struct device *dev, const char *con_id, enum gpiod_flags flags)
 {
@@ -122,8 +129,6 @@ void gpiod_put(struct gpio_desc *desc);
 
 int gpiod_set_consumer_name(struct gpio_desc *desc, const char *name);
 
-int gpiod_count(struct device *dev, const char *con_id);
-
 void gpiod_put_array(struct gpio_descs *descs);
 
 int gpiod_set_array_value(unsigned int array_size,
@@ -204,11 +209,6 @@ static inline int gpiod_set_consumer_name(struct gpio_desc *desc,
 	return -EINVAL;
 }
 
-static inline int gpiod_count(struct device *dev, const char *con_id)
-{
-	return 0;
-}
-
 static inline void gpiod_put_array(struct gpio_descs *descs)
 {
 	/* GPIO can never have been requested */
-- 
2.39.5




Delivery-date: Fri, 17 May 2024 07:57:04 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7qaV-000rH3-3B
	for lore@lore.pengutronix.de;
	Fri, 17 May 2024 07:57:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7qaU-0007ZP-Pm
	for lore@pengutronix.de; Fri, 17 May 2024 07:57:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=QOQVGwnVW60HqkZuBy1lZEqkpj8gwCP5S7W6kjpyWQU=; b=heA6LgGRq5Q+rUUbeHcJrqfCpS
	DmzAs/MEwe6DsB6QqoSbBZU8sNfnwZxFNLzH9PoPSxid/JscABnpueRAQj8f6KdvgSaONBLSz5LEm
	d6nkHep62gD8ny1vz6jpo9L1KDczIviKsGJPpDCJbJQ+SXZbHzDwkog6HQJ2tPvsu6IUmwAgJVMVW
	CsLCZuswUigQK8GexOKHnPe+9KDDmTnJB5BOmmW3J17s1kVJBsx9m0NmUhO8GRv5/n81rz7sChntl
	2SHFp2nVX8YOa4YedEqhWagLL1uJfFMF/zMmD3cKkONUdFzQ8Xm9F3f0t5k7jjuYmePdfF+w7UlmT
	jt/FrPyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7qZt-00000006tcV-0ji5;
	Fri, 17 May 2024 05:56:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7qZn-00000006taM-3Zhn
	for barebox@lists.infradead.org;
	Fri, 17 May 2024 05:56:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7qZi-0007Mq-6o; Fri, 17 May 2024 07:56:14 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7qZh-001pKT-Qa; Fri, 17 May 2024 07:56:13 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7qZh-0075X6-2M;
	Fri, 17 May 2024 07:56:13 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 17 May 2024 07:56:10 +0200
Message-Id: <20240517055612.1685978-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240516_225619_924430_27A220A8 
X-CRM114-Status: GOOD (  13.14  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/3] pinctrl: split off consumer API into linux/pinctrl/consumer.h
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Follow-up patches will align the barebox pinctrl consumer API with
Linux'. So it makes sense to have the header called the same as well.
Users of the old pinctrl.h header are unaffected as it will include
the new <linux/pinctrl/consumer.h>.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/linux/pinctrl/consumer.h | 61 ++++++++++++++++++++++++++++++++
 include/pinctrl.h                | 55 +++-------------------------
 2 files changed, 65 insertions(+), 51 deletions(-)
 create mode 100644 include/linux/pinctrl/consumer.h

diff --git a/include/linux/pinctrl/consumer.h b/include/linux/pinctrl/consumer.h
new file mode 100644
index 000000000000..3028f960deb4
--- /dev/null
+++ b/include/linux/pinctrl/consumer.h
@@ -0,0 +1,61 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+#ifndef LINUX_PINCTRL_CONSUMER_H
+#define LINUX_PINCTRL_CONSUMER_H
+
+#include <linux/errno.h>
+
+struct device;
+struct device_node;
+
+#ifdef CONFIG_PINCTRL
+int pinctrl_select_state(struct device *dev, const char *state);
+int pinctrl_select_state_default(struct device *dev);
+int of_pinctrl_select_state(struct device_node *np, const char *state);
+int of_pinctrl_select_state_default(struct device_node *np);
+int pinctrl_gpio_direction_input(unsigned pin);
+int pinctrl_gpio_direction_output(unsigned int pin);
+int pinctrl_gpio_get_direction(unsigned pin);
+int pinctrl_single_probe(struct device *dev);
+#else
+static inline int pinctrl_select_state(struct device *dev, const char *state)
+{
+	return -ENODEV;
+}
+
+static inline int pinctrl_select_state_default(struct device *dev)
+{
+	return -ENODEV;
+}
+
+static inline int of_pinctrl_select_state(struct device_node *np, const char *state)
+{
+	return -ENODEV;
+}
+
+static inline int of_pinctrl_select_state_default(struct device_node *np)
+{
+	return -ENODEV;
+}
+
+static inline int pinctrl_gpio_direction_input(unsigned pin)
+{
+	return -ENOTSUPP;
+}
+
+static inline int pinctrl_gpio_direction_output(unsigned int pin)
+{
+	return -ENOTSUPP;
+}
+
+static inline int pinctrl_gpio_get_direction(unsigned pin)
+{
+	return -ENOTSUPP;
+}
+
+static inline int pinctrl_single_probe(struct device *dev)
+{
+	return -ENOSYS;
+}
+#endif
+
+#endif /* LINUX_PINCTRL_CONSUMER_H */
diff --git a/include/pinctrl.h b/include/pinctrl.h
index f0f7c2cc8b3e..4ba7b489345b 100644
--- a/include/pinctrl.h
+++ b/include/pinctrl.h
@@ -2,7 +2,11 @@
 #ifndef PINCTRL_H
 #define PINCTRL_H
 
+#include <linux/types.h>
+#include <linux/pinctrl/consumer.h>
+
 struct pinctrl_device;
+struct device_node;
 
 struct pinctrl_ops {
 	int (*set_state)(struct pinctrl_device *, struct device_node *);
@@ -21,55 +25,4 @@ struct pinctrl_device {
 int pinctrl_register(struct pinctrl_device *pdev);
 void pinctrl_unregister(struct pinctrl_device *pdev);
 
-#ifdef CONFIG_PINCTRL
-int pinctrl_select_state(struct device *dev, const char *state);
-int pinctrl_select_state_default(struct device *dev);
-int of_pinctrl_select_state(struct device_node *np, const char *state);
-int of_pinctrl_select_state_default(struct device_node *np);
-int pinctrl_gpio_direction_input(unsigned pin);
-int pinctrl_gpio_direction_output(unsigned int pin);
-int pinctrl_gpio_get_direction(unsigned pin);
-int pinctrl_single_probe(struct device *dev);
-#else
-static inline int pinctrl_select_state(struct device *dev, const char *state)
-{
-	return -ENODEV;
-}
-
-static inline int pinctrl_select_state_default(struct device *dev)
-{
-	return -ENODEV;
-}
-
-static inline int of_pinctrl_select_state(struct device_node *np, const char *state)
-{
-	return -ENODEV;
-}
-
-static inline int of_pinctrl_select_state_default(struct device_node *np)
-{
-	return -ENODEV;
-}
-
-static inline int pinctrl_gpio_direction_input(unsigned pin)
-{
-	return -ENOTSUPP;
-}
-
-static inline int pinctrl_gpio_direction_output(unsigned int pin)
-{
-	return -ENOTSUPP;
-}
-
-static inline int pinctrl_gpio_get_direction(unsigned pin)
-{
-	return -ENOTSUPP;
-}
-
-static inline int pinctrl_single_probe(struct device *dev)
-{
-	return -ENOSYS;
-}
-#endif
-
 #endif /* PINCTRL_H */
-- 
2.39.2




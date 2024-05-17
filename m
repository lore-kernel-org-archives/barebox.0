Delivery-date: Fri, 17 May 2024 07:57:03 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7qaV-000rGm-1r
	for lore@lore.pengutronix.de;
	Fri, 17 May 2024 07:57:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7qaU-0007ZO-Oh
	for lore@pengutronix.de; Fri, 17 May 2024 07:57:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3VHmElk1MeMtG6aTke7TBkG0mVxaR/XsJUjOnT2gLSs=; b=dU5MX73yoVxd5o+JNM3N51z6qy
	e3dZ4eZlH6KYGerW2g4KBPz7fvcD0LilhQBH8ujK7i1nZQNOjcBbMFttvUdF+eDiwYamIF3iTcCcP
	6mGNpovH3pVFQjIr7lX7pPKq1s1q2tKilx/gtOlOdchs7KTuwhfkmMIT7Kc8CuqiUXAv3fXdHmKt7
	IemC6uOsRH28nfXW8N4XaEM9kT8wNzqQgSUAvs3di4NYs0w/tLkgDhYxDuR5eOy6PFqH7h4cWxUae
	OdmfV1jUFnMQqkb0xObkGx6cUnx2K6lTg2Zdb7ZJmT3tIkFjU/G9hPLWv+t1zpR9uBHn4tp9z2h+v
	yXHK/Ntg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7qZs-00000006tcG-0Rpc;
	Fri, 17 May 2024 05:56:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7qZn-00000006taN-3ZXx
	for barebox@lists.infradead.org;
	Fri, 17 May 2024 05:56:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7qZi-0007Mr-82; Fri, 17 May 2024 07:56:14 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7qZh-001pKU-Rv; Fri, 17 May 2024 07:56:13 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7qZh-0075X6-2V;
	Fri, 17 May 2024 07:56:13 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 17 May 2024 07:56:11 +0200
Message-Id: <20240517055612.1685978-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240517055612.1685978-1-a.fatoum@pengutronix.de>
References: <20240517055612.1685978-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240516_225619_924687_E32DD703 
X-CRM114-Status: GOOD (  13.48  )
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
Subject: [PATCH 2/3] pinctrl: rename barebox pinctrl_select_state to pinctrl_get_select
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Linux pinctrl_select_state() operates on struct pinctrl_state. The
helper that selects a state by name is instead called
pinctrl_get_select.

There's only a single user in-tree for that function, so let's rename
it and adjust the prototype.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/i2c/busses/i2c-imx.c     | 24 ++++++++++++++----------
 drivers/pinctrl/pinctrl.c        | 13 +++++++++----
 include/linux/pinctrl/consumer.h | 10 +++++++---
 3 files changed, 30 insertions(+), 17 deletions(-)

diff --git a/drivers/i2c/busses/i2c-imx.c b/drivers/i2c/busses/i2c-imx.c
index f6a67ec067df..981db015ea34 100644
--- a/drivers/i2c/busses/i2c-imx.c
+++ b/drivers/i2c/busses/i2c-imx.c
@@ -509,21 +509,25 @@ static int i2c_fsl_xfer(struct i2c_adapter *adapter,
 	return (result < 0) ? result : num;
 }
 
+static void i2c_fsl_pinctrl_select_state(struct i2c_adapter *adapter,
+					 const char *name)
+{
+	struct pinctrl *pinctrl;
+
+	pinctrl = pinctrl_get_select(adapter->dev.parent, name);
+	if (pinctrl)
+		pinctrl_put(pinctrl);
+	else
+		dev_err(adapter->dev.parent, "pinctrl failed: %pe\n", pinctrl);
+}
+
 static void i2c_fsl_prepare_recovery(struct i2c_adapter *adapter)
 {
-	int ret;
-
-	ret = pinctrl_select_state(adapter->dev.parent, "gpio");
-	if (ret)
-		dev_err(adapter->dev.parent, "pinctrl failed: %s\n", strerror(-ret));
+	i2c_fsl_pinctrl_select_state(adapter, "gpio");
 }
 static void i2c_fsl_unprepare_recovery(struct i2c_adapter *adapter)
 {
-	int ret;
-
-	ret = pinctrl_select_state(adapter->dev.parent, "default");
-	if (ret)
-		dev_err(adapter->dev.parent, "pinctrl failed: %s\n", strerror(-ret));
+	i2c_fsl_pinctrl_select_state(adapter, "default");
 }
 
 static void i2c_fsl_init_recovery(struct fsl_i2c_struct *i2c_fsl,
diff --git a/drivers/pinctrl/pinctrl.c b/drivers/pinctrl/pinctrl.c
index 95e7b0ea96e1..2d331211f71c 100644
--- a/drivers/pinctrl/pinctrl.c
+++ b/drivers/pinctrl/pinctrl.c
@@ -161,20 +161,25 @@ int of_pinctrl_select_state_default(struct device_node *np)
 	return of_pinctrl_select_state(np, "default");
 }
 
-int pinctrl_select_state(struct device *dev, const char *name)
+struct pinctrl *pinctrl_get_select(struct device *dev, const char *name)
 {
 	struct device_node *np;
+	int ret;
 
 	np = dev->of_node;
 	if (!np)
-		return 0;
+		return ERR_PTR(-ENODEV);
 
-	return of_pinctrl_select_state(np, name);
+	ret = of_pinctrl_select_state(np, name);
+	if (ret)
+		return ERR_PTR(ret);
+
+	return (struct pinctrl *)np;
 }
 
 int pinctrl_select_state_default(struct device *dev)
 {
-	return pinctrl_select_state(dev, "default");
+	return PTR_ERR_OR_ZERO(pinctrl_get_select(dev, "default"));
 }
 
 int pinctrl_register(struct pinctrl_device *pdev)
diff --git a/include/linux/pinctrl/consumer.h b/include/linux/pinctrl/consumer.h
index 3028f960deb4..33d5c1b19a89 100644
--- a/include/linux/pinctrl/consumer.h
+++ b/include/linux/pinctrl/consumer.h
@@ -7,8 +7,10 @@
 struct device;
 struct device_node;
 
+struct pinctrl;
+
 #ifdef CONFIG_PINCTRL
-int pinctrl_select_state(struct device *dev, const char *state);
+struct pinctrl *pinctrl_get_select(struct device *dev, const char *state);
 int pinctrl_select_state_default(struct device *dev);
 int of_pinctrl_select_state(struct device_node *np, const char *state);
 int of_pinctrl_select_state_default(struct device_node *np);
@@ -17,9 +19,9 @@ int pinctrl_gpio_direction_output(unsigned int pin);
 int pinctrl_gpio_get_direction(unsigned pin);
 int pinctrl_single_probe(struct device *dev);
 #else
-static inline int pinctrl_select_state(struct device *dev, const char *state)
+static inline struct pinctrl *pinctrl_get_select(struct device *dev, const char *state)
 {
-	return -ENODEV;
+	return ERR_PTR(-ENODEV);
 }
 
 static inline int pinctrl_select_state_default(struct device *dev)
@@ -58,4 +60,6 @@ static inline int pinctrl_single_probe(struct device *dev)
 }
 #endif
 
+static inline void pinctrl_put(struct pinctrl *pinctrl) {}
+
 #endif /* LINUX_PINCTRL_CONSUMER_H */
-- 
2.39.2




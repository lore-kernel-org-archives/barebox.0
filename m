Delivery-date: Mon, 01 Jul 2024 09:33:00 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOBX2-000QRp-1f
	for lore@lore.pengutronix.de;
	Mon, 01 Jul 2024 09:33:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOBX1-0007JD-Sz
	for lore@pengutronix.de; Mon, 01 Jul 2024 09:33:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZVPhwwYIDMi6GifOR6W8u23wQ0Ixz0pN7Hn2dWUhMGg=; b=mJHRtB2EcqGq06hdASkwGRzxXV
	DcOwY38rbNEIMsqNsQJi2/vQSx3GghnuQbnUUx3smHI/4fNUibRRhDpG9sL8kePRma8SSKx4wcnPl
	MDpReqWH900wCKHhmrJmav19oHXctvhF3WSzCR8haWTvLDY4p5QpzeU0C9MD66xdvkYrbK1pwvHJU
	wN0lp6Xxxb6mhnWgkS73gvqH+7QGfDsYFoYwpupDC516l/mGP2oJS3Pcf7fU59E8499VYoxTXQY2C
	OdcEjViLueHj3dciBSfc+FYj9GGeyd/AlWYsmFr7FTrt5XbyFBZRC9VOw+fajRMzDUB9OO/RMEJFw
	0XJRC0IQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOBWY-000000022mj-3bix;
	Mon, 01 Jul 2024 07:32:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOBWR-000000022ig-2RTK
	for barebox@lists.infradead.org;
	Mon, 01 Jul 2024 07:32:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sOBWQ-0006vr-Ak; Mon, 01 Jul 2024 09:32:22 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sOBWP-006JjO-TG; Mon, 01 Jul 2024 09:32:21 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sOBWP-000hos-2e;
	Mon, 01 Jul 2024 09:32:21 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  1 Jul 2024 09:32:19 +0200
Message-Id: <20240701073220.165946-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240701073220.165946-1-a.fatoum@pengutronix.de>
References: <20240701073220.165946-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240701_003223_742482_792F9F53 
X-CRM114-Status: GOOD (  10.98  )
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
Subject: [PATCH 6/7] gpiolib: implement of_gpio_get_chip_by_alias
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Rockchip pinctrl binding can configure GPIO direction, so let's add a
function that returns a gpio_chip that can be used for this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/gpio/gpiolib.c | 19 +++++++++++++++++++
 include/gpio.h         |  6 ++++++
 2 files changed, 25 insertions(+)

diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
index 520ffed2eefb..f34dce0e98c6 100644
--- a/drivers/gpio/gpiolib.c
+++ b/drivers/gpio/gpiolib.c
@@ -1057,6 +1057,25 @@ struct gpio_chip *gpio_get_chip_by_dev(struct device *dev)
 	return NULL;
 }
 
+struct gpio_chip *of_gpio_get_chip_by_alias(const char *alias)
+{
+	struct gpio_chip *chip;
+	struct device_node *np;
+
+	np = of_find_node_by_alias(NULL, alias);
+	if (!np)
+		return NULL;
+
+	of_device_ensure_probed(np);
+
+	list_for_each_entry(chip, &chip_list, list) {
+		if (dev_of_node(chip->dev) == np)
+			return chip;
+	}
+
+	return NULL;
+}
+
 int gpio_get_num(struct device *dev, int gpio)
 {
 	struct gpio_chip *chip;
diff --git a/include/gpio.h b/include/gpio.h
index 71896c9d6bdb..8c3eea73d8bb 100644
--- a/include/gpio.h
+++ b/include/gpio.h
@@ -36,6 +36,7 @@ void gpio_set_active(unsigned gpio, bool state);
 int gpio_is_active(unsigned gpio);
 int gpio_direction_active(unsigned gpio, bool state);
 struct gpio_chip *gpio_get_chip_by_dev(struct device *);
+struct gpio_chip *of_gpio_get_chip_by_alias(const char *alias);
 
 /**
  * gpio_poll_timeout_us - Poll till GPIO reaches requested active state
@@ -69,6 +70,11 @@ static inline struct gpio_chip *gpio_get_chip_by_dev(struct device *dev)
 	return NULL;
 }
 
+static struct gpio_chip *of_gpio_get_chip_by_alias(const char *alias)
+{
+	return NULL;
+}
+
 #define gpio_poll_timeout_us(gpio, val, timeout_us) (-ENOSYS)
 #endif
 
-- 
2.39.2




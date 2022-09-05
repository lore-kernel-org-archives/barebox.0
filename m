Delivery-date: Mon, 05 Sep 2022 19:44:50 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oVG9Q-007l8e-Jy
	for lore@lore.pengutronix.de; Mon, 05 Sep 2022 19:44:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oVG9Q-0003Xo-Iu
	for lore@pengutronix.de; Mon, 05 Sep 2022 19:44:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Dw2UQGYMOfHe6iSEMc9bmsNzrj8Ib7rd1G9BihrgNDk=; b=2964AxaU6pI7hqYzxaGukSMFVD
	BHAsOqxwXOrhJQSyDg/BwAMIFzaswPp1YZfm21RcOFv96tuT1dCeMfomdHKqQq5HHsy27Yow9G/aP
	0clqF6LOom5OJqD/O/D2Ua3Tkd2cKI0whkVX9ePiCsT0IYqpo9DiIJQJRTW84SIjXX8Zt3AOuU/Fi
	WkzTHI9B2pHamz+OYRbFUFWfmoFc9xkvwmEwq1yh9chHxr4o0eMfSinmK+IUcfeY7yC+JsZq5vUG7
	DauApETjN1rsywuCgq+nw2f+iZ1FeQjTx8YIqdK0Gx7vTvvHRv6/vm4QfZb+94DMnl0LFCz5dZ97j
	0HIJVSRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVG7x-007ksq-Vg; Mon, 05 Sep 2022 17:43:18 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV9SJ-000QQR-Oi
	for barebox@lists.infradead.org; Mon, 05 Sep 2022 10:35:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oV9SH-0005id-Tg; Mon, 05 Sep 2022 12:35:49 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oV9SF-0042ja-8W; Mon, 05 Sep 2022 12:35:49 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oV9SF-007LC9-Ov; Mon, 05 Sep 2022 12:35:47 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  5 Sep 2022 12:35:42 +0200
Message-Id: <20220905103546.1476277-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220905103546.1476277-1-a.fatoum@pengutronix.de>
References: <20220905103546.1476277-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220905_033555_882487_73AAFF87 
X-CRM114-Status: GOOD (  13.62  )
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
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/5] gpiolib: implement gpio_get_chip_by_dev()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

gpio_of_xlate() already needs the ability to find a struct gpio_chip *
via a struct device_d. Exporting this functionality to elsewhere in the
code will allow restricting commands to manipulate only a single GPIO
bank.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/gpio/gpiolib.c | 28 +++++++++++++++++++---------
 include/gpio.h         |  1 +
 2 files changed, 20 insertions(+), 9 deletions(-)

diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
index 97a99b84e32a..cf61213ca12d 100644
--- a/drivers/gpio/gpiolib.c
+++ b/drivers/gpio/gpiolib.c
@@ -636,6 +636,18 @@ static int of_gpio_simple_xlate(struct gpio_chip *chip,
 	return chip->base + gpiospec->args[0];
 }
 
+struct gpio_chip *gpio_get_chip_by_dev(struct device_d *dev)
+{
+	struct gpio_chip *chip;
+
+	list_for_each_entry(chip, &chip_list, list) {
+		if (chip->dev == dev)
+			return chip;
+	}
+
+	return NULL;
+}
+
 int gpio_of_xlate(struct device_d *dev, struct of_phandle_args *gpiospec, int *flags)
 {
 	struct gpio_chip *chip;
@@ -643,16 +655,14 @@ int gpio_of_xlate(struct device_d *dev, struct of_phandle_args *gpiospec, int *f
 	if (!dev)
 		return -ENODEV;
 
-	list_for_each_entry(chip, &chip_list, list) {
-		if (chip->dev != dev)
-			continue;
-		if (chip->ops->of_xlate)
-			return chip->ops->of_xlate(chip, gpiospec, flags);
-		else
-			return of_gpio_simple_xlate(chip, gpiospec, flags);
-	}
+	chip = gpio_get_chip_by_dev(dev);
+	if (!chip)
+		return -EPROBE_DEFER;
 
-	return -EPROBE_DEFER;
+	if (chip->ops->of_xlate)
+		return chip->ops->of_xlate(chip, gpiospec, flags);
+	else
+		return of_gpio_simple_xlate(chip, gpiospec, flags);
 }
 
 struct gpio_chip *gpio_get_chip(int gpio)
diff --git a/include/gpio.h b/include/gpio.h
index 8218722dcbf0..82f2eb6b8a34 100644
--- a/include/gpio.h
+++ b/include/gpio.h
@@ -190,5 +190,6 @@ void gpiochip_remove(struct gpio_chip *chip);
 
 int gpio_of_xlate(struct device_d *dev, struct of_phandle_args *gpiospec, int *flags);
 struct gpio_chip *gpio_get_chip(int gpio);
+struct gpio_chip *gpio_get_chip_by_dev(struct device_d *);
 
 #endif /* __GPIO_H */
-- 
2.30.2




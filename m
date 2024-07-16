Delivery-date: Tue, 16 Jul 2024 14:04:26 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sTguw-005RFV-2j
	for lore@lore.pengutronix.de;
	Tue, 16 Jul 2024 14:04:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sTguw-0003Vn-6s
	for lore@pengutronix.de; Tue, 16 Jul 2024 14:04:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=VaAOLSk6Ym727NZiaSEHogA6AkcorIxV+x0n8+ulegc=; b=hytUPoXrvae8zQOh2u2Jq+u5r+
	LwtdQxzoXpKcSUCzovFD+vSlIhXl9hL8MoueBYMngcbxd43oo1y/QC9lstLB57jreSZKsS+7/hvYS
	roh5uAR1SsKJ204fIttKQ6a/wGckYV/5jde8ZwccC5oVe0vwQWf5BmBe7zJB7mL0gqhrVsqkLQZxC
	V6Gwiii+qhlahQ2X5/nJxmrdBStvXEM/m45fTHsnLTQP0hP5sQY+yCV1sJUBlgZXDDreaD4tmeL9V
	RWK5Th77bmUO0hYALZ+L4kVX9eD2qKx/wBI+DDuZxrzI22Srw64joysaGi8LHx6BIMVjHtmZii3Bo
	L8gePKMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTguY-0000000ALq6-0QxG;
	Tue, 16 Jul 2024 12:04:02 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTguW-0000000ALpc-3vyZ
	for barebox@bombadil.infradead.org;
	Tue, 16 Jul 2024 12:04:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=VaAOLSk6Ym727NZiaSEHogA6AkcorIxV+x0n8+ulegc=; b=rZfD5bvn8M0/tQqE8n6cA7R5wE
	5W5t93cAascJMGczU6DyTAadbtkWF9V0N9XmLUm4XkgD18BH/j2V6RoZqiidSGwZ3/73zgphzB3iR
	JNUpzU30DzR4dmhU8B79edGebFFyr1M1LECiguWOzBJPd+wXNZfCLBDgHIwEGP3f4uaxaFQMaHLCF
	+JVhFMffPLUTrldXpOPshB5ZHIu9V6iU+8ZFlAlmZA6+JP616PnBVP1KrkCuaftGxvZoMAP/9kSSa
	JsnMEOzi1yuUt4M6DK9pdoS9lsd2Cv11OREMeBCdOGYPhzoBWTxfaKdNzfoM2N+qYh8aTr2khF0mi
	P1lYzJHg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTguT-0000000225j-3xRB
	for barebox@lists.infradead.org;
	Tue, 16 Jul 2024 12:03:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sTguT-0003KQ-2Q; Tue, 16 Jul 2024 14:03:57 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sTguS-0007aR-M2; Tue, 16 Jul 2024 14:03:56 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sTguS-008LLC-1t;
	Tue, 16 Jul 2024 14:03:56 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 16 Jul 2024 14:03:55 +0200
Message-Id: <20240716120355.1988646-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240716_130358_227196_4AE939BB 
X-CRM114-Status: GOOD (  12.41  )
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
Subject: [PATCH] video: backlight-pwm: switch to gpiod functions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Using GPIO descriptors aligns us more with the Linux customs nowadays
and takes care of potential active low handling.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/video/backlight-pwm.c | 27 ++++++++-------------------
 1 file changed, 8 insertions(+), 19 deletions(-)

diff --git a/drivers/video/backlight-pwm.c b/drivers/video/backlight-pwm.c
index 87358ca778ec..d3c81114e006 100644
--- a/drivers/video/backlight-pwm.c
+++ b/drivers/video/backlight-pwm.c
@@ -12,8 +12,7 @@
 #include <linux/err.h>
 #include <of.h>
 #include <regulator.h>
-#include <gpio.h>
-#include <of_gpio.h>
+#include <linux/gpio/consumer.h>
 #include <linux/math64.h>
 
 struct pwm_backlight {
@@ -22,8 +21,7 @@ struct pwm_backlight {
 	struct regulator *power;
 	uint32_t period;
 	unsigned int *levels;
-	int enable_gpio;
-	int enable_active_high;
+	struct gpio_desc *enable_gpio;
 	int enabled;
 	unsigned int scale;
 };
@@ -41,10 +39,7 @@ static int backlight_pwm_enable(struct pwm_backlight *pwm_backlight)
 
 	regulator_enable(pwm_backlight->power);
 
-	if (gpio_is_valid(pwm_backlight->enable_gpio)) {
-		gpio_direction_output(pwm_backlight->enable_gpio,
-				pwm_backlight->enable_active_high);
-	}
+	gpiod_direction_output(pwm_backlight->enable_gpio, true);
 
 	pwm_backlight->enabled = 1;
 
@@ -53,13 +48,13 @@ static int backlight_pwm_enable(struct pwm_backlight *pwm_backlight)
 
 static int backlight_pwm_disable(struct pwm_backlight *pwm_backlight)
 {
+	int ret;
+
 	if (!pwm_backlight->enabled)
 		return 0;
 
-	if (gpio_is_valid(pwm_backlight->enable_gpio)) {
-		gpio_direction_output(pwm_backlight->enable_gpio,
-				!pwm_backlight->enable_active_high);
-
+	ret = gpiod_direction_output(pwm_backlight->enable_gpio, false);
+	if (!ret) {
 		regulator_disable(pwm_backlight->power);
 
 		/*
@@ -109,7 +104,6 @@ static int pwm_backlight_parse_dt(struct device *dev,
 	int length;
 	u32 value;
 	int ret, i;
-	enum of_gpio_flags flags;
 
 	if (!node)
 		return -ENODEV;
@@ -154,12 +148,7 @@ static int pwm_backlight_parse_dt(struct device *dev,
 		pwm_backlight->backlight.brightness_max = pwm_backlight->scale;
 	}
 
-	pwm_backlight->enable_gpio = of_get_named_gpio_flags(node, "enable-gpios", 0, &flags);
-
-	if (gpio_is_valid(pwm_backlight->enable_gpio)) {
-		if (!(flags & OF_GPIO_ACTIVE_LOW))
-			pwm_backlight->enable_active_high = 1;
-	}
+	pwm_backlight->enable_gpio = gpiod_get_optional(dev, "enable-gpios", 0);
 
 	return 0;
 }
-- 
2.39.2




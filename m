Delivery-date: Mon, 27 Oct 2025 07:31:20 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDGlE-00CFKI-0b
	for lore@lore.pengutronix.de;
	Mon, 27 Oct 2025 07:31:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDGlD-00083q-JN
	for lore@pengutronix.de; Mon, 27 Oct 2025 07:31:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/JCM5jy5P8/+JaamNogowAUmG5O0iqSj70t2LTCMa9Q=; b=HxbQ/nQRkySyEdmUeduaaKmzXQ
	KTToP5CrbS3JThiHgOFUjsp5IVE9UpyPw8v++wpn7eIrVAaKue9tjwLS48cR9k+8LQiBeDPUTGOnz
	VuOkQJIXq9f4C0G6MRCUx7v+DPfLSUmg6W6JPge3U56hfbVfDUvbwrZZyw0U7LwLyxu0JeIcVBkjD
	7ma6oIP/dtnHajeckyvBdG+Qx0AOCbgSfzaePxEDb1W93nKQ7tMd8AzrKWJ4DfSjQ6tQXGZRZGEy9
	Y7v8Gw0+9CrMavGjxk3fNKZFvpCSWjpIG8tucbVSIKKpliVoENIl3DEnsRtJkf+dwJ2qN0260pz80
	zBLibwng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDGkl-0000000DCK7-1nGF;
	Mon, 27 Oct 2025 06:30:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDGki-0000000DCIn-04Pr
	for barebox@lists.infradead.org;
	Mon, 27 Oct 2025 06:30:49 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vDGkg-0007sa-Fn; Mon, 27 Oct 2025 07:30:46 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 27 Oct 2025 07:30:38 +0100
Message-ID: <20251027063045.2396578-3-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251027063045.2396578-1-a.fatoum@barebox.org>
References: <20251027063045.2396578-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251026_233048_053836_47F59BD4 
X-CRM114-Status: GOOD (  12.34  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 3/4] video: backlight-pwm: switch to gpiod functions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Using GPIO descriptors aligns us more with the Linux customs nowadays
and takes care of potential active low handling.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
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
2.47.3




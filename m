Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-in-09.arcor-online.net ([151.189.21.49])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bNhSc-0001px-CZ
 for barebox@lists.infradead.org; Thu, 14 Jul 2016 14:17:56 +0000
Received: from mail-in-05-z2.arcor-online.net (mail-in-05-z2.arcor-online.net
 [151.189.8.17])
 by mx.arcor.de (Postfix) with ESMTP id 3rqyT725MkzC2KJ
 for <barebox@lists.infradead.org>; Thu, 14 Jul 2016 16:17:31 +0200 (CEST)
Received: from mail-in-16.arcor-online.net (mail-in-16.arcor-online.net
 [151.189.21.56])
 by mail-in-05-z2.arcor-online.net (Postfix) with ESMTP id 3EB3B116537
 for <barebox@lists.infradead.org>; Thu, 14 Jul 2016 16:17:31 +0200 (CEST)
Received: from itng-giorgio.wgast.mobotix.net (wwl-pub.mobotixserver.de
 [213.183.84.172]) (Authenticated sender: giorgio.nicole@arcor.de)
 by mail-in-16.arcor-online.net (Postfix) with ESMTPA id 3rqyT62l2gz4q6n
 for <barebox@lists.infradead.org>; Thu, 14 Jul 2016 16:17:29 +0200 (CEST)
From: iw3gtf@arcor.de
Date: Thu, 14 Jul 2016 16:17:18 +0200
Message-Id: <20160714141718.20121-5-iw3gtf@arcor.de>
In-Reply-To: <20160714141718.20121-1-iw3gtf@arcor.de>
References: <20160713051805.GZ20657@pengutronix.de>
 <20160714141718.20121-1-iw3gtf@arcor.de>
In-Reply-To: <20160713051805.GZ20657@pengutronix.de>
References: <20160713051805.GZ20657@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 4/4] video/backlight-pwm: properly handle the case of an empty
 'brightness-levels' in the device tree.
To: barebox@lists.infradead.org

In case of an empty 'brightness-levels' array in the device tree or
a non empty one but containing only zeros the value of
'pwm_backlight->scale' would remain 0 possibly causing a division by zero
in the function compute_duty_cycle().

To fix it we check the computed value in case we actually have a 'brightness-levels'
array in the device tree otherwise we implicitly assume a simple array
of the form { 0, 1, 2, ..., 100 } and set the scale to 100.
---
 drivers/video/backlight-pwm.c | 20 +++++++++++++-------
 1 file changed, 13 insertions(+), 7 deletions(-)

diff --git a/drivers/video/backlight-pwm.c b/drivers/video/backlight-pwm.c
index 5ff40a9..7f1715d 100644
--- a/drivers/video/backlight-pwm.c
+++ b/drivers/video/backlight-pwm.c
@@ -128,6 +128,13 @@ static int pwm_backlight_parse_dt(struct device_d *dev,
 	if (!node)
 		return -ENODEV;
 
+	ret = of_property_read_u32(node, "default-brightness-level",
+					   &value);
+	if (ret < 0)
+		return ret;
+
+	pwm_backlight->backlight.brightness_default = value;
+
 	/* determine the number of brightness levels */
 	prop = of_find_property(node, "brightness-levels", &length);
 	if (!prop)
@@ -153,14 +160,13 @@ static int pwm_backlight_parse_dt(struct device_d *dev,
 			if (pwm_backlight->levels[i] > pwm_backlight->scale)
 				pwm_backlight->scale = pwm_backlight->levels[i];
 
-		ret = of_property_read_u32(node, "default-brightness-level",
-					   &value);
-		if (ret < 0)
-			return ret;
-
-		pwm_backlight->backlight.brightness_default = value;
-		pwm_backlight->backlight.brightness_max = pwm_backlight->scale;
+		if (pwm_backlight->scale == 0)
+			return -EINVAL;
+	} else {
+		/* We implicitly assume here a linear levels array { 0, 1, 2, ... 100 } */
+		pwm_backlight->scale = 100;
 	}
+	pwm_backlight->backlight.brightness_max = pwm_backlight->scale;
 
 	pwm_backlight->enable_gpio = of_get_named_gpio_flags(node, "enable-gpios", 0, &flags);
 
-- 
2.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

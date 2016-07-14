Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-in-16.arcor-online.net ([151.189.21.56])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bNhSc-0001pw-C4
 for barebox@lists.infradead.org; Thu, 14 Jul 2016 14:17:55 +0000
Received: from mail-in-16-z2.arcor-online.net (mail-in-16-z2.arcor-online.net
 [151.189.8.33])
 by mx.arcor.de (Postfix) with ESMTP id 3rqyT61Kplz6BZF
 for <barebox@lists.infradead.org>; Thu, 14 Jul 2016 16:17:30 +0200 (CEST)
Received: from mail-in-16.arcor-online.net (mail-in-16.arcor-online.net
 [151.189.21.56])
 by mail-in-16-z2.arcor-online.net (Postfix) with ESMTP id F02B021E9F4
 for <barebox@lists.infradead.org>; Thu, 14 Jul 2016 16:17:29 +0200 (CEST)
Received: from itng-giorgio.wgast.mobotix.net (wwl-pub.mobotixserver.de
 [213.183.84.172]) (Authenticated sender: giorgio.nicole@arcor.de)
 by mail-in-16.arcor-online.net (Postfix) with ESMTPA id 3rqyT54XfDz4q6n
 for <barebox@lists.infradead.org>; Thu, 14 Jul 2016 16:17:29 +0200 (CEST)
From: iw3gtf@arcor.de
Date: Thu, 14 Jul 2016 16:17:17 +0200
Message-Id: <20160714141718.20121-4-iw3gtf@arcor.de>
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
Subject: [PATCH 3/4] video/backlight-pwm: code readability improvement.
To: barebox@lists.infradead.org

We use the local variable 'length' instead of the lengthy
'pwm_backlight->backlight.brightness_max' within pwm_backlight_parse_dt().
---
 drivers/video/backlight-pwm.c | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/video/backlight-pwm.c b/drivers/video/backlight-pwm.c
index 53cf4e9..5ff40a9 100644
--- a/drivers/video/backlight-pwm.c
+++ b/drivers/video/backlight-pwm.c
@@ -133,12 +133,11 @@ static int pwm_backlight_parse_dt(struct device_d *dev,
 	if (!prop)
 		return -EINVAL;
 
-	pwm_backlight->backlight.brightness_max = length / sizeof(u32);
+	length /= sizeof(u32);
 
 	/* read brightness levels from DT property */
-	if (pwm_backlight->backlight.brightness_max > 0) {
-		size_t size = sizeof(*pwm_backlight->levels) *
-			pwm_backlight->backlight.brightness_max;
+	if (length > 0) {
+		size_t size = sizeof(*pwm_backlight->levels) * length;
 
 		pwm_backlight->levels = xzalloc(size);
 		if (!pwm_backlight->levels)
@@ -146,11 +145,11 @@ static int pwm_backlight_parse_dt(struct device_d *dev,
 
 		ret = of_property_read_u32_array(node, "brightness-levels",
 						 pwm_backlight->levels,
-						 pwm_backlight->backlight.brightness_max);
+						 length);
 		if (ret < 0)
 			return ret;
 
-		for (i = 0; i < pwm_backlight->backlight.brightness_max; i++)
+		for (i = 0; i < length; i++)
 			if (pwm_backlight->levels[i] > pwm_backlight->scale)
 				pwm_backlight->scale = pwm_backlight->levels[i];
 
-- 
2.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

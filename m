Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-in-07.arcor-online.net ([151.189.21.47])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bNhSc-0001po-3q
 for barebox@lists.infradead.org; Thu, 14 Jul 2016 14:17:55 +0000
Received: from mail-in-05-z2.arcor-online.net (mail-in-05-z2.arcor-online.net
 [151.189.8.17])
 by mx.arcor.de (Postfix) with ESMTP id 3rqyT53XcqzBtKS
 for <barebox@lists.infradead.org>; Thu, 14 Jul 2016 16:17:29 +0200 (CEST)
Received: from mail-in-16.arcor-online.net (mail-in-16.arcor-online.net
 [151.189.21.56])
 by mail-in-05-z2.arcor-online.net (Postfix) with ESMTP id 758A41167BB
 for <barebox@lists.infradead.org>; Thu, 14 Jul 2016 16:17:29 +0200 (CEST)
Received: from itng-giorgio.wgast.mobotix.net (wwl-pub.mobotixserver.de
 [213.183.84.172]) (Authenticated sender: giorgio.nicole@arcor.de)
 by mail-in-16.arcor-online.net (Postfix) with ESMTPA id 3rqyT50d1lz4q6n
 for <barebox@lists.infradead.org>; Thu, 14 Jul 2016 16:17:28 +0200 (CEST)
From: iw3gtf@arcor.de
Date: Thu, 14 Jul 2016 16:17:16 +0200
Message-Id: <20160714141718.20121-3-iw3gtf@arcor.de>
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
Subject: [PATCH 2/4] video/backlight-pwm: fix the value of 'brightness_max'.
To: barebox@lists.infradead.org

The field pwm_backlight->backlight.brightness_max should be the maximum
allowed brightness value for the backlight, not the max index of the
array 'pwm_backlight->levels[]'.
---
 drivers/video/backlight-pwm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/video/backlight-pwm.c b/drivers/video/backlight-pwm.c
index 3024ec6..53cf4e9 100644
--- a/drivers/video/backlight-pwm.c
+++ b/drivers/video/backlight-pwm.c
@@ -160,7 +160,7 @@ static int pwm_backlight_parse_dt(struct device_d *dev,
 			return ret;
 
 		pwm_backlight->backlight.brightness_default = value;
-		pwm_backlight->backlight.brightness_max--;
+		pwm_backlight->backlight.brightness_max = pwm_backlight->scale;
 	}
 
 	pwm_backlight->enable_gpio = of_get_named_gpio_flags(node, "enable-gpios", 0, &flags);
-- 
2.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-in-15.arcor-online.net ([151.189.21.55])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bNhSb-0001oz-Qk
 for barebox@lists.infradead.org; Thu, 14 Jul 2016 14:17:54 +0000
Received: from mail-in-01-z2.arcor-online.net (mail-in-01-z2.arcor-online.net
 [151.189.8.13])
 by mx.arcor.de (Postfix) with ESMTP id 3rqyT50LG3zC5HC
 for <barebox@lists.infradead.org>; Thu, 14 Jul 2016 16:17:29 +0200 (CEST)
Received: from mail-in-16.arcor-online.net (mail-in-16.arcor-online.net
 [151.189.21.56])
 by mail-in-01-z2.arcor-online.net (Postfix) with ESMTP id F09F662C01C
 for <barebox@lists.infradead.org>; Thu, 14 Jul 2016 16:17:28 +0200 (CEST)
Received: from itng-giorgio.wgast.mobotix.net (wwl-pub.mobotixserver.de
 [213.183.84.172]) (Authenticated sender: giorgio.nicole@arcor.de)
 by mail-in-16.arcor-online.net (Postfix) with ESMTPA id 3rqyT45R6tz4q6n
 for <barebox@lists.infradead.org>; Thu, 14 Jul 2016 16:17:28 +0200 (CEST)
From: iw3gtf@arcor.de
Date: Thu, 14 Jul 2016 16:17:15 +0200
Message-Id: <20160714141718.20121-2-iw3gtf@arcor.de>
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
Subject: [PATCH 1/4] video/backlight-pwm: fixed a loop index going out of
 range.
To: barebox@lists.infradead.org

In the function pwm_backlight_parse_dt() the last iteration of the for
loop accessed memory past the end of the array 'pwm_backlight->levels[]'
because of a wrong test ( '<=' instead of '<').
---
 drivers/video/backlight-pwm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/video/backlight-pwm.c b/drivers/video/backlight-pwm.c
index 91435f8..3024ec6 100644
--- a/drivers/video/backlight-pwm.c
+++ b/drivers/video/backlight-pwm.c
@@ -150,7 +150,7 @@ static int pwm_backlight_parse_dt(struct device_d *dev,
 		if (ret < 0)
 			return ret;
 
-		for (i = 0; i <=  pwm_backlight->backlight.brightness_max; i++)
+		for (i = 0; i < pwm_backlight->backlight.brightness_max; i++)
 			if (pwm_backlight->levels[i] > pwm_backlight->scale)
 				pwm_backlight->scale = pwm_backlight->levels[i];
 
-- 
2.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

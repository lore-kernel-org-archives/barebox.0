Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izfGd-0005xA-Ni
 for barebox@lists.infradead.org; Thu, 06 Feb 2020 11:24:20 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  6 Feb 2020 12:23:30 +0100
Message-Id: <20200206112334.14314-5-a.fatoum@pengutronix.de>
In-Reply-To: <20200206112334.14314-1-a.fatoum@pengutronix.de>
References: <20200206112334.14314-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 4/8] video: backlight-pwm: remove duplicate assignment to
 object
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

pwm_backlight->period is assigned pwm_get_period(pwm), which is the same
value just a few lines earlier. Remove the superfluous reassignment.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/video/backlight-pwm.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/video/backlight-pwm.c b/drivers/video/backlight-pwm.c
index 997235a74a30..9111a42d7544 100644
--- a/drivers/video/backlight-pwm.c
+++ b/drivers/video/backlight-pwm.c
@@ -204,8 +204,6 @@ static int backlight_pwm_of_probe(struct device_d *dev)
 		return PTR_ERR(pwm_backlight->power);
 	}
 
-	pwm_backlight->period = pwm_get_period(pwm_backlight->pwm);
-
 	pwm_backlight->backlight.slew_time_ms = 100;
 	pwm_backlight->backlight.brightness_set = backlight_pwm_set;
 	pwm_backlight->backlight.node = dev->device_node;
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

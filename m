Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZeiWh-0008DA-3s
 for barebox@lists.infradead.org; Wed, 23 Sep 2015 11:47:55 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 23 Sep 2015 13:47:28 +0200
Message-Id: <1443008851-26596-8-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1443008851-26596-1-git-send-email-s.hauer@pengutronix.de>
References: <1443008851-26596-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 07/10] video: backlight-pwm: Add error message
To: Barebox List <barebox@lists.infradead.org>

Inform the user when we can't find a pwm for the backlight driver.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/video/backlight-pwm.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/video/backlight-pwm.c b/drivers/video/backlight-pwm.c
index 91b1481..8f17f21 100644
--- a/drivers/video/backlight-pwm.c
+++ b/drivers/video/backlight-pwm.c
@@ -160,8 +160,10 @@ static int backlight_pwm_of_probe(struct device_d *dev)
 	struct pwm_device *pwm;
 
 	pwm = of_pwm_request(dev->device_node, NULL);
-	if (IS_ERR(pwm))
+	if (IS_ERR(pwm)) {
+		dev_err(dev, "Cannot find PWM device\n");
 		return PTR_ERR(pwm);
+	}
 
 	pwm_backlight = xzalloc(sizeof(*pwm_backlight));
 	pwm_backlight->pwm = pwm;
-- 
2.5.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

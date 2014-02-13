Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WDt69-0000Rf-CK
 for barebox@lists.infradead.org; Thu, 13 Feb 2014 10:00:52 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 13 Feb 2014 11:00:17 +0100
Message-Id: <1392285621-17485-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1392285621-17485-1-git-send-email-s.hauer@pengutronix.de>
References: <1392285621-17485-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/5] PWM: Use a separate device for PWMs
To: barebox@lists.infradead.org

Instead of directly using the hardware devicet for PWMs register
a logical PWM device so that the user operates on pwmx devices rather
than pxa-pwmx.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/pwm/core.c | 20 +++++++++++++++-----
 1 file changed, 15 insertions(+), 5 deletions(-)

diff --git a/drivers/pwm/core.c b/drivers/pwm/core.c
index f769cfe..f2b062e 100644
--- a/drivers/pwm/core.c
+++ b/drivers/pwm/core.c
@@ -26,7 +26,8 @@ struct pwm_device {
 #define FLAG_REQUESTED	0
 #define FLAG_ENABLED	1
 	struct list_head	node;
-	struct device_d		*dev;
+	struct device_d		*hwdev;
+	struct device_d		dev;
 
 	unsigned int		duty_ns;
 	unsigned int		period_ns;
@@ -79,27 +80,36 @@ int pwmchip_add(struct pwm_chip *chip, struct device_d *dev)
 {
 	struct pwm_device *pwm;
 	struct param_d *p;
+	int ret;
 
 	if (_find_pwm(chip->devname))
 		return -EBUSY;
 
 	pwm = xzalloc(sizeof(*pwm));
 	pwm->chip = chip;
-	pwm->dev = dev;
+	pwm->hwdev = dev;
+
+	strcpy(pwm->dev.name, chip->devname);
+	pwm->dev.id = DEVICE_ID_SINGLE;
+	pwm->dev.parent = dev;
+
+	ret = register_device(&pwm->dev);
+	if (ret)
+		return ret;
 
 	list_add_tail(&pwm->node, &pwm_list);
 
-	p = dev_add_param_int(dev, "duty_ns", set_duty_period_ns,
+	p = dev_add_param_int(&pwm->dev, "duty_ns", set_duty_period_ns,
 			NULL, &pwm->chip->duty_ns, "%u", pwm);
 	if (IS_ERR(p))
 		return PTR_ERR(p);
 
-	p = dev_add_param_int(dev, "period_ns", set_duty_period_ns,
+	p = dev_add_param_int(&pwm->dev, "period_ns", set_duty_period_ns,
 			NULL, &pwm->chip->period_ns, "%u", pwm);
 	if (IS_ERR(p))
 		return PTR_ERR(p);
 
-	p = dev_add_param_bool(dev, "enable", set_enable,
+	p = dev_add_param_bool(&pwm->dev, "enable", set_enable,
 			NULL, &pwm->p_enable, pwm);
 	if (IS_ERR(p))
 		return PTR_ERR(p);
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UOq9U-0001MO-Df
 for barebox@lists.infradead.org; Sun, 07 Apr 2013 14:01:06 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun,  7 Apr 2013 16:00:50 +0200
Message-Id: <1365343255-26497-17-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1365343255-26497-1-git-send-email-s.hauer@pengutronix.de>
References: <1365343255-26497-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 16/21] pwm: Use dev_add_param_int for pwm parameters
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Robert Jarzmik <robert.jarzmik@free.fr>
---
 drivers/pwm/core.c | 89 ++++++++++++++++++------------------------------------
 1 file changed, 30 insertions(+), 59 deletions(-)

diff --git a/drivers/pwm/core.c b/drivers/pwm/core.c
index 70ec590..db7d260 100644
--- a/drivers/pwm/core.c
+++ b/drivers/pwm/core.c
@@ -18,6 +18,7 @@
 #include <malloc.h>
 #include <pwm.h>
 #include <linux/list.h>
+#include <linux/err.h>
 
 struct pwm_device {
 	struct			pwm_chip *chip;
@@ -26,22 +27,14 @@ struct pwm_device {
 #define FLAG_ENABLED	1
 	struct list_head	node;
 	struct device_d		*dev;
+
+	unsigned int		duty_ns;
+	unsigned int		period_ns;
+	unsigned int		p_enable;
 };
 
 static LIST_HEAD(pwm_list);
 
-static struct pwm_device *dev_to_pwm(struct device_d *dev)
-{
-	struct pwm_device *pwm;
-
-	list_for_each_entry(pwm, &pwm_list, node) {
-		if (pwm->dev == dev)
-			return pwm;
-	}
-
-	return NULL;
-}
-
 static struct pwm_device *_find_pwm(const char *devname)
 {
 	struct pwm_device *pwm;
@@ -54,61 +47,25 @@ static struct pwm_device *_find_pwm(const char *devname)
 	return NULL;
 }
 
-static int set_period_ns(struct device_d *dev, struct param_d *p,
-			 const char *val)
+static int set_duty_period_ns(struct param_d *p, void *priv)
 {
-	struct pwm_device *pwm = dev_to_pwm(dev);
-	int period_ns;
+	struct pwm_device *pwm = priv;
 
-	if (!val)
-		return dev_param_set_generic(dev, p, NULL);
+	pwm_config(pwm, pwm->chip->duty_ns, pwm->chip->period_ns);
 
-	period_ns = simple_strtoul(val, NULL, 0);
-	pwm_config(pwm, pwm->chip->duty_ns, period_ns);
-	return dev_param_set_generic(dev, p, val);
-}
-
-static int set_duty_ns(struct device_d *dev, struct param_d *p, const char *val)
-{
-	struct pwm_device *pwm = dev_to_pwm(dev);
-	int duty_ns;
-
-	if (!val)
-		return dev_param_set_generic(dev, p, NULL);
-
-	duty_ns = simple_strtoul(val, NULL, 0);
-	pwm_config(pwm, duty_ns, pwm->chip->period_ns);
-	return dev_param_set_generic(dev, p, val);
+	return 0;
 }
 
-static int set_enable(struct device_d *dev, struct param_d *p, const char *val)
+static int set_enable(struct param_d *p, void *priv)
 {
-	struct pwm_device *pwm = dev_to_pwm(dev);
-	int enable;
-
-	if (!val)
-		return dev_param_set_generic(dev, p, NULL);
+	struct pwm_device *pwm = priv;
 
-	enable = !!simple_strtoul(val, NULL, 0);
-	if (enable)
+	if (pwm->p_enable)
 		pwm_enable(pwm);
 	else
 		pwm_disable(pwm);
-	return dev_param_set_generic(dev, p, enable ? "1" : "0");
-}
 
-static int pwm_register_vars(struct device_d *dev)
-{
-	int ret;
-
-	ret = dev_add_param(dev, "duty_ns", set_duty_ns, NULL, 0);
-	if (!ret)
-		ret = dev_add_param(dev, "period_ns", set_period_ns, NULL, 0);
-	if (!ret)
-		ret = dev_add_param(dev, "enable", set_enable, NULL, 0);
-	if (!ret)
-		ret = dev_set_param(dev, "enable", 0);
-	return ret;
+	return 0;
 }
 
 /**
@@ -121,7 +78,7 @@ static int pwm_register_vars(struct device_d *dev)
 int pwmchip_add(struct pwm_chip *chip, struct device_d *dev)
 {
 	struct pwm_device *pwm;
-	int ret = 0;
+	struct param_d *p;
 
 	if (_find_pwm(chip->devname))
 		return -EBUSY;
@@ -131,9 +88,23 @@ int pwmchip_add(struct pwm_chip *chip, struct device_d *dev)
 	pwm->dev = dev;
 
 	list_add_tail(&pwm->node, &pwm_list);
-	pwm_register_vars(dev);
 
-	return ret;
+	p = dev_add_param_int(dev, "duty_ns", set_duty_period_ns,
+			NULL, &pwm->chip->duty_ns, "%u", pwm);
+	if (IS_ERR(p))
+		return PTR_ERR(p);
+
+	p = dev_add_param_int(dev, "period_ns", set_duty_period_ns,
+			NULL, &pwm->chip->period_ns, "%u", pwm);
+	if (IS_ERR(p))
+		return PTR_ERR(p);
+
+	p = dev_add_param_bool(dev, "enable", set_enable,
+			NULL, &pwm->p_enable, pwm);
+	if (IS_ERR(p))
+		return PTR_ERR(p);
+
+	return 0;
 }
 EXPORT_SYMBOL_GPL(pwmchip_add);
 
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

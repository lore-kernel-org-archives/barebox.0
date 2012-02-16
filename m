Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp6-g21.free.fr ([2a01:e0c:1:1599::15])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Ry5zz-000086-Tr
 for barebox@lists.infradead.org; Thu, 16 Feb 2012 18:24:09 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
Date: Thu, 16 Feb 2012 19:23:46 +0100
Message-Id: <1329416628-19781-1-git-send-email-robert.jarzmik@free.fr>
In-Reply-To: <20120216074031.GG3852@pengutronix.de>
References: <20120216074031.GG3852@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH V3 1/3] drivers/pwm: add duty_ns and period_ns to core pwm chip
To: barebox@lists.infradead.org

Add variables to control the duty_ns and period_ns of PWM
chips. When these variables are set, a call to either
pwm_enable() or pwm_config() is performed to enforce the
setup values.

Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>
---
 drivers/pwm/core.c |   76 +++++++++++++++++++++++++++++++++++++++++++++++++++-
 include/pwm.h      |    7 ++++-
 2 files changed, 81 insertions(+), 2 deletions(-)

diff --git a/drivers/pwm/core.c b/drivers/pwm/core.c
index af30edf..5895584 100644
--- a/drivers/pwm/core.c
+++ b/drivers/pwm/core.c
@@ -29,10 +29,23 @@ struct pwm_device {
 #define FLAG_REQUESTED	0
 #define FLAG_ENABLED	1
 	struct list_head	node;
+	struct device_d		*dev;
 };
 
 static LIST_HEAD(pwm_list);
 
+static struct pwm_device *dev_to_pwm(struct device_d *dev)
+{
+	struct pwm_device *pwm;
+
+	list_for_each_entry(pwm, &pwm_list, node) {
+		if (pwm->dev == dev)
+			return pwm;
+	}
+
+	return NULL;
+}
+
 static struct pwm_device *_find_pwm(const char *devname)
 {
 	struct pwm_device *pwm;
@@ -45,6 +58,63 @@ static struct pwm_device *_find_pwm(const char *devname)
 	return NULL;
 }
 
+static int set_period_ns(struct device_d *dev, struct param_d *p,
+			 const char *val)
+{
+	struct pwm_device *pwm = dev_to_pwm(dev);
+	int period_ns;
+
+	if (!val)
+		return dev_param_set_generic(dev, p, NULL);
+
+	period_ns = simple_strtoul(val, NULL, 0);
+	pwm_config(pwm, pwm->chip->duty_ns, period_ns);
+	return dev_param_set_generic(dev, p, val);
+}
+
+static int set_duty_ns(struct device_d *dev, struct param_d *p, const char *val)
+{
+	struct pwm_device *pwm = dev_to_pwm(dev);
+	int duty_ns;
+
+	if (!val)
+		return dev_param_set_generic(dev, p, NULL);
+
+	duty_ns = simple_strtoul(val, NULL, 0);
+	pwm_config(pwm, duty_ns, pwm->chip->period_ns);
+	return dev_param_set_generic(dev, p, val);
+}
+
+static int set_enable(struct device_d *dev, struct param_d *p, const char *val)
+{
+	struct pwm_device *pwm = dev_to_pwm(dev);
+	int enable;
+
+	if (!val)
+		return dev_param_set_generic(dev, p, NULL);
+
+	enable = !!simple_strtoul(val, NULL, 0);
+	if (enable)
+		pwm_enable(pwm);
+	else
+		pwm_disable(pwm);
+	return dev_param_set_generic(dev, p, enable ? "1" : "0");
+}
+
+static int pwm_register_vars(struct device_d *dev)
+{
+	int ret;
+
+	ret = dev_add_param(dev, "duty_ns", set_duty_ns, NULL, 0);
+	if (!ret)
+		ret = dev_add_param(dev, "period_ns", set_period_ns, NULL, 0);
+	if (!ret)
+		ret = dev_add_param(dev, "enable", set_enable, NULL, 0);
+	if (!ret)
+		ret = dev_set_param(dev, "enable", 0);
+	return ret;
+}
+
 /**
  * pwmchip_add() - register a new pwm
  * @chip: the pwm
@@ -52,7 +122,7 @@ static struct pwm_device *_find_pwm(const char *devname)
  * register a new pwm. pwm->devname must be initialized, usually
  * from dev_name(dev) from the hardware driver.
  */
-int pwmchip_add(struct pwm_chip *chip)
+int pwmchip_add(struct pwm_chip *chip, struct device_d *dev)
 {
 	struct pwm_device *pwm;
 	int ret = 0;
@@ -62,8 +132,10 @@ int pwmchip_add(struct pwm_chip *chip)
 
 	pwm = xzalloc(sizeof(*pwm));
 	pwm->chip = chip;
+	pwm->dev = dev;
 
 	list_add_tail(&pwm->node, &pwm_list);
+	pwm_register_vars(dev);
 
 	return ret;
 }
@@ -136,6 +208,8 @@ EXPORT_SYMBOL_GPL(pwm_free);
  */
 int pwm_config(struct pwm_device *pwm, int duty_ns, int period_ns)
 {
+	pwm->chip->duty_ns = duty_ns;
+	pwm->chip->period_ns = period_ns;
 	return pwm->chip->ops->config(pwm->chip, duty_ns, period_ns);
 }
 EXPORT_SYMBOL_GPL(pwm_config);
diff --git a/include/pwm.h b/include/pwm.h
index 80f88b1..bdc2fdd 100644
--- a/include/pwm.h
+++ b/include/pwm.h
@@ -2,6 +2,7 @@
 #define __PWM_H
 
 struct pwm_device;
+struct device_d;
 
 /*
  * pwm_request - request a PWM device
@@ -51,13 +52,17 @@ struct pwm_ops {
  * struct pwm_chip - abstract a PWM
  * @devname: unique identifier for this pwm
  * @ops: The callbacks for this PWM
+ * @duty_ns: The duty cycle of the PWM, in nano-seconds
+ * @period_ns: The period of the PWM, in nano-seconds
  */
 struct pwm_chip {
 	const char		*devname;
 	struct pwm_ops		*ops;
+	int			duty_ns;
+	int			period_ns;
 };
 
-int pwmchip_add(struct pwm_chip *chip);
+int pwmchip_add(struct pwm_chip *chip, struct device_d *dev);
 int pwmchip_remove(struct pwm_chip *chip);
 
 #endif /* __PWM_H */
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

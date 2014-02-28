Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WJONM-0006Tc-Mg
 for barebox@lists.infradead.org; Fri, 28 Feb 2014 14:25:21 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 28 Feb 2014 15:24:51 +0100
Message-Id: <1393597495-13896-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/5] PWM: Add functions for getting/setting period/duty cycle
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/pwm/core.c | 20 ++++++++++++++++++++
 include/pwm.h      |  5 +++++
 2 files changed, 25 insertions(+)

diff --git a/drivers/pwm/core.c b/drivers/pwm/core.c
index f2b062e..7f30724 100644
--- a/drivers/pwm/core.c
+++ b/drivers/pwm/core.c
@@ -198,6 +198,26 @@ int pwm_config(struct pwm_device *pwm, int duty_ns, int period_ns)
 }
 EXPORT_SYMBOL_GPL(pwm_config);
 
+void pwm_set_period(struct pwm_device *pwm, unsigned int period_ns)
+{
+	pwm->period_ns = period_ns;
+}
+
+unsigned int pwm_get_period(struct pwm_device *pwm)
+{
+	return pwm->period_ns;
+}
+
+void pwm_set_duty_cycle(struct pwm_device *pwm, unsigned int duty_ns)
+{
+	pwm->duty_ns = duty_ns;
+}
+
+unsigned int pwm_get_duty_cycle(struct pwm_device *pwm)
+{
+	return pwm->duty_ns;
+}
+
 /*
  * pwm_enable - start a PWM output toggling
  */
diff --git a/include/pwm.h b/include/pwm.h
index bdc2fdd..5ca9fa0 100644
--- a/include/pwm.h
+++ b/include/pwm.h
@@ -29,6 +29,11 @@ int pwm_enable(struct pwm_device *pwm);
  */
 void pwm_disable(struct pwm_device *pwm);
 
+void pwm_set_period(struct pwm_device *pwm, unsigned int period);
+unsigned int pwm_get_period(struct pwm_device *pwm);
+void pwm_set_duty_cycle(struct pwm_device *pwm, unsigned int duty);
+unsigned int pwm_get_duty_cycle(struct pwm_device *pwm);
+
 struct pwm_chip;
 
 /**
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

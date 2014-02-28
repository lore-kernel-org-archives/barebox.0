Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WJONM-0006Td-Mi
 for barebox@lists.infradead.org; Fri, 28 Feb 2014 14:25:22 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 28 Feb 2014 15:24:52 +0100
Message-Id: <1393597495-13896-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1393597495-13896-1-git-send-email-s.hauer@pengutronix.de>
References: <1393597495-13896-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/5] PWM: Implement devicetree support
To: barebox@lists.infradead.org

This implements of_pwm_request() for PWM client drivers.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/pwm/core.c | 71 ++++++++++++++++++++++++++++++++++++++++++++++++------
 include/pwm.h      |  2 ++
 2 files changed, 66 insertions(+), 7 deletions(-)

diff --git a/drivers/pwm/core.c b/drivers/pwm/core.c
index 7f30724..cc33dec 100644
--- a/drivers/pwm/core.c
+++ b/drivers/pwm/core.c
@@ -143,6 +143,24 @@ int pwmchip_remove(struct pwm_chip *chip)
 }
 EXPORT_SYMBOL_GPL(pwmchip_remove);
 
+static int __pwm_request(struct pwm_device *pwm)
+{
+	int ret;
+
+	if (test_bit(FLAG_REQUESTED, &pwm->flags))
+		return -EBUSY;
+
+	if (pwm->chip->ops->request) {
+		ret = pwm->chip->ops->request(pwm->chip);
+		if (ret)
+			return ret;
+	}
+
+	set_bit(FLAG_REQUESTED, &pwm->flags);
+
+	return 0;
+}
+
 /*
  * pwm_request - request a PWM device
  */
@@ -155,20 +173,59 @@ struct pwm_device *pwm_request(const char *devname)
 	if (!pwm)
 		return NULL;
 
-	if (test_bit(FLAG_REQUESTED, &pwm->flags))
+	ret = __pwm_request(pwm);
+	if (ret)
 		return NULL;
 
-	if (pwm->chip->ops->request) {
-		ret = pwm->chip->ops->request(pwm->chip);
-		if (ret)
-			return NULL;
+	return pwm;
+}
+EXPORT_SYMBOL_GPL(pwm_request);
+
+static struct pwm_device *of_node_to_pwm_device(struct device_node *np)
+{
+	struct pwm_device *pwm;
+
+	list_for_each_entry(pwm, &pwm_list, node) {
+		if (pwm->hwdev && pwm->hwdev->device_node == np)
+			return pwm;
 	}
 
-	set_bit(FLAG_REQUESTED, &pwm->flags);
+        return ERR_PTR(-ENODEV);
+}
+
+struct pwm_device *of_pwm_request(struct device_node *np, const char *con_id)
+{
+	struct of_phandle_args args;
+	int index = 0;
+	struct pwm_device *pwm;
+	int ret;
+
+	if (con_id)
+		return ERR_PTR(-EINVAL);
+
+	ret = of_parse_phandle_with_args(np, "pwms", "#pwm-cells", index,
+			&args);
+	if (ret) {
+		pr_debug("%s(): can't parse \"pwms\" property\n", __func__);
+		return ERR_PTR(ret);
+	}
+
+	pwm = of_node_to_pwm_device(args.np);
+	if (IS_ERR(pwm)) {
+		pr_debug("%s(): PWM chip not found\n", __func__);
+		return pwm;
+	}
+
+	if (args.args_count > 1)
+		pwm_set_period(pwm, args.args[1]);
+
+	ret = __pwm_request(pwm);
+	if (ret)
+		return ERR_PTR(-ret);
 
 	return pwm;
 }
-EXPORT_SYMBOL_GPL(pwm_request);
+EXPORT_SYMBOL_GPL(of_pwm_request);
 
 /*
  * pwm_free - free a PWM device
diff --git a/include/pwm.h b/include/pwm.h
index 5ca9fa0..59d86d4 100644
--- a/include/pwm.h
+++ b/include/pwm.h
@@ -9,6 +9,8 @@ struct device_d;
  */
 struct pwm_device *pwm_request(const char *pwmname);
 
+struct pwm_device *of_pwm_request(struct device_node *np, const char *con_id);
+
 /*
  * pwm_free - free a PWM device
  */
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

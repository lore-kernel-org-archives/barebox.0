Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z3Lf8-0004cK-SN
 for barebox@lists.infradead.org; Fri, 12 Jun 2015 09:54:12 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 12 Jun 2015 11:53:40 +0200
Message-Id: <1434102821-10555-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1434102821-10555-1-git-send-email-s.hauer@pengutronix.de>
References: <1434102821-10555-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/6] PWM: Allow multiple PWMs per device node
To: Barebox List <barebox@lists.infradead.org>

Matching a device node is enough since a device node may have
multiple PWMs. Check for a id aswell.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/pwm/core.c | 7 ++++---
 include/pwm.h      | 2 ++
 2 files changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/pwm/core.c b/drivers/pwm/core.c
index cc33dec..3605201 100644
--- a/drivers/pwm/core.c
+++ b/drivers/pwm/core.c
@@ -181,12 +181,13 @@ struct pwm_device *pwm_request(const char *devname)
 }
 EXPORT_SYMBOL_GPL(pwm_request);
 
-static struct pwm_device *of_node_to_pwm_device(struct device_node *np)
+static struct pwm_device *of_node_to_pwm_device(struct device_node *np, int id)
 {
 	struct pwm_device *pwm;
 
 	list_for_each_entry(pwm, &pwm_list, node) {
-		if (pwm->hwdev && pwm->hwdev->device_node == np)
+		if (pwm->hwdev && pwm->hwdev->device_node == np &&
+				pwm->chip->id == id)
 			return pwm;
 	}
 
@@ -210,7 +211,7 @@ struct pwm_device *of_pwm_request(struct device_node *np, const char *con_id)
 		return ERR_PTR(ret);
 	}
 
-	pwm = of_node_to_pwm_device(args.np);
+	pwm = of_node_to_pwm_device(args.np, args.args[0]);
 	if (IS_ERR(pwm)) {
 		pr_debug("%s(): PWM chip not found\n", __func__);
 		return pwm;
diff --git a/include/pwm.h b/include/pwm.h
index 59d86d4..911c760 100644
--- a/include/pwm.h
+++ b/include/pwm.h
@@ -57,12 +57,14 @@ struct pwm_ops {
 
 /**
  * struct pwm_chip - abstract a PWM
+ * @id: The id of this pwm
  * @devname: unique identifier for this pwm
  * @ops: The callbacks for this PWM
  * @duty_ns: The duty cycle of the PWM, in nano-seconds
  * @period_ns: The period of the PWM, in nano-seconds
  */
 struct pwm_chip {
+	int			id;
 	const char		*devname;
 	struct pwm_ops		*ops;
 	int			duty_ns;
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZFFcz-0006it-Uf
 for barebox@lists.infradead.org; Wed, 15 Jul 2015 05:53:10 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 15 Jul 2015 07:52:45 +0200
Message-Id: <1436939566-20823-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] regulator: Factor out functions to work with
 regulator_internal
To: Barebox List <barebox@lists.infradead.org>

Internally we only have a struct regulator_internal, so factor
out regulator_enable_internal and regulator_disable_internal
functions which can be called from regulator internal code.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/regulator/core.c | 86 +++++++++++++++++++++++++-----------------------
 1 file changed, 45 insertions(+), 41 deletions(-)

diff --git a/drivers/regulator/core.c b/drivers/regulator/core.c
index a3c9e41..96bf846 100644
--- a/drivers/regulator/core.c
+++ b/drivers/regulator/core.c
@@ -43,6 +43,49 @@ struct regulator {
 	struct device_d *dev;
 };
 
+static int regulator_enable_internal(struct regulator_internal *ri)
+{
+	int ret;
+
+	if (ri->enable_count) {
+		ri->enable_count++;
+		return 0;
+	}
+
+	if (!ri->rdev->ops->enable)
+		return -ENOSYS;
+
+	ret = ri->rdev->ops->enable(ri->rdev);
+	if (ret)
+		return ret;
+
+	if (ri->enable_time_us)
+		udelay(ri->enable_time_us);
+
+	ri->enable_count++;
+
+	return 0;
+}
+
+static int regulator_disable_internal(struct regulator_internal *ri)
+{
+	int ret;
+
+	if (!ri->enable_count)
+		return -EINVAL;
+
+	if (!ri->rdev->ops->disable)
+		return -ENOSYS;
+
+	ret = ri->rdev->ops->disable(ri->rdev);
+	if (ret)
+		return ret;
+
+	ri->enable_count--;
+
+	return 0;
+}
+
 static struct regulator_internal * __regulator_register(struct regulator_dev *rd, const char *name)
 {
 	struct regulator_internal *ri;
@@ -239,32 +282,10 @@ struct regulator *regulator_get(struct device_d *dev, const char *supply)
  */
 int regulator_enable(struct regulator *r)
 {
-	struct regulator_internal *ri;
-	int ret;
-
 	if (!r)
 		return 0;
 
-	ri = r->ri;
-
-	if (ri->enable_count) {
-		ri->enable_count++;
-		return 0;
-	}
-
-	if (!ri->rdev->ops->enable)
-		return -ENOSYS;
-
-	ret = ri->rdev->ops->enable(ri->rdev);
-	if (ret)
-		return ret;
-
-	if (ri->enable_time_us)
-		udelay(ri->enable_time_us);
-
-	ri->enable_count++;
-
-	return 0;
+	return regulator_enable_internal(r->ri);
 }
 
 /*
@@ -278,27 +299,10 @@ int regulator_enable(struct regulator *r)
  */
 int regulator_disable(struct regulator *r)
 {
-	struct regulator_internal *ri;
-	int ret;
-
 	if (!r)
 		return 0;
 
-	ri = r->ri;
-
-	if (!ri->enable_count)
-		return -EINVAL;
-
-	if (!ri->rdev->ops->disable)
-		return -ENOSYS;
-
-	ret = ri->rdev->ops->disable(ri->rdev);
-	if (ret)
-		return ret;
-
-	ri->enable_count--;
-
-	return 0;
+	return regulator_disable_internal(r->ri);
 }
 
 static void regulator_print_one(struct regulator_internal *ri)
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

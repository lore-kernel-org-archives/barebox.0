Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZFFcz-0006iu-Uf
 for barebox@lists.infradead.org; Wed, 15 Jul 2015 05:53:10 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 15 Jul 2015 07:52:46 +0200
Message-Id: <1436939566-20823-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1436939566-20823-1-git-send-email-s.hauer@pengutronix.de>
References: <1436939566-20823-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] regulator: Add support for regulator-boot-on device tree
 property
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/regulator/core.c | 15 +++++++++++++++
 include/regulator.h      |  1 +
 2 files changed, 16 insertions(+)

diff --git a/drivers/regulator/core.c b/drivers/regulator/core.c
index 96bf846..73f5c6e 100644
--- a/drivers/regulator/core.c
+++ b/drivers/regulator/core.c
@@ -89,6 +89,7 @@ static int regulator_disable_internal(struct regulator_internal *ri)
 static struct regulator_internal * __regulator_register(struct regulator_dev *rd, const char *name)
 {
 	struct regulator_internal *ri;
+	int ret;
 
 	ri = xzalloc(sizeof(*ri));
 	ri->rdev = rd;
@@ -100,7 +101,19 @@ static struct regulator_internal * __regulator_register(struct regulator_dev *rd
 	if (name)
 		ri->name = xstrdup(name);
 
+	if (rd->boot_on) {
+		ret = regulator_enable_internal(ri);
+		if (ret && ret != -ENOSYS)
+			goto err;
+	}
+
 	return ri;
+err:
+	list_del(&ri->list);
+	free(ri->name);
+	free(ri);
+
+	return ERR_PTR(ret);
 }
 
 
@@ -117,6 +130,8 @@ int of_regulator_register(struct regulator_dev *rd, struct device_node *node)
 	struct regulator_internal *ri;
 	const char *name;
 
+	rd->boot_on = of_property_read_bool(node, "regulator-boot-on");
+
 	name = of_get_property(node, "regulator-name", NULL);
 
 	ri = __regulator_register(rd, name);
diff --git a/include/regulator.h b/include/regulator.h
index a43d3df..367e13f 100644
--- a/include/regulator.h
+++ b/include/regulator.h
@@ -6,6 +6,7 @@ struct regulator;
 
 struct regulator_dev {
 	struct regulator_ops *ops;
+	int boot_on;
 };
 
 struct regulator_ops {
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

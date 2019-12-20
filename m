Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiJKY-0003jh-7G
 for barebox@lists.infradead.org; Fri, 20 Dec 2019 14:32:42 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 20 Dec 2019 15:32:28 +0100
Message-Id: <20191220143232.28354-7-s.hauer@pengutronix.de>
In-Reply-To: <20191220143232.28354-1-s.hauer@pengutronix.de>
References: <20191220143232.28354-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 06/10] regulator: add function to get regulator by its name
To: Barebox List <barebox@lists.infradead.org>

Useful for getting regulators that are not correctly associated with a
device.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/regulator/core.c | 30 +++++++++++++++++++++++++++++-
 include/regulator.h      |  1 +
 2 files changed, 30 insertions(+), 1 deletion(-)

diff --git a/drivers/regulator/core.c b/drivers/regulator/core.c
index 4ca035ae94..f0de7a52e3 100644
--- a/drivers/regulator/core.c
+++ b/drivers/regulator/core.c
@@ -327,6 +327,34 @@ struct regulator *regulator_get(struct device_d *dev, const char *supply)
 	return r;
 }
 
+static struct regulator_internal *regulator_by_name(const char *name)
+{
+	struct regulator_internal *ri;
+
+	list_for_each_entry(ri, &regulator_list, list)
+		if (ri->name && !strcmp(ri->name, name))
+			return ri;
+
+	return NULL;
+}
+
+struct regulator *regulator_get_name(const char *name)
+{
+	struct regulator_internal *ri;
+	struct regulator *r;
+
+	ri = regulator_by_name(name);
+	if (!ri)
+		return ERR_PTR(-ENODEV);
+
+	r = xzalloc(sizeof(*r));
+	r->ri = ri;
+
+	list_add_tail(&r->list, &ri->consumer_list);
+
+	return r;
+}
+
 /*
  * regulator_enable - enable a regulator.
  * @r:		the regulator to enable
@@ -379,7 +407,7 @@ static void regulator_print_one(struct regulator_internal *ri)
 		printf(" consumers:\n");
 
 		list_for_each_entry(r, &ri->consumer_list, list)
-			printf("   %s\n", dev_name(r->dev));
+			printf("   %s\n", r->dev ? dev_name(r->dev) : "none");
 	}
 }
 
diff --git a/include/regulator.h b/include/regulator.h
index 156acb82f8..a445c5c3d1 100644
--- a/include/regulator.h
+++ b/include/regulator.h
@@ -116,6 +116,7 @@ void regulators_print(void);
 #ifdef CONFIG_REGULATOR
 
 struct regulator *regulator_get(struct device_d *, const char *);
+struct regulator *regulator_get_name(const char *name);
 int regulator_enable(struct regulator *);
 int regulator_disable(struct regulator *);
 int regulator_is_enabled_regmap(struct regulator_dev *);
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

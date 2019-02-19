Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gw0MX-0005wC-4h
 for barebox@lists.infradead.org; Tue, 19 Feb 2019 08:02:46 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 19 Feb 2019 09:02:36 +0100
Message-Id: <20190219080235.17763-1-a.fatoum@pengutronix.de>
In-Reply-To: <20190219075239.12448-1-a.fatoum@pengutronix.de>
References: <20190219075239.12448-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH] regmap: Implement syscon_regmap_lookup_by_compatible()
To: sam@ravnborg.org
Cc: barebox@lists.infradead.org

Implement syscon_regmap_lookup_by_compatible() to simplify porting kernel code.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
Forgot to send this one first. Should be applied prior to the fixed up commit.

 drivers/mfd/syscon.c | 14 ++++++++++++++
 include/mfd/syscon.h |  5 +++++
 2 files changed, 19 insertions(+)

diff --git a/drivers/mfd/syscon.c b/drivers/mfd/syscon.c
index 30ed65f73700..b1ff1b1eac5e 100644
--- a/drivers/mfd/syscon.c
+++ b/drivers/mfd/syscon.c
@@ -160,6 +160,20 @@ struct regmap *syscon_node_to_regmap(struct device_node *np)
 	return syscon->regmap;
 }
 
+struct regmap *syscon_regmap_lookup_by_compatible(const char *s)
+{
+	struct device_node *syscon_np;
+	struct regmap *regmap;
+
+	syscon_np = of_find_compatible_node(NULL, NULL, s);
+	if (!syscon_np)
+		return ERR_PTR(-ENODEV);
+
+	regmap = syscon_node_to_regmap(syscon_np);
+
+	return regmap;
+}
+
 static int syscon_probe(struct device_d *dev)
 {
 	struct syscon *syscon;
diff --git a/include/mfd/syscon.h b/include/mfd/syscon.h
index 63b893e4aee7..902f9fa2f339 100644
--- a/include/mfd/syscon.h
+++ b/include/mfd/syscon.h
@@ -21,6 +21,7 @@ void __iomem *syscon_base_lookup_by_pdevname(const char *s);
 void __iomem *syscon_base_lookup_by_phandle
 	(struct device_node *np, const char *property);
 struct regmap *syscon_node_to_regmap(struct device_node *np);
+struct regmap *syscon_regmap_lookup_by_compatible(const char *s);
 #else
 static inline void __iomem *syscon_base_lookup_by_pdevname(const char *s)
 {
@@ -37,6 +38,10 @@ static inline struct regmap *syscon_node_to_regmap(struct device_node *np)
 {
 	return ERR_PTR(-ENOSYS);
 }
+static inline struct regmap *syscon_regmap_lookup_by_compatible(const char *s)
+{
+	return ERR_PTR(-ENOSYS);
+}
 #endif
 
 #endif
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

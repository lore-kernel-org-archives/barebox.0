Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.megiteam.pl ([31.186.83.105])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgswR-0004i9-Ft
 for barebox@lists.infradead.org; Fri, 28 Jun 2019 15:37:36 +0000
From: Marcin Niestroj <m.niestroj@grinn-global.com>
Date: Fri, 28 Jun 2019 17:37:27 +0200
Message-Id: <20190628153727.17300-1-m.niestroj@grinn-global.com>
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
Subject: [PATCH] mfd: syscon: add syscon_regmap_lookup_by_phandle()
To: barebox@lists.infradead.org
Cc: Marcin Niestroj <m.niestroj@grinn-global.com>

This function is handy when syscon is passed as phandle to device_node
property.

Signed-off-by: Marcin Niestroj <m.niestroj@grinn-global.com>
---
 drivers/mfd/syscon.c | 19 +++++++++++++++++++
 include/mfd/syscon.h |  9 +++++++++
 2 files changed, 28 insertions(+)

diff --git a/drivers/mfd/syscon.c b/drivers/mfd/syscon.c
index b1ff1b1ea..809941937 100644
--- a/drivers/mfd/syscon.c
+++ b/drivers/mfd/syscon.c
@@ -174,6 +174,25 @@ struct regmap *syscon_regmap_lookup_by_compatible(const char *s)
 	return regmap;
 }
 
+struct regmap *syscon_regmap_lookup_by_phandle(struct device_node *np,
+					const char *property)
+{
+	struct device_node *syscon_np;
+	struct regmap *regmap;
+
+	if (property)
+		syscon_np = of_parse_phandle(np, property, 0);
+	else
+		syscon_np = np;
+
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
index 902f9fa2f..ac33f2d34 100644
--- a/include/mfd/syscon.h
+++ b/include/mfd/syscon.h
@@ -22,6 +22,9 @@ void __iomem *syscon_base_lookup_by_phandle
 	(struct device_node *np, const char *property);
 struct regmap *syscon_node_to_regmap(struct device_node *np);
 struct regmap *syscon_regmap_lookup_by_compatible(const char *s);
+extern struct regmap *syscon_regmap_lookup_by_phandle(
+					struct device_node *np,
+					const char *property);
 #else
 static inline void __iomem *syscon_base_lookup_by_pdevname(const char *s)
 {
@@ -42,6 +45,12 @@ static inline struct regmap *syscon_regmap_lookup_by_compatible(const char *s)
 {
 	return ERR_PTR(-ENOSYS);
 }
+static inline struct regmap *syscon_regmap_lookup_by_phandle(
+					struct device_node *np,
+					const char *property)
+{
+	return ERR_PTR(-ENOSYS);
+}
 #endif
 
 #endif
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

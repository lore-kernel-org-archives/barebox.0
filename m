Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZ9MM-0005gs-Nm
 for barebox@lists.infradead.org; Fri, 07 Jun 2019 07:32:24 +0000
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Fri,  7 Jun 2019 09:32:07 +0200
Message-Id: <20190607073210.13915-1-linux@rempel-privat.de>
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
Subject: [PATCH v2 1/4] add syscon_regmap_lookup_by_phandle() support
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>

needed for remoteproc port

Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
---
 drivers/mfd/syscon.c | 19 +++++++++++++++++++
 include/mfd/syscon.h |  7 +++++++
 2 files changed, 26 insertions(+)

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
index 902f9fa2f..3e39c333f 100644
--- a/include/mfd/syscon.h
+++ b/include/mfd/syscon.h
@@ -22,6 +22,8 @@ void __iomem *syscon_base_lookup_by_phandle
 	(struct device_node *np, const char *property);
 struct regmap *syscon_node_to_regmap(struct device_node *np);
 struct regmap *syscon_regmap_lookup_by_compatible(const char *s);
+struct regmap *syscon_regmap_lookup_by_phandle(struct device_node *np,
+					const char *property);
 #else
 static inline void __iomem *syscon_base_lookup_by_pdevname(const char *s)
 {
@@ -42,6 +44,11 @@ static inline struct regmap *syscon_regmap_lookup_by_compatible(const char *s)
 {
 	return ERR_PTR(-ENOSYS);
 }
+struct regmap *syscon_regmap_lookup_by_phandle(struct device_node *np,
+					const char *property)
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

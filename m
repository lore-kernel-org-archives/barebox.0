Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gxyti-0007Ti-I0
 for barebox@lists.infradead.org; Sun, 24 Feb 2019 18:53:13 +0000
Received: by mail-lj1-x242.google.com with SMTP id z25so5516220ljk.8
 for <barebox@lists.infradead.org>; Sun, 24 Feb 2019 10:53:10 -0800 (PST)
From: Sam Ravnborg <sam@ravnborg.org>
Date: Sun, 24 Feb 2019 19:52:50 +0100
Message-Id: <20190224185259.28458-3-sam@ravnborg.org>
In-Reply-To: <20190224185259.28458-1-sam@ravnborg.org>
References: <20190224185259.28458-1-sam@ravnborg.org>
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
Subject: [PATCH v4 02/11] regmap: Implement
 syscon_regmap_lookup_by_compatible()
To: Barebox List <barebox@lists.infradead.org>, Sascha Hauer <s.hauer@pengutronix.de>, Ladislav Michl <ladis@linux-mips.org>, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Sam Ravnborg <sam@ravnborg.org>

From: Ahmad Fatoum <a.fatoum@pengutronix.de>

Implement syscon_regmap_lookup_by_compatible() to simplify porting kernel code.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
---
 drivers/mfd/syscon.c | 14 ++++++++++++++
 include/mfd/syscon.h |  5 +++++
 2 files changed, 19 insertions(+)

diff --git a/drivers/mfd/syscon.c b/drivers/mfd/syscon.c
index 30ed65f73..b1ff1b1ea 100644
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
index 63b893e4a..902f9fa2f 100644
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
2.12.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x236.google.com ([2a00:1450:4010:c04::236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wdb1W-0002LR-Se
 for barebox@lists.infradead.org; Fri, 25 Apr 2014 07:58:19 +0000
Received: by mail-lb0-f182.google.com with SMTP id l4so2840255lbv.13
 for <barebox@lists.infradead.org>; Fri, 25 Apr 2014 00:57:55 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri, 25 Apr 2014 11:57:46 +0400
Message-Id: <1398412667-18820-2-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1398412667-18820-1-git-send-email-antonynpavlov@gmail.com>
References: <1398412667-18820-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 1/2] clk: move of_clk_get_parent_name() to common clk code
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/clk/clk.c     | 20 ++++++++++++++++++++
 drivers/clk/socfpga.c | 19 -------------------
 include/linux/clk.h   |  1 +
 3 files changed, 21 insertions(+), 19 deletions(-)

diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
index 23b1a7a..584e2f3 100644
--- a/drivers/clk/clk.c
+++ b/drivers/clk/clk.c
@@ -390,6 +390,26 @@ struct clk *of_clk_get_from_provider(struct of_phandle_args *clkspec)
 	return clk;
 }
 
+char *of_clk_get_parent_name(struct device_node *np, unsigned int index)
+{
+	struct of_phandle_args clkspec;
+	const char *clk_name;
+	int rc;
+
+	rc = of_parse_phandle_with_args(np, "clocks", "#clock-cells", index,
+			&clkspec);
+	if (rc)
+		return NULL;
+
+	if (of_property_read_string_index(clkspec.np, "clock-output-names",
+				clkspec.args_count ? clkspec.args[0] : 0,
+				&clk_name) < 0)
+		clk_name = clkspec.np->name;
+
+	return xstrdup(clk_name);
+}
+EXPORT_SYMBOL_GPL(of_clk_get_parent_name);
+
 /**
  * of_clk_init() - Scan and init clock providers from the DT
  * @root: parent of the first level to probe or NULL for the root of the tree
diff --git a/drivers/clk/socfpga.c b/drivers/clk/socfpga.c
index 33a55cb..f4257fd 100644
--- a/drivers/clk/socfpga.c
+++ b/drivers/clk/socfpga.c
@@ -49,25 +49,6 @@
 
 static void __iomem *clk_mgr_base_addr;
 
-char *of_clk_get_parent_name(struct device_node *np, unsigned int index)
-{
-	struct of_phandle_args clkspec;
-	const char *clk_name;
-	int rc;
-
-	rc = of_parse_phandle_with_args(np, "clocks", "#clock-cells", index,
-			&clkspec);
-	if (rc)
-		return NULL;
-
-	if (of_property_read_string_index(clkspec.np, "clock-output-names",
-				clkspec.args_count ? clkspec.args[0] : 0,
-				&clk_name) < 0)
-		clk_name = clkspec.np->name;
-
-	return xstrdup(clk_name);
-}
-
 static struct clk *socfpga_fixed_clk(struct device_node *node)
 {
 	uint32_t f = 0;
diff --git a/include/linux/clk.h b/include/linux/clk.h
index 07b27cf..dd9fab7 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -316,6 +316,7 @@ struct clk *of_clk_src_simple_get(struct of_phandle_args *clkspec, void *data);
 struct clk *of_clk_get(struct device_node *np, int index);
 struct clk *of_clk_get_by_name(struct device_node *np, const char *name);
 struct clk *of_clk_get_from_provider(struct of_phandle_args *clkspec);
+char *of_clk_get_parent_name(struct device_node *np, unsigned int index);
 int of_clk_init(struct device_node *root, const struct of_device_id *matches);
 #else
 static inline struct clk *of_clk_get(struct device_node *np, int index)
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

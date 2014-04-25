Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x236.google.com ([2a00:1450:4010:c03::236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wdb1X-0002LZ-AS
 for barebox@lists.infradead.org; Fri, 25 Apr 2014 07:58:19 +0000
Received: by mail-la0-f54.google.com with SMTP id e16so2490095lan.41
 for <barebox@lists.infradead.org>; Fri, 25 Apr 2014 00:57:56 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri, 25 Apr 2014 11:57:47 +0400
Message-Id: <1398412667-18820-3-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 2/2] clk: fixed-factor: add DT init function
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/clk/clk-fixed-factor.c | 36 ++++++++++++++++++++++++++++++++++++
 1 file changed, 36 insertions(+)

diff --git a/drivers/clk/clk-fixed-factor.c b/drivers/clk/clk-fixed-factor.c
index cb531b1..40b63d6 100644
--- a/drivers/clk/clk-fixed-factor.c
+++ b/drivers/clk/clk-fixed-factor.c
@@ -92,3 +92,39 @@ struct clk *clk_fixed_factor(const char *name,
 
 	return &f->clk;
 }
+
+#if defined(CONFIG_OFTREE) && defined(CONFIG_COMMON_CLK_OF_PROVIDER)
+/**
+ * of_fixed_factor_clk_setup() - Setup function for simple fixed factor clock
+ */
+static int of_fixed_factor_clk_setup(struct device_node *node)
+{
+	struct clk *clk;
+	const char *clk_name = node->name;
+	const char *parent_name;
+	u32 div, mult;
+
+	if (of_property_read_u32(node, "clock-div", &div)) {
+		pr_err("%s Fixed factor clock <%s> must have a clock-div property\n",
+			__func__, node->name);
+		return -EINVAL;
+	}
+
+	if (of_property_read_u32(node, "clock-mult", &mult)) {
+		pr_err("%s Fixed factor clock <%s> must have a clock-mult property\n",
+			__func__, node->name);
+		return -EINVAL;
+	}
+
+	of_property_read_string(node, "clock-output-names", &clk_name);
+	parent_name = of_clk_get_parent_name(node, 0);
+
+	clk = clk_fixed_factor(clk_name, parent_name, mult, div, 0);
+	if (IS_ERR(clk))
+		return IS_ERR(clk);
+
+	return of_clk_add_provider(node, of_clk_src_simple_get, clk);
+}
+CLK_OF_DECLARE(fixed_factor_clk, "fixed-factor-clock",
+		of_fixed_factor_clk_setup);
+#endif
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x22e.google.com ([2a00:1450:4013:c00::22e])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vf8Wz-0000gW-1C
 for barebox@lists.infradead.org; Sat, 09 Nov 2013 13:24:55 +0000
Received: by mail-ee0-f46.google.com with SMTP id b57so1532208eek.19
 for <barebox@lists.infradead.org>; Sat, 09 Nov 2013 05:24:31 -0800 (PST)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Sat,  9 Nov 2013 14:24:21 +0100
Message-Id: <1384003461-21039-6-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1384003461-21039-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1384003461-21039-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 5/5] clk: fixed: add DT init function
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

This adds a DT init function to clk-fixed and corresponding CLK_OF_DECLARE
to put it into the DT clock provider table.
---
Cc: barebox@lists.infradead.org
---
 drivers/clk/clk-fixed.c | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/drivers/clk/clk-fixed.c b/drivers/clk/clk-fixed.c
index e5d36b4..3a38865 100644
--- a/drivers/clk/clk-fixed.c
+++ b/drivers/clk/clk-fixed.c
@@ -54,3 +54,26 @@ struct clk *clk_fixed(const char *name, int rate)
 
 	return &fix->clk;
 }
+
+#if defined(CONFIG_OFTREE) && defined(CONFIG_COMMON_CLK_OF_PROVIDER)
+/**
+ * of_fixed_clk_setup() - Setup function for simple fixed rate clock
+ */
+static int of_fixed_clk_setup(struct device_node *node)
+{
+	struct clk *clk;
+	const char *clk_name = node->name;
+	u32 rate;
+
+	if (of_property_read_u32(node, "clock-frequency", &rate))
+		return -EINVAL;
+
+	of_property_read_string(node, "clock-output-names", &clk_name);
+
+	clk = clk_fixed(clk_name, rate);
+	if (IS_ERR(clk))
+		return IS_ERR(clk);
+	return of_clk_add_provider(node, of_clk_src_simple_get, clk);
+}
+CLK_OF_DECLARE(fixed_clk, "fixed-clock", of_fixed_clk_setup);
+#endif
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

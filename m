Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k8U1S-0008VH-GG
 for barebox@lists.infradead.org; Wed, 19 Aug 2020 19:45:25 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 19 Aug 2020 21:45:10 +0200
Message-Id: <20200819194511.14005-6-s.hauer@pengutronix.de>
In-Reply-To: <20200819194511.14005-1-s.hauer@pengutronix.de>
References: <20200819194511.14005-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 6/7] clk: imx: Add Linux function names
To: Barebox List <barebox@lists.infradead.org>

Add some function names used in Linux as define to the corresponding
functions in barebox. This is done to be able to use the Linux function
names in barebox in order to reduce the diff size between the barebox
and Linux clock drivers.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/imx/clk.h | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h
index 02270cdf0f..bc44d0c739 100644
--- a/drivers/clk/imx/clk.h
+++ b/drivers/clk/imx/clk.h
@@ -296,4 +296,26 @@ struct clk *imx8m_clk_composite_flags(const char *name,
 #define imx8m_clk_composite_critical(name, parent_names, reg) \
 	__imx8m_clk_composite(name, parent_names, reg, CLK_IS_CRITICAL)
 
+/*
+ * Names of the above functions used in the Linux Kernel. Added here
+ * to be able to use the same names in barebox to reduce the diffs
+ * between barebox and Linux clk drivers.
+ */
+#define imx_clk_hw_mux imx_clk_mux
+#define imx_clk_hw_pll14xx imx_clk_pll14xx
+#define imx_clk_hw_gate imx_clk_gate
+#define imx_clk_hw_fixed_factor imx_clk_fixed_factor
+#define imx_clk_hw_mux_flags imx_clk_mux_flags
+#define imx_clk_hw_divider2 imx_clk_divider2
+#define imx_clk_hw_mux2_flags imx_clk_mux2_flags
+#define imx_clk_hw_gate4_flags imx_clk_gate4_flags
+#define imx_clk_hw_gate4 imx_clk_gate4
+#define imx_clk_hw_cpu imx_clk_cpu
+#define imx_clk_hw_gate2 imx_clk_gate2
+#define imx8m_clk_hw_composite_flags imx8m_clk_composite_flags
+#define imx8m_clk_hw_composite imx8m_clk_composite
+#define imx8m_clk_hw_composite_critical imx8m_clk_composite_critical
+#define imx_clk_hw_gate2_shared2 imx_clk_gate2_shared2
+#define imx_clk_hw_mux2 imx_clk_mux2
+
 #endif /* __IMX_CLK_H */
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

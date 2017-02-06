Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.4.pengutronix.de ([92.198.50.35])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cadBZ-0004kr-3z
 for barebox@lists.infradead.org; Mon, 06 Feb 2017 06:54:03 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  6 Feb 2017 07:50:52 +0100
Message-Id: <20170206065057.19483-5-s.hauer@pengutronix.de>
In-Reply-To: <20170206065057.19483-1-s.hauer@pengutronix.de>
References: <20170206065057.19483-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/9] clk: i.MX: Pass CLK_OPS_PARENT_ENABLE where necessary
To: Barebox List <barebox@lists.infradead.org>

CLK_OPS_PARENT_ENABLE was missing on some i.MX7 specific clocks.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/imx/clk.h | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h
index 4f80a3262..019114848 100644
--- a/drivers/clk/imx/clk.h
+++ b/drivers/clk/imx/clk.h
@@ -19,7 +19,7 @@ static inline struct clk *imx_clk_divider_np(const char *name, const char *paren
 static inline struct clk *imx_clk_divider2(const char *name, const char *parent,
 		void __iomem *reg, u8 shift, u8 width)
 {
-	return clk_divider(name, parent, reg, shift, width, 0);
+	return clk_divider(name, parent, reg, shift, width, CLK_OPS_PARENT_ENABLE);
 }
 
 static inline struct clk *imx_clk_divider_table(const char *name,
@@ -53,7 +53,7 @@ static inline struct clk *imx_clk_mux(const char *name, void __iomem *reg,
 static inline struct clk *imx_clk_mux2(const char *name, void __iomem *reg,
 		u8 shift, u8 width, const char **parents, u8 num_parents)
 {
-	return clk_mux(name, reg, shift, width, parents, num_parents, 0);
+	return clk_mux(name, reg, shift, width, parents, num_parents, CLK_OPS_PARENT_ENABLE);
 }
 
 static inline struct clk *imx_clk_mux_p(const char *name, void __iomem *reg,
@@ -89,13 +89,13 @@ static inline struct clk *imx_clk_gate2_cgr(const char *name, const char *parent
 static inline struct clk *imx_clk_gate3(const char *name, const char *parent,
 		void __iomem *reg, u8 shift)
 {
-	return clk_gate(name, parent, reg, shift, CLK_SET_RATE_PARENT, 0);
+	return clk_gate(name, parent, reg, shift, CLK_SET_RATE_PARENT | CLK_OPS_PARENT_ENABLE, 0);
 }
 
 static inline struct clk *imx_clk_gate4(const char *name, const char *parent,
 		void __iomem *reg, u8 shift)
 {
-	return clk_gate2(name, parent, reg, shift, 0x3, 0);
+	return clk_gate2(name, parent, reg, shift, 0x3, CLK_OPS_PARENT_ENABLE);
 }
 
 struct clk *imx_clk_pllv1(const char *name, const char *parent,
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

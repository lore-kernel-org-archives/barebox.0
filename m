Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wkg5e-0000PF-GM
 for barebox@lists.infradead.org; Wed, 14 May 2014 20:47:53 +0000
Received: from antimon.intern.lynxeye.de.intern.lynxeye.de
 (p548307D2.dip0.t-ipconnect.de [84.131.7.210])
 by lynxeye.de (Postfix) with ESMTPA id 4506B18B4261
 for <barebox@lists.infradead.org>; Wed, 14 May 2014 22:46:01 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Wed, 14 May 2014 22:45:34 +0200
Message-Id: <1400100352-13002-7-git-send-email-dev@lynxeye.de>
In-Reply-To: <1400100352-13002-1-git-send-email-dev@lynxeye.de>
References: <1400100352-13002-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH v2 07/25] clk: tegra: allow to register clocks with 16 bit
 divider
To: barebox@lists.infradead.org

Some peripherals have a double wide divider in front
of them.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/clk/tegra/clk-periph.c | 28 +++++++++++++++++++++-------
 drivers/clk/tegra/clk.h        |  4 ++++
 2 files changed, 25 insertions(+), 7 deletions(-)

diff --git a/drivers/clk/tegra/clk-periph.c b/drivers/clk/tegra/clk-periph.c
index c05e563aae55..e4e5412b0980 100644
--- a/drivers/clk/tegra/clk-periph.c
+++ b/drivers/clk/tegra/clk-periph.c
@@ -106,10 +106,10 @@ const struct clk_ops tegra_clk_periph_nodiv_ops = {
 	.disable = clk_periph_disable,
 };
 
-struct clk *_tegra_clk_register_periph(const char *name,
+static struct clk *_tegra_clk_register_periph(const char *name,
 		const char **parent_names, int num_parents,
 		void __iomem *clk_base, u32 reg_offset, u8 id, u8 flags,
-		bool has_div)
+		int div)
 {
 	struct tegra_clk_periph *periph;
 	int ret, gate_offs, rst_offs;
@@ -136,15 +136,20 @@ struct clk *_tegra_clk_register_periph(const char *name,
 	if (!periph->gate)
 		goto out_gate;
 
-	if (has_div) {
+	if (div == 8) {
 		periph->div = tegra_clk_divider_alloc(NULL, NULL, clk_base +
-				reg_offset, 0, TEGRA_DIVIDER_ROUND_UP, 0, 8, 1);
+		              reg_offset, 0, TEGRA_DIVIDER_ROUND_UP, 0, 8, 1);
+		if (!periph->div)
+			goto out_div;
+	} else if (div == 16) {
+		periph->div = tegra_clk_divider_alloc(NULL, NULL, clk_base +
+		              reg_offset, 0, TEGRA_DIVIDER_ROUND_UP, 0, 16, 0);
 		if (!periph->div)
 			goto out_div;
 	}
 
 	periph->hw.name = name;
-	periph->hw.ops = has_div ? &tegra_clk_periph_ops :
+	periph->hw.ops = div ? &tegra_clk_periph_ops :
 				   &tegra_clk_periph_nodiv_ops;
 	periph->hw.parent_names = parent_names;
 	periph->hw.num_parents = num_parents;
@@ -181,7 +186,7 @@ struct clk *tegra_clk_register_periph_nodiv(const char *name,
 {
 	return _tegra_clk_register_periph(name, parent_names, num_parents,
 					  clk_base, reg_offset, id, flags,
-					  false);
+					  0);
 }
 
 struct clk *tegra_clk_register_periph(const char *name,
@@ -190,5 +195,14 @@ struct clk *tegra_clk_register_periph(const char *name,
 {
 	return _tegra_clk_register_periph(name, parent_names, num_parents,
 					  clk_base, reg_offset, id, flags,
-					  true);
+					  8);
+}
+
+struct clk *tegra_clk_register_periph_div16(const char *name,
+		const char **parent_names, int num_parents,
+		void __iomem *clk_base, u32 reg_offset, u8 id, u8 flags)
+{
+	return _tegra_clk_register_periph(name, parent_names, num_parents,
+					  clk_base, reg_offset, id, flags,
+					  16);
 }
diff --git a/drivers/clk/tegra/clk.h b/drivers/clk/tegra/clk.h
index 6ce9f7e26daa..d5d07306021c 100644
--- a/drivers/clk/tegra/clk.h
+++ b/drivers/clk/tegra/clk.h
@@ -138,6 +138,10 @@ struct clk *tegra_clk_register_periph(const char *name,
 		const char **parent_names, int num_parents,
 		void __iomem *clk_base, u32 reg_offset, u8 id, u8 flags);
 
+struct clk *tegra_clk_register_periph_div16(const char *name,
+		const char **parent_names, int num_parents,
+		void __iomem *clk_base, u32 reg_offset, u8 id, u8 flags);
+
 /* struct clk_init_table - clock initialization table */
 struct tegra_clk_init_table {
 	unsigned int	clk_id;
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

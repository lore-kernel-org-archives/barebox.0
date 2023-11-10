Delivery-date: Fri, 10 Nov 2023 13:59:38 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1R6n-005rTo-2a
	for lore@lore.pengutronix.de;
	Fri, 10 Nov 2023 13:59:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1R6l-0003Dy-Up
	for lore@pengutronix.de; Fri, 10 Nov 2023 13:59:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+yPjDN8K80/zdzPKi49En7HSYb2ujNoouB2Eg/wr75o=; b=sriuhSngEHehQ5Hk2LUV1uAGd9
	1X3bl41lW8Wc8RM/qF5txtavVwl2MkJYXsQfjcGJzTgdkXsLzhhAuJDCbBK8dJW24gmCGs/QtOyhw
	/CnSm+QUPdCFnht0WmujSVmUlV9AbJzn29BrZa0tlFXSqmPCyf6x6GSViLGCvOde0AnVioiuw87Ot
	G5/1EUDDXaS7JzQH4c+VKOHPB+uBu3VY61vJH+yVXPu5U3+aOonOWilrH/9j069MuH/WmYLkbwyZb
	/YhFBZccunj09UgpCOwbaZnjFAiaPGRC6owYitNt69qWMDYqa7gQa75GYwEcC8NtopBztxftNHaB+
	HLAPoQTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r1R5V-008jwH-33;
	Fri, 10 Nov 2023 12:58:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1R5J-008joK-33
	for barebox@lists.infradead.org;
	Fri, 10 Nov 2023 12:58:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r1R5H-00026Q-EO; Fri, 10 Nov 2023 13:58:03 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1r1R5G-0081XD-Qf; Fri, 10 Nov 2023 13:58:02 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1r1R5G-008rzf-2S;
	Fri, 10 Nov 2023 13:58:02 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 10 Nov 2023 13:57:42 +0100
Message-Id: <20231110125800.1901232-8-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231110125800.1901232-1-s.hauer@pengutronix.de>
References: <20231110125800.1901232-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231110_045806_297055_9B01FF5A 
X-CRM114-Status: GOOD (  24.97  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 07/25] clk: imx: clk-fracn-gppll: make usable from PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The PBL code needs to adjust the DDR PLL before setting up DDR.
Factor out the PLL setup code as a static inline function for
PBL usage.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/imx/clk-fracn-gppll.c | 135 +++++-----------------------
 drivers/clk/imx/clk.h             |  28 +-----
 include/soc/imx/clk-fracn-gppll.h | 144 ++++++++++++++++++++++++++++++
 3 files changed, 165 insertions(+), 142 deletions(-)
 create mode 100644 include/soc/imx/clk-fracn-gppll.h

diff --git a/drivers/clk/imx/clk-fracn-gppll.c b/drivers/clk/imx/clk-fracn-gppll.c
index 5fbc79f948..24e66fd65f 100644
--- a/drivers/clk/imx/clk-fracn-gppll.c
+++ b/drivers/clk/imx/clk-fracn-gppll.c
@@ -10,38 +10,10 @@
 #include <of_address.h>
 #include <linux/iopoll.h>
 #include <linux/bitfield.h>
+#include <soc/imx/clk-fracn-gppll.h>
 
 #include "clk.h"
 
-#define PLL_CTRL		0x0
-#define HW_CTRL_SEL		BIT(16)
-#define CLKMUX_BYPASS		BIT(2)
-#define CLKMUX_EN		BIT(1)
-#define POWERUP_MASK		BIT(0)
-
-#define PLL_ANA_PRG		0x10
-#define PLL_SPREAD_SPECTRUM	0x30
-
-#define PLL_NUMERATOR		0x40
-#define PLL_MFN_MASK		GENMASK(31, 2)
-
-#define PLL_DENOMINATOR		0x50
-#define PLL_MFD_MASK		GENMASK(29, 0)
-
-#define PLL_DIV			0x60
-#define PLL_MFI_MASK		GENMASK(24, 16)
-#define PLL_RDIV_MASK		GENMASK(15, 13)
-#define PLL_ODIV_MASK		GENMASK(7, 0)
-
-#define PLL_DFS_CTRL(x)		(0x70 + (x) * 0x10)
-
-#define PLL_STATUS		0xF0
-#define LOCK_STATUS		BIT(0)
-
-#define DFS_STATUS		0xF4
-
-#define LOCK_TIMEOUT_US		200
-
 #define PLL_FRACN_GP(_rate, _mfi, _mfn, _mfd, _rdiv, _odiv)	\
 	{							\
 		.rate	=	(_rate),			\
@@ -118,19 +90,6 @@ static inline struct clk_fracn_gppll *to_clk_fracn_gppll(struct clk_hw *hw)
 	return container_of(hw, struct clk_fracn_gppll, hw);
 }
 
-static const struct imx_fracn_gppll_rate_table *
-imx_get_pll_settings(struct clk_fracn_gppll *pll, unsigned long rate)
-{
-	const struct imx_fracn_gppll_rate_table *rate_table = pll->rate_table;
-	int i;
-
-	for (i = 0; i < pll->rate_count; i++)
-		if (rate == rate_table[i].rate)
-			return &rate_table[i];
-
-	return NULL;
-}
-
 static long clk_fracn_gppll_round_rate(struct clk_hw *hw, unsigned long rate,
 				       unsigned long *prate)
 {
@@ -157,17 +116,17 @@ static unsigned long clk_fracn_gppll_recalc_rate(struct clk_hw *hw, unsigned lon
 	long rate = 0;
 	int i;
 
-	pll_numerator = readl_relaxed(pll->base + PLL_NUMERATOR);
-	mfn = FIELD_GET(PLL_MFN_MASK, pll_numerator);
+	pll_numerator = readl_relaxed(pll->base + GPPLL_NUMERATOR);
+	mfn = FIELD_GET(GPPLL_MFN_MASK, pll_numerator);
 
-	pll_denominator = readl_relaxed(pll->base + PLL_DENOMINATOR);
-	mfd = FIELD_GET(PLL_MFD_MASK, pll_denominator);
+	pll_denominator = readl_relaxed(pll->base + GPPLL_DENOMINATOR);
+	mfd = FIELD_GET(GPPLL_MFD_MASK, pll_denominator);
 
-	pll_div = readl_relaxed(pll->base + PLL_DIV);
-	mfi = FIELD_GET(PLL_MFI_MASK, pll_div);
+	pll_div = readl_relaxed(pll->base + GPPLL_DIV);
+	mfi = FIELD_GET(GPPLL_MFI_MASK, pll_div);
 
-	rdiv = FIELD_GET(PLL_RDIV_MASK, pll_div);
-	odiv = FIELD_GET(PLL_ODIV_MASK, pll_div);
+	rdiv = FIELD_GET(GPPLL_RDIV_MASK, pll_div);
+	odiv = FIELD_GET(GPPLL_ODIV_MASK, pll_div);
 
 	/*
 	 * Sometimes, the recalculated rate has deviation due to
@@ -214,70 +173,16 @@ static unsigned long clk_fracn_gppll_recalc_rate(struct clk_hw *hw, unsigned lon
 
 static int clk_fracn_gppll_wait_lock(struct clk_fracn_gppll *pll)
 {
-	u32 val;
-
-	return readl_poll_timeout(pll->base + PLL_STATUS, val,
-				  val & LOCK_STATUS, LOCK_TIMEOUT_US);
+	return fracn_gppll_wait_lock(pll->base);
 }
 
 static int clk_fracn_gppll_set_rate(struct clk_hw *hw, unsigned long drate,
 				    unsigned long prate)
 {
 	struct clk_fracn_gppll *pll = to_clk_fracn_gppll(hw);
-	const struct imx_fracn_gppll_rate_table *rate;
-	u32 tmp, pll_div, ana_mfn;
-	int ret;
-
-	rate = imx_get_pll_settings(pll, drate);
-
-	/* Hardware control select disable. PLL is control by register */
-	tmp = readl_relaxed(pll->base + PLL_CTRL);
-	tmp &= ~HW_CTRL_SEL;
-	writel_relaxed(tmp, pll->base + PLL_CTRL);
-
-	/* Disable output */
-	tmp = readl_relaxed(pll->base + PLL_CTRL);
-	tmp &= ~CLKMUX_EN;
-	writel_relaxed(tmp, pll->base + PLL_CTRL);
-
-	/* Power Down */
-	tmp &= ~POWERUP_MASK;
-	writel_relaxed(tmp, pll->base + PLL_CTRL);
-
-	/* Disable BYPASS */
-	tmp &= ~CLKMUX_BYPASS;
-	writel_relaxed(tmp, pll->base + PLL_CTRL);
-
-	pll_div = FIELD_PREP(PLL_RDIV_MASK, rate->rdiv) | rate->odiv |
-		FIELD_PREP(PLL_MFI_MASK, rate->mfi);
-	writel_relaxed(pll_div, pll->base + PLL_DIV);
-	if (pll->flags & CLK_FRACN_GPPLL_FRACN) {
-		writel_relaxed(rate->mfd, pll->base + PLL_DENOMINATOR);
-		writel_relaxed(FIELD_PREP(PLL_MFN_MASK, rate->mfn), pll->base + PLL_NUMERATOR);
-	}
-
-	/* Wait for 5us according to fracn mode pll doc */
-	udelay(5);
 
-	/* Enable Powerup */
-	tmp |= POWERUP_MASK;
-	writel_relaxed(tmp, pll->base + PLL_CTRL);
-
-	/* Wait Lock */
-	ret = clk_fracn_gppll_wait_lock(pll);
-	if (ret)
-		return ret;
-
-	/* Enable output */
-	tmp |= CLKMUX_EN;
-	writel_relaxed(tmp, pll->base + PLL_CTRL);
-
-	ana_mfn = readl_relaxed(pll->base + PLL_STATUS);
-	ana_mfn = FIELD_GET(PLL_MFN_MASK, ana_mfn);
-
-	WARN(ana_mfn != rate->mfn, "ana_mfn != rate->mfn\n");
-
-	return 0;
+	return fracn_gppll_set_rate(pll->base, pll->flags, pll->rate_table,
+				    pll->rate_count, drate);
 }
 
 static int clk_fracn_gppll_prepare(struct clk_hw *hw)
@@ -286,25 +191,25 @@ static int clk_fracn_gppll_prepare(struct clk_hw *hw)
 	u32 val;
 	int ret;
 
-	val = readl_relaxed(pll->base + PLL_CTRL);
+	val = readl_relaxed(pll->base + GPPLL_CTRL);
 	if (val & POWERUP_MASK)
 		return 0;
 
 	val |= CLKMUX_BYPASS;
-	writel_relaxed(val, pll->base + PLL_CTRL);
+	writel_relaxed(val, pll->base + GPPLL_CTRL);
 
 	val |= POWERUP_MASK;
-	writel_relaxed(val, pll->base + PLL_CTRL);
+	writel_relaxed(val, pll->base + GPPLL_CTRL);
 
 	val |= CLKMUX_EN;
-	writel_relaxed(val, pll->base + PLL_CTRL);
+	writel_relaxed(val, pll->base + GPPLL_CTRL);
 
 	ret = clk_fracn_gppll_wait_lock(pll);
 	if (ret)
 		return ret;
 
 	val &= ~CLKMUX_BYPASS;
-	writel_relaxed(val, pll->base + PLL_CTRL);
+	writel_relaxed(val, pll->base + GPPLL_CTRL);
 
 	return 0;
 }
@@ -314,7 +219,7 @@ static int clk_fracn_gppll_is_prepared(struct clk_hw *hw)
 	struct clk_fracn_gppll *pll = to_clk_fracn_gppll(hw);
 	u32 val;
 
-	val = readl_relaxed(pll->base + PLL_CTRL);
+	val = readl_relaxed(pll->base + GPPLL_CTRL);
 
 	return (val & POWERUP_MASK) ? 1 : 0;
 }
@@ -324,9 +229,9 @@ static void clk_fracn_gppll_unprepare(struct clk_hw *hw)
 	struct clk_fracn_gppll *pll = to_clk_fracn_gppll(hw);
 	u32 val;
 
-	val = readl_relaxed(pll->base + PLL_CTRL);
+	val = readl_relaxed(pll->base + GPPLL_CTRL);
 	val &= ~POWERUP_MASK;
-	writel_relaxed(val, pll->base + PLL_CTRL);
+	writel_relaxed(val, pll->base + GPPLL_CTRL);
 }
 
 static const struct clk_ops clk_fracn_gppll_ops = {
diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h
index 1d3316619f..9058f913d3 100644
--- a/drivers/clk/imx/clk.h
+++ b/drivers/clk/imx/clk.h
@@ -304,33 +304,7 @@ struct clk *imx8m_clk_composite_flags(const char *name,
 #define imx8m_clk_composite_critical(name, parent_names, reg) \
 	__imx8m_clk_composite(name, parent_names, reg, CLK_IS_CRITICAL)
 
-#define CLK_FRACN_GPPLL_INTEGER BIT(0)
-#define CLK_FRACN_GPPLL_FRACN   BIT(1)
-
-/* NOTE: Rate table should be kept sorted in descending order. */
-struct imx_fracn_gppll_rate_table {
-	unsigned int rate;
-	unsigned int mfi;
-	unsigned int mfn;
-	unsigned int mfd;
-	unsigned int rdiv;
-	unsigned int odiv;
-};
-
-struct imx_fracn_gppll_clk {
-	const struct imx_fracn_gppll_rate_table *rate_table;
-	int rate_count;
-	int flags;
-};
-
-struct clk *imx_clk_fracn_gppll(const char *name, const char *parent_name, void __iomem *base,
-				const struct imx_fracn_gppll_clk *pll_clk);
-struct clk *imx_clk_fracn_gppll_integer(const char *name, const char *parent_name,
-					void __iomem *base,
-					const struct imx_fracn_gppll_clk *pll_clk);
-
-extern struct imx_fracn_gppll_clk imx_fracn_gppll;
-extern struct imx_fracn_gppll_clk imx_fracn_gppll_integer;
+#include <soc/imx/clk-fracn-gppll.h>
 
 struct clk *imx93_clk_composite_flags(const char *name,
 				      const char * const *parent_names,
diff --git a/include/soc/imx/clk-fracn-gppll.h b/include/soc/imx/clk-fracn-gppll.h
new file mode 100644
index 0000000000..15ab9e67ec
--- /dev/null
+++ b/include/soc/imx/clk-fracn-gppll.h
@@ -0,0 +1,144 @@
+#ifndef __SOC_IMX_CLK_FRACN_GPGPPLL_H
+#define __SOC_IMX_CLK_FRACN_GPGPPLL_H
+
+#include <linux/bitfield.h>
+#include <linux/iopoll.h>
+
+#define GPPLL_CTRL		0x0
+#define HW_CTRL_SEL		BIT(16)
+#define CLKMUX_BYPASS		BIT(2)
+#define CLKMUX_EN		BIT(1)
+#define POWERUP_MASK		BIT(0)
+
+#define GPPLL_ANA_PRG		0x10
+#define GPPLL_SPREAD_SPECTRUM	0x30
+
+#define GPPLL_NUMERATOR		0x40
+#define GPPLL_MFN_MASK		GENMASK(31, 2)
+
+#define GPPLL_DENOMINATOR	0x50
+#define GPPLL_MFD_MASK		GENMASK(29, 0)
+
+#define GPPLL_DIV		0x60
+#define GPPLL_MFI_MASK		GENMASK(24, 16)
+#define GPPLL_RDIV_MASK		GENMASK(15, 13)
+#define GPPLL_ODIV_MASK		GENMASK(7, 0)
+
+#define GPPLL_DFS_CTRL(x)	(0x70 + (x) * 0x10)
+
+#define GPPLL_STATUS		0xF0
+#define GPPLL_LOCK_STATUS	BIT(0)
+
+#define GPPLL_DFS_STATUS	0xF4
+
+#define GPPLL_LOCK_TIMEOUT_US	200
+
+#define CLK_FRACN_GPPLL_INTEGER BIT(0)
+#define CLK_FRACN_GPPLL_FRACN   BIT(1)
+
+/* NOTE: Rate table should be kept sorted in descending order. */
+struct imx_fracn_gppll_rate_table {
+	unsigned int rate;
+	unsigned int mfi;
+	unsigned int mfn;
+	unsigned int mfd;
+	unsigned int rdiv;
+	unsigned int odiv;
+};
+
+struct imx_fracn_gppll_clk {
+	const struct imx_fracn_gppll_rate_table *rate_table;
+	int rate_count;
+	int flags;
+};
+
+struct clk *imx_clk_fracn_gppll(const char *name, const char *parent_name, void __iomem *base,
+				const struct imx_fracn_gppll_clk *pll_clk);
+struct clk *imx_clk_fracn_gppll_integer(const char *name, const char *parent_name,
+					void __iomem *base,
+					const struct imx_fracn_gppll_clk *pll_clk);
+
+extern struct imx_fracn_gppll_clk imx_fracn_gppll;
+extern struct imx_fracn_gppll_clk imx_fracn_gppll_integer;
+
+static inline int fracn_gppll_wait_lock(void __iomem *base)
+{
+	u32 val;
+
+	return readl_poll_timeout(base + GPPLL_STATUS, val,
+				  val & GPPLL_LOCK_STATUS, GPPLL_LOCK_TIMEOUT_US);
+}
+
+static inline const struct imx_fracn_gppll_rate_table *imx_get_gppll_settings(
+	const struct imx_fracn_gppll_rate_table *rate_table, int n_table, unsigned long rate)
+{
+	int i;
+
+	for (i = 0; i < n_table; i++)
+		if (rate == rate_table[i].rate)
+			return &rate_table[i];
+
+	return NULL;
+}
+
+static inline int fracn_gppll_set_rate(void __iomem *base, unsigned int flags,
+				       const struct imx_fracn_gppll_rate_table *table, int n_table,
+				       unsigned long drate)
+{
+	const struct imx_fracn_gppll_rate_table *rate;
+	u32 tmp, pll_div, ana_mfn;
+	int ret;
+
+	rate = imx_get_gppll_settings(table, n_table, drate);
+
+	/* Hardware control select disable. PLL is control by register */
+	tmp = readl_relaxed(base + GPPLL_CTRL);
+	tmp &= ~HW_CTRL_SEL;
+	writel_relaxed(tmp, base + GPPLL_CTRL);
+
+	/* Disable output */
+	tmp = readl_relaxed(base + GPPLL_CTRL);
+	tmp &= ~CLKMUX_EN;
+	writel_relaxed(tmp, base + GPPLL_CTRL);
+
+	/* Power Down */
+	tmp &= ~POWERUP_MASK;
+	writel_relaxed(tmp, base + GPPLL_CTRL);
+
+	/* Disable BYPASS */
+	tmp &= ~CLKMUX_BYPASS;
+	writel_relaxed(tmp, base + GPPLL_CTRL);
+
+	pll_div = FIELD_PREP(GPPLL_RDIV_MASK, rate->rdiv) | rate->odiv |
+		FIELD_PREP(GPPLL_MFI_MASK, rate->mfi);
+	writel_relaxed(pll_div, base + GPPLL_DIV);
+	if (flags & CLK_FRACN_GPPLL_FRACN) {
+		writel_relaxed(rate->mfd, base + GPPLL_DENOMINATOR);
+		writel_relaxed(FIELD_PREP(GPPLL_MFN_MASK, rate->mfn), base + GPPLL_NUMERATOR);
+	}
+
+	/* Wait for 5us according to fracn mode pll doc */
+	udelay(5);
+
+	/* Enable Powerup */
+	tmp |= POWERUP_MASK;
+	writel_relaxed(tmp, base + GPPLL_CTRL);
+
+	/* Wait Lock */
+	ret = fracn_gppll_wait_lock(base);
+	if (ret)
+		return ret;
+
+	/* Enable output */
+	tmp |= CLKMUX_EN;
+	writel_relaxed(tmp, base + GPPLL_CTRL);
+
+	ana_mfn = readl_relaxed(base + GPPLL_STATUS);
+	ana_mfn = FIELD_GET(GPPLL_MFN_MASK, ana_mfn);
+
+	WARN(ana_mfn != rate->mfn, "ana_mfn != rate->mfn\n");
+
+	return 0;
+}
+
+#endif /* __SOC_IMX_CLK_FRACN_GPGPPLL_H */
-- 
2.39.2




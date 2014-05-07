Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Whwqz-0000lA-L3
 for barebox@lists.infradead.org; Wed, 07 May 2014 08:05:26 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  7 May 2014 10:04:38 +0200
Message-Id: <1399449884-19089-8-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1399449884-19089-1-git-send-email-s.hauer@pengutronix.de>
References: <1399449884-19089-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 08/14] ARM: i.MX: implement pllv2 set/round_rate support
To: barebox@lists.infradead.org

Code straight from the kernel.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/clk-pllv2.c | 66 +++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 66 insertions(+)

diff --git a/arch/arm/mach-imx/clk-pllv2.c b/arch/arm/mach-imx/clk-pllv2.c
index 7e087c1..a2b016f 100644
--- a/arch/arm/mach-imx/clk-pllv2.c
+++ b/arch/arm/mach-imx/clk-pllv2.c
@@ -136,8 +136,74 @@ static unsigned long clk_pllv2_recalc_rate(struct clk *clk,
 	return __clk_pllv2_recalc_rate(parent_rate, dp_ctl, dp_op, dp_mfd, dp_mfn);
 }
 
+static int __clk_pllv2_set_rate(unsigned long rate, unsigned long parent_rate,
+		u32 *dp_op, u32 *dp_mfd, u32 *dp_mfn)
+{
+	u32 reg;
+	long mfi, pdf, mfn, mfd = 999999;
+	u64 temp64;
+	unsigned long quad_parent_rate;
+
+	quad_parent_rate = 4 * parent_rate;
+	pdf = mfi = -1;
+	while (++pdf < 16 && mfi < 5)
+		mfi = rate * (pdf+1) / quad_parent_rate;
+	if (mfi > 15)
+		return -EINVAL;
+	pdf--;
+
+	temp64 = rate * (pdf + 1) - quad_parent_rate * mfi;
+	do_div(temp64, quad_parent_rate / 1000000);
+	mfn = (long)temp64;
+
+	reg = mfi << 4 | pdf;
+
+	*dp_op = reg;
+	*dp_mfd = mfd;
+	*dp_mfn = mfn;
+
+	return 0;
+}
+
+static int clk_pllv2_set_rate(struct clk *clk, unsigned long rate,
+		unsigned long parent_rate)
+{
+	struct clk_pllv2 *pll = container_of(clk, struct clk_pllv2, clk);
+	void __iomem *pllbase;
+	u32 dp_ctl, dp_op, dp_mfd, dp_mfn;
+	int ret;
+
+	pllbase = pll->reg;
+
+	ret = __clk_pllv2_set_rate(rate, parent_rate, &dp_op, &dp_mfd, &dp_mfn);
+	if (ret)
+		return ret;
+
+	dp_ctl = __raw_readl(pllbase + MXC_PLL_DP_CTL);
+	/* use dpdck0_2 */
+	__raw_writel(dp_ctl | 0x1000L, pllbase + MXC_PLL_DP_CTL);
+
+	__raw_writel(dp_op, pllbase + MXC_PLL_DP_OP);
+	__raw_writel(dp_mfd, pllbase + MXC_PLL_DP_MFD);
+	__raw_writel(dp_mfn, pllbase + MXC_PLL_DP_MFN);
+
+	return 0;
+}
+
+static long clk_pllv2_round_rate(struct clk *clk, unsigned long rate,
+		unsigned long *prate)
+{
+	u32 dp_op, dp_mfd, dp_mfn;
+
+	__clk_pllv2_set_rate(rate, *prate, &dp_op, &dp_mfd, &dp_mfn);
+	return __clk_pllv2_recalc_rate(*prate, MXC_PLL_DP_CTL_DPDCK0_2_EN,
+			dp_op, dp_mfd, dp_mfn);
+}
+
 struct clk_ops clk_pllv2_ops = {
 	.recalc_rate = clk_pllv2_recalc_rate,
+	.round_rate = clk_pllv2_round_rate,
+	.set_rate = clk_pllv2_set_rate,
 };
 
 struct clk *imx_clk_pllv2(const char *name, const char *parent,
-- 
2.0.0.rc0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

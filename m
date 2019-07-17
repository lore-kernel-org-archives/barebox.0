Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnnNo-0005v8-FX
 for barebox@lists.infradead.org; Wed, 17 Jul 2019 17:06:26 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 17 Jul 2019 19:06:00 +0200
Message-Id: <20190717170604.23732-3-a.fatoum@pengutronix.de>
In-Reply-To: <20190717170604.23732-1-a.fatoum@pengutronix.de>
References: <20190717170604.23732-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH v3 2/6] clk: imx6: Mask mmdc_ch1 handshake for periph2_sel and
 mmdc_ch1_axi_podf
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

From: Philipp Zabel <p.zabel@pengutronix.de>

MMDC CH1 is not used on i.MX6Q, so the handshake needed to change the
parent of periph2_sel or the divider of mmdc_ch1_axi_podf will never
succeed.
Disable the handshake mechanism to allow changing the frequency of
mmdc_ch1_axi, allowing to use it as a possible source for the LDB DI
clock.

Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
Signed-off-by: Fabio Estevam <fabio.estevam@nxp.com>
Signed-off-by: Shawn Guo <shawnguo@kernel.org>
[afa: reviewed for barebox]
Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>
Tested-by: Andrey Smirnov <andrew.smirnov@gmail.com>
[afa: ported to barebox from Linux commit f13abeff2c]
[afa: moved call site to where it would've been moved in following commit]
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/clk/imx/clk-imx6.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/drivers/clk/imx/clk-imx6.c b/drivers/clk/imx/clk-imx6.c
index 0b71a1322466..d23b7e277bdf 100644
--- a/drivers/clk/imx/clk-imx6.c
+++ b/drivers/clk/imx/clk-imx6.c
@@ -293,6 +293,19 @@ static struct clk_div_table video_div_table[] = {
 	{ /* sentinel */ }
 };
 
+#define CCM_CCDR		0x04
+
+#define CCDR_MMDC_CH1_MASK	BIT(16)
+
+static void __init imx6q_mmdc_ch1_mask_handshake(void __iomem *ccm_base)
+{
+	unsigned int reg;
+
+	reg = readl(ccm_base + CCM_CCDR);
+	reg |= CCDR_MMDC_CH1_MASK;
+	writel(reg, ccm_base + CCM_CCDR);
+}
+
 static void imx6_add_video_clks(void __iomem *anab, void __iomem *cb)
 {
 	clks[IMX6QDL_CLK_PLL5_POST_DIV] = imx_clk_divider_table("pll5_post_div", "pll5_video", anab + 0xa0, 19, 2, post_div_table);
@@ -300,6 +313,9 @@ static void imx6_add_video_clks(void __iomem *anab, void __iomem *cb)
 
 	clks[IMX6QDL_CLK_IPU1_SEL]         = imx_clk_mux("ipu1_sel",         cb + 0x3c, 9,  2, ipu_sels,          ARRAY_SIZE(ipu_sels));
 	clks[IMX6QDL_CLK_IPU2_SEL]         = imx_clk_mux("ipu2_sel",         cb + 0x3c, 14, 2, ipu_sels,          ARRAY_SIZE(ipu_sels));
+
+	imx6q_mmdc_ch1_mask_handshake(cb);
+
 	clks[IMX6QDL_CLK_LDB_DI0_SEL]      = imx_clk_mux_p("ldb_di0_sel",      cb + 0x2c, 9,  3, ldb_di_sels,       ARRAY_SIZE(ldb_di_sels));
 	clks[IMX6QDL_CLK_LDB_DI1_SEL]      = imx_clk_mux_p("ldb_di1_sel",      cb + 0x2c, 12, 3, ldb_di_sels,       ARRAY_SIZE(ldb_di_sels));
 	clks[IMX6QDL_CLK_IPU1_DI0_PRE_SEL] = imx_clk_mux_p("ipu1_di0_pre_sel", cb + 0x34, 6,  3, ipu_di_pre_sels,   ARRAY_SIZE(ipu_di_pre_sels));
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

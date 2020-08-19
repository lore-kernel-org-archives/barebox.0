Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k8TLM-00089P-Tx
 for barebox@lists.infradead.org; Wed, 19 Aug 2020 19:01:54 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 19 Aug 2020 21:01:48 +0200
Message-Id: <20200819190148.14082-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] clk: imx-imx8mp: Mark arm_a53_core clk as critical
To: Barebox List <barebox@lists.infradead.org>

Changes in imx8mp.dtsi for v5.8-rc1 added some clock reparenting to the
device tree. IMX8MP_CLK_A53_CORE is reparented to IMX8MP_ARM_PLL_OUT.
The latter is not enabled in hardware, so the CPU clock is disabled
locking up the system. Mark IMX8MP_CLK_A53_CORE as critical so that the
new parent gets enabled before reparenting.

Fixes: abef60363d ("dts: update to v5.8-rc1")
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/imx/clk-imx8mp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/imx/clk-imx8mp.c b/drivers/clk/imx/clk-imx8mp.c
index 8286e47960..83659792ea 100644
--- a/drivers/clk/imx/clk-imx8mp.c
+++ b/drivers/clk/imx/clk-imx8mp.c
@@ -528,7 +528,7 @@ static int imx8mp_clocks_init(struct device_node *ccm_np)
 	clks[IMX8MP_CLK_MEDIA_ISP_DIV] = imx_clk_divider2("media_isp_div", "media_isp_cg", ccm + 0x8400, 0, 3);
 
 	/* CORE SEL */
-	clks[IMX8MP_CLK_A53_CORE] = imx_clk_mux2("arm_a53_core", ccm + 0x9880, 24, 1, imx8mp_a53_core_sels, ARRAY_SIZE(imx8mp_a53_core_sels));
+	clks[IMX8MP_CLK_A53_CORE] = imx_clk_mux2_flags("arm_a53_core", ccm + 0x9880, 24, 1, imx8mp_a53_core_sels, ARRAY_SIZE(imx8mp_a53_core_sels), CLK_IS_CRITICAL);
 
 	clks[IMX8MP_CLK_MAIN_AXI] = imx8m_clk_composite_critical("main_axi", imx8mp_main_axi_sels, ccm + 0x8800);
 	clks[IMX8MP_CLK_ENET_AXI] = imx8m_clk_composite("enet_axi", imx8mp_enet_axi_sels, ccm + 0x8880);
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

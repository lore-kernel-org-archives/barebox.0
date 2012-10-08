Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TLJFX-00058Y-MZ
 for barebox@lists.infradead.org; Mon, 08 Oct 2012 19:44:29 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  8 Oct 2012 21:44:17 +0200
Message-Id: <1349725459-20226-9-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1349725459-20226-1-git-send-email-s.hauer@pengutronix.de>
References: <1349725459-20226-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 08/10] ARM i.MX25: Add lcdc per gate
To: barebox@lists.infradead.org

This gate is used to enable/disable the lcd controller, hence we
need a gate for it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/clk-imx25.c |    4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/clk-imx25.c b/arch/arm/mach-imx/clk-imx25.c
index 3a141c2..2587994 100644
--- a/arch/arm/mach-imx/clk-imx25.c
+++ b/arch/arm/mach-imx/clk-imx25.c
@@ -55,7 +55,7 @@ enum mx25_clks {
 	per7_sel, per8_sel, per9_sel, per10_sel, per11_sel, per12_sel,
 	per13_sel, per14_sel, per15_sel, per0, per1, per2, per3, per4, per5,
 	per6, per7, per8, per9, per10, per11, per12, per13, per14, per15,
-	clk_max
+	lcdc_per_gate, clk_max
 };
 
 static struct clk *clks[clk_max];
@@ -132,6 +132,7 @@ static int imx25_ccm_probe(struct device_d *dev)
 	clks[per13] = imx_clk_divider("per13", "per13_sel", base + CCM_PCDR3, 8, 6);
 	clks[per14] = imx_clk_divider("per14", "per14_sel", base + CCM_PCDR3, 16, 6);
 	clks[per15] = imx_clk_divider("per15", "per15_sel", base + CCM_PCDR3, 24, 6);
+	clks[lcdc_per_gate] = imx_clk_gate("lcdc_per_gate", "per7", base + CCM_CGCR0, 7);
 
 	clkdev_add_physbase(clks[per15], MX25_UART1_BASE_ADDR, NULL);
 	clkdev_add_physbase(clks[per15], MX25_UART2_BASE_ADDR, NULL);
@@ -148,6 +149,7 @@ static int imx25_ccm_probe(struct device_d *dev)
 	clkdev_add_physbase(clks[ipg], MX25_CSPI3_BASE_ADDR, NULL);
 	clkdev_add_physbase(clks[per3], MX25_ESDHC1_BASE_ADDR, NULL);
 	clkdev_add_physbase(clks[per4], MX25_ESDHC2_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[lcdc_per_gate], MX25_LCDC_BASE_ADDR, NULL);
 
 	return 0;
 }
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TLJFX-00058V-Ma
 for barebox@lists.infradead.org; Mon, 08 Oct 2012 19:44:29 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  8 Oct 2012 21:44:15 +0200
Message-Id: <1349725459-20226-7-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 06/10] ARM i.MX21: Add lcdc per gate
To: barebox@lists.infradead.org

This gate is used to enable/disable the lcd controller, hence we
need a gate for it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/clk-imx21.c |    5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-imx/clk-imx21.c b/arch/arm/mach-imx/clk-imx21.c
index cab5233..9ef73bd 100644
--- a/arch/arm/mach-imx/clk-imx21.c
+++ b/arch/arm/mach-imx/clk-imx21.c
@@ -47,7 +47,7 @@
 
 enum imx21_clks {
 	ckil, ckih, fpm, mpll_sel, spll_sel, mpll, spll, fclk, hclk, ipg, per1,
-	per2, per3, per4, usb_div, nfc_div, clk_max
+	per2, per3, per4, usb_div, nfc_div, lcdc_per_gate, clk_max
 };
 
 static struct clk *clks[clk_max];
@@ -98,6 +98,7 @@ static int imx21_ccm_probe(struct device_d *dev)
 	clks[per4] = imx_clk_divider("per4", "mpll", base + CCM_PCDR1, 24, 6);
 	clks[usb_div] = imx_clk_divider("usb_div", "spll", base + CCM_CSCR, 26, 3);
 	clks[nfc_div] = imx_clk_divider("nfc_div", "ipg", base + CCM_PCDR0, 12, 4);
+	clks[lcdc_per_gate] = imx_clk_gate("lcdc_per_gate", "per3", base + CCM_PCCR0, 18);
 
 	clkdev_add_physbase(clks[per1], MX21_GPT1_BASE_ADDR, NULL);
 	clkdev_add_physbase(clks[per1], MX21_GPT2_BASE_ADDR, NULL);
@@ -112,7 +113,7 @@ static int imx21_ccm_probe(struct device_d *dev)
 	clkdev_add_physbase(clks[ipg], MX21_I2C_BASE_ADDR, NULL);
 	clkdev_add_physbase(clks[ipg], MX21_SDHC1_BASE_ADDR, NULL);
 	clkdev_add_physbase(clks[ipg], MX21_SDHC2_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[per3], MX21_LCDC_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[lcdc_per_gate], MX21_LCDC_BASE_ADDR, NULL);
 
 	return 0;
 }
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

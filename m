Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.eta-ori.net ([2001:41d0:8:140a::5] helo=orion.eta-ori.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Tvj2M-0003HT-Aw
 for barebox@lists.infradead.org; Thu, 17 Jan 2013 06:33:19 +0000
Received: from ubuntu.phytec.de (mail.phycard.de [217.6.246.34])
 by orion.eta-ori.net (Postfix) with ESMTPSA id 4A904600C2
 for <barebox@lists.infradead.org>; Thu, 17 Jan 2013 07:33:12 +0100 (CET)
From: Daniel Mierswa <d.mierswa@phytec.de>
Date: Thu, 17 Jan 2013 07:32:58 +0100
Message-Id: <c54bb78e9de1b16087365996efa036f612a0223e.1358400153.git.d.mierswa@phytec.de>
In-Reply-To: <cover.1358400153.git.d.mierswa@phytec.de>
References: <cover.1358400153.git.d.mierswa@phytec.de>
In-Reply-To: <cover.1358400153.git.d.mierswa@phytec.de>
References: <cover.1358400153.git.d.mierswa@phytec.de>
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
Subject: [PATCH 3/4] i.MX27: fix shift amount for PCCR1_PERCLK3_EN
To: barebox@lists.infradead.org


Signed-off-by: Daniel Mierswa <d.mierswa@phytec.de>
---
 arch/arm/mach-imx/clk-imx27.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/clk-imx27.c b/arch/arm/mach-imx/clk-imx27.c
index 958495e..e221928 100644
--- a/arch/arm/mach-imx/clk-imx27.c
+++ b/arch/arm/mach-imx/clk-imx27.c
@@ -179,7 +179,7 @@ static int imx27_ccm_probe(struct device_d *dev)
 	else
 		clks[cpu_div] = imx_clk_divider("cpu_div", "cpu_sel", base + CCM_CSCR, 13, 3);
 	clks[clko_div] = imx_clk_divider("clko_div", "clko_sel", base + CCM_PCDR0, 22, 3);
-	clks[lcdc_per_gate] = imx_clk_gate("lcdc_per_gate", "per3_div", base + CCM_PCCR1, 7);
+	clks[lcdc_per_gate] = imx_clk_gate("lcdc_per_gate", "per3_div", base + CCM_PCCR1, 8);
 	clks[lcdc_ahb_gate] = imx_clk_gate("lcdc_ahb_gate", "ahb", base + CCM_PCCR1, 15);
 	clks[lcdc_ipg_gate] = imx_clk_gate("lcdc_ipg_gate", "ipg", base + CCM_PCCR0, 14);
 
-- 
1.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

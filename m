Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aZLHB-00067F-ME
 for barebox@lists.infradead.org; Fri, 26 Feb 2016 16:30:01 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Fri, 26 Feb 2016 17:29:26 +0100
Message-Id: <1456504168-1206-3-git-send-email-s.trumtrar@pengutronix.de>
In-Reply-To: <1456504168-1206-1-git-send-email-s.trumtrar@pengutronix.de>
References: <1456504168-1206-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 3/5] ARM: i.MX25: enable SCC clock
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/mach-imx/clk-imx25.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/clk-imx25.c b/arch/arm/mach-imx/clk-imx25.c
index 7d100783763c..1503128fea5b 100644
--- a/arch/arm/mach-imx/clk-imx25.c
+++ b/arch/arm/mach-imx/clk-imx25.c
@@ -101,7 +101,7 @@ static int imx25_ccm_probe(struct device_d *dev)
 			(1 << 26) | (1 << 31),
 			base + CCM_CGCR1);
 
-	writel((1 << 0) | (1 << 1) | (1 << 2) | (1 << 10) | (1 << 13) | (1 << 14) |
+	writel((1 << 0) | (1 << 1) | (1 << 2) | (1 << 5) | (1 << 10) | (1 << 13) | (1 << 14) |
 			(1 << 15) | (1 << 16) | (1 << 17) | (1 << 18),
 			base + CCM_CGCR2);
 
@@ -150,6 +150,7 @@ static int imx25_ccm_probe(struct device_d *dev)
 	clks[lcdc_ahb] = imx_clk_gate("lcdc_ahb", "ahb", base + CCM_CGCR0, 24);
 	clks[lcdc_ipg] = imx_clk_gate("lcdc_ipg", "ipg", base + CCM_CGCR1, 29);
 	clks[lcdc_ipg_per] = imx_clk_gate("lcdc_ipg_per", "per7", base + CCM_CGCR0, 7);
+	clks[scc_ipg] = imx_clk_gate("scc_ipg", "ipg", base + CCM_CGCR2, 5);
 
 	clkdev_add_physbase(clks[per15], MX25_UART1_BASE_ADDR, NULL);
 	clkdev_add_physbase(clks[per15], MX25_UART2_BASE_ADDR, NULL);
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

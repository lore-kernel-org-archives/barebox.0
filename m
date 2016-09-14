Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bk6Fj-0006rF-Lm
 for barebox@lists.infradead.org; Wed, 14 Sep 2016 09:13:12 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 14 Sep 2016 11:12:37 +0200
Message-Id: <1473844368-13030-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 01/12] ARM: i.MX53: Add uart5 clock support
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/clk-imx5.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-imx/clk-imx5.c b/arch/arm/mach-imx/clk-imx5.c
index d3cde7e..c4c47a6 100644
--- a/arch/arm/mach-imx/clk-imx5.c
+++ b/arch/arm/mach-imx/clk-imx5.c
@@ -467,6 +467,7 @@ int __init mx53_clocks_init(struct device_d *dev, void __iomem *regs)
 	clkdev_add_physbase(clks[IMX5_CLK_UART_ROOT], MX53_UART2_BASE_ADDR, NULL);
 	clkdev_add_physbase(clks[IMX5_CLK_UART_ROOT], MX53_UART3_BASE_ADDR, NULL);
 	clkdev_add_physbase(clks[IMX5_CLK_UART_ROOT], MX53_UART4_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[IMX5_CLK_UART_ROOT], MX53_UART5_BASE_ADDR, NULL);
 	clkdev_add_physbase(clks[IMX5_CLK_PER_ROOT], MX53_I2C1_BASE_ADDR, NULL);
 	clkdev_add_physbase(clks[IMX5_CLK_PER_ROOT], MX53_I2C2_BASE_ADDR, NULL);
 	clkdev_add_physbase(clks[IMX5_CLK_PER_ROOT], MX53_I2C3_BASE_ADDR, NULL);
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

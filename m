Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YqGZ3-0007Rn-AD
 for barebox@lists.infradead.org; Thu, 07 May 2015 07:49:50 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  7 May 2015 09:49:26 +0200
Message-Id: <1430984966-25382-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM: i.MX5: Add missing CONFIG_ prefix in test
To: Barebox List <barebox@lists.infradead.org>

The variable name misses a CONFIG_ prefix to work as expected.

Fixes: 05a1e4b ARM: i.MX5: Do not register fixed clocks twice

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/clk-imx5.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/clk-imx5.c b/arch/arm/mach-imx/clk-imx5.c
index 8a0d875..6dc3c80 100644
--- a/arch/arm/mach-imx/clk-imx5.c
+++ b/arch/arm/mach-imx/clk-imx5.c
@@ -189,7 +189,7 @@ static void __init mx5_clocks_common_init(struct device_d *dev, void __iomem *ba
 	writel(0xffffffff, base + CCM_CCGR6);
 	writel(0xffffffff, base + CCM_CCGR7);
 
-	if (!IS_ENABLED(COMMON_CLK_OF_PROVIDER) || !dev->device_node) {
+	if (!IS_ENABLED(CONFIG_COMMON_CLK_OF_PROVIDER) || !dev->device_node) {
 		clks[IMX5_CLK_CKIL] = clk_fixed("ckil", 32768);
 		clks[IMX5_CLK_OSC] = clk_fixed("osc", 24000000);
 	}
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

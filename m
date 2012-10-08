Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TLJFX-00058R-Hy
 for barebox@lists.infradead.org; Mon, 08 Oct 2012 19:44:28 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  8 Oct 2012 21:44:12 +0200
Message-Id: <1349725459-20226-4-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 03/10] ARM i.MX21: Fix CSPI parent clock
To: barebox@lists.infradead.org

It's perclk2, not perclk3

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/clk-imx21.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/clk-imx21.c b/arch/arm/mach-imx/clk-imx21.c
index 69aaa9e..32c8a4c 100644
--- a/arch/arm/mach-imx/clk-imx21.c
+++ b/arch/arm/mach-imx/clk-imx21.c
@@ -98,10 +98,10 @@ static int imx21_ccm_probe(struct device_d *dev)
 	clkdev_add_physbase(clks[per1], MX21_UART4_BASE_ADDR, NULL);
 	clkdev_add_physbase(clks[per2], MX21_CSPI1_BASE_ADDR, NULL);
 	clkdev_add_physbase(clks[per2], MX21_CSPI2_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[per2], MX21_CSPI3_BASE_ADDR, NULL);
 	clkdev_add_physbase(clks[ipg], MX21_I2C_BASE_ADDR, NULL);
 	clkdev_add_physbase(clks[ipg], MX21_SDHC1_BASE_ADDR, NULL);
 	clkdev_add_physbase(clks[ipg], MX21_SDHC2_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[per3], MX21_CSPI3_BASE_ADDR, NULL);
 	clkdev_add_physbase(clks[per3], MX21_LCDC_BASE_ADDR, NULL);
 
 	return 0;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

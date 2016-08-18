Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1baO8g-0000Oz-H2
 for barebox@lists.infradead.org; Thu, 18 Aug 2016 14:17:47 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 18 Aug 2016 16:17:21 +0200
Message-Id: <1471529842-14479-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1471529842-14479-1-git-send-email-s.hauer@pengutronix.de>
References: <1471529842-14479-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/5] ARM: i.MX25: Provide a clock for the nand controller
To: Barebox List <barebox@lists.infradead.org>

The clock is needed to configure optimized timings, so provide
one.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/clk-imx25.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-imx/clk-imx25.c b/arch/arm/mach-imx/clk-imx25.c
index fccea7f..864d06e 100644
--- a/arch/arm/mach-imx/clk-imx25.c
+++ b/arch/arm/mach-imx/clk-imx25.c
@@ -171,6 +171,7 @@ static int imx25_ccm_probe(struct device_d *dev)
 	clkdev_add_physbase(clks[ipg], MX25_CSPI3_BASE_ADDR, NULL);
 	clkdev_add_physbase(clks[per3], MX25_ESDHC1_BASE_ADDR, NULL);
 	clkdev_add_physbase(clks[per4], MX25_ESDHC2_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[per8], MX25_NFC_BASE_ADDR, NULL);
 	clkdev_add_physbase(clks[lcdc_ipg_per], MX25_LCDC_BASE_ADDR, "per");
 	clkdev_add_physbase(clks[lcdc_ipg], MX25_LCDC_BASE_ADDR, "ipg");
 	clkdev_add_physbase(clks[lcdc_ahb], MX25_LCDC_BASE_ADDR, "ahb");
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWFF3-0005vo-Uv
 for barebox@lists.infradead.org; Wed, 06 May 2020 08:17:25 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  6 May 2020 10:17:06 +0200
Message-Id: <20200506081716.20143-3-s.hauer@pengutronix.de>
In-Reply-To: <20200506081716.20143-1-s.hauer@pengutronix.de>
References: <20200506081716.20143-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 03/13] clk: mxs: Do not enable enet_out clock
To: Barebox List <barebox@lists.infradead.org>

The enet_out clock gate is wrongly abstracted. The bit it is controlling
is not just a bit to enable the clock, it also controls the direction of
the ethernet reference clock. When the bit is cleared, the ethernet
reference clock must be fed into the SoC from an external oscillator;
when it's set then the ethernet reference clock is generated internally.
The correct setting depends on the board, so we must not set the bit
unconditionally during probe of the clock driver. Whether or not the
clock is enabled can be selected by the board by removing the clock from
the FEC in its dts.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/mxs/clk-imx28.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/clk/mxs/clk-imx28.c b/drivers/clk/mxs/clk-imx28.c
index 4adb1c6866..aedd8d4a7c 100644
--- a/drivers/clk/mxs/clk-imx28.c
+++ b/drivers/clk/mxs/clk-imx28.c
@@ -131,7 +131,6 @@ static int __init mx28_clocks_init(void __iomem *regs)
 	clk_set_rate(clks[ssp2], 96000000);
 	clk_set_rate(clks[ssp3], 96000000);
 	clk_set_parent(clks[lcdif_sel], clks[ref_pix]);
-	clk_enable(clks[enet_out]);
 
 	clkdev_add_physbase(clks[ssp0], IMX_SSP0_BASE, NULL);
 	clkdev_add_physbase(clks[ssp1], IMX_SSP1_BASE, NULL);
-- 
2.26.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

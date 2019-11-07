Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSp4z-0002Ow-MQ
 for barebox@lists.infradead.org; Thu, 07 Nov 2019 21:12:38 +0000
Received: from astat.fritz.box (a89-183-53-44.net-htp.de [89.183.53.44])
 by lynxeye.de (Postfix) with ESMTPA id A962DE74282
 for <barebox@lists.infradead.org>; Thu,  7 Nov 2019 22:11:27 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Thu,  7 Nov 2019 22:11:16 +0100
Message-Id: <20191107211119.68064-16-dev@lynxeye.de>
In-Reply-To: <20191107211119.68064-1-dev@lynxeye.de>
References: <20191107211119.68064-1-dev@lynxeye.de>
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
Subject: [PATCH 15/18] clk: zynq: remove clkdevs
To: barebox@lists.infradead.org

They aren't needed anymore, as all the Zynq devices now
use a DT based clock lookup.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/clk/zynq/clkc.c | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/drivers/clk/zynq/clkc.c b/drivers/clk/zynq/clkc.c
index 2a855d286fcd..5418adee37ad 100644
--- a/drivers/clk/zynq/clkc.c
+++ b/drivers/clk/zynq/clkc.c
@@ -455,15 +455,6 @@ static int zynq_clock_probe(struct device_d *dev)
 	clks[smc_aper] = clk_gate("smc_aper", "cpu_1x",
 				  clk_base + 0x2C, 24, 0, 0);
 
-	clk_register_clkdev(clks[cpu_3or2x], NULL, "arm_smp_twd");
-	clk_register_clkdev(clks[uart0], NULL, "zynq_serial0");
-	clk_register_clkdev(clks[uart1], NULL, "zynq_serial1");
-	clk_register_clkdev(clks[gem0], NULL, "macb0");
-	clk_register_clkdev(clks[gem1], NULL, "macb1");
-
-	clkdev_add_physbase(clks[cpu_3or2x], CORTEXA9_SCU_TIMER_BASE_ADDR, NULL);
-	clkdev_add_physbase(clks[uart1], ZYNQ_UART1_BASE_ADDR, NULL);
-
 	clk_data.clks = clks;
 	clk_data.clk_num = ARRAY_SIZE(clks);
 	of_clk_add_provider(dev->device_node, of_clk_src_onecell_get,
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

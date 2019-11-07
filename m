Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSp4y-0002OJ-6h
 for barebox@lists.infradead.org; Thu, 07 Nov 2019 21:12:37 +0000
Received: from astat.fritz.box (a89-183-53-44.net-htp.de [89.183.53.44])
 by lynxeye.de (Postfix) with ESMTPA id 78E3DE74268
 for <barebox@lists.infradead.org>; Thu,  7 Nov 2019 22:11:26 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Thu,  7 Nov 2019 22:11:11 +0100
Message-Id: <20191107211119.68064-11-dev@lynxeye.de>
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
Subject: [PATCH 10/18] clk: zynq: use base address of clock controller
To: barebox@lists.infradead.org

The clock controller is a subregion of the SLCR, use the real base
of this region for mapping the registers. This will allow to switch
to DT based probing later.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/mach-zynq/zynq.c |  3 ++-
 drivers/clk/zynq/clkc.c   | 30 +++++++++++++++---------------
 2 files changed, 17 insertions(+), 16 deletions(-)

diff --git a/arch/arm/mach-zynq/zynq.c b/arch/arm/mach-zynq/zynq.c
index f6112fd249ce..ec22b16c91cd 100644
--- a/arch/arm/mach-zynq/zynq.c
+++ b/arch/arm/mach-zynq/zynq.c
@@ -48,7 +48,8 @@ static int zynq_init(void)
 	writel(val, 0xf8f00000);
 	dmb();
 
-	add_generic_device("zynq-clock", 0, NULL, ZYNQ_SLCR_BASE, 0x4000, IORESOURCE_MEM, NULL);
+	add_generic_device("zynq-clock", 0, NULL, ZYNQ_SLCR_BASE + 0x100,
+			   0x4000, IORESOURCE_MEM, NULL);
 	add_generic_device("smp_twd", 0, NULL, CORTEXA9_SCU_TIMER_BASE_ADDR,
 				0x4000, IORESOURCE_MEM, NULL);
 	restart_handler_register_fn(zynq_restart_soc);
diff --git a/drivers/clk/zynq/clkc.c b/drivers/clk/zynq/clkc.c
index cd49d8478f58..ba441740c585 100644
--- a/drivers/clk/zynq/clkc.c
+++ b/drivers/clk/zynq/clkc.c
@@ -360,38 +360,38 @@ static struct clk *zynq_cpu_subclk(const char *name,
 static int zynq_clock_probe(struct device_d *dev)
 {
 	struct resource *iores;
-	void __iomem *slcr_base;
+	void __iomem *clk_base;
 	unsigned long ps_clk_rate = 33333330;
 
 	iores = dev_request_mem_resource(dev, 0);
 	if (IS_ERR(iores))
 		return PTR_ERR(iores);
-	slcr_base = IOMEM(iores->start);
+	clk_base = IOMEM(iores->start);
 
 	clks[ps_clk]  = clk_fixed("ps_clk", ps_clk_rate);
 
-	clks[arm_pll] = zynq_pll_clk(ZYNQ_PLL_ARM, "arm_pll", slcr_base + 0x100);
-	clks[ddr_pll] = zynq_pll_clk(ZYNQ_PLL_DDR, "ddr_pll", slcr_base + 0x104);
-	clks[io_pll]  = zynq_pll_clk(ZYNQ_PLL_IO,  "io_pll", slcr_base + 0x108);
+	clks[arm_pll] = zynq_pll_clk(ZYNQ_PLL_ARM, "arm_pll", clk_base + 0x0);
+	clks[ddr_pll] = zynq_pll_clk(ZYNQ_PLL_DDR, "ddr_pll", clk_base + 0x4);
+	clks[io_pll]  = zynq_pll_clk(ZYNQ_PLL_IO,  "io_pll", clk_base + 0x8);
 
-	clks[uart_clk] = zynq_periph_clk("uart_clk", slcr_base + 0x154);
+	clks[uart_clk] = zynq_periph_clk("uart_clk", clk_base + 0x54);
 
-	clks[uart0] = clk_gate("uart0", "uart_clk", slcr_base + 0x154, 0, 0, 0);
-	clks[uart1] = clk_gate("uart1", "uart_clk", slcr_base + 0x154, 1, 0, 0);
+	clks[uart0] = clk_gate("uart0", "uart_clk", clk_base + 0x54, 0, 0, 0);
+	clks[uart1] = clk_gate("uart1", "uart_clk", clk_base + 0x54, 1, 0, 0);
 
-	clks[gem0] = clk_gate("gem0", "io_pll", slcr_base + 0x140, 0, 0, 0);
-	clks[gem1] = clk_gate("gem1", "io_pll", slcr_base + 0x144, 1, 0, 0);
+	clks[gem0] = clk_gate("gem0", "io_pll", clk_base + 0x40, 0, 0, 0);
+	clks[gem1] = clk_gate("gem1", "io_pll", clk_base + 0x44, 1, 0, 0);
 
-	clks[cpu_clk] = zynq_cpu_clk("cpu_clk", slcr_base + 0x120);
+	clks[cpu_clk] = zynq_cpu_clk("cpu_clk", clk_base + 0x20);
 
 	clks[cpu_6x4x] = zynq_cpu_subclk("cpu_6x4x", CPU_SUBCLK_6X4X,
-					slcr_base + 0x120, slcr_base + 0x1C4);
+					clk_base + 0x20, clk_base + 0xC4);
 	clks[cpu_3x2x] = zynq_cpu_subclk("cpu_3x2x", CPU_SUBCLK_3X2X,
-					slcr_base + 0x120, slcr_base + 0x1C4);
+					clk_base + 0x20, clk_base + 0xC4);
 	clks[cpu_2x] = zynq_cpu_subclk("cpu_2x", CPU_SUBCLK_2X,
-					slcr_base + 0x120, slcr_base + 0x1C4);
+					clk_base + 0x20, clk_base + 0xC4);
 	clks[cpu_1x] = zynq_cpu_subclk("cpu_1x", CPU_SUBCLK_1X,
-					slcr_base + 0x120, slcr_base + 0x1C4);
+					clk_base + 0x20, clk_base + 0xC4);
 
 	clk_register_clkdev(clks[cpu_3x2x], NULL, "arm_smp_twd");
 	clk_register_clkdev(clks[uart0], NULL, "zynq_serial0");
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

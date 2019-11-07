Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSp5T-0002nv-FF
 for barebox@lists.infradead.org; Thu, 07 Nov 2019 21:13:08 +0000
Received: from astat.fritz.box (a89-183-53-44.net-htp.de [89.183.53.44])
 by lynxeye.de (Postfix) with ESMTPA id 480ECE7414D
 for <barebox@lists.infradead.org>; Thu,  7 Nov 2019 22:11:27 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Thu,  7 Nov 2019 22:11:14 +0100
Message-Id: <20191107211119.68064-14-dev@lynxeye.de>
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
Subject: [PATCH 13/18] clk: zynq: partially sync with Linux
To: barebox@lists.infradead.org

Sync the clock enum with the clocks used by Linux and the DT binding.
Implement AMBA bus clocks and SPI and SDIO peripheral clocks and
register a DT clock controller, so the clocks can be looked up by
DT handle.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/clk/zynq/clkc.c | 88 +++++++++++++++++++++++++++++++++--------
 1 file changed, 72 insertions(+), 16 deletions(-)

diff --git a/drivers/clk/zynq/clkc.c b/drivers/clk/zynq/clkc.c
index 07152e2ada3f..2a855d286fcd 100644
--- a/drivers/clk/zynq/clkc.c
+++ b/drivers/clk/zynq/clkc.c
@@ -29,10 +29,16 @@
 #include <mach/zynq7000-regs.h>
 #include <malloc.h>
 
-enum zynq_clks {
-	dummy, ps_clk, arm_pll, ddr_pll, io_pll, uart_clk, uart0, uart1,
-	cpu_clk, cpu_6x4x, cpu_3x2x, cpu_2x, cpu_1x,
-	gem_clk, gem0, gem1, clks_max
+enum zynq_clk {
+	armpll, ddrpll, iopll,
+	cpu_6or4x, cpu_3or2x, cpu_2x, cpu_1x,
+	ddr2x, ddr3x, dci,
+	lqspi, smc, pcap, gem0, gem1, fclk0, fclk1, fclk2, fclk3, can0, can1,
+	sdio0, sdio1, uart0, uart1, spi0, spi1, dma,
+	usb0_aper, usb1_aper, gem0_aper, gem1_aper,
+	sdio0_aper, sdio1_aper, spi0_aper, spi1_aper, can0_aper, can1_aper,
+	i2c0_aper, i2c1_aper, uart0_aper, uart1_aper, gpio_aper, lqspi_aper,
+	smc_aper, swdt, dbg_trc, dbg_apb, clk_max
 };
 
 enum zynq_pll_type {
@@ -51,7 +57,8 @@ enum zynq_pll_type {
 #define PLL_CTRL_PWRDOWN		(1 << 1)
 #define PLL_CTRL_RESET			(1 << 0)
 
-static struct clk *clks[clks_max];
+static struct clk *clks[clk_max];
+static struct clk_onecell_data clk_data;
 
 struct zynq_pll_clk {
 	struct clk	clk;
@@ -96,6 +103,7 @@ static int zynq_pll_is_enabled(struct clk *clk)
 	struct zynq_pll_clk *pll = to_zynq_pll_clk(clk);
 	u32 val = readl(pll->pll_ctrl);
 
+
 	return !(val & (PLL_CTRL_PWRDOWN | PLL_CTRL_RESET));
 }
 
@@ -379,46 +387,94 @@ static int zynq_clock_probe(struct device_d *dev)
 		return PTR_ERR(iores);
 	clk_base = IOMEM(iores->start);
 
-	clks[ps_clk]  = clk_fixed("ps_clk", ps_clk_rate);
+	clk_fixed("ps_clk", ps_clk_rate);
 
-	clks[arm_pll] = zynq_pll_clk(ZYNQ_PLL_ARM, "arm_pll", clk_base + 0x0);
-	clks[ddr_pll] = zynq_pll_clk(ZYNQ_PLL_DDR, "ddr_pll", clk_base + 0x4);
-	clks[io_pll]  = zynq_pll_clk(ZYNQ_PLL_IO,  "io_pll", clk_base + 0x8);
+	clks[armpll] = zynq_pll_clk(ZYNQ_PLL_ARM, "arm_pll", clk_base + 0x0);
+	clks[ddrpll] = zynq_pll_clk(ZYNQ_PLL_DDR, "ddr_pll", clk_base + 0x4);
+	clks[iopll] = zynq_pll_clk(ZYNQ_PLL_IO,  "io_pll", clk_base + 0x8);
 
-	clks[uart_clk] = zynq_periph_clk("uart_clk", clk_base + 0x54);
+	zynq_periph_clk("sdio_clk", clk_base + 0x50);
+	clks[sdio0] = clk_gate("sdio0", "sdio_clk", clk_base + 0x50, 0, 0, 0);
+	clks[sdio1] = clk_gate("sdio1", "sdio_clk", clk_base + 0x50, 1, 0, 0);
 
+	zynq_periph_clk("uart_clk", clk_base + 0x54);
 	clks[uart0] = clk_gate("uart0", "uart_clk", clk_base + 0x54, 0, 0, 0);
 	clks[uart1] = clk_gate("uart1", "uart_clk", clk_base + 0x54, 1, 0, 0);
 
+	zynq_periph_clk("spi_clk", clk_base + 0x58);
+	clks[spi0] = clk_gate("spi0", "spi_clk", clk_base + 0x58, 0, 0, 0);
+	clks[spi1] = clk_gate("spi1", "spi_clk", clk_base + 0x58, 1, 0, 0);
+
 	clks[gem0] = clk_gate("gem0", "io_pll", clk_base + 0x40, 0, 0, 0);
 	clks[gem1] = clk_gate("gem1", "io_pll", clk_base + 0x44, 1, 0, 0);
 
-	clks[cpu_clk] = zynq_cpu_clk("cpu_clk", clk_base + 0x20);
+	zynq_cpu_clk("cpu_clk", clk_base + 0x20);
 
-	clks[cpu_6x4x] = zynq_cpu_subclk("cpu_6x4x", CPU_SUBCLK_6X4X,
+	clks[cpu_6or4x] = zynq_cpu_subclk("cpu_6x4x", CPU_SUBCLK_6X4X,
 					clk_base + 0x20, clk_base + 0xC4);
-	clks[cpu_3x2x] = zynq_cpu_subclk("cpu_3x2x", CPU_SUBCLK_3X2X,
+	clks[cpu_3or2x] = zynq_cpu_subclk("cpu_3x2x", CPU_SUBCLK_3X2X,
 					clk_base + 0x20, clk_base + 0xC4);
 	clks[cpu_2x] = zynq_cpu_subclk("cpu_2x", CPU_SUBCLK_2X,
 					clk_base + 0x20, clk_base + 0xC4);
 	clks[cpu_1x] = zynq_cpu_subclk("cpu_1x", CPU_SUBCLK_1X,
 					clk_base + 0x20, clk_base + 0xC4);
 
-	clk_register_clkdev(clks[cpu_3x2x], NULL, "arm_smp_twd");
+	clks[dma] = clk_gate("dma", "cpu_2x", clk_base + 0x2C, 0, 0, 0);
+	clks[usb0_aper] = clk_gate("usb0_aper", "cpu_1x",
+				   clk_base + 0x2C, 2, 0, 0);
+	clks[usb1_aper] = clk_gate("usb1_aper", "cpu_1x",
+				   clk_base + 0x2C, 3, 0, 0);
+	clks[gem0_aper] = clk_gate("gem0_aper", "cpu_1x",
+				   clk_base + 0x2C, 6, 0, 0);
+	clks[gem1_aper] = clk_gate("gem1_aper", "cpu_1x",
+				   clk_base + 0x2C, 7, 0, 0);
+	clks[sdio0_aper] = clk_gate("sdio0_aper", "cpu_1x",
+				    clk_base + 0x2C, 10, 0, 0);
+	clks[sdio1_aper] = clk_gate("sdio1_aper", "cpu_1x",
+				    clk_base + 0x2C, 11, 0, 0);
+	clks[spi0_aper] = clk_gate("spi0_aper", "cpu_1x",
+				   clk_base + 0x2C, 14, 0, 0);
+	clks[spi1_aper] = clk_gate("spi1_aper", "cpu_1x",
+				   clk_base + 0x2C, 15, 0, 0);
+	clks[can0_aper] = clk_gate("can0_aper", "cpu_1x",
+				   clk_base + 0x2C, 16, 0, 0);
+	clks[can1_aper] = clk_gate("can1_aper", "cpu_1x",
+				   clk_base + 0x2C, 17, 0, 0);
+	clks[i2c0_aper] = clk_gate("i2c0_aper", "cpu_1x",
+				   clk_base + 0x2C, 18, 0, 0);
+	clks[i2c1_aper] = clk_gate("i2c1_aper", "cpu_1x",
+				   clk_base + 0x2C, 19, 0, 0);
+	clks[uart0_aper] = clk_gate("uart0_aper", "cpu_1x",
+				    clk_base + 0x2C, 20, 0, 0);
+	clks[uart1_aper] = clk_gate("uart1_aper", "cpu_1x",
+				    clk_base + 0x2C, 21, 0, 0);
+	clks[gpio_aper] = clk_gate("gpio_aper", "cpu_1x",
+				   clk_base + 0x2C, 22, 0, 0);
+	clks[lqspi_aper] = clk_gate("lqspi_aper", "cpu_1x",
+				    clk_base + 0x2C, 23, 0, 0);
+	clks[smc_aper] = clk_gate("smc_aper", "cpu_1x",
+				  clk_base + 0x2C, 24, 0, 0);
+
+	clk_register_clkdev(clks[cpu_3or2x], NULL, "arm_smp_twd");
 	clk_register_clkdev(clks[uart0], NULL, "zynq_serial0");
 	clk_register_clkdev(clks[uart1], NULL, "zynq_serial1");
 	clk_register_clkdev(clks[gem0], NULL, "macb0");
 	clk_register_clkdev(clks[gem1], NULL, "macb1");
 
-	clkdev_add_physbase(clks[cpu_3x2x], CORTEXA9_SCU_TIMER_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[cpu_3or2x], CORTEXA9_SCU_TIMER_BASE_ADDR, NULL);
 	clkdev_add_physbase(clks[uart1], ZYNQ_UART1_BASE_ADDR, NULL);
 
+	clk_data.clks = clks;
+	clk_data.clk_num = ARRAY_SIZE(clks);
+	of_clk_add_provider(dev->device_node, of_clk_src_onecell_get,
+			    &clk_data);
+
 	return 0;
 }
 
 static __maybe_unused struct of_device_id zynq_clock_dt_ids[] = {
 	{
-		.compatible = "xlnx,zynq-clock",
+		.compatible = "xlnx,ps7-clkc",
 	}, {
 		/* sentinel */
 	}
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

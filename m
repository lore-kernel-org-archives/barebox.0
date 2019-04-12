Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hEpiX-0005LD-Ve
 for barebox@lists.infradead.org; Fri, 12 Apr 2019 06:31:19 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 12 Apr 2019 08:31:06 +0200
Message-Id: <20190412063107.26791-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] ARM: i.MX25: Add some more clocks
To: Barebox List <barebox@lists.infradead.org>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

From: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Add some clocks needed for:
- RNGB
- SCC
- Dryice RTC

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/include/mach/imx25-regs.h | 2 ++
 drivers/clk/imx/clk-imx25.c                 | 7 ++++++-
 2 files changed, 8 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/include/mach/imx25-regs.h b/arch/arm/mach-imx/include/mach/imx25-regs.h
index 71812764c9..5974897a16 100644
--- a/arch/arm/mach-imx/include/mach/imx25-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx25-regs.h
@@ -62,12 +62,14 @@
 #define MX25_SSI2_BASE_ADDR		0x50014000
 #define MX25_SSI1_BASE_ADDR		0x50034000
 #define MX25_NFC_BASE_ADDR		0xbb000000
+#define MX25_SCC_BASE_ADDR		0x53fac000
 #define MX25_IIM_BASE_ADDR		0x53ff0000
 #define MX25_DRYICE_BASE_ADDR		0x53ffc000
 #define MX25_ESDHC1_BASE_ADDR		0x53fb4000
 #define MX25_ESDHC2_BASE_ADDR		0x53fb8000
 #define MX25_LCDC_BASE_ADDR		0x53fbc000
 #define MX25_KPP_BASE_ADDR		0x43fa8000
+#define MX25_RNGB_BASE_ADDR		0x53fb0000
 #define MX25_SDMA_BASE_ADDR		0x53fd4000
 #define MX25_USB_BASE_ADDR		0x53ff4000
 #define MX25_USB_OTG_BASE_ADDR			(MX25_USB_BASE_ADDR + 0x0000)
diff --git a/drivers/clk/imx/clk-imx25.c b/drivers/clk/imx/clk-imx25.c
index baa42e14f4..ce4fbed68c 100644
--- a/drivers/clk/imx/clk-imx25.c
+++ b/drivers/clk/imx/clk-imx25.c
@@ -95,7 +95,7 @@ static int imx25_ccm_probe(struct device_d *dev)
 
 	writel((1 << 3) | (1 << 4) | (1 << 5) | (1 << 6) | (1 << 8) | (1 << 9) |
 			(1 << 10) | (1 << 15) |	(1 << 19) | (1 << 21) | (1 << 22) |
-			(1 << 23) | (1 << 24) | (1 << 28),
+			(1 << 23) | (1 << 24) | (1 << 25) | (1 << 28),
 			base + CCM_CGCR0);
 
 	writel((1 << 5) | (1 << 6) | (1 << 7) | (1 << 8) | (1 << 13) | (1 << 14) |
@@ -152,7 +152,9 @@ static int imx25_ccm_probe(struct device_d *dev)
 	clks[lcdc_ahb] = imx_clk_gate("lcdc_ahb", "ahb", base + CCM_CGCR0, 24);
 	clks[lcdc_ipg] = imx_clk_gate("lcdc_ipg", "ipg", base + CCM_CGCR1, 29);
 	clks[lcdc_ipg_per] = imx_clk_gate("lcdc_ipg_per", "per7", base + CCM_CGCR0, 7);
+	clks[scc_ipg] = imx_clk_gate("scc_ipg", "ipg", base + CCM_CGCR2, 5);
 	clks[rngb_ipg] = imx_clk_gate("rngb_ipg", "ipg", base + CCM_CGCR2, 3);
+	clks[dryice_ipg] = imx_clk_gate("dryice_ipg", "ipg", base + CCM_CGCR1, 8);
 
 	clkdev_add_physbase(clks[per15], MX25_UART1_BASE_ADDR, NULL);
 	clkdev_add_physbase(clks[per15], MX25_UART2_BASE_ADDR, NULL);
@@ -176,6 +178,9 @@ static int imx25_ccm_probe(struct device_d *dev)
 	clkdev_add_physbase(clks[lcdc_ipg_per], MX25_LCDC_BASE_ADDR, "per");
 	clkdev_add_physbase(clks[lcdc_ipg], MX25_LCDC_BASE_ADDR, "ipg");
 	clkdev_add_physbase(clks[lcdc_ahb], MX25_LCDC_BASE_ADDR, "ahb");
+	clkdev_add_physbase(clks[scc_ipg], MX25_SCC_BASE_ADDR, "ipg");
+	clkdev_add_physbase(clks[rngb_ipg], MX25_RNGB_BASE_ADDR, "ipg");
+	clkdev_add_physbase(clks[dryice_ipg], MX25_DRYICE_BASE_ADDR, NULL);
 
 	return 0;
 }
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

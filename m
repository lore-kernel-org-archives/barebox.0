Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vs81.iboxed.net ([185.82.85.146])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cnA5s-0005Nv-8m
 for barebox@lists.infradead.org; Sun, 12 Mar 2017 20:27:59 +0000
From: Alexander Kurz <akurz@blala.de>
Date: Sun, 12 Mar 2017 21:27:00 +0100
Message-Id: <1489350420-10640-1-git-send-email-akurz@blala.de>
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
Subject: [PATCH] ARM: zynq7000: make PS_CLK Kconfigurable
To: barebox@lists.infradead.org
Cc: Alexander Kurz <akurz@blala.de>

The main clock source on Zynq-7000 based boards (PS_CLK) is not uniform
for all boards, while typical boards are clocked with 33.3MHz, the
Z-7010 based Digilent Zybo board is clocked with 50MHz.
Since barebox is not yet OF aware for Zynq, make PS_CLK board dependent
via Kconfig.

Signed-off-by: Alexander Kurz <akurz@blala.de>
---
 arch/arm/mach-zynq/Kconfig        | 6 ++++++
 arch/arm/mach-zynq/clk-zynq7000.c | 9 ++++++++-
 2 files changed, 14 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-zynq/Kconfig b/arch/arm/mach-zynq/Kconfig
index d35bd41..ff2aedb 100644
--- a/arch/arm/mach-zynq/Kconfig
+++ b/arch/arm/mach-zynq/Kconfig
@@ -8,6 +8,12 @@ config ZYNQ_DEBUG_LL_UART_BASE
 	hex
 	default 0xe0001000 if MACH_ZEDBOARD
 
+config ZYNQ_PS_CLK
+	int
+	default 33333330 if MACH_ZEDBOARD
+	help
+	  Select the external clock frequency provided to PS_CLK.
+
 choice
 	prompt "Xilinx Zynq type board"
 
diff --git a/arch/arm/mach-zynq/clk-zynq7000.c b/arch/arm/mach-zynq/clk-zynq7000.c
index cd49d84..49e020b 100644
--- a/arch/arm/mach-zynq/clk-zynq7000.c
+++ b/arch/arm/mach-zynq/clk-zynq7000.c
@@ -29,6 +29,13 @@
 #include <mach/zynq7000-regs.h>
 #include <malloc.h>
 
+#ifndef CONFIG_ZYNQ_PS_CLK
+#warning define ZYNQ_PS_CLK for your board
+#define ZYNQ_PS_CLK 33333330
+#else
+#define ZYNQ_PS_CLK CONFIG_ZYNQ_PS_CLK
+#endif
+
 enum zynq_clks {
 	dummy, ps_clk, arm_pll, ddr_pll, io_pll, uart_clk, uart0, uart1,
 	cpu_clk, cpu_6x4x, cpu_3x2x, cpu_2x, cpu_1x,
@@ -361,7 +368,7 @@ static int zynq_clock_probe(struct device_d *dev)
 {
 	struct resource *iores;
 	void __iomem *slcr_base;
-	unsigned long ps_clk_rate = 33333330;
+	unsigned long ps_clk_rate = ZYNQ_PS_CLK;
 
 	iores = dev_request_mem_resource(dev, 0);
 	if (IS_ERR(iores))
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UEypP-0003i3-Dn
 for barebox@lists.infradead.org; Mon, 11 Mar 2013 09:15:35 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon, 11 Mar 2013 10:15:05 +0100
Message-Id: <1362993306-19262-9-git-send-email-s.trumtrar@pengutronix.de>
In-Reply-To: <1362993306-19262-1-git-send-email-s.trumtrar@pengutronix.de>
References: <1362993306-19262-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 8/9] ARM: zynq: clk: convert to platform driver
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/mach-zynq/Kconfig        |  2 ++
 arch/arm/mach-zynq/clk-zynq7000.c | 25 ++++++++++++++++++++++---
 arch/arm/mach-zynq/zynq.c         |  1 +
 3 files changed, 25 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-zynq/Kconfig b/arch/arm/mach-zynq/Kconfig
index cec749a..a4ce949 100644
--- a/arch/arm/mach-zynq/Kconfig
+++ b/arch/arm/mach-zynq/Kconfig
@@ -14,6 +14,8 @@ config ARCH_ZYNQ7000
 	bool "Zynq-7000"
 	select CPU_V7
 	select DRIVER_SERIAL_CADENCE
+	select CLKDEV_LOOKUP
+	select COMMON_CLK
 
 endchoice
 
diff --git a/arch/arm/mach-zynq/clk-zynq7000.c b/arch/arm/mach-zynq/clk-zynq7000.c
index 0d3c3a8..74f08ad 100644
--- a/arch/arm/mach-zynq/clk-zynq7000.c
+++ b/arch/arm/mach-zynq/clk-zynq7000.c
@@ -335,7 +335,7 @@ static struct clk *zynq_cpu_subclk(const char *name,
 	return &subclk->clk;
 }
 
-static int zynq_init_clks(void)
+static int zynq_clock_probe(struct device_d *dev)
 {
 	void __iomem *slcr_base = (void __iomem *) ZYNQ_SLCR_BASE;
 	unsigned long ps_clk_rate = 33333330;
@@ -365,9 +365,28 @@ static int zynq_init_clks(void)
 	clks[cpu_1x] = zynq_cpu_subclk("cpu_1x", CPU_SUBCLK_1X,
 					slcr_base + 0x120, slcr_base + 0x1C4);
 
-	clk_register_clkdev(clks[cpu_3x2x], NULL, "smp_twd0");
+	clk_register_clkdev(clks[cpu_3x2x], NULL, "arm_smp_twd");
 	clk_register_clkdev(clks[uart0], NULL, "zynq_serial0");
 	clk_register_clkdev(clks[uart1], NULL, "zynq_serial1");
 	return 0;
 }
-postcore_initcall(zynq_init_clks);
+
+static __maybe_unused struct of_device_id zynq_clock_dt_ids[] = {
+	{
+		.compatible = "xlnx,zynq-clock",
+	}, {
+		/* sentinel */
+	}
+};
+
+static struct driver_d zynq_clock_driver = {
+	.probe  = zynq_clock_probe,
+	.name   = "zynq-clock",
+	.of_compatible = DRV_OF_COMPAT(zynq_clock_dt_ids),
+};
+
+static int zynq_clock_init(void)
+{
+	return platform_driver_register(&zynq_clock_driver);
+}
+postcore_initcall(zynq_clock_init);
diff --git a/arch/arm/mach-zynq/zynq.c b/arch/arm/mach-zynq/zynq.c
index 2043655..33fc1ab 100644
--- a/arch/arm/mach-zynq/zynq.c
+++ b/arch/arm/mach-zynq/zynq.c
@@ -20,6 +20,7 @@
 
 static int zynq_init(void)
 {
+	add_generic_device("zynq-clock", 0, NULL, ZYNQ_SLCR_BASE, 0x4000, IORESOURCE_MEM, NULL);
 	return 0;
 }
 postcore_initcall(zynq_init);
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

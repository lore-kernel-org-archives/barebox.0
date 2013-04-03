Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UNIXw-0005iq-V1
 for barebox@lists.infradead.org; Wed, 03 Apr 2013 07:55:54 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Wed,  3 Apr 2013 09:55:44 +0200
Message-Id: <1364975745-1479-3-git-send-email-s.trumtrar@pengutronix.de>
In-Reply-To: <1364975745-1479-1-git-send-email-s.trumtrar@pengutronix.de>
References: <1364975745-1479-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 2/3] ARM: zynq: add support for ethernet
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Add support for the ethernet device 0 on the Zynq7000 SoC.
The GEM is compatible to/the same one as the macb on at91.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/mach-zynq/Kconfig                      | 1 +
 arch/arm/mach-zynq/clk-zynq7000.c               | 8 +++++++-
 arch/arm/mach-zynq/devices.c                    | 5 +++++
 arch/arm/mach-zynq/include/mach/devices.h       | 7 +++++++
 arch/arm/mach-zynq/include/mach/zynq7000-regs.h | 1 +
 5 files changed, 21 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-zynq/Kconfig b/arch/arm/mach-zynq/Kconfig
index 5bbd648..49a12f7 100644
--- a/arch/arm/mach-zynq/Kconfig
+++ b/arch/arm/mach-zynq/Kconfig
@@ -20,6 +20,7 @@ config ARCH_ZYNQ7000
 	select CLKDEV_LOOKUP
 	select COMMON_CLK
 	select ARM_SMP_TWD
+	select HAS_MACB
 
 endchoice
 
diff --git a/arch/arm/mach-zynq/clk-zynq7000.c b/arch/arm/mach-zynq/clk-zynq7000.c
index 3dedefa..b655b30 100644
--- a/arch/arm/mach-zynq/clk-zynq7000.c
+++ b/arch/arm/mach-zynq/clk-zynq7000.c
@@ -32,7 +32,7 @@
 enum zynq_clks {
 	dummy, ps_clk, arm_pll, ddr_pll, io_pll, uart_clk, uart0, uart1,
 	cpu_clk, cpu_6x4x, cpu_3x2x, cpu_2x, cpu_1x, arm_smp_twd,
-	clks_max
+	gem_clk, gem0, gem1, clks_max
 };
 
 enum zynq_pll_type {
@@ -377,6 +377,9 @@ static int zynq_clock_probe(struct device_d *dev)
 	clks[uart0] = clk_gate("uart0", "uart_clk", slcr_base + 0x154, 0);
 	clks[uart1] = clk_gate("uart1", "uart_clk", slcr_base + 0x154, 1);
 
+	clks[gem0] = clk_gate("gem0", "io_pll", slcr_base + 0x140, 0);
+	clks[gem1] = clk_gate("gem1", "io_pll", slcr_base + 0x144, 1);
+
 	clks[cpu_clk] = zynq_cpu_clk("cpu_clk", slcr_base + 0x120);
 
 	clks[cpu_6x4x] = zynq_cpu_subclk("cpu_6x4x", CPU_SUBCLK_6X4X,
@@ -391,9 +394,12 @@ static int zynq_clock_probe(struct device_d *dev)
 	clk_register_clkdev(clks[cpu_3x2x], NULL, "arm_smp_twd");
 	clk_register_clkdev(clks[uart0], NULL, "zynq_serial0");
 	clk_register_clkdev(clks[uart1], NULL, "zynq_serial1");
+	clk_register_clkdev(clks[gem0], NULL, "macb0");
+	clk_register_clkdev(clks[gem1], NULL, "macb1");
 
 	clkdev_add_physbase(clks[cpu_3x2x], CORTEXA9_SCU_TIMER_BASE_ADDR, NULL);
 	clkdev_add_physbase(clks[uart1], ZYNQ_UART1_BASE_ADDR, NULL);
+
 	return 0;
 }
 
diff --git a/arch/arm/mach-zynq/devices.c b/arch/arm/mach-zynq/devices.c
index 777bb87..55e9433 100644
--- a/arch/arm/mach-zynq/devices.c
+++ b/arch/arm/mach-zynq/devices.c
@@ -6,3 +6,8 @@ struct device_d *zynq_add_uart(resource_size_t base, int id)
 {
 	return add_generic_device("cadence-uart", id, NULL, base, 0x1000, IORESOURCE_MEM, NULL);
 }
+
+struct device_d *zynq_add_eth(resource_size_t base, int id, struct macb_platform_data *pdata)
+{
+	return add_generic_device("macb", id, NULL, base, 0x1000, IORESOURCE_MEM, pdata);
+}
diff --git a/arch/arm/mach-zynq/include/mach/devices.h b/arch/arm/mach-zynq/include/mach/devices.h
index 281d7c6..c9670b0 100644
--- a/arch/arm/mach-zynq/include/mach/devices.h
+++ b/arch/arm/mach-zynq/include/mach/devices.h
@@ -1,6 +1,8 @@
 #include <mach/zynq7000-regs.h>
+#include <platform_data/macb.h>
 
 struct device_d *zynq_add_uart(resource_size_t base, int id);
+struct device_d *zynq_add_eth(resource_size_t base, int id, struct macb_platform_data *pdata);
 
 static inline struct device_d *zynq_add_uart0(void)
 {
@@ -11,3 +13,8 @@ static inline struct device_d *zynq_add_uart1(void)
 {
 	return zynq_add_uart((resource_size_t)ZYNQ_UART1_BASE_ADDR, 1);
 }
+
+static inline struct device_d *zynq_add_eth0(struct macb_platform_data *pdata)
+{
+	return zynq_add_eth((resource_size_t)ZYNQ_GEM0_BASE_ADDR, 0, pdata);
+}
diff --git a/arch/arm/mach-zynq/include/mach/zynq7000-regs.h b/arch/arm/mach-zynq/include/mach/zynq7000-regs.h
index f5ccbb0..dd02f5b 100644
--- a/arch/arm/mach-zynq/include/mach/zynq7000-regs.h
+++ b/arch/arm/mach-zynq/include/mach/zynq7000-regs.h
@@ -22,6 +22,7 @@
 #define ZYNQ_CAN0_BASE_ADDR		0xE0008000
 #define ZYNQ_CAN1_BASE_ADDR		0xE0009000
 #define ZYNQ_GPIO_BASE_ADDR		0xE000A000
+#define ZYNQ_GEM0_BASE_ADDR		0xE000B000
 
 #define ZYNQ_SLCR_BASE			0xF8000000
 #define ZYNQ_SLCR_SCL			(ZYNQ_SLCR_BASE + 0x000)
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

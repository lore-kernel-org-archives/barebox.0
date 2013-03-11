Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UEypP-0003i4-Cx
 for barebox@lists.infradead.org; Mon, 11 Mar 2013 09:15:36 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon, 11 Mar 2013 10:15:06 +0100
Message-Id: <1362993306-19262-10-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 9/9] ARM: zynq: remove clocksource
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

With clkdev in place the generic arm_smp_twd can be used.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/configs/zedboard_defconfig |  4 +++
 arch/arm/mach-zynq/Kconfig          |  1 +
 arch/arm/mach-zynq/Makefile         |  2 +-
 arch/arm/mach-zynq/clk-zynq7000.c   |  3 +-
 arch/arm/mach-zynq/clocksource.c    | 58 -------------------------------------
 arch/arm/mach-zynq/zynq.c           |  2 ++
 6 files changed, 10 insertions(+), 60 deletions(-)
 delete mode 100644 arch/arm/mach-zynq/clocksource.c

diff --git a/arch/arm/configs/zedboard_defconfig b/arch/arm/configs/zedboard_defconfig
index a9d52dd..0d546ff 100644
--- a/arch/arm/configs/zedboard_defconfig
+++ b/arch/arm/configs/zedboard_defconfig
@@ -250,6 +250,7 @@ CONFIG_CMD_VERSION=y
 # CONFIG_CMD_MAGICVAR is not set
 CONFIG_CMD_DEVINFO=y
 # CONFIG_CMD_UNCOMPRESS is not set
+CONFIG_CMD_CLK=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 # CONFIG_NET_NFS is not set
@@ -295,6 +296,9 @@ CONFIG_DRIVER_SERIAL_CADENCE=y
 # CONFIG_USB is not set
 # CONFIG_VIDEO is not set
 # CONFIG_MCI is not set
+CONFIG_CLKDEV_LOOKUP=y
+CONFIG_COMMON_CLK=y
+CONFIG_ARM_SMP_TWD=y
 
 #
 # MFD
diff --git a/arch/arm/mach-zynq/Kconfig b/arch/arm/mach-zynq/Kconfig
index a4ce949..72c96b5 100644
--- a/arch/arm/mach-zynq/Kconfig
+++ b/arch/arm/mach-zynq/Kconfig
@@ -16,6 +16,7 @@ config ARCH_ZYNQ7000
 	select DRIVER_SERIAL_CADENCE
 	select CLKDEV_LOOKUP
 	select COMMON_CLK
+	select ARM_SMP_TWD
 
 endchoice
 
diff --git a/arch/arm/mach-zynq/Makefile b/arch/arm/mach-zynq/Makefile
index 5d632b8..459c957 100644
--- a/arch/arm/mach-zynq/Makefile
+++ b/arch/arm/mach-zynq/Makefile
@@ -1 +1 @@
-obj-y += zynq.o devices.o clocksource.o
+obj-y += zynq.o devices.o clk-zynq7000.o
diff --git a/arch/arm/mach-zynq/clk-zynq7000.c b/arch/arm/mach-zynq/clk-zynq7000.c
index 74f08ad..83ae230 100644
--- a/arch/arm/mach-zynq/clk-zynq7000.c
+++ b/arch/arm/mach-zynq/clk-zynq7000.c
@@ -30,7 +30,7 @@
 
 enum zynq_clks {
 	dummy, ps_clk, arm_pll, ddr_pll, io_pll, uart_clk, uart0, uart1,
-	cpu_clk, cpu_6x4x, cpu_3x2x, cpu_2x, cpu_1x, clks_max
+	cpu_clk, cpu_6x4x, cpu_3x2x, cpu_2x, cpu_1x, clks_max, arm_smp_twd
 };
 
 enum zynq_pll_type {
@@ -366,6 +366,7 @@ static int zynq_clock_probe(struct device_d *dev)
 					slcr_base + 0x120, slcr_base + 0x1C4);
 
 	clk_register_clkdev(clks[cpu_3x2x], NULL, "arm_smp_twd");
+	clkdev_add_physbase(clks[cpu_3x2x], CORTEXA9_SCU_TIMER_BASE_ADDR, NULL);
 	clk_register_clkdev(clks[uart0], NULL, "zynq_serial0");
 	clk_register_clkdev(clks[uart1], NULL, "zynq_serial1");
 	return 0;
diff --git a/arch/arm/mach-zynq/clocksource.c b/arch/arm/mach-zynq/clocksource.c
deleted file mode 100644
index 300a73e..0000000
--- a/arch/arm/mach-zynq/clocksource.c
+++ /dev/null
@@ -1,58 +0,0 @@
-/*
- * (C) Copyright 2012 Steffen Trumtrar <s.trumtrar@pengutronix.de>
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- */
-
-#include <clock.h>
-#include <common.h>
-#include <init.h>
-#include <io.h>
-#include <mach/zynq7000-regs.h>
-
-#define PRIVATE_TIMER_COUNTER	0x04
-#define PRIVATE_TIMER_CONTROL	0x08
-
-#define TIMER_CTRL_TIMER_EN	0x1
-#define TIMER_CTRL_AUTO_RELOAD	0x2
-#define TIMER_PRESCALER_SHIFT	0x8
-#define TIMER_PRESCALER		0xFF
-
-static void __iomem *timer_base = (void *) CORTEXA9_SCU_TIMER_BASE_ADDR;
-
-static uint64_t zynq_clocksource_read(void)
-{
-	return readl(timer_base + PRIVATE_TIMER_COUNTER);
-}
-
-static struct clocksource cs = {
-	.read	= zynq_clocksource_read,
-	.mask	= CLOCKSOURCE_MASK(16),
-	.shift	= TIMER_PRESCALER_SHIFT,
-};
-
-static int zynq_timer_init(void)
-{
-	cs.mult = clocksource_hz2mult(33333330, cs.shift);
-
-	/* set timer load register */
-	writel(0xFFFFFFFF, timer_base);
-
-	writel(TIMER_CTRL_TIMER_EN | TIMER_CTRL_AUTO_RELOAD |
-		(TIMER_PRESCALER << cs.shift),
-		timer_base + PRIVATE_TIMER_CONTROL);
-
-	init_clock(&cs);
-
-	return 0;
-}
-coredevice_initcall(zynq_timer_init);
diff --git a/arch/arm/mach-zynq/zynq.c b/arch/arm/mach-zynq/zynq.c
index 33fc1ab..d430d5f 100644
--- a/arch/arm/mach-zynq/zynq.c
+++ b/arch/arm/mach-zynq/zynq.c
@@ -21,6 +21,8 @@
 static int zynq_init(void)
 {
 	add_generic_device("zynq-clock", 0, NULL, ZYNQ_SLCR_BASE, 0x4000, IORESOURCE_MEM, NULL);
+	add_generic_device("smp_twd", 0, NULL, CORTEXA9_SCU_TIMER_BASE_ADDR,
+				0x4000, IORESOURCE_MEM, NULL);
 	return 0;
 }
 postcore_initcall(zynq_init);
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

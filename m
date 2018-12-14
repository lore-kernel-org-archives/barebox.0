Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gXoHo-00005u-Jt
 for barebox@lists.infradead.org; Fri, 14 Dec 2018 14:17:56 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 14 Dec 2018 15:17:21 +0100
Message-Id: <20181214141730.26181-15-s.hauer@pengutronix.de>
In-Reply-To: <20181214141730.26181-1-s.hauer@pengutronix.de>
References: <20181214141730.26181-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 14/23] ARM: omap: dmtimer: Turn into a driver
To: Barebox List <barebox@lists.infradead.org>

Turn OMAP dmtimer into a driver and move to drivers/clocksource.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-omap/Kconfig                    |  5 +-
 arch/arm/mach-omap/Makefile                   |  1 -
 arch/arm/mach-omap/am33xx_generic.c           |  5 +-
 drivers/clocksource/Kconfig                   |  3 ++
 drivers/clocksource/Makefile                  |  1 +
 .../clocksource/timer-ti-dm.c                 | 47 ++++++++++++++-----
 6 files changed, 44 insertions(+), 18 deletions(-)
 rename arch/arm/mach-omap/dmtimer.c => drivers/clocksource/timer-ti-dm.c (72%)

diff --git a/arch/arm/mach-omap/Kconfig b/arch/arm/mach-omap/Kconfig
index c451cf0d47..5ab01439f0 100644
--- a/arch/arm/mach-omap/Kconfig
+++ b/arch/arm/mach-omap/Kconfig
@@ -43,7 +43,7 @@ config ARCH_AM33XX
 	select CPU_V7
 	select GENERIC_GPIO
 	select OFTREE
-	select OMAP_CLOCK_SOURCE_DMTIMER
+	select CLOCKSOURCE_TI_DM
 	select ARM_USE_COMPRESSED_DTB
 	help
 	  Say Y here if you are using Texas Instrument's AM33xx based platform
@@ -52,9 +52,6 @@ config ARCH_AM33XX
 config OMAP_CLOCK_SOURCE_S32K
 	bool
 
-config OMAP_CLOCK_SOURCE_DMTIMER
-	bool
-
 config OMAP_GPMC
 	prompt "Support for GPMC configuration"
 	bool
diff --git a/arch/arm/mach-omap/Makefile b/arch/arm/mach-omap/Makefile
index a84e94ed7d..4ce8e10587 100644
--- a/arch/arm/mach-omap/Makefile
+++ b/arch/arm/mach-omap/Makefile
@@ -18,7 +18,6 @@
 obj-$(CONFIG_ARCH_OMAP) += syslib.o omap_devices.o omap_generic.o omap_fb.o
 pbl-$(CONFIG_ARCH_OMAP) += syslib.o
 obj-$(CONFIG_OMAP_CLOCK_SOURCE_S32K) += s32k_clksource.o
-obj-$(CONFIG_OMAP_CLOCK_SOURCE_DMTIMER) += dmtimer.o
 obj-$(CONFIG_ARCH_OMAP3) += omap3_generic.o auxcr.o
 pbl-$(CONFIG_ARCH_OMAP3) += omap3_generic.o auxcr.o
 obj-$(CONFIG_ARCH_OMAP4) += omap4_generic.o omap4_clock.o
diff --git a/arch/arm/mach-omap/am33xx_generic.c b/arch/arm/mach-omap/am33xx_generic.c
index 513746248e..c446431537 100644
--- a/arch/arm/mach-omap/am33xx_generic.c
+++ b/arch/arm/mach-omap/am33xx_generic.c
@@ -256,7 +256,10 @@ int am33xx_init(void)
 
 int am33xx_devices_init(void)
 {
-	return am33xx_gpio_init();
+	am33xx_gpio_init();
+	add_generic_device("omap-dmtimer", 0, NULL, AM33XX_DMTIMER2_BASE, 0x400,
+			   IORESOURCE_MEM, NULL);
+	return 0;
 }
 
 /* UART Defines */
diff --git a/drivers/clocksource/Kconfig b/drivers/clocksource/Kconfig
index 337a7a2e13..2228d44bde 100644
--- a/drivers/clocksource/Kconfig
+++ b/drivers/clocksource/Kconfig
@@ -88,4 +88,7 @@ config CLOCKSOURCE_DW_APB_TIMER
 	help
 	  Enables the support for the dw_apb timer.
 
+config CLOCKSOURCE_TI_DM
+	bool
+
 endmenu
diff --git a/drivers/clocksource/Makefile b/drivers/clocksource/Makefile
index ab78f0700d..3b154cbc2a 100644
--- a/drivers/clocksource/Makefile
+++ b/drivers/clocksource/Makefile
@@ -15,3 +15,4 @@ obj-$(CONFIG_CLOCKSOURCE_ARMV8_TIMER) += armv8-timer.o
 obj-$(CONFIG_CLOCKSOURCE_ARM_GLOBAL_TIMER) += arm_global_timer.o
 obj-$(CONFIG_CLOCKSOURCE_IMX_GPT) += timer-imx-gpt.o
 obj-$(CONFIG_CLOCKSOURCE_DW_APB_TIMER) += dw_apb_timer.o
+obj-$(CONFIG_CLOCKSOURCE_TI_DM) += timer-ti-dm.o
\ No newline at end of file
diff --git a/arch/arm/mach-omap/dmtimer.c b/drivers/clocksource/timer-ti-dm.c
similarity index 72%
rename from arch/arm/mach-omap/dmtimer.c
rename to drivers/clocksource/timer-ti-dm.c
index e223b8cc8f..635b860cf9 100644
--- a/arch/arm/mach-omap/dmtimer.c
+++ b/drivers/clocksource/timer-ti-dm.c
@@ -27,6 +27,7 @@
  *
  */
 
+#include <common.h>
 #include <clock.h>
 #include <init.h>
 #include <io.h>
@@ -55,7 +56,7 @@
 #define TSICR			0x54
 #define TCAR2			0x58
 
-static void *base = (void *)AM33XX_DMTIMER2_BASE;
+static void *base;
 
 /**
  * @brief Provide a simple counter read
@@ -73,17 +74,20 @@ static struct clocksource dmtimer_cs = {
 	.shift	= 10,
 };
 
-/**
- * @brief Initialize the Clock
- *
- * Enable dmtimer.
- *
- * @return result of @ref init_clock
- */
-static int dmtimer_init(void)
+static int omap_dmtimer_probe(struct device_d *dev)
 {
+	struct resource *iores;
 	u64 clk_speed;
 
+	/* one timer is enough */
+	if (base)
+		return 0;
+
+	iores = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(iores))
+		return PTR_ERR(iores);
+	base = IOMEM(iores->start);
+
 	clk_speed = am33xx_get_osc_clock();
 	clk_speed *= 1000;
 	dmtimer_cs.mult = clocksource_hz2mult(clk_speed, dmtimer_cs.shift);
@@ -91,8 +95,27 @@ static int dmtimer_init(void)
 	/* Enable counter */
 	writel(0x3, base + TCLR);
 
-	return init_clock(&dmtimer_cs);
+	init_clock(&dmtimer_cs);
+
+	return 0;
 }
 
-/* Run me at boot time */
-core_initcall(dmtimer_init);
+static __maybe_unused struct of_device_id omap_dmtimer_dt_ids[] = {
+	{
+		.compatible = "ti,am335x-timer",
+	}, {
+		/* sentinel */
+	}
+};
+
+static struct driver_d omap_dmtimer_driver = {
+	.name = "omap-dmtimer",
+	.probe = omap_dmtimer_probe,
+	.of_compatible = DRV_OF_COMPAT(omap_dmtimer_dt_ids),
+};
+
+static int omap_dmtimer_init(void)
+{
+	return platform_driver_register(&omap_dmtimer_driver);
+}
+postcore_initcall(omap_dmtimer_init);
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

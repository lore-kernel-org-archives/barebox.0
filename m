Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gXoHt-0000AU-Ju
 for barebox@lists.infradead.org; Fri, 14 Dec 2018 14:18:02 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 14 Dec 2018 15:17:22 +0100
Message-Id: <20181214141730.26181-16-s.hauer@pengutronix.de>
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
Subject: [PATCH 15/23] ARM: omap: 32ktimer: Turn into a driver
To: Barebox List <barebox@lists.infradead.org>

Turn OMAP 32KHz timer into a driver and move to drivers/clocksource.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-omap/Kconfig                    |  8 +---
 arch/arm/mach-omap/Makefile                   |  1 -
 arch/arm/mach-omap/omap3_generic.c            |  5 ++-
 arch/arm/mach-omap/omap4_generic.c            |  5 ++-
 drivers/clocksource/Kconfig                   |  3 ++
 drivers/clocksource/Makefile                  |  3 +-
 .../clocksource/timer-ti-32k.c                | 39 ++++++++++++++-----
 7 files changed, 45 insertions(+), 19 deletions(-)
 rename arch/arm/mach-omap/s32k_clksource.c => drivers/clocksource/timer-ti-32k.c (73%)

diff --git a/arch/arm/mach-omap/Kconfig b/arch/arm/mach-omap/Kconfig
index 5ab01439f0..34d37dcd7e 100644
--- a/arch/arm/mach-omap/Kconfig
+++ b/arch/arm/mach-omap/Kconfig
@@ -26,7 +26,7 @@ config ARCH_OMAP3
 	bool
 	select CPU_V7
 	select GENERIC_GPIO
-	select OMAP_CLOCK_SOURCE_S32K
+	select CLOCKSOURCE_TI_32K
 	help
 	  Say Y here if you are using Texas Instrument's OMAP343x based platform
 
@@ -34,7 +34,7 @@ config ARCH_OMAP4
 	bool
 	select CPU_V7
 	select GENERIC_GPIO
-	select OMAP_CLOCK_SOURCE_S32K
+	select CLOCKSOURCE_TI_32K
 	help
 	  Say Y here if you are using Texas Instrument's OMAP4 based platform
 
@@ -48,10 +48,6 @@ config ARCH_AM33XX
 	help
 	  Say Y here if you are using Texas Instrument's AM33xx based platform
 
-# Blind enable all possible clocks.. think twice before you do this.
-config OMAP_CLOCK_SOURCE_S32K
-	bool
-
 config OMAP_GPMC
 	prompt "Support for GPMC configuration"
 	bool
diff --git a/arch/arm/mach-omap/Makefile b/arch/arm/mach-omap/Makefile
index 4ce8e10587..e6132342e1 100644
--- a/arch/arm/mach-omap/Makefile
+++ b/arch/arm/mach-omap/Makefile
@@ -17,7 +17,6 @@
 #
 obj-$(CONFIG_ARCH_OMAP) += syslib.o omap_devices.o omap_generic.o omap_fb.o
 pbl-$(CONFIG_ARCH_OMAP) += syslib.o
-obj-$(CONFIG_OMAP_CLOCK_SOURCE_S32K) += s32k_clksource.o
 obj-$(CONFIG_ARCH_OMAP3) += omap3_generic.o auxcr.o
 pbl-$(CONFIG_ARCH_OMAP3) += omap3_generic.o auxcr.o
 obj-$(CONFIG_ARCH_OMAP4) += omap4_generic.o omap4_clock.o
diff --git a/arch/arm/mach-omap/omap3_generic.c b/arch/arm/mach-omap/omap3_generic.c
index 02aa65d08b..3f91441d2e 100644
--- a/arch/arm/mach-omap/omap3_generic.c
+++ b/arch/arm/mach-omap/omap3_generic.c
@@ -533,6 +533,9 @@ static int omap3_gpio_init(void)
 
 int omap3_devices_init(void)
 {
-	return omap3_gpio_init();
+	omap3_gpio_init();
+	add_generic_device("omap-32ktimer", 0, NULL, OMAP3_32KTIMER_BASE, 0x400,
+			   IORESOURCE_MEM, NULL);
+	return 0;
 }
 #endif
diff --git a/arch/arm/mach-omap/omap4_generic.c b/arch/arm/mach-omap/omap4_generic.c
index a3f370df8f..c7b6e513a2 100644
--- a/arch/arm/mach-omap/omap4_generic.c
+++ b/arch/arm/mach-omap/omap4_generic.c
@@ -684,5 +684,8 @@ static int omap4_gpio_init(void)
 
 int omap4_devices_init(void)
 {
-	return omap4_gpio_init();
+	omap4_gpio_init();
+	add_generic_device("omap-32ktimer", 0, NULL, OMAP44XX_32KTIMER_BASE, 0x400,
+			   IORESOURCE_MEM, NULL);
+	return 0;
 }
diff --git a/drivers/clocksource/Kconfig b/drivers/clocksource/Kconfig
index 2228d44bde..7b04663d2e 100644
--- a/drivers/clocksource/Kconfig
+++ b/drivers/clocksource/Kconfig
@@ -91,4 +91,7 @@ config CLOCKSOURCE_DW_APB_TIMER
 config CLOCKSOURCE_TI_DM
 	bool
 
+config CLOCKSOURCE_TI_32K
+	bool
+
 endmenu
diff --git a/drivers/clocksource/Makefile b/drivers/clocksource/Makefile
index 3b154cbc2a..f8ff83d60a 100644
--- a/drivers/clocksource/Makefile
+++ b/drivers/clocksource/Makefile
@@ -15,4 +15,5 @@ obj-$(CONFIG_CLOCKSOURCE_ARMV8_TIMER) += armv8-timer.o
 obj-$(CONFIG_CLOCKSOURCE_ARM_GLOBAL_TIMER) += arm_global_timer.o
 obj-$(CONFIG_CLOCKSOURCE_IMX_GPT) += timer-imx-gpt.o
 obj-$(CONFIG_CLOCKSOURCE_DW_APB_TIMER) += dw_apb_timer.o
-obj-$(CONFIG_CLOCKSOURCE_TI_DM) += timer-ti-dm.o
\ No newline at end of file
+obj-$(CONFIG_CLOCKSOURCE_TI_DM) += timer-ti-dm.o
+obj-$(CONFIG_CLOCKSOURCE_TI_32K) += timer-ti-32k.o
\ No newline at end of file
diff --git a/arch/arm/mach-omap/s32k_clksource.c b/drivers/clocksource/timer-ti-32k.c
similarity index 73%
rename from arch/arm/mach-omap/s32k_clksource.c
rename to drivers/clocksource/timer-ti-32k.c
index 7def8b1807..f93ab5bcff 100644
--- a/arch/arm/mach-omap/s32k_clksource.c
+++ b/drivers/clocksource/timer-ti-32k.c
@@ -67,19 +67,40 @@ static struct clocksource s32k_cs = {
  *
  * @return result of @ref init_clock
  */
-static int s32k_clocksource_init(void)
+static int omap_32ktimer_probe(struct device_d *dev)
 {
-	if (IS_ENABLED(CONFIG_ARCH_OMAP3))
-		timerbase = (void *)OMAP3_32KTIMER_BASE;
-	else if (IS_ENABLED(CONFIG_ARCH_OMAP4))
-		timerbase = (void *)OMAP44XX_32KTIMER_BASE;
-	else
-		BUG();
+	struct resource *iores;
+
+	/* one timer is enough */
+	if (timerbase)
+		return 0;
+
+	iores = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(iores))
+		return PTR_ERR(iores);
+	timerbase = IOMEM(iores->start);
 
 	s32k_cs.mult = clocksource_hz2mult(S32K_FREQUENCY, s32k_cs.shift);
 
 	return init_clock(&s32k_cs);
 }
 
-/* Run me at boot time */
-core_initcall(s32k_clocksource_init);
+static __maybe_unused struct of_device_id omap_32ktimer_dt_ids[] = {
+	{
+		.compatible = "ti,omap-counter32k",
+	}, {
+		/* sentinel */
+	}
+};
+
+static struct driver_d omap_32ktimer_driver = {
+	.name = "omap-32ktimer",
+	.probe = omap_32ktimer_probe,
+	.of_compatible = DRV_OF_COMPAT(omap_32ktimer_dt_ids),
+};
+
+static int omap_32ktimer_init(void)
+{
+	return platform_driver_register(&omap_32ktimer_driver);
+}
+postcore_initcall(omap_32ktimer_init);
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

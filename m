Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1Bx2-0001LO-Hl
 for barebox@lists.infradead.org; Mon, 10 Feb 2020 16:30:26 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 10 Feb 2020 17:30:20 +0100
Message-Id: <20200210163020.31008-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH] clocksource: rename driver for ARMv8 Timer to ARM architected
 timer
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

The driver matches against both "arm,armv7-timer" and "arm,armv8-timer"
compatibles, thus rename it to better reflect that it's not only ARMv8
specific.

Only functional change intended is name changes. The symbol is default
y, so the rename shouldn't cause it to get lost with olddefconfig.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/clocksource/Kconfig                   |  2 +-
 drivers/clocksource/Makefile                  |  4 ++--
 ...{armv8-timer.c => arm_architected_timer.c} | 19 +++++++++----------
 3 files changed, 12 insertions(+), 13 deletions(-)
 rename drivers/clocksource/{armv8-timer.c => arm_architected_timer.c} (70%)

diff --git a/drivers/clocksource/Kconfig b/drivers/clocksource/Kconfig
index 43c5bfc9736a..39ddd159f9ad 100644
--- a/drivers/clocksource/Kconfig
+++ b/drivers/clocksource/Kconfig
@@ -70,7 +70,7 @@ config CLOCKSOURCE_ROCKCHIP
 config CLOCKSOURCE_ATMEL_PIT
        bool
 
-config CLOCKSOURCE_ARMV8_TIMER
+config CLOCKSOURCE_ARM_ARCHITECTED_TIMER
 	bool
 	default y
 	depends on ARM && (CPU_64v8 || CPU_V7)
diff --git a/drivers/clocksource/Makefile b/drivers/clocksource/Makefile
index 8dbf91f323f3..cba6344bbb77 100644
--- a/drivers/clocksource/Makefile
+++ b/drivers/clocksource/Makefile
@@ -11,9 +11,9 @@ obj-$(CONFIG_CLOCKSOURCE_ORION)   += orion.o
 obj-$(CONFIG_CLOCKSOURCE_UEMD)    += uemd.o
 obj-$(CONFIG_CLOCKSOURCE_ROCKCHIP)+= rk_timer.o
 obj-$(CONFIG_CLOCKSOURCE_ATMEL_PIT) += timer-atmel-pit.o
-obj-$(CONFIG_CLOCKSOURCE_ARMV8_TIMER) += armv8-timer.o
+obj-$(CONFIG_CLOCKSOURCE_ARM_ARCHITECTED_TIMER) += arm_architected_timer.o
 ifneq ($(CONFIG_CPU_V8),y)
-CFLAGS_armv8-timer.o := -march=armv7-a
+CFLAGS_arm_architected_timer.o := -march=armv7-a
 endif
 obj-$(CONFIG_CLOCKSOURCE_ARM_GLOBAL_TIMER) += arm_global_timer.o
 obj-$(CONFIG_CLOCKSOURCE_IMX_GPT) += timer-imx-gpt.o
diff --git a/drivers/clocksource/armv8-timer.c b/drivers/clocksource/arm_architected_timer.c
similarity index 70%
rename from drivers/clocksource/armv8-timer.c
rename to drivers/clocksource/arm_architected_timer.c
index 3095f8cfc405..3ca7dfd17d62 100644
--- a/drivers/clocksource/armv8-timer.c
+++ b/drivers/clocksource/arm_architected_timer.c
@@ -20,34 +20,33 @@
 #include <io.h>
 #include <asm/system.h>
 
-static uint64_t armv8_clocksource_read(void)
+static uint64_t arm_arch_clocksource_read(void)
 {
 	return get_cntpct();
 }
 
 static struct clocksource cs = {
-	.read	= armv8_clocksource_read,
+	.read	= arm_arch_clocksource_read,
 	.mask	= CLOCKSOURCE_MASK(64),
 	.shift	= 0,
 };
 
-static int armv8_timer_probe(struct device_d *dev)
+static int arm_arch_timer_probe(struct device_d *dev)
 {
 	cs.mult = clocksource_hz2mult(get_cntfrq(), cs.shift);
 
 	return init_clock(&cs);
 }
 
-static struct of_device_id armv8_timer_dt_ids[] = {
+static struct of_device_id arm_arch_timer_dt_ids[] = {
 	{ .compatible = "arm,armv7-timer", },
 	{ .compatible = "arm,armv8-timer", },
 	{ }
 };
 
-static struct driver_d armv8_timer_driver = {
-	.name = "armv8-timer",
-	.probe = armv8_timer_probe,
-	.of_compatible = DRV_OF_COMPAT(armv8_timer_dt_ids),
+static struct driver_d arm_arch_timer_driver = {
+	.name = "arm-architected-timer",
+	.probe = arm_arch_timer_probe,
+	.of_compatible = DRV_OF_COMPAT(arm_arch_timer_dt_ids),
 };
-postcore_platform_driver(armv8_timer_driver);
-
+postcore_platform_driver(arm_arch_timer_driver);
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

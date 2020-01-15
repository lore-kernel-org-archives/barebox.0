Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irgcq-0001wp-BA
 for barebox@lists.infradead.org; Wed, 15 Jan 2020 11:14:20 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 15 Jan 2020 12:14:09 +0100
Message-Id: <20200115111409.24129-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH] Revert "clocksource: ARMv8 timer can only be built on ARMv8"
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

This reverts commit 33ec8cb5872617fa95aea08d9f7f2b684d95b6de,
so that barebox can once again match against "arm,armv7-timer"
compatibles. The reverted commit restricted the timer to CPU_V8,
because in i.MX multi-image configuration with MACH_SCB9328 set,
we can have both CPU_32v7 and CPU_32v4T in the same build.

To avoid this issue properly, force use of -march=armv7-a for
non-CONFIG_CPU_V8 targets. This is acceptable as we don't expect
non-ARMv7 device trees to have the architected arm,armv7-timer.

Suggested-by: Lucas Stach <l.stach@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/clocksource/Kconfig  | 2 +-
 drivers/clocksource/Makefile | 5 ++++-
 2 files changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/clocksource/Kconfig b/drivers/clocksource/Kconfig
index 44a6cef6fbae..43c5bfc9736a 100644
--- a/drivers/clocksource/Kconfig
+++ b/drivers/clocksource/Kconfig
@@ -73,7 +73,7 @@ config CLOCKSOURCE_ATMEL_PIT
 config CLOCKSOURCE_ARMV8_TIMER
 	bool
 	default y
-	depends on ARM && CPU_V8
+	depends on ARM && (CPU_64v8 || CPU_V7)
 
 config CLOCKSOURCE_ARM_GLOBAL_TIMER
 	bool
diff --git a/drivers/clocksource/Makefile b/drivers/clocksource/Makefile
index f8ff83d60a46..8dbf91f323f3 100644
--- a/drivers/clocksource/Makefile
+++ b/drivers/clocksource/Makefile
@@ -12,8 +12,11 @@ obj-$(CONFIG_CLOCKSOURCE_UEMD)    += uemd.o
 obj-$(CONFIG_CLOCKSOURCE_ROCKCHIP)+= rk_timer.o
 obj-$(CONFIG_CLOCKSOURCE_ATMEL_PIT) += timer-atmel-pit.o
 obj-$(CONFIG_CLOCKSOURCE_ARMV8_TIMER) += armv8-timer.o
+ifneq ($(CONFIG_CPU_V8),y)
+CFLAGS_armv8-timer.o := -march=armv7-a
+endif
 obj-$(CONFIG_CLOCKSOURCE_ARM_GLOBAL_TIMER) += arm_global_timer.o
 obj-$(CONFIG_CLOCKSOURCE_IMX_GPT) += timer-imx-gpt.o
 obj-$(CONFIG_CLOCKSOURCE_DW_APB_TIMER) += dw_apb_timer.o
 obj-$(CONFIG_CLOCKSOURCE_TI_DM) += timer-ti-dm.o
-obj-$(CONFIG_CLOCKSOURCE_TI_32K) += timer-ti-32k.o
\ No newline at end of file
+obj-$(CONFIG_CLOCKSOURCE_TI_32K) += timer-ti-32k.o
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

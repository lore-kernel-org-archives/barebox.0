Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x244.google.com ([2607:f8b0:400e:c00::244])
 by casper.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cljmY-0005Wu-7w
 for barebox@lists.infradead.org; Wed, 08 Mar 2017 22:10:07 +0000
Received: by mail-pf0-x244.google.com with SMTP id j5so5060494pfb.3
 for <barebox@lists.infradead.org>; Wed, 08 Mar 2017 14:09:45 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  8 Mar 2017 14:09:09 -0800
Message-Id: <20170308220909.4560-21-andrew.smirnov@gmail.com>
In-Reply-To: <20170308220909.4560-1-andrew.smirnov@gmail.com>
References: <20170308220909.4560-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 20/20] clocksource: at91: Move to 'drivers/clocksource'
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Move PIT driver code to 'drivers/clocsource' and accomodate it by
adjusting Kconfig variables. Rename the file to 'timer-atmel-pit.c' to
re-align the driver with code in Linux kernel.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-at91/Kconfig                                         | 7 ++-----
 arch/arm/mach-at91/Makefile                                        | 1 -
 drivers/clocksource/Kconfig                                        | 4 ++++
 drivers/clocksource/Makefile                                       | 1 +
 .../at91sam926x_time.c => drivers/clocksource/timer-atmel-pit.c    | 0
 5 files changed, 7 insertions(+), 6 deletions(-)
 rename arch/arm/mach-at91/at91sam926x_time.c => drivers/clocksource/timer-atmel-pit.c (100%)

diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index c45fc4d..2d4721a 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -15,20 +15,17 @@ config HAVE_AT91_LOWLEVEL_INIT
 config AT91SAM9_SMC
 	bool
 
-config AT91SAM9_TIMER
-	bool
-
 config SOC_AT91SAM9
 	bool
 	select CPU_ARM926T
 	select AT91SAM9_SMC
-	select AT91SAM9_TIMER
+	select CLOCKSOURCE_ATMEL_PIT
 
 config SOC_SAMA5
 	bool
 	select CPU_V7
 	select AT91SAM9_SMC
-	select AT91SAM9_TIMER
+	select CLOCKSOURCE_ATMEL_PIT
 
 config ARCH_TEXT_BASE
 	hex
diff --git a/arch/arm/mach-at91/Makefile b/arch/arm/mach-at91/Makefile
index c2991b0..1f63b09 100644
--- a/arch/arm/mach-at91/Makefile
+++ b/arch/arm/mach-at91/Makefile
@@ -19,7 +19,6 @@ obj-$(CONFIG_AT91SAM9_RESET) += at91sam9_reset.o
 obj-$(CONFIG_AT91SAM9G45_RESET) += at91sam9g45_reset.o
 
 obj-$(CONFIG_AT91SAM9_SMC) += sam9_smc.o
-obj-$(CONFIG_AT91SAM9_TIMER) += at91sam926x_time.o
 
 # CPU-specific support
 obj-$(CONFIG_ARCH_AT91RM9200)	+= at91rm9200.o at91rm9200_time.o at91rm9200_devices.o
diff --git a/drivers/clocksource/Kconfig b/drivers/clocksource/Kconfig
index f1ab554..f3c3255 100644
--- a/drivers/clocksource/Kconfig
+++ b/drivers/clocksource/Kconfig
@@ -53,3 +53,7 @@ config CLOCKSOURCE_UEMD
 config CLOCKSOURCE_ROCKCHIP
 	bool
 	depends on ARCH_ROCKCHIP
+
+config CLOCKSOURCE_ATMEL_PIT
+       bool
+       depends on SOC_AT91SAM9 || SOC_SAMA5
diff --git a/drivers/clocksource/Makefile b/drivers/clocksource/Makefile
index 39982ff..0564d8f 100644
--- a/drivers/clocksource/Makefile
+++ b/drivers/clocksource/Makefile
@@ -8,3 +8,4 @@ obj-$(CONFIG_CLOCKSOURCE_NOMADIK) += nomadik.o
 obj-$(CONFIG_CLOCKSOURCE_ORION)   += orion.o
 obj-$(CONFIG_CLOCKSOURCE_UEMD)    += uemd.o
 obj-$(CONFIG_CLOCKSOURCE_ROCKCHIP)+= rk_timer.o
+obj-$(CONFIG_CLOCKSOURCE_ATMEL_PIT) += timer-atmel-pit.o
diff --git a/arch/arm/mach-at91/at91sam926x_time.c b/drivers/clocksource/timer-atmel-pit.c
similarity index 100%
rename from arch/arm/mach-at91/at91sam926x_time.c
rename to drivers/clocksource/timer-atmel-pit.c
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

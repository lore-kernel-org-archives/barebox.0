Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp3.mail.ru ([94.100.176.131])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U5ain-0007AS-HT
 for barebox@lists.infradead.org; Wed, 13 Feb 2013 11:41:55 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Wed, 13 Feb 2013 15:41:37 +0400
Message-Id: <1360755704-24105-2-git-send-email-shc_work@mail.ru>
In-Reply-To: <1360755704-24105-1-git-send-email-shc_work@mail.ru>
References: <1360755704-24105-1-git-send-email-shc_work@mail.ru>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v2 2/9] ARM: clps711x: Move basic lowlevel initialization in
 common CLPS711X location
To: barebox@lists.infradead.org

One lowlevel initialization will be used on any CLPS711X-target,
so move it in the common location.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/boards/clep7212/lowlevel.c            |   48 +-----------------
 arch/arm/mach-clps711x/Makefile                |    3 +-
 arch/arm/mach-clps711x/include/mach/clps711x.h |    2 +
 arch/arm/mach-clps711x/lowlevel.c              |   66 ++++++++++++++++++++++++
 4 files changed, 71 insertions(+), 48 deletions(-)
 create mode 100644 arch/arm/mach-clps711x/lowlevel.c

diff --git a/arch/arm/boards/clep7212/lowlevel.c b/arch/arm/boards/clep7212/lowlevel.c
index fcee5bf..b7d6d1d 100644
--- a/arch/arm/boards/clep7212/lowlevel.c
+++ b/arch/arm/boards/clep7212/lowlevel.c
@@ -9,60 +9,14 @@
 
 #include <common.h>
 #include <init.h>
-#include <sizes.h>
 
-#include <asm/io.h>
-#include <asm/barebox-arm.h>
 #include <asm/barebox-arm-head.h>
 
 #include <mach/clps711x.h>
 
 void __naked __bare_init barebox_arm_reset_vector(void)
 {
-	const u32 pllmult = 50;
-	u32 cpu, bus;
-
 	arm_cpu_lowlevel_init();
 
-	/* Setup base clocking, Enable SDQM pins  */
-	writel(SYSCON3_CLKCTL0 | SYSCON3_CLKCTL1, SYSCON3);
-	asm("nop");
-
-	/* Check if we running from external 13 MHz clock */
-	if (!(readl(SYSFLG2) & SYSFLG2_CKMODE)) {
-		/* Setup PLL */
-		writel(pllmult << 24, PLLW);
-		asm("nop");
-
-		/* Check for old CPUs without PLL */
-		if ((readl(PLLR) >> 24) != pllmult)
-			cpu = 73728000;
-		else
-			cpu = pllmult * 3686400;
-
-		if (cpu >= 36864000)
-			bus = cpu /2;
-		else
-			bus = 36864000 / 2;
-	} else
-		bus = 13000000;
-
-	/* CLKEN select, SDRAM width=32 */
-	writel(SYSCON2_CLKENSL, SYSCON2);
-
-	/* Setup SDRAM params (64MB, 16Bit*2, CAS=3) */
-	writel(SDCONF_CASLAT_3 | SDCONF_SIZE_256 | SDCONF_WIDTH_16 |
-	       SDCONF_CLKCTL | SDCONF_ACTIVE, SDCONF);
-
-	/* Setup Refresh Rate (64ms 8K Blocks) */
-	writel((64 * bus) / (8192 * 1000), SDRFPR);
-
-	/* Disable UART, IrDa, LCD */
-	writel(0, SYSCON1);
-	/* Disable PWM */
-	writew(0, PMPCON);
-	/* Disable LED flasher */
-	writew(0, LEDFLSH);
-
-	barebox_arm_entry(SDRAM0_BASE, SZ_8M, 0);
+	clps711x_barebox_entry();
 }
diff --git a/arch/arm/mach-clps711x/Makefile b/arch/arm/mach-clps711x/Makefile
index 41012bc..69a4a3c 100644
--- a/arch/arm/mach-clps711x/Makefile
+++ b/arch/arm/mach-clps711x/Makefile
@@ -1 +1,2 @@
-obj-y += clock.o devices.o reset.o
+obj-y += clock.o devices.o lowlevel.o reset.o
+pbl-y += lowlevel.o
diff --git a/arch/arm/mach-clps711x/include/mach/clps711x.h b/arch/arm/mach-clps711x/include/mach/clps711x.h
index 048992a..5b8fe82 100644
--- a/arch/arm/mach-clps711x/include/mach/clps711x.h
+++ b/arch/arm/mach-clps711x/include/mach/clps711x.h
@@ -281,4 +281,6 @@
 #define MEMCFG_WAITSTATE_2_0	(14 << 2)
 #define MEMCFG_WAITSTATE_1_0	(15 << 2)
 
+void clps711x_barebox_entry(void);
+
 #endif
diff --git a/arch/arm/mach-clps711x/lowlevel.c b/arch/arm/mach-clps711x/lowlevel.c
new file mode 100644
index 0000000..cd3216a
--- /dev/null
+++ b/arch/arm/mach-clps711x/lowlevel.c
@@ -0,0 +1,66 @@
+/*
+ * Copyright (C) 2012 Alexander Shiyan <shc_work@mail.ru>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ */
+
+#include <common.h>
+#include <init.h>
+#include <sizes.h>
+
+#include <asm/io.h>
+#include <asm/barebox-arm.h>
+#include <asm/barebox-arm-head.h>
+
+#include <mach/clps711x.h>
+
+void __naked __bare_init clps711x_barebox_entry(void)
+{
+	const u32 pllmult = 50;
+	u32 cpu, bus;
+
+	/* Setup base clocking, Enable SDQM pins  */
+	writel(SYSCON3_CLKCTL0 | SYSCON3_CLKCTL1, SYSCON3);
+	asm("nop");
+
+	/* Check if we running from external 13 MHz clock */
+	if (!(readl(SYSFLG2) & SYSFLG2_CKMODE)) {
+		/* Setup PLL */
+		writel(pllmult << 24, PLLW);
+		asm("nop");
+
+		/* Check for old CPUs without PLL */
+		if ((readl(PLLR) >> 24) != pllmult)
+			cpu = 73728000;
+		else
+			cpu = pllmult * 3686400;
+
+		if (cpu >= 36864000)
+			bus = cpu /2;
+		else
+			bus = 36864000 / 2;
+	} else
+		bus = 13000000;
+
+	/* CLKEN select, SDRAM width=32 */
+	writel(SYSCON2_CLKENSL, SYSCON2);
+
+	/* Setup SDRAM params (64MB, 16Bit*2, CAS=3) */
+	writel(SDCONF_CASLAT_3 | SDCONF_SIZE_256 | SDCONF_WIDTH_16 |
+	       SDCONF_CLKCTL | SDCONF_ACTIVE, SDCONF);
+
+	/* Setup Refresh Rate (64ms 8K Blocks) */
+	writel((64 * bus) / (8192 * 1000), SDRFPR);
+
+	/* Disable UART, IrDa, LCD */
+	writel(0, SYSCON1);
+	/* Disable PWM */
+	writew(0, PMPCON);
+	/* Disable LED flasher */
+	writew(0, LEDFLSH);
+
+	barebox_arm_entry(SDRAM0_BASE, SZ_8M, 0);
+}
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

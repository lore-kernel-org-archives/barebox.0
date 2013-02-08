Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp30.i.mail.ru ([94.100.177.90])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U3kmx-0000U3-UW
 for barebox@lists.infradead.org; Fri, 08 Feb 2013 10:02:37 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Fri,  8 Feb 2013 14:02:13 +0400
Message-Id: <1360317743-25975-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 01/11] ARM: clps711x: Move lowlevel initialization in common
 CLPS711X location
To: barebox@lists.infradead.org

One lowlevel initialization will be used on any CLPS711X-target,
so move it in the common location.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/boards/clep7212/Makefile   |    3 +-
 arch/arm/boards/clep7212/lowlevel.c |   57 -----------------------------------
 arch/arm/mach-clps711x/Makefile     |    3 +-
 arch/arm/mach-clps711x/lowlevel.c   |   57 +++++++++++++++++++++++++++++++++++
 4 files changed, 60 insertions(+), 60 deletions(-)
 delete mode 100644 arch/arm/boards/clep7212/lowlevel.c
 create mode 100644 arch/arm/mach-clps711x/lowlevel.c

diff --git a/arch/arm/boards/clep7212/Makefile b/arch/arm/boards/clep7212/Makefile
index a63aeae..676e867 100644
--- a/arch/arm/boards/clep7212/Makefile
+++ b/arch/arm/boards/clep7212/Makefile
@@ -1,2 +1 @@
-obj-y += lowlevel.o clep7212.o
-pbl-y += lowlevel.o
+obj-y += clep7212.o
diff --git a/arch/arm/boards/clep7212/lowlevel.c b/arch/arm/boards/clep7212/lowlevel.c
deleted file mode 100644
index b4d1bf1..0000000
--- a/arch/arm/boards/clep7212/lowlevel.c
+++ /dev/null
@@ -1,57 +0,0 @@
-/*
- * Copyright (C) 2012 Alexander Shiyan <shc_work@mail.ru>
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- */
-
-#include <common.h>
-#include <init.h>
-#include <sizes.h>
-
-#include <asm/io.h>
-#include <asm/barebox-arm.h>
-#include <asm/barebox-arm-head.h>
-
-#include <mach/clps711x.h>
-
-#define MAIN_CLOCK		3686400
-#define CPU_SPEED		92160000
-#define BUS_SPEED		(CPU_SPEED / 2)
-
-#define PLL_VALUE		(((CPU_SPEED * 2) / MAIN_CLOCK) << 24)
-#define SDRAM_REFRESH_RATE	(64 * (BUS_SPEED / (8192 * 1000)))
-
-void __naked __bare_init barebox_arm_reset_vector(void)
-{
-	u32 tmp;
-
-	arm_cpu_lowlevel_init();
-
-	/* Setup base clock */
-	writel(SYSCON3_CLKCTL0 | SYSCON3_CLKCTL1, SYSCON3);
-	asm("nop");
-
-	/* Setup PLL */
-	writel(PLL_VALUE, PLLW);
-	asm("nop");
-
-	/* CLKEN select, SDRAM width=32 */
-	writel(SYSCON2_CLKENSL, SYSCON2);
-
-	/* Enable SDQM pins */
-	tmp = readl(SYSCON3);
-	tmp &= ~SYSCON3_ENPD67;
-	writel(tmp, SYSCON3);
-
-	/* Setup Refresh Rate (64ms 8K Blocks) */
-	writel(SDRAM_REFRESH_RATE, SDRFPR);
-
-	/* Setup SDRAM (32MB, 16Bit*2, CAS=3) */
-	writel(SDCONF_CASLAT_3 | SDCONF_SIZE_256 | SDCONF_WIDTH_16 |
-	       SDCONF_CLKCTL | SDCONF_ACTIVE, SDCONF);
-
-	barebox_arm_entry(SDRAM0_BASE, SZ_32M, 0);
-}
diff --git a/arch/arm/mach-clps711x/Makefile b/arch/arm/mach-clps711x/Makefile
index 41012bc..69a4a3c 100644
--- a/arch/arm/mach-clps711x/Makefile
+++ b/arch/arm/mach-clps711x/Makefile
@@ -1 +1,2 @@
-obj-y += clock.o devices.o reset.o
+obj-y += clock.o devices.o lowlevel.o reset.o
+pbl-y += lowlevel.o
diff --git a/arch/arm/mach-clps711x/lowlevel.c b/arch/arm/mach-clps711x/lowlevel.c
new file mode 100644
index 0000000..b4d1bf1
--- /dev/null
+++ b/arch/arm/mach-clps711x/lowlevel.c
@@ -0,0 +1,57 @@
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
+#define MAIN_CLOCK		3686400
+#define CPU_SPEED		92160000
+#define BUS_SPEED		(CPU_SPEED / 2)
+
+#define PLL_VALUE		(((CPU_SPEED * 2) / MAIN_CLOCK) << 24)
+#define SDRAM_REFRESH_RATE	(64 * (BUS_SPEED / (8192 * 1000)))
+
+void __naked __bare_init barebox_arm_reset_vector(void)
+{
+	u32 tmp;
+
+	arm_cpu_lowlevel_init();
+
+	/* Setup base clock */
+	writel(SYSCON3_CLKCTL0 | SYSCON3_CLKCTL1, SYSCON3);
+	asm("nop");
+
+	/* Setup PLL */
+	writel(PLL_VALUE, PLLW);
+	asm("nop");
+
+	/* CLKEN select, SDRAM width=32 */
+	writel(SYSCON2_CLKENSL, SYSCON2);
+
+	/* Enable SDQM pins */
+	tmp = readl(SYSCON3);
+	tmp &= ~SYSCON3_ENPD67;
+	writel(tmp, SYSCON3);
+
+	/* Setup Refresh Rate (64ms 8K Blocks) */
+	writel(SDRAM_REFRESH_RATE, SDRFPR);
+
+	/* Setup SDRAM (32MB, 16Bit*2, CAS=3) */
+	writel(SDCONF_CASLAT_3 | SDCONF_SIZE_256 | SDCONF_WIDTH_16 |
+	       SDCONF_CLKCTL | SDCONF_ACTIVE, SDCONF);
+
+	barebox_arm_entry(SDRAM0_BASE, SZ_32M, 0);
+}
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

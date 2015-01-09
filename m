Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp01.smtpout.orange.fr ([80.12.242.123]
 helo=smtp.smtpout.orange.fr)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Y9U8U-0007fB-Q3
 for barebox@lists.infradead.org; Fri, 09 Jan 2015 07:37:36 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
Date: Fri,  9 Jan 2015 08:36:41 +0100
Message-Id: <1420789003-17409-1-git-send-email-robert.jarzmik@free.fr>
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
Subject: [PATCH v2 1/3] ARM: pxa: move pxa2xx functionality to SoC specific
 file
To: barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>

Move reset_source detection and poweroff to pxa2xx.c, to prepare the
incoming pxa3xx reset_source detection.

Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>
---
 arch/arm/mach-pxa/Makefile       |  3 +-
 arch/arm/mach-pxa/common.c       | 13 +--------
 arch/arm/mach-pxa/pxa2xx.c       | 59 ++++++++++++++++++++++++++++++++++++++++
 arch/arm/mach-pxa/reset_source.c | 41 ----------------------------
 4 files changed, 61 insertions(+), 55 deletions(-)
 create mode 100644 arch/arm/mach-pxa/pxa2xx.c
 delete mode 100644 arch/arm/mach-pxa/reset_source.c

diff --git a/arch/arm/mach-pxa/Makefile b/arch/arm/mach-pxa/Makefile
index 6ddb6e5..a09c060 100644
--- a/arch/arm/mach-pxa/Makefile
+++ b/arch/arm/mach-pxa/Makefile
@@ -4,6 +4,5 @@ obj-y += gpio.o
 obj-y += devices.o
 obj-y += sleep.o
 
-obj-$(CONFIG_ARCH_PXA2XX) += mfp-pxa2xx.o
+obj-$(CONFIG_ARCH_PXA2XX) += mfp-pxa2xx.o pxa2xx.o
 obj-$(CONFIG_ARCH_PXA27X) += speed-pxa27x.o
-obj-$(CONFIG_RESET_SOURCE) += reset_source.o
diff --git a/arch/arm/mach-pxa/common.c b/arch/arm/mach-pxa/common.c
index 0c114ed..1ed7931 100644
--- a/arch/arm/mach-pxa/common.c
+++ b/arch/arm/mach-pxa/common.c
@@ -27,7 +27,7 @@
 #define OWER_WME	(1 << 0)	/* Watch-dog Match Enable */
 #define OSSR_M3		(1 << 3)	/* Match status channel 3 */
 
-extern void pxa_suspend(int mode);
+extern void pxa_clear_reset_source(void);
 
 void reset_cpu(ulong addr)
 {
@@ -41,14 +41,3 @@ void reset_cpu(ulong addr)
 
 	while (1);
 }
-
-void __noreturn poweroff()
-{
-	shutdown_barebox();
-
-	/* Clear last reset source */
-	RCSR = RCSR_GPR | RCSR_SMR | RCSR_WDR | RCSR_HWR;
-
-	pxa_suspend(PWRMODE_DEEPSLEEP);
-	unreachable();
-}
diff --git a/arch/arm/mach-pxa/pxa2xx.c b/arch/arm/mach-pxa/pxa2xx.c
new file mode 100644
index 0000000..b712b38
--- /dev/null
+++ b/arch/arm/mach-pxa/pxa2xx.c
@@ -0,0 +1,59 @@
+/*
+ * (C) Copyright 2014 Robert Jarzmik <robert.jarzmik@free.fr>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+
+#include <common.h>
+#include <init.h>
+#include <reset_source.h>
+#include <mach/hardware.h>
+#include <mach/pxa-regs.h>
+
+extern void pxa_suspend(int mode);
+
+static int pxa_detect_reset_source(void)
+{
+	u32 reg = RCSR;
+
+	/*
+	 * Order is important, as many bits can be set together
+	 */
+	if (reg & RCSR_GPR)
+		reset_source_set(RESET_RST);
+	else if (reg & RCSR_WDR)
+		reset_source_set(RESET_WDG);
+	else if (reg & RCSR_HWR)
+		reset_source_set(RESET_POR);
+	else if (reg & RCSR_SMR)
+		reset_source_set(RESET_WKE);
+	else
+		reset_source_set(RESET_UKWN);
+
+	return 0;
+}
+
+void pxa_clear_reset_source(void)
+{
+	RCSR = RCSR_GPR | RCSR_SMR | RCSR_WDR | RCSR_HWR;
+}
+
+device_initcall(pxa_detect_reset_source);
+
+void __noreturn poweroff(void)
+{
+	shutdown_barebox();
+
+	/* Clear last reset source */
+	pxa_clear_reset_source();
+	pxa_suspend(PWRMODE_DEEPSLEEP);
+	unreachable();
+}
diff --git a/arch/arm/mach-pxa/reset_source.c b/arch/arm/mach-pxa/reset_source.c
deleted file mode 100644
index a90584b..0000000
--- a/arch/arm/mach-pxa/reset_source.c
+++ /dev/null
@@ -1,41 +0,0 @@
-/*
- * (C) Copyright 2014 Robert Jarzmik <robert.jarzmik@free.fr>
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
- */
-
-#include <common.h>
-#include <init.h>
-#include <reset_source.h>
-#include <mach/pxa-regs.h>
-
-static int pxa_detect_reset_source(void)
-{
-	u32 reg = RCSR;
-
-	/*
-	 * Order is important, as many bits can be set together
-	 */
-	if (reg & RCSR_GPR)
-		reset_source_set(RESET_RST);
-	else if (reg & RCSR_WDR)
-		reset_source_set(RESET_WDG);
-	else if (reg & RCSR_HWR)
-		reset_source_set(RESET_POR);
-	else if (reg & RCSR_SMR)
-		reset_source_set(RESET_WKE);
-	else
-		reset_source_set(RESET_UKWN);
-
-	return 0;
-}
-
-device_initcall(pxa_detect_reset_source);
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

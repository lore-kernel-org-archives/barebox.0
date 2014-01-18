Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp3-g21.free.fr ([2a01:e0c:1:1599::12])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W4UOL-0003RK-LX
 for barebox@lists.infradead.org; Sat, 18 Jan 2014 11:48:47 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
Date: Sat, 18 Jan 2014 12:48:05 +0100
Message-Id: <1390045689-23127-2-git-send-email-robert.jarzmik@free.fr>
In-Reply-To: <1390045689-23127-1-git-send-email-robert.jarzmik@free.fr>
References: <1390045689-23127-1-git-send-email-robert.jarzmik@free.fr>
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
Subject: [PATCH] ARM: pxa: add reset source detection
To: barebox@lists.infradead.org

Use PXA register RCSR to detect which is the reset cause.  When
triggering a reset, clear the former reset source first.

Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>
---
 arch/arm/mach-pxa/Makefile       |    1 +
 arch/arm/mach-pxa/common.c       |    4 ++++
 arch/arm/mach-pxa/reset_source.c |   41 ++++++++++++++++++++++++++++++++++++++
 3 files changed, 46 insertions(+)
 create mode 100644 arch/arm/mach-pxa/reset_source.c

diff --git a/arch/arm/mach-pxa/Makefile b/arch/arm/mach-pxa/Makefile
index 6a02a54..ddc042e 100644
--- a/arch/arm/mach-pxa/Makefile
+++ b/arch/arm/mach-pxa/Makefile
@@ -5,3 +5,4 @@ obj-y += devices.o
 
 obj-$(CONFIG_ARCH_PXA2XX) += mfp-pxa2xx.o
 obj-$(CONFIG_ARCH_PXA27X) += speed-pxa27x.o
+obj-$(CONFIG_RESET_SOURCE) += reset_source.o
diff --git a/arch/arm/mach-pxa/common.c b/arch/arm/mach-pxa/common.c
index 82e81b7..69ec0a7 100644
--- a/arch/arm/mach-pxa/common.c
+++ b/arch/arm/mach-pxa/common.c
@@ -16,6 +16,7 @@
  */
 
 #include <common.h>
+#include <mach/pxa-regs.h>
 #include <asm/io.h>
 
 #define OSMR3	0x40A0000C
@@ -28,6 +29,9 @@
 
 void reset_cpu(ulong addr)
 {
+	/* Clear last reset source */
+	RCSR = RCSR_GPR | RCSR_SMR | RCSR_WDR | RCSR_HWR;
+
 	/* Initialize the watchdog and let it fire */
 	writel(OWER_WME, OWER);
 	writel(OSSR_M3, OSSR);
diff --git a/arch/arm/mach-pxa/reset_source.c b/arch/arm/mach-pxa/reset_source.c
new file mode 100644
index 0000000..2b650c6
--- /dev/null
+++ b/arch/arm/mach-pxa/reset_source.c
@@ -0,0 +1,41 @@
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
+#include <mach/pxa-regs.h>
+
+static int pxa_detect_reset_source(void)
+{
+	u32 reg = RCSR;
+
+	/*
+	 * Order is important, as many bits can be set together
+	 */
+	if (reg & RCSR_GPR)
+		set_reset_source(RESET_RST);
+	else if (reg & RCSR_WDR)
+		set_reset_source(RESET_WDG);
+	else if (reg & RCSR_HWR)
+		set_reset_source(RESET_POR);
+	else if (reg & RCSR_SMR)
+		set_reset_source(RESET_WKE);
+	else
+		set_reset_source(RESET_UKWN);
+
+	return 0;
+}
+
+device_initcall(pxa_detect_reset_source);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

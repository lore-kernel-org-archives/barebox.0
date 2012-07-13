Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SpYzp-00030J-Qn
 for barebox@lists.infradead.org; Fri, 13 Jul 2012 06:04:59 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1SpYzi-00073h-Cx
 for barebox@lists.infradead.org; Fri, 13 Jul 2012 08:04:50 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <jbe@pengutronix.de>) id 1SpYzi-0000Pd-Af
 for barebox@lists.infradead.org; Fri, 13 Jul 2012 08:04:50 +0200
From: Juergen Beisert <jbe@pengutronix.de>
Date: Fri, 13 Jul 2012 08:04:48 +0200
Message-Id: <1342159489-1474-4-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1342159489-1474-1-git-send-email-jbe@pengutronix.de>
References: <1342159489-1474-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 3/4] ARM/i.MX: add support to detect the reset source
To: barebox@lists.infradead.org

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 arch/arm/mach-imx/Makefile       |    1 +
 arch/arm/mach-imx/reset_source.c |   72 ++++++++++++++++++++++++++++++++++++++
 2 files changed, 73 insertions(+)
 create mode 100644 arch/arm/mach-imx/reset_source.c

diff --git a/arch/arm/mach-imx/Makefile b/arch/arm/mach-imx/Makefile
index 89a8946..d6380ba 100644
--- a/arch/arm/mach-imx/Makefile
+++ b/arch/arm/mach-imx/Makefile
@@ -1,4 +1,5 @@
 obj-y += clocksource.o gpio.o
+obj-$(CONFIG_GLOBALVAR) += reset_source.o
 obj-$(CONFIG_ARCH_IMX1)  += speed-imx1.o  imx1.o  iomux-v1.o
 obj-$(CONFIG_ARCH_IMX25) += speed-imx25.o imx25.o iomux-v3.o
 obj-$(CONFIG_ARCH_IMX21) += speed-imx21.o imx21.o iomux-v1.o
diff --git a/arch/arm/mach-imx/reset_source.c b/arch/arm/mach-imx/reset_source.c
new file mode 100644
index 0000000..e7b2a90
--- /dev/null
+++ b/arch/arm/mach-imx/reset_source.c
@@ -0,0 +1,72 @@
+/*
+ * (C) Copyright 2012 Juergen Beisert - <kernel@pengutronix.de>
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
+#include <io.h>
+#include <reset_source.h>
+#include <mach/imx-regs.h>
+
+#ifdef CONFIG_ARCH_IMX1
+#  define IMX_RESET_SRC_WDOG (1 << 1)
+#  define IMX_RESET_SRC_HRDRESET (1 << 0)
+/* let the compiler sort out useless code on this arch */
+#  define IMX_RESET_SRC_WARMSTART 0
+#  define IMX_RESET_SRC_COLDSTART 0
+#else
+  /* WRSR checked for i.MX25, i.MX27, i.MX31, i.MX35 and i.MX51 */
+# define WDOG_WRSR 0x04
+  /* valid for i.MX25, i.MX27, i.MX31, i.MX35, i.MX51 */
+#  define IMX_RESET_SRC_WARMSTART (1 << 0)
+  /* valid for i.MX25, i.MX27, i.MX31, i.MX35, i.MX51 */
+#  define IMX_RESET_SRC_WDOG (1 << 1)
+  /* valid for i.MX27, i.MX31, always '0' on i.MX25, i.MX35, i.MX51 */
+#  define IMX_RESET_SRC_HRDRESET (1 << 3)
+  /* valid for i.MX27, i.MX31, always '0' on i.MX25, i.MX35, i.MX51 */
+#  define IMX_RESET_SRC_COLDSTART (1 << 4)
+#endif
+
+static unsigned read_detection_register(void)
+{
+#ifdef CONFIG_ARCH_IMX1
+	return readl(IMX_SYSCTRL_BASE);
+#else
+	return readw(IMX_WDT_BASE + WDOG_WRSR);
+#endif
+}
+
+static int imx_detect_reset_source(void)
+{
+	unsigned reg = read_detection_register();
+
+	if (reg & IMX_RESET_SRC_COLDSTART) {
+		set_reset_source(RESET_POR);
+		return 0;
+	}
+
+	if (reg & (IMX_RESET_SRC_HRDRESET | IMX_RESET_SRC_WARMSTART)) {
+		set_reset_source(RESET_RST);
+		return 0;
+	}
+
+	if (reg & IMX_RESET_SRC_WDOG) {
+		set_reset_source(RESET_WDG);
+		return 0;
+	}
+
+	/* else keep the default 'unknown' state */
+	return 0;
+}
+
+device_initcall(imx_detect_reset_source);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

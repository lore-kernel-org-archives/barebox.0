Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1ShdV1-0000Hw-7H
 for barebox@lists.infradead.org; Thu, 21 Jun 2012 09:16:24 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1ShdUx-0006lF-K0
 for barebox@lists.infradead.org; Thu, 21 Jun 2012 11:16:19 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <jbe@pengutronix.de>) id 1ShdUx-0000xk-If
 for barebox@lists.infradead.org; Thu, 21 Jun 2012 11:16:19 +0200
From: Juergen Beisert <jbe@pengutronix.de>
Date: Thu, 21 Jun 2012 11:16:18 +0200
Message-Id: <1340270178-2615-3-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1340270178-2615-1-git-send-email-jbe@pengutronix.de>
References: <1340270178-2615-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 2/2] Add two architectures which can detect the reset source
To: barebox@lists.infradead.org

These are examples how to provide the reset source. Not really tested on
the corresponding hardware yet.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 arch/arm/mach-imx/Makefile           |    1 +
 arch/arm/mach-imx/reset_source.c     |   59 ++++++++++++++++++++++++++++++++++
 arch/arm/mach-samsung/Makefile       |    1 +
 arch/arm/mach-samsung/reset_source.c |   56 ++++++++++++++++++++++++++++++++
 4 files changed, 117 insertions(+)
 create mode 100644 arch/arm/mach-imx/reset_source.c
 create mode 100644 arch/arm/mach-samsung/reset_source.c

diff --git a/arch/arm/mach-imx/Makefile b/arch/arm/mach-imx/Makefile
index 03e2421..7da8cec 100644
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
index 0000000..79e5337
--- /dev/null
+++ b/arch/arm/mach-imx/reset_source.c
@@ -0,0 +1,59 @@
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
+# define WDOG_WRSR 0x08
+#  define WDOG_WRSR_TOUT (1 << 0)
+/* let the compiler sort out useless code on this arch */
+#  define WDOG_WRSR_SFTW 0
+#  define WDOG_WRSR_EXT 0
+#  define WDOG_WRSR_PWR 0
+#else
+# define WDOG_WRSR 0x04
+#  define WDOG_WRSR_SFTW (1 << 0)
+#  define WDOG_WRSR_TOUT (1 << 1)
+#  define WDOG_WRSR_EXT (1 << 2)
+#  define WDOG_WRSR_PWR (1 << 3)
+#endif
+
+static int imx_detect_reset_source(void)
+{
+	u16 reg = readw(IMX_WDT_BASE + WDOG_WRSR);
+
+	if (reg & WDOG_WRSR_PWR) {
+		set_reset_source(RESET_POR);
+		return 0;
+	}
+
+	if (reg & (WDOG_WRSR_EXT | WDOG_WRSR_SFTW)) {
+		set_reset_source(RESET_RST);
+		return 0;
+	}
+
+	if (reg & WDOG_WRSR_TOUT) {
+		set_reset_source(RESET_WDG);
+		return 0;
+	}
+
+	/* else keep the default 'unknown' state */
+	return 0;
+}
+
+device_initcall(imx_detect_reset_source);
diff --git a/arch/arm/mach-samsung/Makefile b/arch/arm/mach-samsung/Makefile
index d7344c8..74799c5 100644
--- a/arch/arm/mach-samsung/Makefile
+++ b/arch/arm/mach-samsung/Makefile
@@ -1,4 +1,5 @@
 obj-y += s3c-timer.o generic.o
+obj-$(CONFIG_GLOBALVAR) += reset_source.o
 obj-lowlevel-$(CONFIG_ARCH_S3C24xx) += lowlevel-s3c24x0.o
 obj-lowlevel-$(CONFIG_ARCH_S5PCxx) += lowlevel-s5pcxx.o
 obj-$(CONFIG_ARCH_S3C24xx) += gpio-s3c24x0.o s3c24xx-clocks.o mem-s3c24x0.o
diff --git a/arch/arm/mach-samsung/reset_source.c b/arch/arm/mach-samsung/reset_source.c
new file mode 100644
index 0000000..2456e3f
--- /dev/null
+++ b/arch/arm/mach-samsung/reset_source.c
@@ -0,0 +1,56 @@
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
+#include <mach/s3c-iomap.h>
+
+/* S3C2440 relevant */
+#define S3C2440_GSTATUS2 0xb4
+# define S3C2440_GSTATUS2_PWRST (1 << 0)
+# define S3C2440_GSTATUS2_SLEEPRST (1 << 1)
+# define S3C2440_GSTATUS2_WDRST (1 << 2)
+
+static int s3c_detect_reset_source(void)
+{
+	u32 reg = readl(S3C_GPIO_BASE + S3C2440_GSTATUS2);
+
+	if (reg & S3C2440_GSTATUS2_PWRST) {
+		set_reset_source(RESET_POR);
+		writel(S3C2440_GSTATUS2_PWRST,
+					S3C_GPIO_BASE + S3C2440_GSTATUS2);
+		return 0;
+	}
+
+	if (reg & S3C2440_GSTATUS2_SLEEPRST) {
+		set_reset_source(RESET_WKE);
+		writel(S3C2440_GSTATUS2_SLEEPRST,
+					S3C_GPIO_BASE + S3C2440_GSTATUS2);
+		return 0;
+	}
+
+	if (reg & S3C2440_GSTATUS2_WDRST) {
+		set_reset_source(RESET_WDG);
+		writel(S3C2440_GSTATUS2_WDRST,
+					S3C_GPIO_BASE + S3C2440_GSTATUS2);
+		return 0;
+	}
+
+	/* else keep the default 'unknown' state */
+	return 0;
+}
+
+device_initcall(s3c_detect_reset_source);
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

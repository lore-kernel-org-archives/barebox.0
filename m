Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SpJjm-0005Ml-OT
 for barebox@lists.infradead.org; Thu, 12 Jul 2012 13:47:35 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1SpJjg-0001Nm-PG
 for barebox@lists.infradead.org; Thu, 12 Jul 2012 15:47:16 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <jbe@pengutronix.de>) id 1SpJjg-0003jM-Ms
 for barebox@lists.infradead.org; Thu, 12 Jul 2012 15:47:16 +0200
From: Juergen Beisert <jbe@pengutronix.de>
Date: Thu, 12 Jul 2012 15:47:13 +0200
Message-Id: <1342100835-9870-3-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1342100835-9870-1-git-send-email-jbe@pengutronix.de>
References: <1342100835-9870-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 2/4] ARM/Samsung: add support to detect the reset source
To: barebox@lists.infradead.org

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 arch/arm/mach-samsung/Makefile       |    1 +
 arch/arm/mach-samsung/reset_source.c |   56 ++++++++++++++++++++++++++++++++++
 2 files changed, 57 insertions(+)
 create mode 100644 arch/arm/mach-samsung/reset_source.c

diff --git a/arch/arm/mach-samsung/Makefile b/arch/arm/mach-samsung/Makefile
index 6020587..5ac8e3c 100644
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
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

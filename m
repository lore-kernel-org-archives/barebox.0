Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SRfFL-0006Ai-3O
 for barebox@lists.infradead.org; Tue, 08 May 2012 07:54:12 +0000
From: Wolfram Sang <w.sang@pengutronix.de>
Date: Tue,  8 May 2012 09:53:56 +0200
Message-Id: <1336463641-27219-4-git-send-email-w.sang@pengutronix.de>
In-Reply-To: <1336463641-27219-1-git-send-email-w.sang@pengutronix.de>
References: <1336463641-27219-1-git-send-email-w.sang@pengutronix.de>
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
Subject: [PATCH 3/8] arm: mxs: refactor access to power domain
To: barebox@lists.infradead.org

usbphy initializaion needs to access the power supply and has this
embedded. Refactor to a seperate power.c, since we need other accesses
in the future.

Signed-off-by: Wolfram Sang <w.sang@pengutronix.de>
---
 arch/arm/mach-mxs/Makefile             |    2 +-
 arch/arm/mach-mxs/include/mach/power.h |    6 +++++
 arch/arm/mach-mxs/power.c              |   46 ++++++++++++++++++++++++++++++++
 arch/arm/mach-mxs/usb.c                |   30 ++-------------------
 4 files changed, 55 insertions(+), 29 deletions(-)
 create mode 100644 arch/arm/mach-mxs/include/mach/power.h
 create mode 100644 arch/arm/mach-mxs/power.c

diff --git a/arch/arm/mach-mxs/Makefile b/arch/arm/mach-mxs/Makefile
index 172d928..37b5b8a 100644
--- a/arch/arm/mach-mxs/Makefile
+++ b/arch/arm/mach-mxs/Makefile
@@ -1,4 +1,4 @@
-obj-y += imx.o iomux-imx.o reset-imx.o
+obj-y += imx.o iomux-imx.o reset-imx.o power.o
 obj-$(CONFIG_DRIVER_VIDEO_STM) += imx_lcd_clk.o
 obj-$(CONFIG_ARCH_IMX23) += speed-imx23.o clocksource-imx23.o usb.o
 obj-$(CONFIG_ARCH_IMX28) += speed-imx28.o clocksource-imx28.o
diff --git a/arch/arm/mach-mxs/include/mach/power.h b/arch/arm/mach-mxs/include/mach/power.h
new file mode 100644
index 0000000..859a717
--- /dev/null
+++ b/arch/arm/mach-mxs/include/mach/power.h
@@ -0,0 +1,6 @@
+#ifndef __MACH_POWER_H
+#define __MACH_POWER_H
+
+void imx_power_prepare_usbphy(void);
+
+#endif /* __MACH_POWER_H */
diff --git a/arch/arm/mach-mxs/power.c b/arch/arm/mach-mxs/power.c
new file mode 100644
index 0000000..4645f52
--- /dev/null
+++ b/arch/arm/mach-mxs/power.c
@@ -0,0 +1,46 @@
+/*
+ * i.MX28 power related functions
+ *
+ * Copyright 2011 Sascha Hauer, Pengutronix <s.hauer@pengutronix.de>
+ * Copyright (C) 2012 Wolfram Sang, Pengutronix <w.sang@pengutronix.de>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ */
+#include <common.h>
+#include <io.h>
+#include <mach/imx-regs.h>
+
+#define POWER_CTRL			(IMX_POWER_BASE + 0x0)
+#define POWER_CTRL_CLKGATE		0x40000000
+
+#define POWER_STS			(IMX_POWER_BASE + 0xc0)
+#define POWER_STS_VBUSVALID		0x00000002
+#define POWER_STS_BVALID		0x00000004
+#define POWER_STS_AVALID		0x00000008
+
+#define POWER_DEBUG			(IMX_POWER_BASE + 0x110)
+#define POWER_DEBUG_BVALIDPIOLOCK	0x00000002
+#define POWER_DEBUG_AVALIDPIOLOCK	0x00000004
+#define POWER_DEBUG_VBUSVALIDPIOLOCK	0x00000008
+
+void imx_power_prepare_usbphy(void)
+{
+	u32 reg;
+
+	/*
+	 * Set these bits so that we can force the OTG bits high
+	 * so the ARC core operates properly
+	 */
+	writel(POWER_CTRL_CLKGATE, POWER_CTRL + BIT_CLR);
+
+	writel(POWER_DEBUG_VBUSVALIDPIOLOCK |
+			   POWER_DEBUG_AVALIDPIOLOCK |
+			   POWER_DEBUG_BVALIDPIOLOCK, POWER_DEBUG + BIT_SET);
+
+	reg = readl(POWER_STS);
+	reg |= POWER_STS_BVALID | POWER_STS_AVALID | POWER_STS_VBUSVALID;
+	writel(reg, POWER_STS);
+}
diff --git a/arch/arm/mach-mxs/usb.c b/arch/arm/mach-mxs/usb.c
index b7a9376..aca0e7d 100644
--- a/arch/arm/mach-mxs/usb.c
+++ b/arch/arm/mach-mxs/usb.c
@@ -20,19 +20,7 @@
 #include <common.h>
 #include <io.h>
 #include <mach/imx-regs.h>
-
-#define POWER_CTRL			(IMX_POWER_BASE + 0x0)
-#define POWER_CTRL_CLKGATE		0x40000000
-
-#define POWER_STS			(IMX_POWER_BASE + 0xc0)
-#define POWER_STS_VBUSVALID		0x00000002
-#define POWER_STS_BVALID		0x00000004
-#define POWER_STS_AVALID		0x00000008
-
-#define POWER_DEBUG			(IMX_POWER_BASE + 0x110)
-#define POWER_DEBUG_BVALIDPIOLOCK	0x00000002
-#define POWER_DEBUG_AVALIDPIOLOCK	0x00000004
-#define POWER_DEBUG_VBUSVALIDPIOLOCK	0x00000008
+#include <mach/power.h>
 
 #define USBPHY_PWD			(IMX_USBPHY_BASE + 0x0)
 
@@ -51,21 +39,7 @@
 
 int imx_usb_phy_enable(void)
 {
-	u32 reg;
-
-	/*
-	 * Set these bits so that we can force the OTG bits high
-	 * so the ARC core operates properly
-	 */
-	writel(POWER_CTRL_CLKGATE, POWER_CTRL + CLR);
-
-	writel(POWER_DEBUG_VBUSVALIDPIOLOCK |
-			   POWER_DEBUG_AVALIDPIOLOCK |
-			   POWER_DEBUG_BVALIDPIOLOCK, POWER_DEBUG + SET);
-
-	reg = readl(POWER_STS);
-	reg |= POWER_STS_BVALID | POWER_STS_AVALID | POWER_STS_VBUSVALID;
-	writel(reg, POWER_STS);
+	imx_power_prepare_usbphy();
 
 	/* Reset USBPHY module */
 	writel(USBPHY_CTRL_SFTRST, USBPHY_CTRL + SET);
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

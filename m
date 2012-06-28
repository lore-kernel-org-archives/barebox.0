Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SkDBI-00077c-25
 for barebox@lists.infradead.org; Thu, 28 Jun 2012 11:46:41 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 28 Jun 2012 13:46:36 +0200
Message-Id: <1340883997-2107-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] ARM i.MX23 usb: move to SoC specific functions
To: barebox@lists.infradead.org

Makes space for a i.MX28 specific USBPHY implementation.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/chumby_falconwing/falconwing.c |    2 +-
 arch/arm/mach-mxs/Makefile                     |    2 +-
 arch/arm/mach-mxs/include/mach/usb.h           |    2 +-
 arch/arm/mach-mxs/usb-imx23.c                  |   91 +++++++++++++++++++++++
 arch/arm/mach-mxs/usb.c                        |   92 ------------------------
 5 files changed, 94 insertions(+), 95 deletions(-)
 create mode 100644 arch/arm/mach-mxs/usb-imx23.c
 delete mode 100644 arch/arm/mach-mxs/usb.c

diff --git a/arch/arm/boards/chumby_falconwing/falconwing.c b/arch/arm/boards/chumby_falconwing/falconwing.c
index 38f28be..b40713d 100644
--- a/arch/arm/boards/chumby_falconwing/falconwing.c
+++ b/arch/arm/boards/chumby_falconwing/falconwing.c
@@ -316,7 +316,7 @@ static void falconwing_init_usb(void)
 	/* bring USB hub out of reset */
 	gpio_direction_output(GPIO_USB_HUB_RESET, 1);
 
-	imx_usb_phy_enable();
+	imx23_usb_phy_enable();
 
 	add_generic_usb_ehci_device(-1, IMX_USB_BASE, NULL);
 }
diff --git a/arch/arm/mach-mxs/Makefile b/arch/arm/mach-mxs/Makefile
index 172d928..1ba00f1 100644
--- a/arch/arm/mach-mxs/Makefile
+++ b/arch/arm/mach-mxs/Makefile
@@ -1,5 +1,5 @@
 obj-y += imx.o iomux-imx.o reset-imx.o
 obj-$(CONFIG_DRIVER_VIDEO_STM) += imx_lcd_clk.o
-obj-$(CONFIG_ARCH_IMX23) += speed-imx23.o clocksource-imx23.o usb.o
+obj-$(CONFIG_ARCH_IMX23) += speed-imx23.o clocksource-imx23.o usb-imx23.o
 obj-$(CONFIG_ARCH_IMX28) += speed-imx28.o clocksource-imx28.o
 obj-$(CONFIG_MXS_OCOTP) += ocotp.o
diff --git a/arch/arm/mach-mxs/include/mach/usb.h b/arch/arm/mach-mxs/include/mach/usb.h
index af7d885..b238499 100644
--- a/arch/arm/mach-mxs/include/mach/usb.h
+++ b/arch/arm/mach-mxs/include/mach/usb.h
@@ -1,6 +1,6 @@
 #ifndef __MACH_USB_H
 #define __MACH_USB_H
 
-int imx_usb_phy_enable(void);
+int imx23_usb_phy_enable(void);
 
 #endif /* __MACH_USB_H */
diff --git a/arch/arm/mach-mxs/usb-imx23.c b/arch/arm/mach-mxs/usb-imx23.c
new file mode 100644
index 0000000..4748efc
--- /dev/null
+++ b/arch/arm/mach-mxs/usb-imx23.c
@@ -0,0 +1,91 @@
+/*
+ * i.MX23 USBPHY setup
+ *
+ * Copyright 2011 Sascha Hauer, Pengutronix <s.hauer@pengutronix.de>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
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
+#define USBPHY_PWD			(IMX_USBPHY_BASE + 0x0)
+
+#define USBPHY_CTRL			(IMX_USBPHY_BASE + 0x30)
+#define USBPHY_CTRL_SFTRST		0x80000000
+#define USBPHY_CTRL_CLKGATE		0x40000000
+
+#define CLK_PLLCTRL0			(IMX_CCM_BASE + 0x0)
+#define PLLCTRL0_EN_USB_CLKS 0x00040000
+
+#define DIGCTRL_CTRL			(IMX_DIGCTL_BASE + 0x0)
+#define DIGCTL_CTRL_USB_CLKGATE		0x00000004
+
+#define SET	0x4
+#define CLR	0x8
+
+int imx23_usb_phy_enable(void)
+{
+	u32 reg;
+
+	/*
+	 * Set these bits so that we can force the OTG bits high
+	 * so the ARC core operates properly
+	 */
+	writel(POWER_CTRL_CLKGATE, POWER_CTRL + CLR);
+
+	writel(POWER_DEBUG_VBUSVALIDPIOLOCK |
+			   POWER_DEBUG_AVALIDPIOLOCK |
+			   POWER_DEBUG_BVALIDPIOLOCK, POWER_DEBUG + SET);
+
+	reg = readl(POWER_STS);
+	reg |= POWER_STS_BVALID | POWER_STS_AVALID | POWER_STS_VBUSVALID;
+	writel(reg, POWER_STS);
+
+	/* Reset USBPHY module */
+	writel(USBPHY_CTRL_SFTRST, USBPHY_CTRL + SET);
+	udelay(10);
+
+	/* Remove CLKGATE and SFTRST */
+	writel(USBPHY_CTRL_CLKGATE | USBPHY_CTRL_SFTRST, USBPHY_CTRL + CLR);
+
+	/* Turn on the USB clocks */
+	writel(PLLCTRL0_EN_USB_CLKS, CLK_PLLCTRL0 + SET);
+	writel(DIGCTL_CTRL_USB_CLKGATE, DIGCTRL_CTRL + CLR);
+
+	/* Power up the PHY */
+	writel(0, USBPHY_PWD);
+
+	/*
+	 * Set precharge bit to cure overshoot problems at the
+	 * start of packets
+	 */
+	writel(1, USBPHY_CTRL + SET);
+
+	return 0;
+}
diff --git a/arch/arm/mach-mxs/usb.c b/arch/arm/mach-mxs/usb.c
deleted file mode 100644
index b7a9376..0000000
--- a/arch/arm/mach-mxs/usb.c
+++ /dev/null
@@ -1,92 +0,0 @@
-/*
- * i.MX23/28 USBPHY setup
- *
- * Copyright 2011 Sascha Hauer, Pengutronix <s.hauer@pengutronix.de>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; either version 2 of the License, or
- * (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
- */
-#include <common.h>
-#include <io.h>
-#include <mach/imx-regs.h>
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
-
-#define USBPHY_PWD			(IMX_USBPHY_BASE + 0x0)
-
-#define USBPHY_CTRL			(IMX_USBPHY_BASE + 0x30)
-#define USBPHY_CTRL_SFTRST		0x80000000
-#define USBPHY_CTRL_CLKGATE		0x40000000
-
-#define CLK_PLLCTRL0			(IMX_CCM_BASE + 0x0)
-#define PLLCTRL0_EN_USB_CLKS 0x00040000
-
-#define DIGCTRL_CTRL			(IMX_DIGCTL_BASE + 0x0)
-#define DIGCTL_CTRL_USB_CLKGATE		0x00000004
-
-#define SET	0x4
-#define CLR	0x8
-
-int imx_usb_phy_enable(void)
-{
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
-
-	/* Reset USBPHY module */
-	writel(USBPHY_CTRL_SFTRST, USBPHY_CTRL + SET);
-	udelay(10);
-
-	/* Remove CLKGATE and SFTRST */
-	writel(USBPHY_CTRL_CLKGATE | USBPHY_CTRL_SFTRST, USBPHY_CTRL + CLR);
-
-	/* Turn on the USB clocks */
-	writel(PLLCTRL0_EN_USB_CLKS, CLK_PLLCTRL0 + SET);
-	writel(DIGCTL_CTRL_USB_CLKGATE, DIGCTRL_CTRL + CLR);
-
-	/* Power up the PHY */
-	writel(0, USBPHY_PWD);
-
-	/*
-	 * Set precharge bit to cure overshoot problems at the
-	 * start of packets
-	 */
-	writel(1, USBPHY_CTRL + SET);
-
-	return 0;
-}
-
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

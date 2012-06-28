Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SkDBI-00077u-OJ
 for barebox@lists.infradead.org; Thu, 28 Jun 2012 11:46:41 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 28 Jun 2012 13:46:37 +0200
Message-Id: <1340883997-2107-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1340883997-2107-1-git-send-email-s.hauer@pengutronix.de>
References: <1340883997-2107-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] ARM i.MX28 usb: Add USBPHY support
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-mxs/Makefile                  |    2 +-
 arch/arm/mach-mxs/include/mach/imx28-regs.h |    5 ++
 arch/arm/mach-mxs/include/mach/usb.h        |    3 +
 arch/arm/mach-mxs/usb-imx28.c               |  101 +++++++++++++++++++++++++++
 4 files changed, 110 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/mach-mxs/usb-imx28.c

diff --git a/arch/arm/mach-mxs/Makefile b/arch/arm/mach-mxs/Makefile
index 1ba00f1..e8de370 100644
--- a/arch/arm/mach-mxs/Makefile
+++ b/arch/arm/mach-mxs/Makefile
@@ -1,5 +1,5 @@
 obj-y += imx.o iomux-imx.o reset-imx.o
 obj-$(CONFIG_DRIVER_VIDEO_STM) += imx_lcd_clk.o
 obj-$(CONFIG_ARCH_IMX23) += speed-imx23.o clocksource-imx23.o usb-imx23.o
-obj-$(CONFIG_ARCH_IMX28) += speed-imx28.o clocksource-imx28.o
+obj-$(CONFIG_ARCH_IMX28) += speed-imx28.o clocksource-imx28.o usb-imx28.o
 obj-$(CONFIG_MXS_OCOTP) += ocotp.o
diff --git a/arch/arm/mach-mxs/include/mach/imx28-regs.h b/arch/arm/mach-mxs/include/mach/imx28-regs.h
index 9a2052c..900990a 100644
--- a/arch/arm/mach-mxs/include/mach/imx28-regs.h
+++ b/arch/arm/mach-mxs/include/mach/imx28-regs.h
@@ -29,9 +29,11 @@
 #define IMX_SSP2_BASE		0x80014000
 #define IMX_SSP3_BASE		0x80016000
 #define IMX_IOMUXC_BASE		0x80018000
+#define IMX_DIGCTL_BASE		0x8001c000
 #define IMX_OCOTP_BASE		0x8002c000
 #define IMX_FB_BASE		0x80030000
 #define IMX_CCM_BASE		0x80040000
+#define IMX_POWER_BASE		0x80044000
 #define IMX_WDT_BASE		0x80056000
 #define IMX_I2C0_BASE		0x80058000
 #define IMX_I2C1_BASE		0x8005a000
@@ -42,6 +44,9 @@
 #define IMX_UART3_BASE		0x80070000
 #define IMX_UART4_BASE		0x80072000
 #define IMX_DBGUART_BASE	0x80074000
+#define IMX_USBPHY0_BASE	0x8007c000
+#define IMX_USBPHY1_BASE	0x8007e000
+#define IMX_USB_BASE		0x80080000
 #define IMX_FEC0_BASE		0x800F0000
 #define IMX_FEC1_BASE		0x800F4000
 
diff --git a/arch/arm/mach-mxs/include/mach/usb.h b/arch/arm/mach-mxs/include/mach/usb.h
index b238499..2d31b0d 100644
--- a/arch/arm/mach-mxs/include/mach/usb.h
+++ b/arch/arm/mach-mxs/include/mach/usb.h
@@ -3,4 +3,7 @@
 
 int imx23_usb_phy_enable(void);
 
+int imx28_usb_phy0_enable(void);
+int imx28_usb_phy1_enable(void);
+
 #endif /* __MACH_USB_H */
diff --git a/arch/arm/mach-mxs/usb-imx28.c b/arch/arm/mach-mxs/usb-imx28.c
new file mode 100644
index 0000000..61d59c3
--- /dev/null
+++ b/arch/arm/mach-mxs/usb-imx28.c
@@ -0,0 +1,101 @@
+/*
+ * i.MX28 USBPHY setup
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
+#include <errno.h>
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
+#define USBPHY_PWD			0x0
+
+#define USBPHY_CTRL			0x30
+#define USBPHY_CTRL_SFTRST		(1 << 31)
+#define USBPHY_CTRL_CLKGATE		(1 << 30)
+#define USBPHY_CTRL_ENUTMILEVEL3	(1 << 15)
+#define USBPHY_CTRL_ENUTMILEVEL2	(1 << 14)
+
+#define CLK_PLL0CTRL0			(IMX_CCM_BASE + 0x0)
+#define CLK_PLL1CTRL0			(IMX_CCM_BASE + 0x20)
+#define PLLCTRL0_EN_USB_CLKS		(1 << 18)
+
+#define DIGCTRL_CTRL			(IMX_DIGCTL_BASE + 0x0)
+#define DIGCTL_CTRL_USB0_CLKGATE	(1 << 2)
+#define DIGCTL_CTRL_USB1_CLKGATE	(1 << 16)
+
+#define SET	0x4
+#define CLR	0x8
+
+static void imx28_usb_phy_reset(void __iomem *phybase)
+{
+	/* Reset USBPHY module */
+	writel(USBPHY_CTRL_SFTRST, phybase + USBPHY_CTRL + SET);
+	udelay(10);
+	writel(USBPHY_CTRL_CLKGATE | USBPHY_CTRL_SFTRST,
+			phybase + USBPHY_CTRL + CLR);
+}
+
+static void imx28_usb_phy_enable(void __iomem *phybase)
+{
+	/* Power up the PHY */
+	writel(0, phybase + USBPHY_PWD);
+
+	writel(USBPHY_CTRL_ENUTMILEVEL3 | USBPHY_CTRL_ENUTMILEVEL2 | 1,
+			phybase + USBPHY_CTRL + SET);
+}
+
+int imx28_usb_phy0_enable(void)
+{
+	imx28_usb_phy_reset((void *)IMX_USBPHY0_BASE);
+
+	/* Turn on the USB clocks */
+	writel(PLLCTRL0_EN_USB_CLKS, CLK_PLL0CTRL0 + SET);
+
+	writel(DIGCTL_CTRL_USB0_CLKGATE, DIGCTRL_CTRL + CLR);
+
+	imx28_usb_phy_enable((void *)IMX_USBPHY0_BASE);
+
+	return 0;
+}
+
+int imx28_usb_phy1_enable(void)
+{
+	imx28_usb_phy_reset((void *)IMX_USBPHY1_BASE);
+
+	/* Turn on the USB clocks */
+	writel(PLLCTRL0_EN_USB_CLKS, CLK_PLL1CTRL0 + SET);
+
+	writel(DIGCTL_CTRL_USB1_CLKGATE, DIGCTRL_CTRL + CLR);
+
+	imx28_usb_phy_enable((void *)IMX_USBPHY1_BASE);
+
+	return 0;
+}
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

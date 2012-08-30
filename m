Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T73to-0001sh-W1
 for barebox@lists.infradead.org; Thu, 30 Aug 2012 12:31:06 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Thu, 30 Aug 2012 14:30:49 +0200
Message-Id: <1346329850-3866-3-git-send-email-s.trumtrar@pengutronix.de>
In-Reply-To: <1346329850-3866-1-git-send-email-s.trumtrar@pengutronix.de>
References: <1346329850-3866-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 2/3] ARM i.MX6: enable usbphy1
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Add a function to take the usbphy1 through its initialization procedure.
The imx6_usb_phy1_disable_oc function is needed at least on the sabrelite,
as the power design is faulty. The state on other imx6 boards is unknown,
therefore it is an extra function call at the moment.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/mach-imx/Makefile   |    2 +-
 arch/arm/mach-imx/usb-imx6.c |  111 ++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 112 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/mach-imx/usb-imx6.c

diff --git a/arch/arm/mach-imx/Makefile b/arch/arm/mach-imx/Makefile
index 2ff537a..7b872f6 100644
--- a/arch/arm/mach-imx/Makefile
+++ b/arch/arm/mach-imx/Makefile
@@ -8,7 +8,7 @@ obj-$(CONFIG_ARCH_IMX31) += speed-imx31.o imx31.o iomux-v2.o
 obj-$(CONFIG_ARCH_IMX35) += speed-imx35.o imx35.o iomux-v3.o
 obj-$(CONFIG_ARCH_IMX51) += speed-imx51.o imx51.o iomux-v3.o imx5.o
 obj-$(CONFIG_ARCH_IMX53) += speed-imx53.o imx53.o iomux-v3.o imx5.o
-obj-$(CONFIG_ARCH_IMX6) += speed-imx6.o imx6.o iomux-v3.o
+obj-$(CONFIG_ARCH_IMX6) += speed-imx6.o imx6.o iomux-v3.o usb-imx6.o
 obj-$(CONFIG_IMX_CLKO)	+= clko.o
 obj-$(CONFIG_IMX_IIM)	+= iim.o
 obj-$(CONFIG_NAND_IMX) += nand.o
diff --git a/arch/arm/mach-imx/usb-imx6.c b/arch/arm/mach-imx/usb-imx6.c
new file mode 100644
index 0000000..cd234d2
--- /dev/null
+++ b/arch/arm/mach-imx/usb-imx6.c
@@ -0,0 +1,111 @@
+/*
+ * Copyright (C) 2012 Steffen Trumtrar, Pengutronix
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
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation.
+ *
+ */
+
+#include <common.h>
+#include <io.h>
+#include <mach/imx6-regs.h>
+
+#define SET				0x4
+#define CLR				0x8
+
+#define USBPHY_CTRL			0x30
+#define USB_OTG_CTRL			0x800
+#define USB_UH1_CTRL			0x804
+#define USB_UH2_CTRL			0x808
+#define USB_UH3_CTRL			0x80c
+
+#define USB_UH1_USBCMD			0x340
+
+#define USB_CMD_RUNSTOP			(1 <<  0)
+#define USB_CMD_RESET			(1 <<  1)
+
+#define USB_OVER_CUR_DIS		(1 <<  7)
+#define USBPHY_CTRL_SFTRST		(1 << 31)
+#define USBPHY_CTRL_CLKGATE		(1 << 30)
+#define USBPHY_CTRL_ENUTMILEVEL3	(1 << 15)
+#define USBPHY_CTRL_ENUTMILEVEL2	(1 << 14)
+
+#define USBPHY1_PLL_480_CTRL_EN		(1 << 13)
+#define USBPHY1_PLL_480_CTRL_POWER	(1 << 12)
+#define USBPHY1_PLL_480_CTRL_EN_USB_CLK	(1 <<  6)
+#define USBPHY1_PLL_480_CTRL_BYPASS	(1 << 16)
+
+int imx6_usb_phy1_disable_oc(void)
+{
+	int val;
+
+	/* disable over current detection */
+	val = readl(MX6_USBOH3_USB_BASE_ADDR + USB_UH1_CTRL);
+	val |= USB_OVER_CUR_DIS;
+	writel(val, MX6_USBOH3_USB_BASE_ADDR + USB_UH1_CTRL);
+	val = readl(MX6_USBOH3_USB_BASE_ADDR + USB_UH2_CTRL);
+	val |= USB_OVER_CUR_DIS;
+	writel(val, MX6_USBOH3_USB_BASE_ADDR + USB_UH2_CTRL);
+	val = readl(MX6_USBOH3_USB_BASE_ADDR + USB_UH3_CTRL);
+	val |= USB_OVER_CUR_DIS;
+	writel(val, MX6_USBOH3_USB_BASE_ADDR + USB_UH3_CTRL);
+
+	return 0;
+}
+
+int imx6_usb_phy1_enable(void)
+{
+	int val;
+
+	/* disable external charger detector or DP will be poor */
+	writel(0x00180000, MX6_ANATOP_BASE_ADDR + 0x1b0);
+	writel(0x00180000, MX6_ANATOP_BASE_ADDR + 0x210);
+
+	/* enable usb pll */
+	writel(USBPHY1_PLL_480_CTRL_EN |
+	       USBPHY1_PLL_480_CTRL_POWER |
+	       USBPHY1_PLL_480_CTRL_EN_USB_CLK, MX6_ANATOP_BASE_ADDR + 0x24);
+
+	/* turn OFF clk bypass */
+	/* at least on imx6 v1.0 this essential for usb to work */
+	/* FIXME: test on v1.1. Datasheet declares bit as reserved */
+	writel(USBPHY1_PLL_480_CTRL_BYPASS, MX6_ANATOP_BASE_ADDR + 0x28);
+
+	/* stop then reset */
+	val = readl(MX6_USBOH3_USB_BASE_ADDR + USB_UH1_USBCMD);
+	val &= ~USB_CMD_RUNSTOP;
+	writel(val, MX6_USBOH3_USB_BASE_ADDR + USB_UH1_USBCMD);
+	while (readl(MX6_USBOH3_USB_BASE_ADDR + USB_UH1_USBCMD) & USB_CMD_RUNSTOP);
+
+	val = readl(MX6_USBOH3_USB_BASE_ADDR + USB_UH1_USBCMD);
+	val |= USB_CMD_RESET;
+	writel(val, MX6_USBOH3_USB_BASE_ADDR + USB_UH1_USBCMD);
+	while (readl(MX6_USBOH3_USB_BASE_ADDR + USB_UH1_USBCMD) & USB_CMD_RESET);
+
+	/* reset usbphy */
+	writel(USBPHY_CTRL_SFTRST, MX6_USBPHY1_BASE_ADDR + USBPHY_CTRL + SET);
+	udelay(10);
+	/* clr reset and clkgate */
+	writel(USBPHY_CTRL_SFTRST | USBPHY_CTRL_CLKGATE, MX6_USBPHY1_BASE_ADDR + USBPHY_CTRL + CLR);
+
+	/* clr all pwd bits => power up phy */
+	writel(0xffffffff, MX6_USBPHY1_BASE_ADDR + CLR);
+
+	/* set utmilvl2/3 */
+	val = readl(MX6_USBPHY1_BASE_ADDR + USBPHY_CTRL);
+	val |= USBPHY_CTRL_ENUTMILEVEL3 | USBPHY_CTRL_ENUTMILEVEL2;
+	writel(val, MX6_USBPHY1_BASE_ADDR + USBPHY_CTRL + SET);
+
+	return 0;
+}
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSmxU-0004jk-Sh
 for barebox@lists.infradead.org; Mon, 20 May 2019 18:24:28 +0000
Received: by mail-pg1-x543.google.com with SMTP id z3so7161986pgp.8
 for <barebox@lists.infradead.org>; Mon, 20 May 2019 11:24:24 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 20 May 2019 11:24:02 -0700
Message-Id: <20190520182402.12753-6-andrew.smirnov@gmail.com>
In-Reply-To: <20190520182402.12753-1-andrew.smirnov@gmail.com>
References: <20190520182402.12753-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 5/5] ARM: i.MX: Drop unused usb-imx6.c
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Looks like usb-imx6.c was abandoned and there are no references to
either of the functions difined there. Drop it.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/Makefile   |   2 +-
 arch/arm/mach-imx/usb-imx6.c | 111 -----------------------------------
 2 files changed, 1 insertion(+), 112 deletions(-)
 delete mode 100644 arch/arm/mach-imx/usb-imx6.c

diff --git a/arch/arm/mach-imx/Makefile b/arch/arm/mach-imx/Makefile
index b86025cc3..b16de2866 100644
--- a/arch/arm/mach-imx/Makefile
+++ b/arch/arm/mach-imx/Makefile
@@ -10,7 +10,7 @@ obj-$(CONFIG_ARCH_IMX51) += imx51.o imx5.o
 pbl-$(CONFIG_ARCH_IMX51) += imx51.o imx5.o
 obj-$(CONFIG_ARCH_IMX53) += imx53.o imx5.o esdctl-v4.o
 pbl-$(CONFIG_ARCH_IMX53) += imx53.o imx5.o esdctl-v4.o
-obj-$(CONFIG_ARCH_IMX6) += imx6.o usb-imx6.o
+obj-$(CONFIG_ARCH_IMX6) += imx6.o
 CFLAGS_imx6.o := -march=armv7-a
 lwl-$(CONFIG_ARCH_IMX6) += imx6-mmdc.o
 obj-$(CONFIG_ARCH_IMX7) += imx7.o
diff --git a/arch/arm/mach-imx/usb-imx6.c b/arch/arm/mach-imx/usb-imx6.c
deleted file mode 100644
index 4236bcb77..000000000
--- a/arch/arm/mach-imx/usb-imx6.c
+++ /dev/null
@@ -1,111 +0,0 @@
-/*
- * Copyright (C) 2012 Steffen Trumtrar, Pengutronix
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
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation.
- *
- */
-
-#include <common.h>
-#include <io.h>
-#include <mach/imx6-regs.h>
-#include <mach/usb.h>
-
-#define SET				0x4
-#define CLR				0x8
-
-#define USBPHY_CTRL			0x30
-#define USB_OTG_CTRL			0x800
-#define USB_UH1_CTRL			0x804
-#define USB_UH2_CTRL			0x808
-#define USB_UH3_CTRL			0x80c
-
-#define USB_UH1_USBCMD			0x340
-
-#define USB_CMD_RUNSTOP			(1 <<  0)
-
-#define USB_OVER_CUR_DIS		(1 <<  7)
-#define USBPHY_CTRL_SFTRST		(1 << 31)
-#define USBPHY_CTRL_CLKGATE		(1 << 30)
-#define USBPHY_CTRL_ENUTMILEVEL3	(1 << 15)
-#define USBPHY_CTRL_ENUTMILEVEL2	(1 << 14)
-
-#define USBPHY1_PLL_480_CTRL_EN		(1 << 13)
-#define USBPHY1_PLL_480_CTRL_POWER	(1 << 12)
-#define USBPHY1_PLL_480_CTRL_EN_USB_CLK	(1 <<  6)
-#define USBPHY1_PLL_480_CTRL_BYPASS	(1 << 16)
-
-int imx6_usb_phy2_disable_oc(void)
-{
-	int val;
-
-	/* disable over current detection */
-	val = readl(MX6_USBOH3_USB_BASE_ADDR + USB_UH1_CTRL);
-	val |= USB_OVER_CUR_DIS;
-	writel(val, MX6_USBOH3_USB_BASE_ADDR + USB_UH1_CTRL);
-	val = readl(MX6_USBOH3_USB_BASE_ADDR + USB_UH2_CTRL);
-	val |= USB_OVER_CUR_DIS;
-	writel(val, MX6_USBOH3_USB_BASE_ADDR + USB_UH2_CTRL);
-	val = readl(MX6_USBOH3_USB_BASE_ADDR + USB_UH3_CTRL);
-	val |= USB_OVER_CUR_DIS;
-	writel(val, MX6_USBOH3_USB_BASE_ADDR + USB_UH3_CTRL);
-
-	return 0;
-}
-
-int imx6_usb_phy2_enable(void)
-{
-	int val;
-
-	/* disable external charger detector or DP will be poor */
-	writel(0x00180000, MX6_ANATOP_BASE_ADDR + 0x1b0);
-	writel(0x00180000, MX6_ANATOP_BASE_ADDR + 0x210);
-
-	/* enable usb pll */
-	writel(USBPHY1_PLL_480_CTRL_EN |
-	       USBPHY1_PLL_480_CTRL_POWER |
-	       USBPHY1_PLL_480_CTRL_EN_USB_CLK, MX6_ANATOP_BASE_ADDR + 0x24);
-
-	/* turn OFF clk bypass */
-	/* at least on imx6 v1.0 this essential for usb to work */
-	/* FIXME: test on v1.1. Datasheet declares bit as reserved */
-	writel(USBPHY1_PLL_480_CTRL_BYPASS, MX6_ANATOP_BASE_ADDR + 0x28);
-
-	/* stop then reset */
-	val = readl(MX6_USBOH3_USB_BASE_ADDR + USB_UH1_USBCMD);
-	val &= ~USB_CMD_RUNSTOP;
-	writel(val, MX6_USBOH3_USB_BASE_ADDR + USB_UH1_USBCMD);
-	while (readl(MX6_USBOH3_USB_BASE_ADDR + USB_UH1_USBCMD) & USB_CMD_RUNSTOP);
-
-	val = readl(MX6_USBOH3_USB_BASE_ADDR + USB_UH1_USBCMD);
-	val |= USB_CMD_RESET;
-	writel(val, MX6_USBOH3_USB_BASE_ADDR + USB_UH1_USBCMD);
-	while (readl(MX6_USBOH3_USB_BASE_ADDR + USB_UH1_USBCMD) & USB_CMD_RESET);
-
-	/* reset usbphy */
-	writel(USBPHY_CTRL_SFTRST, MX6_USBPHY2_BASE_ADDR + USBPHY_CTRL + SET);
-	udelay(10);
-	/* clr reset and clkgate */
-	writel(USBPHY_CTRL_SFTRST | USBPHY_CTRL_CLKGATE, MX6_USBPHY2_BASE_ADDR + USBPHY_CTRL + CLR);
-
-	/* clr all pwd bits => power up phy */
-	writel(0xffffffff, MX6_USBPHY2_BASE_ADDR + CLR);
-
-	/* set utmilvl2/3 */
-	val = readl(MX6_USBPHY2_BASE_ADDR + USBPHY_CTRL);
-	val |= USBPHY_CTRL_ENUTMILEVEL3 | USBPHY_CTRL_ENUTMILEVEL2;
-	writel(val, MX6_USBPHY2_BASE_ADDR + USBPHY_CTRL + SET);
-
-	return 0;
-}
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

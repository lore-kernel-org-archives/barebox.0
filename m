Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Ogakx-0000Va-GI
	for barebox@lists.infradead.org; Wed, 04 Aug 2010 09:59:31 +0000
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Wed,  4 Aug 2010 11:59:14 +0200
Message-Id: <1280915957-2910-11-git-send-email-m.grzeschik@pengutronix.de>
In-Reply-To: <1280915957-2910-1-git-send-email-m.grzeschik@pengutronix.de>
References: <1280915957-2910-1-git-send-email-m.grzeschik@pengutronix.de>
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
Subject: [PATCH 10/13] usb: add twl4030 phy support
To: barebox@lists.infradead.org

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
 drivers/usb/otg/Kconfig   |    3 +
 drivers/usb/otg/Makefile  |    2 +
 drivers/usb/otg/twl4030.c |  199 +++++++++++++++++++++++++++++++++++++++++++++
 include/usb/twl4030.h     |   28 +++++++
 4 files changed, 232 insertions(+), 0 deletions(-)
 create mode 100644 drivers/usb/otg/twl4030.c
 create mode 100644 include/usb/twl4030.h

diff --git a/drivers/usb/otg/Kconfig b/drivers/usb/otg/Kconfig
index 0191c87..de09cf3 100644
--- a/drivers/usb/otg/Kconfig
+++ b/drivers/usb/otg/Kconfig
@@ -4,3 +4,6 @@ config USB_ULPI
 config USB_ISP1504
 	select USB_ULPI
 	bool "ISP1504 Tranceiver support"
+
+config USB_TWL4030
+	bool "TWL4030 Tranceiver support"
diff --git a/drivers/usb/otg/Makefile b/drivers/usb/otg/Makefile
index 785f922..aa95cc9 100644
--- a/drivers/usb/otg/Makefile
+++ b/drivers/usb/otg/Makefile
@@ -1,2 +1,4 @@
 obj-$(CONFIG_USB_ULPI)		+= ulpi.o
 obj-$(CONFIG_USB_ISP1504)	+= isp1504.o
+obj-$(CONFIG_USB_TWL4030)	+= twl4030.o
+
diff --git a/drivers/usb/otg/twl4030.c b/drivers/usb/otg/twl4030.c
new file mode 100644
index 0000000..72edf25
--- /dev/null
+++ b/drivers/usb/otg/twl4030.c
@@ -0,0 +1,199 @@
+/*
+ * Copyright (c) 2009 Wind River Systems, Inc.
+ * Tom Rix <Tom.Rix@windriver.com>
+ *
+ * This is file is based on
+ * repository git.gitorious.org/u-boot-omap3/mainline.git,
+ * branch omap3-dev-usb, file drivers/usb/gadget/twl4030_usb.c
+ *
+ * This is the unique part of its copyright :
+ *
+ * ------------------------------------------------------------------------
+ *
+ *  * (C) Copyright 2009 Atin Malaviya (atin.malaviya@gmail.com)
+ *
+ * Based on: twl4030_usb.c in linux 2.6 (drivers/i2c/chips/twl4030_usb.c)
+ * Copyright (C) 2004-2007 Texas Instruments
+ * Copyright (C) 2008 Nokia Corporation
+ * Contact: Felipe Balbi <felipe.balbi@nokia.com>
+ *
+ * Author: Atin Malaviya (atin.malaviya@gmail.com)
+ *
+ * ------------------------------------------------------------------------
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+
+#include <i2c/twl4030.h>
+#include <usb/twl4030.h>
+#include <clock.h>
+
+static int twl4030_usb_write(u8 address, u8 data)
+{
+	int ret;
+	struct twl4030 *twl4030 = twl4030_get();
+
+	ret = twl4030_reg_write(twl4030, address, data);
+	if (ret != 0)
+		printf("TWL4030:USB:Write[0x%x] Error %d\n", address, ret);
+
+	return ret;
+}
+
+static int twl4030_usb_read(u8 address)
+{
+	u8 data;
+	int ret;
+	struct twl4030 *twl4030 = twl4030_get();
+
+	ret = twl4030_reg_read(twl4030, address, &data);
+	if (ret == 0)
+		ret = data;
+	else
+		printf("TWL4030:USB:Read[0x%x] Error %d\n", address, ret);
+
+	return ret;
+}
+
+void twl4030_power_init(void)
+{
+	unsigned char byte;
+	struct twl4030 *twl4030 = twl4030_get();
+
+	/* set VAUX3 to 2.8V */
+	byte = TWL4030_PM_RECEIVER_DEV_GRP_P1;
+	twl4030_reg_write(twl4030, TWL4030_PM_RECEIVER_VAUX3_DEV_GRP, byte);
+	byte = TWL4030_PM_RECEIVER_VAUX3_VSEL_28;
+	twl4030_reg_write(twl4030, TWL4030_PM_RECEIVER_VAUX3_DEDICATED, byte);
+
+	/* set VPLL2 to 1.8V */
+	byte = TWL4030_PM_RECEIVER_DEV_GRP_ALL;
+	twl4030_reg_write(twl4030, TWL4030_PM_RECEIVER_VPLL2_DEV_GRP, byte);
+	byte = TWL4030_PM_RECEIVER_VPLL2_VSEL_18;
+	twl4030_reg_write(twl4030, TWL4030_PM_RECEIVER_VPLL2_DEDICATED, byte);
+
+	/* set VDAC to 1.8V */
+	byte = TWL4030_PM_RECEIVER_DEV_GRP_P1;
+	twl4030_reg_write(twl4030, TWL4030_PM_RECEIVER_VDAC_DEV_GRP, byte);
+	byte = TWL4030_PM_RECEIVER_VDAC_VSEL_18;
+	twl4030_reg_write(twl4030, TWL4030_PM_RECEIVER_VDAC_DEDICATED, byte);
+}
+
+static void twl4030_usb_ldo_init(void)
+{
+	struct twl4030 *twl4030 = twl4030_get();
+	/* Enable writing to power configuration registers */
+	twl4030_reg_write(twl4030, TWL4030_PM_MASTER_PROTECT_KEY, 0xC0);
+	twl4030_reg_write(twl4030, TWL4030_PM_MASTER_PROTECT_KEY, 0x0C);
+
+	/* put VUSB3V1 LDO in active state */
+	twl4030_reg_write(twl4030, TWL4030_PM_RECEIVER_VUSB_DEDICATED2, 0x00);
+
+	/* input to VUSB3V1 LDO is from VBAT, not VBUS */
+	twl4030_reg_write(twl4030, TWL4030_PM_RECEIVER_VUSB_DEDICATED1, 0x14);
+
+	/* turn on 3.1V regulator */
+	twl4030_reg_write(twl4030, TWL4030_PM_RECEIVER_VUSB3V1_DEV_GRP, 0x20);
+	twl4030_reg_write(twl4030, TWL4030_PM_RECEIVER_VUSB3V1_TYPE, 0x00);
+
+	/* turn on 1.5V regulator */
+	twl4030_reg_write(twl4030, TWL4030_PM_RECEIVER_VUSB1V5_DEV_GRP, 0x20);
+	twl4030_reg_write(twl4030, TWL4030_PM_RECEIVER_VUSB1V5_TYPE, 0x00);
+
+	/* turn on 1.8V regulator */
+	twl4030_reg_write(twl4030, TWL4030_PM_RECEIVER_VUSB1V8_DEV_GRP, 0x20);
+	twl4030_reg_write(twl4030, TWL4030_PM_RECEIVER_VUSB1V8_TYPE, 0x00);
+
+	/* disable access to power configuration registers */
+	twl4030_reg_write(twl4030, TWL4030_PM_MASTER_PROTECT_KEY, 0x0 );
+
+	twl4030_reg_write(twl4030, TWL4030_BASEADD_LED, 0x33); /* FIXME *need to enable LED to get USB power? */
+
+}
+
+static void twl4030_phy_power(void)
+{
+	u8 pwr, clk;
+	/* Power the PHY */
+	pwr = twl4030_usb_read(TWL4030_USB_PHY_PWR_CTRL);
+	pwr &= ~PHYPWD;
+	twl4030_usb_write(TWL4030_USB_PHY_PWR_CTRL, pwr);
+	/* Enable clocks */
+	clk = twl4030_usb_read(TWL4030_USB_PHY_CLK_CTRL);
+	clk |= CLOCKGATING_EN | CLK32K_EN;
+	twl4030_usb_write(TWL4030_USB_PHY_CLK_CTRL, clk);
+}
+
+/*
+ * Initiaze the ULPI interface
+ * ULPI : Universal Transceiver Macrocell Low Pin Interface
+ * An interface between the USB link controller like musb and the
+ * the PHY or transceiver that drives the actual bus.
+ */
+int twl4030_usb_ulpi_init(void)
+{
+	u8 clk, sts, pwr;
+	uint64_t start;
+	long timeout = 1000 * 1000; /* 1 sec */;
+
+	/* power up the twl4030 */
+	twl4030_power_init();
+
+	/* twl4030 ldo init */
+	twl4030_usb_ldo_init();
+
+	/* Enable the twl4030 phy */
+	twl4030_phy_power();
+
+	/* Enable DPLL to access PHY registers over I2C */
+	clk = twl4030_usb_read(TWL4030_USB_PHY_CLK_CTRL);
+	clk |= REQ_PHY_DPLL_CLK;
+	twl4030_usb_write(TWL4030_USB_PHY_CLK_CTRL, clk);
+
+	/* Check if the PHY DPLL is locked */
+	sts = twl4030_usb_read(TWL4030_USB_PHY_CLK_CTRL_STS);
+	start = get_time_ns();
+	while (!(sts & PHY_DPLL_CLK)) {
+		udelay(10);
+		sts = twl4030_usb_read(TWL4030_USB_PHY_CLK_CTRL_STS);
+		printf("Error:TWL4030:USB Timeout setting PHY DPLL clock\n");
+		if (is_timeout(start, timeout * USECOND)) {
+			return -ETIMEDOUT;
+		}
+	}
+
+	/*
+	 * There are two circuit blocks attached to the PHY,
+	 * Carkit and USB OTG.  Disable Carkit and enable USB OTG
+	 */
+	twl4030_usb_write(TWL4030_USB_IFC_CTRL_CLR, CARKITMODE);
+	pwr = twl4030_usb_read(TWL4030_USB_POWER_CTRL);
+	pwr |= OTG_ENAB;
+	twl4030_usb_write(TWL4030_USB_POWER_CTRL_SET, pwr);
+
+	/* Clear the opmode bits to ensure normal encode */
+	twl4030_usb_write(TWL4030_USB_FUNC_CTRL_CLR, OPMODE_MASK);
+
+	/* Clear the xcvrselect bits to enable the high speed transeiver */
+	twl4030_usb_write(TWL4030_USB_FUNC_CTRL_CLR, XCVRSELECT_MASK);
+
+	/* Let ULPI control the DPLL clock */
+	clk = twl4030_usb_read(TWL4030_USB_PHY_CLK_CTRL);
+	clk &= ~REQ_PHY_DPLL_CLK;
+	twl4030_usb_write(TWL4030_USB_PHY_CLK_CTRL, clk);
+
+	return 0;
+}
diff --git a/include/usb/twl4030.h b/include/usb/twl4030.h
new file mode 100644
index 0000000..66f5156
--- /dev/null
+++ b/include/usb/twl4030.h
@@ -0,0 +1,28 @@
+/*
+ * Copyright (C) 2010 Michael Grzeschik <mgr@pengutronix.de>
+ * Copyright (C) 2010 Sascha Hauer <sha@pengutronix.de>
+ *
+ * This file is released under the GPLv2
+ *
+ */
+
+#ifndef __USB_TWL4030_H
+#define __USB_TWL4030_H
+
+/* Defines for bits in registers */
+#define OPMODE_MASK		(3 << 3)
+#define XCVRSELECT_MASK		(3 << 0)
+#define CARKITMODE		(1 << 2)
+#define OTG_ENAB		(1 << 5)
+#define PHYPWD			(1 << 0)
+#define CLOCKGATING_EN		(1 << 2)
+#define CLK32K_EN		(1 << 1)
+#define REQ_PHY_DPLL_CLK	(1 << 0)
+#define PHY_DPLL_CLK		(1 << 0)
+
+/*
+ * USB
+ */
+int twl4030_usb_ulpi_init(void);
+
+#endif /* __USB_TWL4030_H */
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

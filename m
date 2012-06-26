Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SjSRM-0007nS-Fu
 for barebox@lists.infradead.org; Tue, 26 Jun 2012 09:52:15 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Tue, 26 Jun 2012 11:51:48 +0200
Message-Id: <1340704314-12593-7-git-send-email-jlu@pengutronix.de>
In-Reply-To: <1340704314-12593-1-git-send-email-jlu@pengutronix.de>
References: <1340704314-12593-1-git-send-email-jlu@pengutronix.de>
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
Subject: [PATCH 06/12] mach-davinci: support the USB 1.1 host controller
 (based on OHCI)
To: barebox@lists.infradead.org

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---
 arch/arm/mach-davinci/Makefile           |    1 +
 arch/arm/mach-davinci/include/mach/usb.h |   37 +++++++++++++++++
 arch/arm/mach-davinci/usb.c              |   66 ++++++++++++++++++++++++++++++
 3 files changed, 104 insertions(+)
 create mode 100644 arch/arm/mach-davinci/include/mach/usb.h
 create mode 100644 arch/arm/mach-davinci/usb.c

diff --git a/arch/arm/mach-davinci/Makefile b/arch/arm/mach-davinci/Makefile
index 0ac8f9b..0df1e92 100644
--- a/arch/arm/mach-davinci/Makefile
+++ b/arch/arm/mach-davinci/Makefile
@@ -4,3 +4,4 @@ obj-y += da850.o
 obj-y += gpio.o
 obj-y += mux.o
 obj-y += psc.o
+obj-y += usb.o
diff --git a/arch/arm/mach-davinci/include/mach/usb.h b/arch/arm/mach-davinci/include/mach/usb.h
new file mode 100644
index 0000000..d0fb412
--- /dev/null
+++ b/arch/arm/mach-davinci/include/mach/usb.h
@@ -0,0 +1,37 @@
+/*
+ * USB related definitions
+ *
+ * Copyright (C) 2009 MontaVista Software, Inc. <source@mvista.com>
+ *
+ * This file is licensed under the terms of the GNU General Public License
+ * version 2. This program is licensed "as is" without any warranty of any
+ * kind, whether express or implied.
+ */
+
+#ifndef __ASM_ARCH_USB_H
+#define __ASM_ARCH_USB_H
+
+/* DA8xx CFGCHIP2 (USB 2.0 PHY Control) register bits */
+#define CFGCHIP2_PHYCLKGD	(1 << 17)
+#define CFGCHIP2_VBUSSENSE	(1 << 16)
+#define CFGCHIP2_RESET		(1 << 15)
+#define CFGCHIP2_OTGMODE	(3 << 13)
+#define CFGCHIP2_NO_OVERRIDE	(0 << 13)
+#define CFGCHIP2_FORCE_HOST	(1 << 13)
+#define CFGCHIP2_FORCE_DEVICE 	(2 << 13)
+#define CFGCHIP2_FORCE_HOST_VBUS_LOW (3 << 13)
+#define CFGCHIP2_USB1PHYCLKMUX	(1 << 12)
+#define CFGCHIP2_USB2PHYCLKMUX	(1 << 11)
+#define CFGCHIP2_PHYPWRDN	(1 << 10)
+#define CFGCHIP2_OTGPWRDN	(1 << 9)
+#define CFGCHIP2_DATPOL 	(1 << 8)
+#define CFGCHIP2_USB1SUSPENDM	(1 << 7)
+#define CFGCHIP2_PHY_PLLON	(1 << 6)	/* override PLL suspend */
+#define CFGCHIP2_SESENDEN	(1 << 5)	/* Vsess_end comparator */
+#define CFGCHIP2_VBDTCTEN	(1 << 4)	/* Vbus comparator */
+#define CFGCHIP2_REFFREQ	(0xf << 0)
+#define CFGCHIP2_REFFREQ_12MHZ	(1 << 0)
+#define CFGCHIP2_REFFREQ_24MHZ	(2 << 0)
+#define CFGCHIP2_REFFREQ_48MHZ	(3 << 0)
+
+#endif	/* ifndef __ASM_ARCH_USB_H */
diff --git a/arch/arm/mach-davinci/usb.c b/arch/arm/mach-davinci/usb.c
new file mode 100644
index 0000000..43dcd37
--- /dev/null
+++ b/arch/arm/mach-davinci/usb.c
@@ -0,0 +1,66 @@
+#include <common.h>
+#include <console.h>
+#include <driver.h>
+#include <init.h>
+#include <io.h>
+#include <mach/hardware.h>
+#include <mach/usb.h>
+#include <mach/da8xx.h>
+
+#define DA8XX_USB0_BASE 	0x01e00000
+#define DA8XX_USB1_BASE 	0x01e25000
+
+static int da8xx_usb11_init(void)
+{
+	u32 cfgchip2;
+
+	lpsc_on(DAVINCI_LPSC_USB20);
+	lpsc_on(DAVINCI_LPSC_USB11);
+
+	/*
+	 * Set up USB clock/mode in the CFGCHIP2 register.
+	 * FYI:  CFGCHIP2 is 0x0000ef00 initially.
+	*/
+	cfgchip2 = readl(DA8XX_SYSCFG0_BASE + DA8XX_CFGCHIP2_REG);
+
+	/* USB2.0 PHY reference clock is 24 MHz */
+	cfgchip2 &= ~CFGCHIP2_REFFREQ;
+	cfgchip2 |=  CFGCHIP2_REFFREQ_24MHZ;
+
+	/*
+	 * Select internal reference clock for USB 2.0 PHY
+	 * and use it as a clock source for USB 1.1 PHY
+	 * (this is the default setting anyway).
+	*/
+	cfgchip2 &= ~CFGCHIP2_USB1PHYCLKMUX;
+	cfgchip2 |=  CFGCHIP2_USB2PHYCLKMUX;
+
+	/*
+	 * We have to override VBUS/ID signals when MUSB is configured into the
+	 * host-only mode -- ID pin will float if no cable is connected, so the
+	 * controller won't be able to drive VBUS thinking that it's a B-device.
+	 * Otherwise, we want to use the OTG mode and enable VBUS comparators.
+	 */
+	cfgchip2 &= ~CFGCHIP2_OTGMODE;
+	cfgchip2 |=  CFGCHIP2_FORCE_HOST;
+
+	cfgchip2 &= ~(CFGCHIP2_RESET | CFGCHIP2_PHYPWRDN);
+	cfgchip2 |= CFGCHIP2_PHY_PLLON;
+
+	/*
+	 * Enable USB 1.1 PHY
+	 */
+	cfgchip2 |= CFGCHIP2_USB1SUSPENDM;
+
+	writel(cfgchip2, DA8XX_SYSCFG0_BASE + DA8XX_CFGCHIP2_REG);
+
+	printf("waiting for USB PHY clock...\n");
+	while (!(readl(DA8XX_SYSCFG0_BASE + DA8XX_CFGCHIP2_REG) & CFGCHIP2_PHYCLKGD))
+		continue;
+
+	add_generic_device("ohci", 0, NULL, DA8XX_USB1_BASE, 0x100,
+			   IORESOURCE_MEM, NULL);
+	return 0;
+}
+
+device_initcall(da8xx_usb11_init);
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

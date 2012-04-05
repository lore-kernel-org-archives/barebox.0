Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SFidc-0003fM-Dz
 for barebox@lists.infradead.org; Thu, 05 Apr 2012 09:05:54 +0000
From: Wolfram Sang <w.sang@pengutronix.de>
Date: Thu,  5 Apr 2012 11:05:39 +0200
Message-Id: <1333616741-14273-2-git-send-email-w.sang@pengutronix.de>
In-Reply-To: <1333616741-14273-1-git-send-email-w.sang@pengutronix.de>
References: <1333616741-14273-1-git-send-email-w.sang@pengutronix.de>
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
Subject: [PATCH 1/3] arm: mxs: add ocotp driver
To: barebox@lists.infradead.org

Read-only support for now to get MAC addresses.

Signed-off-by: Wolfram Sang <w.sang@pengutronix.de>
---
 arch/arm/mach-mxs/Kconfig                   |   14 +++
 arch/arm/mach-mxs/Makefile                  |    1 +
 arch/arm/mach-mxs/include/mach/imx23-regs.h |    1 +
 arch/arm/mach-mxs/include/mach/imx28-regs.h |    1 +
 arch/arm/mach-mxs/include/mach/ocotp.h      |   12 +++
 arch/arm/mach-mxs/ocotp.c                   |  139 +++++++++++++++++++++++++++
 6 files changed, 168 insertions(+)
 create mode 100644 arch/arm/mach-mxs/include/mach/ocotp.h
 create mode 100644 arch/arm/mach-mxs/ocotp.c

diff --git a/arch/arm/mach-mxs/Kconfig b/arch/arm/mach-mxs/Kconfig
index 15f7c74..4c869dc 100644
--- a/arch/arm/mach-mxs/Kconfig
+++ b/arch/arm/mach-mxs/Kconfig
@@ -68,6 +68,20 @@ endchoice
 
 endif
 
+menu "i.MX specific settings        "
+
+config MXS_OCOTP
+	tristate "OCOTP device"
+	help
+	  Device driver for the On-Chip One Time Programmable (OCOTP). Use the
+	  regular md/mw commands to read and write (if write is supported).
+
+	  Note that the OCOTP words are grouped consecutively (allocation
+	  internal view). Don't use register offsets here, the SET, CLR and
+	  TGL registers are not mapped!
+
+endmenu
+
 menu "Board specific settings       "
 
 if MACH_TX28
diff --git a/arch/arm/mach-mxs/Makefile b/arch/arm/mach-mxs/Makefile
index f70a994..172d928 100644
--- a/arch/arm/mach-mxs/Makefile
+++ b/arch/arm/mach-mxs/Makefile
@@ -2,3 +2,4 @@ obj-y += imx.o iomux-imx.o reset-imx.o
 obj-$(CONFIG_DRIVER_VIDEO_STM) += imx_lcd_clk.o
 obj-$(CONFIG_ARCH_IMX23) += speed-imx23.o clocksource-imx23.o usb.o
 obj-$(CONFIG_ARCH_IMX28) += speed-imx28.o clocksource-imx28.o
+obj-$(CONFIG_MXS_OCOTP) += ocotp.o
diff --git a/arch/arm/mach-mxs/include/mach/imx23-regs.h b/arch/arm/mach-mxs/include/mach/imx23-regs.h
index cc8c03e..60f5bf9 100644
--- a/arch/arm/mach-mxs/include/mach/imx23-regs.h
+++ b/arch/arm/mach-mxs/include/mach/imx23-regs.h
@@ -32,6 +32,7 @@
 #define IMX_DBGUART_BASE	0x80070000
 #define IMX_TIM1_BASE		0x80068000
 #define IMX_IOMUXC_BASE		0x80018000
+#define IMX_OCOTP_BASE		0x8002c000
 #define IMX_WDT_BASE		0x8005c000
 #define IMX_CCM_BASE		0x80040000
 #define IMX_I2C1_BASE		0x80058000
diff --git a/arch/arm/mach-mxs/include/mach/imx28-regs.h b/arch/arm/mach-mxs/include/mach/imx28-regs.h
index 0c97c4c..9a2052c 100644
--- a/arch/arm/mach-mxs/include/mach/imx28-regs.h
+++ b/arch/arm/mach-mxs/include/mach/imx28-regs.h
@@ -29,6 +29,7 @@
 #define IMX_SSP2_BASE		0x80014000
 #define IMX_SSP3_BASE		0x80016000
 #define IMX_IOMUXC_BASE		0x80018000
+#define IMX_OCOTP_BASE		0x8002c000
 #define IMX_FB_BASE		0x80030000
 #define IMX_CCM_BASE		0x80040000
 #define IMX_WDT_BASE		0x80056000
diff --git a/arch/arm/mach-mxs/include/mach/ocotp.h b/arch/arm/mach-mxs/include/mach/ocotp.h
new file mode 100644
index 0000000..86b30c9
--- /dev/null
+++ b/arch/arm/mach-mxs/include/mach/ocotp.h
@@ -0,0 +1,12 @@
+/*
+ * Header file for mxs ocotp driver - same license as driver
+ *
+ * Copyright (C) 2012 by Wolfram Sang, Pengutronix e.K.
+ */
+
+#ifndef __MACH_OCOTP_H
+#define __MACH_OCOTP_H
+
+int mxs_ocotp_read(void *buf, int count, int offset);
+
+#endif /* __MACH_OCOTP_H */
diff --git a/arch/arm/mach-mxs/ocotp.c b/arch/arm/mach-mxs/ocotp.c
new file mode 100644
index 0000000..38f9ffd
--- /dev/null
+++ b/arch/arm/mach-mxs/ocotp.c
@@ -0,0 +1,139 @@
+/*
+ * ocotp.c - barebox driver for the On-Chip One Time Programmable for MXS
+ *
+ * Copyright (C) 2012 by Wolfram Sang, Pengutronix e.K.
+ * based on the kernel driver which is
+ * Copyright 2010 Freescale Semiconductor, Inc. All Rights Reserved.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ */
+
+#include <common.h>
+#include <init.h>
+#include <driver.h>
+#include <xfuncs.h>
+#include <errno.h>
+#include <param.h>
+#include <fcntl.h>
+#include <malloc.h>
+#include <io.h>
+#include <clock.h>
+
+#include <mach/generic.h>
+#include <mach/ocotp.h>
+#include <mach/imx-regs.h>
+
+#define DRIVERNAME "ocotp"
+
+#define OCOTP_WORD_OFFSET		0x20
+
+#define BM_OCOTP_CTRL_BUSY		(1 << 8)
+#define BM_OCOTP_CTRL_ERROR		(1 << 9)
+#define BM_OCOTP_CTRL_RD_BANK_OPEN	(1 << 12)
+
+struct ocotp_priv {
+	struct cdev cdev;
+	void __iomem *base;
+};
+
+static ssize_t mxs_ocotp_cdev_read(struct cdev *cdev, void *buf, size_t count,
+		ulong offset, ulong flags)
+{
+	struct ocotp_priv *priv = cdev->priv;
+	void __iomem *base = priv->base;
+	size_t size = min((ulong)count, cdev->size - offset);
+	uint64_t start;
+	int i;
+
+	/*
+	 * clk_enable(hbus_clk) for ocotp can be skipped
+	 * as it must be on when system is running.
+	 */
+
+	/* try to clear ERROR bit */
+	writel(BM_OCOTP_CTRL_ERROR, base + BIT_CLR);
+
+	/* check both BUSY and ERROR cleared */
+	start = get_time_ns();
+	while (readl(base) & (BM_OCOTP_CTRL_BUSY | BM_OCOTP_CTRL_ERROR))
+		if (is_timeout(start, MSECOND))
+			return -ETIMEDOUT;
+
+	/* open OCOTP banks for read */
+	writel(BM_OCOTP_CTRL_RD_BANK_OPEN, base + BIT_SET);
+
+	/* approximately wait 32 hclk cycles */
+	udelay(1);
+
+	/* poll BUSY bit becoming cleared */
+	start = get_time_ns();
+	while (readl(base) & BM_OCOTP_CTRL_BUSY)
+		if (is_timeout(start, MSECOND))
+			return -ETIMEDOUT;
+
+	for (i = 0; i < size; i++)
+		/* When reading bytewise, we need to hop over the SET/CLR/TGL regs */
+		((u8 *)buf)[i] = readb(base + OCOTP_WORD_OFFSET +
+				(((i + offset) & 0xfc) << 2) + ((i + offset) & 3));
+
+	/* close banks for power saving */
+	writel(BM_OCOTP_CTRL_RD_BANK_OPEN, base + BIT_CLR);
+
+	return size;
+}
+
+static struct file_operations mxs_ocotp_ops = {
+	.read	= mxs_ocotp_cdev_read,
+	.lseek	= dev_lseek_default,
+};
+
+static int mxs_ocotp_probe(struct device_d *dev)
+{
+	int err;
+	struct ocotp_priv *priv = xzalloc(sizeof (*priv));
+
+	priv->base = dev_request_mem_region(dev, 0);
+	priv->cdev.dev = dev;
+	priv->cdev.ops = &mxs_ocotp_ops;
+	priv->cdev.priv = priv;
+	priv->cdev.size = cpu_is_mx23() ? 128 : 160;
+	priv->cdev.name = DRIVERNAME;
+
+	err = devfs_create(&priv->cdev);
+	if (err < 0)
+		return err;
+
+	return 0;
+}
+
+static struct driver_d mxs_ocotp_driver = {
+	.name	= DRIVERNAME,
+	.probe	= mxs_ocotp_probe,
+};
+
+static int mxs_ocotp_init(void)
+{
+	register_driver(&mxs_ocotp_driver);
+
+	return 0;
+}
+coredevice_initcall(mxs_ocotp_init);
+
+int mxs_ocotp_read(void *buf, int count, int offset)
+{
+	struct cdev *cdev;
+	int ret;
+
+	cdev = cdev_open(DRIVERNAME, O_RDONLY);
+	if (!cdev)
+		return -ENODEV;
+
+	ret = cdev_read(cdev, buf, count, offset, 0);
+
+	cdev_close(cdev);
+
+	return ret;
+}
-- 
1.7.9.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x232.google.com ([2a00:1450:4008:c01::232])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W66o3-0007Y9-SU
 for barebox@lists.infradead.org; Wed, 22 Jan 2014 23:02:00 +0000
Received: by mail-bk0-f50.google.com with SMTP id w16so101225bkz.23
 for <barebox@lists.infradead.org>; Wed, 22 Jan 2014 15:01:37 -0800 (PST)
From: Philipp Zabel <philipp.zabel@gmail.com>
Date: Thu, 23 Jan 2014 00:01:30 +0100
Message-Id: <1390431691-5090-2-git-send-email-philipp.zabel@gmail.com>
In-Reply-To: <1390431691-5090-1-git-send-email-philipp.zabel@gmail.com>
References: <1390431691-5090-1-git-send-email-philipp.zabel@gmail.com>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [RFC PATCH 1/2] ARM i.MX6: Add bootmode setting code
To: barebox@lists.infradead.org
Cc: Troy Kisky <troy.kisky@boundarydevices.com>

This patch allows to set the bootmode parameters that the boot rom
interprets to determine the boot source. This allows to set the
bootsource for the next reboot. Only tested for mmc boot on GK802.

Signed-off-by: Philipp Zabel <philipp.zabel@gmail.com>
---
 arch/arm/mach-imx/boot.c                 | 75 ++++++++++++++++++++++++++++++++
 arch/arm/mach-imx/imx6.c                 |  2 +
 arch/arm/mach-imx/include/mach/generic.h |  6 +++
 common/bootmode.c                        | 39 +++++++++++++++++
 include/bootmode.h                       | 34 +++++++++++++++
 5 files changed, 156 insertions(+)
 create mode 100644 common/bootmode.c
 create mode 100644 include/bootmode.h

diff --git a/arch/arm/mach-imx/boot.c b/arch/arm/mach-imx/boot.c
index 4d81fd4..7a46cd0 100644
--- a/arch/arm/mach-imx/boot.c
+++ b/arch/arm/mach-imx/boot.c
@@ -282,3 +282,78 @@ internal_boot:
 
 	return;
 }
+
+#define IMX6_SRC_GPR9	0x40
+#define IMX6_SRC_GPR10	0x44
+
+int imx6_bootmode_set(enum bootsource src, int instance,
+		      struct device_node *node, void *data)
+{
+	void __iomem *src_base = data;
+	int bus_width, chip_sel;
+	unsigned int gpr9;
+
+	switch (src) {
+	case BOOTSOURCE_SERIAL:
+		/* Reserved value, fallback to serial */
+		gpr9 = 0x00000001;
+		break;
+	case BOOTSOURCE_NOR:
+	case BOOTSOURCE_NAND:
+		/* TODO */
+		return -EINVAL;
+	case BOOTSOURCE_MMC:
+		gpr9 = 1 << 6;
+
+		if (instance < 0 || instance > 3)
+			return -EINVAL;
+		gpr9 |= instance << 11;
+
+		if (of_property_read_u32(node, "bus-width", &bus_width) < 0)
+			bus_width = 1;
+		switch (bus_width) {
+		case 1:
+			gpr9 |= 0 << 13;
+			break;
+		case 4:
+			gpr9 |= 1 << 13;
+			break;
+		case 8:
+			gpr9 |= 2 << 13;
+			gpr9 |= 1 << 5; /* eMMC */
+			break;
+		default:
+			return -EINVAL;
+		}
+		break;
+	case BOOTSOURCE_HD:
+		gpr9 = 2 << 4;
+		break;
+	case BOOTSOURCE_SPI:
+		gpr9 = 3 << 4;
+
+		if (instance < 0 || instance > 4)
+			return -EINVAL;
+		gpr9 |= instance << 24;
+
+		if (of_property_read_u32(node, "reg", &chip_sel) < 0)
+			return -EINVAL;
+		gpr9 |= chip_sel << 28;
+
+		gpr9 |= 1 << 27; /* 24-bit */
+		break;
+	case BOOTSOURCE_I2C:
+		gpr9 = 3 << 4;
+		if (instance < 0  || instance > 2)
+			return -EINVAL;
+		gpr9 |= (instance + 5) << 24;
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	writel(gpr9, src_base + IMX6_SRC_GPR9);
+	writel(BIT(28), src_base + IMX6_SRC_GPR10);
+
+	return 0;
+}
diff --git a/arch/arm/mach-imx/imx6.c b/arch/arm/mach-imx/imx6.c
index 304b1c0..de5527a 100644
--- a/arch/arm/mach-imx/imx6.c
+++ b/arch/arm/mach-imx/imx6.c
@@ -12,6 +12,7 @@
  */
 
 #include <init.h>
+#include <bootmode.h>
 #include <common.h>
 #include <io.h>
 #include <sizes.h>
@@ -96,6 +97,7 @@ int imx6_init(void)
 	u32 mx6_silicon_revision;
 
 	imx6_boot_save_loc((void *)MX6_SRC_BASE_ADDR);
+	bootmode_register_handler(imx6_bootmode_set, (void *)MX6_SRC_BASE_ADDR);
 
 	rev = readl(MX6_ANATOP_BASE_ADDR + SI_REV);
 	switch (rev & 0xff) {
diff --git a/arch/arm/mach-imx/include/mach/generic.h b/arch/arm/mach-imx/include/mach/generic.h
index 506b1da..77a00fb 100644
--- a/arch/arm/mach-imx/include/mach/generic.h
+++ b/arch/arm/mach-imx/include/mach/generic.h
@@ -33,6 +33,12 @@ int imx51_devices_init(void);
 int imx53_devices_init(void);
 int imx6_devices_init(void);
 
+enum bootsource;
+struct device_node;
+
+int imx6_bootmode_set(enum bootsource src, int instance,
+		      struct device_node *node, void *data);
+
 /* There's a off-by-one betweem the gpio bank number and the gpiochip */
 /* range e.g. GPIO_1_5 is gpio 5 under linux */
 #define IMX_GPIO_NR(bank, nr)		(((bank) - 1) * 32 + (nr))
diff --git a/common/bootmode.c b/common/bootmode.c
new file mode 100644
index 0000000..74809a6
--- /dev/null
+++ b/common/bootmode.c
@@ -0,0 +1,39 @@
+/*
+ * Copyright (C) 2013 Philipp Zabel
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
+ */
+#include <bootsource.h>
+#include <common.h>
+
+static int (*bootmode_handler)(enum bootsource src, int instance,
+			       struct device_node *node, void *data);
+static void *bootmode_handler_data;
+
+int bootmode_register_handler(int (*handler)(enum bootsource src, int instance,
+					     struct device_node *node,
+					     void *data), void *data)
+{
+	bootmode_handler = handler;
+	bootmode_handler_data = data;
+
+	return 0;
+}
+
+int bootmode_set(enum bootsource src, int instance,
+		 struct device_node *node)
+{
+	if (!bootmode_handler)
+		return -ENODEV;
+
+	return bootmode_handler(src, instance, node, bootmode_handler_data);
+}
diff --git a/include/bootmode.h b/include/bootmode.h
new file mode 100644
index 0000000..cbd4617
--- /dev/null
+++ b/include/bootmode.h
@@ -0,0 +1,34 @@
+#ifndef __INCLUDE_BOOTMODE_H
+#define __INCLUDE_BOOTMODE_H
+
+#include <bootsource.h>
+#include <common.h>
+
+#ifdef CONFIG_BOOTMODE
+
+int bootmode_register_handler(int (*handler)(enum bootsource src, int instance,
+					     struct device_node *node,
+					     void *data), void *data);
+
+int bootmode_set(enum bootsource src, int instance,
+		 struct device_node *node);
+
+#else
+
+static inline int bootmode_register_handler(int (*handler)(enum bootsource src,
+					    int instance,
+					    struct device_node *node,
+					    void *data), void *data)
+{
+	return -EINVAL;
+}
+
+int bootmode_set(enum bootsource src, int instance,
+		 struct device_node *node)
+{
+	return -ENODEV;
+}
+
+#endif
+
+#endif /* __INCLUDE_BOOTMODE_H */
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

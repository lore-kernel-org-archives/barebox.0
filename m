Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x233.google.com ([2a00:1450:4010:c03::233])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UZddc-0006gA-Pg
 for barebox@lists.infradead.org; Tue, 07 May 2013 08:52:45 +0000
Received: by mail-la0-f51.google.com with SMTP id ep20so306139lab.10
 for <barebox@lists.infradead.org>; Tue, 07 May 2013 01:52:21 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue,  7 May 2013 12:51:25 +0400
Message-Id: <1367916686-12975-2-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1367916686-12975-1-git-send-email-antonynpavlov@gmail.com>
References: <1367916686-12975-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 1/2] MIPS: xburst: use common serial code
To: barebox@lists.infradead.org

The Ingenic JZ4740, JZ4755 and JZ4770 SoCs use
the same IP core for UART interface. This IP core
is NS16550-compatible, but it needs small workaround.

This commit moves the UART code for Ingenic SoCs
from board level to machine level. So the code
can be reused for different boards or even
different SoCs.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/mach-xburst/Makefile               |    1 +
 arch/mips/mach-xburst/include/mach/devices.h |    8 ++++
 arch/mips/mach-xburst/serial.c               |   60 ++++++++++++++++++++++++++
 3 files changed, 69 insertions(+)
 create mode 100644 arch/mips/mach-xburst/include/mach/devices.h
 create mode 100644 arch/mips/mach-xburst/serial.c

diff --git a/arch/mips/mach-xburst/Makefile b/arch/mips/mach-xburst/Makefile
index e5634ba..3e0cd73 100644
--- a/arch/mips/mach-xburst/Makefile
+++ b/arch/mips/mach-xburst/Makefile
@@ -1 +1,2 @@
+obj-y += serial.o
 obj-$(CONFIG_CPU_JZ4755) += csrc-jz4750.o reset-jz4750.o
diff --git a/arch/mips/mach-xburst/include/mach/devices.h b/arch/mips/mach-xburst/include/mach/devices.h
new file mode 100644
index 0000000..931749d
--- /dev/null
+++ b/arch/mips/mach-xburst/include/mach/devices.h
@@ -0,0 +1,8 @@
+#ifndef __MACH_XBURST_DEVICES_H
+#define __MACH_XBURST_DEVICES_H
+
+#include <driver.h>
+
+struct device_d *jz_add_uart(int id, unsigned long base, unsigned int clock);
+
+#endif /* __MACH_XBURST_DEVICES_H */
diff --git a/arch/mips/mach-xburst/serial.c b/arch/mips/mach-xburst/serial.c
new file mode 100644
index 0000000..acf5648
--- /dev/null
+++ b/arch/mips/mach-xburst/serial.c
@@ -0,0 +1,60 @@
+/*
+ * Copyright (C) 2013 Antony Pavlov <antonynpavlov@gmail.com>
+ *
+ * Based on the linux kernel JZ4740 serial support:
+ * Copyright (C) 2010, Lars-Peter Clausen <lars@metafoo.de>
+ *
+ * This file is part of barebox.
+ * See file CREDITS for list of people who contributed to this project.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#include <common.h>
+#include <ns16550.h>
+#include <io.h>
+#include <mach/devices.h>
+
+#define JZ_UART_SHIFT	2
+
+#define ier		(1 << JZ_UART_SHIFT)
+#define fcr		(2 << JZ_UART_SHIFT)
+
+static void jz_serial_reg_write(unsigned int val, unsigned long base,
+	unsigned char reg_offset)
+{
+	switch (reg_offset) {
+	case fcr:
+		val |= 0x10; /* Enable uart module */
+		break;
+	case ier:
+		val |= (val & 0x4) << 2;
+		break;
+	default:
+		break;
+	}
+
+	writeb(val & 0xff, (void *)(base + reg_offset));
+}
+
+struct device_d *jz_add_uart(int id, unsigned long base, unsigned int clock)
+{
+	struct NS16550_plat *serial_plat;
+
+	serial_plat = xzalloc(sizeof(*serial_plat));
+
+	serial_plat->shift = JZ_UART_SHIFT;
+	serial_plat->reg_write = &jz_serial_reg_write;
+	serial_plat->clock = clock;
+
+	return add_ns16550_device(id, base, 8 << JZ_UART_SHIFT,
+			IORESOURCE_MEM_8BIT, serial_plat);
+}
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

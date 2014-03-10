Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x231.google.com ([2a00:1450:4010:c03::231])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WN7r5-00068S-J0
 for barebox@lists.infradead.org; Mon, 10 Mar 2014 21:35:29 +0000
Received: by mail-la0-f49.google.com with SMTP id mc6so4980444lab.22
 for <barebox@lists.infradead.org>; Mon, 10 Mar 2014 14:35:05 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue, 11 Mar 2014 01:34:39 +0400
Message-Id: <1394487281-10462-7-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1394487281-10462-1-git-send-email-antonynpavlov@gmail.com>
References: <1394487281-10462-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 6/8] ARM: davinci: add virt2real board support
To: barebox@lists.infradead.org

The virt2real microcontroller, or virturilka,
is a miniature board for creation of WiFi
or internet controllable smart devices.

See http://virt2real.com for details.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/arm/boards/Makefile             |  1 +
 arch/arm/boards/virt2real/Makefile   |  1 +
 arch/arm/boards/virt2real/board.c    | 49 ++++++++++++++++++++++++++++++++++++
 arch/arm/boards/virt2real/lowlevel.c | 34 +++++++++++++++++++++++++
 arch/arm/mach-davinci/Kconfig        |  9 +++++++
 5 files changed, 94 insertions(+)

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index ffd6bb3..fdad359 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -98,4 +98,5 @@ obj-$(CONFIG_MACH_USB_A9263)			+= usb-a926x/
 obj-$(CONFIG_MACH_USB_A9G20)			+= usb-a926x/
 obj-$(CONFIG_MACH_VERSATILEPB)			+= versatile/
 obj-$(CONFIG_MACH_VEXPRESS)			+= vexpress/
+obj-$(CONFIG_MACH_VIRT2REAL)			+= virt2real/
 obj-$(CONFIG_MACH_ZEDBOARD)			+= avnet-zedboard/
diff --git a/arch/arm/boards/virt2real/Makefile b/arch/arm/boards/virt2real/Makefile
new file mode 100644
index 0000000..b2f44bb
--- /dev/null
+++ b/arch/arm/boards/virt2real/Makefile
@@ -0,0 +1 @@
+obj-y += lowlevel.o board.o
diff --git a/arch/arm/boards/virt2real/board.c b/arch/arm/boards/virt2real/board.c
new file mode 100644
index 0000000..da4b2fb
--- /dev/null
+++ b/arch/arm/boards/virt2real/board.c
@@ -0,0 +1,49 @@
+/*
+ * Copyright (C) 2014 Antony Pavlov <antonynpavlov@gmail.com>
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
+#include <init.h>
+#include <sizes.h>
+#include <asm/memory.h>
+#include <ns16550.h>
+
+#include <mach/serial.h>
+
+static int davinci_init(void)
+{
+	arm_add_mem_device("ram0", 0x82000000, SZ_16M);
+
+	return 0;
+}
+mem_initcall(davinci_init);
+
+static struct NS16550_plat serial_plat = {
+	.clock = 24000000,
+	.shift = 2,
+};
+
+static int console_init(void)
+{
+	barebox_set_model("virt2real");
+	barebox_set_hostname("virt2real");
+
+	add_ns16550_device(DEVICE_ID_DYNAMIC, DAVINCI_UART0_BASE,
+		8 << serial_plat.shift, IORESOURCE_MEM_8BIT, &serial_plat);
+
+	return 0;
+}
+console_initcall(console_init);
diff --git a/arch/arm/boards/virt2real/lowlevel.c b/arch/arm/boards/virt2real/lowlevel.c
new file mode 100644
index 0000000..3c90d78
--- /dev/null
+++ b/arch/arm/boards/virt2real/lowlevel.c
@@ -0,0 +1,34 @@
+/*
+ * Copyright (C) 2014 Antony Pavlov <antonynpavlov@gmail.com>
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
+#define __LOWLEVEL_INIT__
+
+#include <common.h>
+#include <asm/barebox-arm.h>
+#include <asm/barebox-arm-head.h>
+#include <init.h>
+#include <sizes.h>
+
+#define VIRT2REAL_SRAM_BASE 0x82000000
+#define VIRT2REAL_SRAM_SIZE SZ_16M
+
+void __naked __bare_init barebox_arm_reset_vector(void)
+{
+	arm_cpu_lowlevel_init();
+
+	barebox_arm_entry(VIRT2REAL_SRAM_BASE, VIRT2REAL_SRAM_SIZE, 0);
+}
diff --git a/arch/arm/mach-davinci/Kconfig b/arch/arm/mach-davinci/Kconfig
index 5677f8d..3165d50 100644
--- a/arch/arm/mach-davinci/Kconfig
+++ b/arch/arm/mach-davinci/Kconfig
@@ -4,4 +4,13 @@ config ARCH_TEXT_BASE
 	hex
 	default 0x82000000
 
+choice
+	prompt "Davinci Board type"
+
+config MACH_VIRT2REAL
+	bool "Virt2Real"
+	select HAVE_DEFAULT_ENVIRONMENT_NEW
+
+endchoice
+
 endif
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

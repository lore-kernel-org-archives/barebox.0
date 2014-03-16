Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x232.google.com ([2a00:1450:4010:c03::232])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WPBRJ-0003QY-Gd
 for barebox@lists.infradead.org; Sun, 16 Mar 2014 13:49:22 +0000
Received: by mail-la0-f50.google.com with SMTP id y1so2924306lam.23
 for <barebox@lists.infradead.org>; Sun, 16 Mar 2014 06:48:59 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sun, 16 Mar 2014 17:48:19 +0400
Message-Id: <1394977701-5889-9-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1394977701-5889-1-git-send-email-antonynpavlov@gmail.com>
References: <1394977701-5889-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH v2 08/10] ARM: davinci: add virt2real board support
To: barebox@lists.infradead.org

The virt2real microcontroller, or virturilka,
is a miniature board for creation of WiFi
or internet controllable smart devices.

See http://virt2real.com for details.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/arm/boards/Makefile             |  1 +
 arch/arm/boards/virt2real/Makefile   |  1 +
 arch/arm/boards/virt2real/board.c    | 27 +++++++++++++++++++++++++++
 arch/arm/boards/virt2real/lowlevel.c | 34 ++++++++++++++++++++++++++++++++++
 arch/arm/dts/virt2real.dts           | 35 +++++++++++++++++++++++++++++++++++
 arch/arm/mach-davinci/Kconfig        |  9 +++++++++
 6 files changed, 107 insertions(+)

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index 0d8c9cf..e7af889 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -99,4 +99,5 @@ obj-$(CONFIG_MACH_USB_A9263)			+= usb-a926x/
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
index 0000000..b7f7217
--- /dev/null
+++ b/arch/arm/boards/virt2real/board.c
@@ -0,0 +1,27 @@
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
+
+static int hostname_init(void)
+{
+	barebox_set_hostname("virt2real");
+
+	return 0;
+}
+core_initcall(hostname_init);
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
diff --git a/arch/arm/dts/virt2real.dts b/arch/arm/dts/virt2real.dts
new file mode 100644
index 0000000..0e2210a
--- /dev/null
+++ b/arch/arm/dts/virt2real.dts
@@ -0,0 +1,35 @@
+/dts-v1/;
+
+#include "dm365.dtsi"
+
+/ {
+	model = "virt2real";
+
+	memory {
+		reg = <0x82000000 0x01000000>;
+	};
+
+	soc {
+		serial0: serial@1c20000 {
+			status = "okay";
+		};
+
+		gpio: gpio@1c67000 {
+			status = "okay";
+		};
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		green_led {
+			label = "green led";
+			gpios = <&gpio 73 0>;
+		};
+
+		red_led {
+			label = "red led";
+			gpios = <&gpio 74 0>;
+		};
+	};
+};
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

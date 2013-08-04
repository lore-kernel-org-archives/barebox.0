Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x231.google.com ([2a00:1450:4010:c04::231])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V64uN-00079Q-0M
 for barebox@lists.infradead.org; Sun, 04 Aug 2013 20:28:07 +0000
Received: by mail-lb0-f177.google.com with SMTP id r11so1551309lbv.22
 for <barebox@lists.infradead.org>; Sun, 04 Aug 2013 13:27:45 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon,  5 Aug 2013 00:25:25 +0400
Message-Id: <1375647927-30627-4-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1375647927-30627-1-git-send-email-antonynpavlov@gmail.com>
References: <1375647927-30627-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC 3/5] ARM: DIGIC: add Canon PowerShot A1100 IS support
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/arm/boards/Makefile                 |  1 +
 arch/arm/boards/canon-a1100/Kconfig      | 10 ++++++++++
 arch/arm/boards/canon-a1100/Makefile     |  2 ++
 arch/arm/boards/canon-a1100/board.c      | 29 +++++++++++++++++++++++++++++
 arch/arm/boards/canon-a1100/env/bin/init | 27 +++++++++++++++++++++++++++
 arch/arm/boards/canon-a1100/lowlevel.c   | 10 ++++++++++
 arch/arm/mach-digic/Kconfig              |  4 ++++
 7 files changed, 83 insertions(+)
 create mode 100644 arch/arm/boards/canon-a1100/Kconfig
 create mode 100644 arch/arm/boards/canon-a1100/Makefile
 create mode 100644 arch/arm/boards/canon-a1100/board.c
 create mode 100644 arch/arm/boards/canon-a1100/env/bin/init
 create mode 100644 arch/arm/boards/canon-a1100/lowlevel.c

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index f1160f4..1eb120d 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -13,6 +13,7 @@ obj-$(CONFIG_MACH_AT91SAM9X5EK)			+= at91sam9x5ek/
 obj-$(CONFIG_MACH_BEAGLE)			+= beagle/
 obj-$(CONFIG_MACH_BEAGLEBONE)			+= beaglebone/
 obj-$(CONFIG_MACH_CANON_600D)			+= canon-600d/
+obj-$(CONFIG_MACH_CANON_A1100)			+= canon-a1100/
 obj-$(CONFIG_MACH_CCMX51)			+= ccxmx51/
 obj-$(CONFIG_MACH_CFA10036)			+= crystalfontz-cfa10036/
 obj-$(CONFIG_MACH_CHUMBY)			+= chumby_falconwing/
diff --git a/arch/arm/boards/canon-a1100/Kconfig b/arch/arm/boards/canon-a1100/Kconfig
new file mode 100644
index 0000000..4936336
--- /dev/null
+++ b/arch/arm/boards/canon-a1100/Kconfig
@@ -0,0 +1,10 @@
+if MACH_CANON_A1100
+
+config ARCH_TEXT_BASE
+	hex
+	default 0x00001900
+
+config BOARDINFO
+	default "Canon PowerShot A1100 IS"
+
+endif
diff --git a/arch/arm/boards/canon-a1100/Makefile b/arch/arm/boards/canon-a1100/Makefile
new file mode 100644
index 0000000..01c7a25
--- /dev/null
+++ b/arch/arm/boards/canon-a1100/Makefile
@@ -0,0 +1,2 @@
+obj-y += board.o
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/canon-a1100/board.c b/arch/arm/boards/canon-a1100/board.c
new file mode 100644
index 0000000..e508399
--- /dev/null
+++ b/arch/arm/boards/canon-a1100/board.c
@@ -0,0 +1,29 @@
+/*
+ * Copyright (C) 2013 Antony Pavlov <antonynpavlov@gmail.com>
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
+
+static int mem_init(void)
+{
+	arm_add_mem_device("ram0", 0, SZ_8M);
+
+	return 0;
+}
+mem_initcall(mem_init);
diff --git a/arch/arm/boards/canon-a1100/env/bin/init b/arch/arm/boards/canon-a1100/env/bin/init
new file mode 100644
index 0000000..d9173b2
--- /dev/null
+++ b/arch/arm/boards/canon-a1100/env/bin/init
@@ -0,0 +1,27 @@
+#!/bin/sh
+
+# Canon PowerShot A1100 IS "direct print" led (blue)
+LED_ADDR=0xC02200CC
+LED_ON=0x46
+LED_OFF=0x44
+
+mw $LED_ADDR $LED_ON
+echo "== /env/bin/init started =="
+echo
+echo "HELLO!"
+mw $LED_ADDR $LED_OFF
+echo
+iomem
+echo
+
+# blink forever
+# use 'echo' for delay
+while true; do
+	echo "led_on"
+	mw $LED_ADDR $LED_ON
+	echo "led_off"
+	mw $LED_ADDR $LED_OFF
+done
+
+#echo
+#echo "== /env/bin/init done =="
diff --git a/arch/arm/boards/canon-a1100/lowlevel.c b/arch/arm/boards/canon-a1100/lowlevel.c
new file mode 100644
index 0000000..aed34e0
--- /dev/null
+++ b/arch/arm/boards/canon-a1100/lowlevel.c
@@ -0,0 +1,10 @@
+#include <common.h>
+#include <sizes.h>
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
+
+void __naked barebox_arm_reset_vector(void)
+{
+	arm_cpu_lowlevel_init();
+	barebox_arm_entry(0x0, SZ_8M, 0);
+}
diff --git a/arch/arm/mach-digic/Kconfig b/arch/arm/mach-digic/Kconfig
index d1561e8..7354540 100644
--- a/arch/arm/mach-digic/Kconfig
+++ b/arch/arm/mach-digic/Kconfig
@@ -6,8 +6,12 @@ choice
 config MACH_CANON_600D
 	bool "Canon EOS 600D"
 
+config MACH_CANON_A1100
+	bool "Canon PowerShot A1100 IS"
+
 endchoice
 
 source arch/arm/boards/canon-600d/Kconfig
+source arch/arm/boards/canon-a1100/Kconfig
 
 endif
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

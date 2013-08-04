Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22d.google.com ([2a00:1450:4010:c03::22d])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V64uM-00079P-7L
 for barebox@lists.infradead.org; Sun, 04 Aug 2013 20:28:06 +0000
Received: by mail-la0-f45.google.com with SMTP id fj20so1569711lab.4
 for <barebox@lists.infradead.org>; Sun, 04 Aug 2013 13:27:42 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon,  5 Aug 2013 00:25:24 +0400
Message-Id: <1375647927-30627-3-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC 2/5] ARM: DIGIC: add Canon EOS 600D support
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/arm/boards/Makefile                |  1 +
 arch/arm/boards/canon-600d/Kconfig      | 10 ++++++++++
 arch/arm/boards/canon-600d/Makefile     |  2 ++
 arch/arm/boards/canon-600d/board.c      | 29 +++++++++++++++++++++++++++++
 arch/arm/boards/canon-600d/env/bin/init | 27 +++++++++++++++++++++++++++
 arch/arm/boards/canon-600d/lowlevel.c   | 10 ++++++++++
 arch/arm/mach-digic/Kconfig             |  5 +++++
 7 files changed, 84 insertions(+)
 create mode 100644 arch/arm/boards/canon-600d/Kconfig
 create mode 100644 arch/arm/boards/canon-600d/Makefile
 create mode 100644 arch/arm/boards/canon-600d/board.c
 create mode 100644 arch/arm/boards/canon-600d/env/bin/init
 create mode 100644 arch/arm/boards/canon-600d/lowlevel.c

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index 2e924fd..f1160f4 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -12,6 +12,7 @@ obj-$(CONFIG_MACH_AT91SAM9N12EK)		+= at91sam9n12ek/
 obj-$(CONFIG_MACH_AT91SAM9X5EK)			+= at91sam9x5ek/
 obj-$(CONFIG_MACH_BEAGLE)			+= beagle/
 obj-$(CONFIG_MACH_BEAGLEBONE)			+= beaglebone/
+obj-$(CONFIG_MACH_CANON_600D)			+= canon-600d/
 obj-$(CONFIG_MACH_CCMX51)			+= ccxmx51/
 obj-$(CONFIG_MACH_CFA10036)			+= crystalfontz-cfa10036/
 obj-$(CONFIG_MACH_CHUMBY)			+= chumby_falconwing/
diff --git a/arch/arm/boards/canon-600d/Kconfig b/arch/arm/boards/canon-600d/Kconfig
new file mode 100644
index 0000000..8aebe74
--- /dev/null
+++ b/arch/arm/boards/canon-600d/Kconfig
@@ -0,0 +1,10 @@
+if MACH_CANON_600D
+
+config ARCH_TEXT_BASE
+	hex
+	default 0x00800000
+
+config BOARDINFO
+	default "Canon EOS 600D"
+
+endif
diff --git a/arch/arm/boards/canon-600d/Makefile b/arch/arm/boards/canon-600d/Makefile
new file mode 100644
index 0000000..01c7a25
--- /dev/null
+++ b/arch/arm/boards/canon-600d/Makefile
@@ -0,0 +1,2 @@
+obj-y += board.o
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/canon-600d/board.c b/arch/arm/boards/canon-600d/board.c
new file mode 100644
index 0000000..9768f91
--- /dev/null
+++ b/arch/arm/boards/canon-600d/board.c
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
+	arm_add_mem_device("ram0", 0, SZ_256M);
+
+	return 0;
+}
+mem_initcall(mem_init);
diff --git a/arch/arm/boards/canon-600d/env/bin/init b/arch/arm/boards/canon-600d/env/bin/init
new file mode 100644
index 0000000..99c54ca
--- /dev/null
+++ b/arch/arm/boards/canon-600d/env/bin/init
@@ -0,0 +1,27 @@
+#!/bin/sh
+
+# Canon EOS 600D "sd-card activity" led (red)
+LED_ADDR=0xC0220134
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
diff --git a/arch/arm/boards/canon-600d/lowlevel.c b/arch/arm/boards/canon-600d/lowlevel.c
new file mode 100644
index 0000000..b694c89
--- /dev/null
+++ b/arch/arm/boards/canon-600d/lowlevel.c
@@ -0,0 +1,10 @@
+#include <common.h>
+#include <sizes.h>
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
+
+void __naked barebox_arm_reset_vector(void)
+{
+	arm_cpu_lowlevel_init();
+	barebox_arm_entry(0x0, SZ_64M, 0);
+}
diff --git a/arch/arm/mach-digic/Kconfig b/arch/arm/mach-digic/Kconfig
index 49ce44a..d1561e8 100644
--- a/arch/arm/mach-digic/Kconfig
+++ b/arch/arm/mach-digic/Kconfig
@@ -3,6 +3,11 @@ if ARCH_DIGIC
 choice
 	prompt "camera type"
 
+config MACH_CANON_600D
+	bool "Canon EOS 600D"
+
 endchoice
 
+source arch/arm/boards/canon-600d/Kconfig
+
 endif
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

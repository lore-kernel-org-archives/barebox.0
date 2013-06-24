Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f176.google.com ([209.85.217.176])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UrCBL-0002KO-9G
 for barebox@lists.infradead.org; Mon, 24 Jun 2013 19:12:09 +0000
Received: by mail-lb0-f176.google.com with SMTP id z5so593668lbh.35
 for <barebox@lists.infradead.org>; Mon, 24 Jun 2013 12:11:40 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon, 24 Jun 2013 23:10:11 +0400
Message-Id: <1372101012-11666-3-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1372101012-11666-1-git-send-email-antonynpavlov@gmail.com>
References: <1372101012-11666-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 2/3] MIPS: qemu-malta: rework debug_ll.h
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 .../boards/qemu-malta/include/board/debug_ll.h     |   27 ++++++++++++++++++++
 arch/mips/boards/qemu-malta/init.c                 |    2 +-
 arch/mips/mach-malta/include/mach/debug_ll.h       |    9 +++----
 arch/mips/mach-malta/include/mach/hardware.h       |    4 +--
 4 files changed, 33 insertions(+), 9 deletions(-)
 create mode 100644 arch/mips/boards/qemu-malta/include/board/debug_ll.h

diff --git a/arch/mips/boards/qemu-malta/include/board/debug_ll.h b/arch/mips/boards/qemu-malta/include/board/debug_ll.h
new file mode 100644
index 0000000..1e56040
--- /dev/null
+++ b/arch/mips/boards/qemu-malta/include/board/debug_ll.h
@@ -0,0 +1,27 @@
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
+#ifndef __INCLUDE_BOARD_DEBUG_LL_QEMU_MALTA_H__
+#define __INCLUDE_BOARD_DEBUG_LL_QEMU_MALTA_H__
+
+#include <mach/hardware.h>
+
+#define DEBUG_LL_UART_ADDR	MALTA_PIIX4_UART0
+#define DEBUG_LL_UART_SHIFT	0
+#define DEBUG_LL_UART_DIVISOR 1843200 /* no matter for emulated port */
+
+#endif /* __INCLUDE_BOARD_DEBUG_LL_QEMU_MALTA_H__ */
diff --git a/arch/mips/boards/qemu-malta/init.c b/arch/mips/boards/qemu-malta/init.c
index db26b3b..f77fcad 100644
--- a/arch/mips/boards/qemu-malta/init.c
+++ b/arch/mips/boards/qemu-malta/init.c
@@ -44,7 +44,7 @@ static struct NS16550_plat serial_plat = {
 static int malta_console_init(void)
 {
 	/* Register the serial port */
-	add_ns16550_device(DEVICE_ID_DYNAMIC, DEBUG_LL_UART_ADDR, 8,
+	add_ns16550_device(DEVICE_ID_DYNAMIC, MALTA_PIIX4_UART0, 8,
 			IORESOURCE_MEM_8BIT, &serial_plat);
 
 	return 0;
diff --git a/arch/mips/mach-malta/include/mach/debug_ll.h b/arch/mips/mach-malta/include/mach/debug_ll.h
index 3e8b01b..c9e89bc 100644
--- a/arch/mips/mach-malta/include/mach/debug_ll.h
+++ b/arch/mips/mach-malta/include/mach/debug_ll.h
@@ -18,11 +18,10 @@
 /** @file
  *  This File contains declaration for early output support
  */
-#ifndef __INCLUDE_ARCH_DEBUG_LL_H__
-#define   __INCLUDE_ARCH_DEBUG_LL_H__
-
-#include <mach/hardware.h>
+#ifndef __MACH_MALTA_DEBUG_LL_H__
+#define __MACH_MALTA_DEBUG_LL_H__
 
+#include <board/debug_ll.h>
 #include <asm/debug_ll_ns16550.h>
 
-#endif  /* __INCLUDE_ARCH_DEBUG_LL_H__ */
+#endif /* __MACH_MALTA_DEBUG_LL_H__ */
diff --git a/arch/mips/mach-malta/include/mach/hardware.h b/arch/mips/mach-malta/include/mach/hardware.h
index 8bd814d..affb4ea 100644
--- a/arch/mips/mach-malta/include/mach/hardware.h
+++ b/arch/mips/mach-malta/include/mach/hardware.h
@@ -18,9 +18,7 @@
 #ifndef __INCLUDE_ARCH_HARDWARE_H__
 #define   __INCLUDE_ARCH_HARDWARE_H__
 
-#define DEBUG_LL_UART_ADDR	0xb00003f8
-#define DEBUG_LL_UART_SHIFT	0
-#define DEBUG_LL_UART_DIVISOR	1	/* no matter for emulated port */
+#define MALTA_PIIX4_UART0	0xb00003f8
 
 /*
  * Reset register.
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

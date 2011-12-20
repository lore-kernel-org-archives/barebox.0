Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ww0-f41.google.com ([74.125.82.41])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rd7uX-0000ha-Qx
 for barebox@lists.infradead.org; Tue, 20 Dec 2011 22:11:50 +0000
Received: by wgbdt12 with SMTP id dt12so10843258wgb.0
 for <barebox@lists.infradead.org>; Tue, 20 Dec 2011 14:11:48 -0800 (PST)
From: franck.jullien@gmail.com
Date: Tue, 20 Dec 2011 23:11:37 +0100
Message-Id: <1324419097-2786-2-git-send-email-franck.jullien@gmail.com>
In-Reply-To: <1324419097-2786-1-git-send-email-franck.jullien@gmail.com>
References: <1324419097-2786-1-git-send-email-franck.jullien@gmail.com>
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
Subject: [PATCH 2/2] Add a generic board
To: barebox@lists.infradead.org

From: Franck Jullien <franck.jullien@gmail.com>

In this generic configuration, the board can be run in the
or1ksim simulator with the linux configuration file using
the UART to print the console.

Signed-off-by: Franck Jullien <franck.jullien@gmail.com>
---
 arch/openrisc/boards/generic/Makefile   |    1 +
 arch/openrisc/boards/generic/config.h   |   28 ++++++++++++++++++++++++++++
 arch/openrisc/boards/generic/env/config |   20 ++++++++++++++++++++
 arch/openrisc/boards/generic/generic.c  |   19 +++++++++++++++++++
 4 files changed, 68 insertions(+), 0 deletions(-)
 create mode 100644 arch/openrisc/boards/generic/Makefile
 create mode 100644 arch/openrisc/boards/generic/config.h
 create mode 100644 arch/openrisc/boards/generic/env/config
 create mode 100644 arch/openrisc/boards/generic/generic.c

diff --git a/arch/openrisc/boards/generic/Makefile b/arch/openrisc/boards/generic/Makefile
new file mode 100644
index 0000000..d8a3d7f
--- /dev/null
+++ b/arch/openrisc/boards/generic/Makefile
@@ -0,0 +1 @@
+obj-y += generic.o
diff --git a/arch/openrisc/boards/generic/config.h b/arch/openrisc/boards/generic/config.h
new file mode 100644
index 0000000..88d2929
--- /dev/null
+++ b/arch/openrisc/boards/generic/config.h
@@ -0,0 +1,28 @@
+#ifndef _GENERIC_NAMES_H_
+#define _GENERIC_NAMES_H_
+
+#define CONFIG_SYS_CLK_FREQ		20000000
+
+#define OPENRISC_TIMER_FREQ		20000000
+
+#define OPENRISC_SOPC_MEMORY_BASE	0x00000000
+#define OPENRISC_SOPC_MEMORY_SIZE	0x02000000
+
+#define OPENRISC_SOPC_UART_BASE		0x90000000
+#define CONFIG_SYS_UART_FREQ		CONFIG_SYS_CLK_FREQ
+#define CONFIG_SYS_UART_BAUD		115200
+
+/* We reserve 256K for barebox */
+#define BAREBOX_RESERVED_SIZE		0x40000
+
+/* Barebox will be at top of main memory */
+#define OPENRISC_SOPC_TEXT_BASE		(OPENRISC_SOPC_MEMORY_BASE + OPENRISC_SOPC_MEMORY_SIZE - BAREBOX_RESERVED_SIZE)
+
+/*
+* TEXT_BASE is defined here because STACK_BASE definition
+*  in include/asm-generic/memory_layout.h uses this name
+*/
+
+#define TEXT_BASE                       OPENRISC_SOPC_TEXT_BASE
+
+#endif
diff --git a/arch/openrisc/boards/generic/env/config b/arch/openrisc/boards/generic/env/config
new file mode 100644
index 0000000..9dee8d9
--- /dev/null
+++ b/arch/openrisc/boards/generic/env/config
@@ -0,0 +1,20 @@
+#!/bin/sh
+
+# can be either 'net' or 'flash'
+kernel=flash
+root=flash
+
+kernel_loc=nor
+kernelimage_type=uimage
+
+# use 'dhcp' todo dhcp in barebox and in kernel
+ip=none
+
+autoboot_timeout=3
+
+nor_parts="256k(barebox),128k(env),4M(kernel),-(rootfs)"
+
+bootargs="console=ttyS0,9600"
+
+# set a fancy prompt (if support is compiled in)
+PS1="\e[1;33mbarebox@\e[1;32mor32:\w\e[0m "
diff --git a/arch/openrisc/boards/generic/generic.c b/arch/openrisc/boards/generic/generic.c
new file mode 100644
index 0000000..6a9ce5b
--- /dev/null
+++ b/arch/openrisc/boards/generic/generic.c
@@ -0,0 +1,19 @@
+#include <common.h>
+#include <init.h>
+#include <driver.h>
+#include <partition.h>
+#include <ns16550.h>
+
+static struct NS16550_plat serial_plat = {
+	.clock = 50000000,      /* 48MHz (APLL96/2) */
+	.shift = 0,
+};
+
+static int openrisc_console_init(void)
+{
+	/* Register the serial port */
+	add_ns16550_device(-1, OPENRISC_SOPC_UART_BASE, 1024, IORESOURCE_MEM_8BIT, &serial_plat);
+	return 0;
+}
+
+console_initcall(openrisc_console_init);
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

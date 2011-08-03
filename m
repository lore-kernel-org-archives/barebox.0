Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-fx0-f49.google.com ([209.85.161.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QoXU7-0005yz-1z
	for barebox@lists.infradead.org; Wed, 03 Aug 2011 09:11:31 +0000
Received: by fxd20 with SMTP id 20so925361fxd.36
	for <barebox@lists.infradead.org>; Wed, 03 Aug 2011 02:11:25 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed,  3 Aug 2011 13:10:56 +0400
Message-Id: <1312362661-31340-7-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1312362661-31340-1-git-send-email-antonynpavlov@gmail.com>
References: <1312362661-31340-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH v9 07/12] MIPS: add qemu malta board support to barebox
To: barebox@lists.infradead.org

The only supported peripheral is ns16550 serial port.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/Makefile                     |    1 +
 arch/mips/boards/qemu-malta/Kconfig    |    6 +++
 arch/mips/boards/qemu-malta/Makefile   |    1 +
 arch/mips/boards/qemu-malta/config.h   |   19 +++++++++++
 arch/mips/boards/qemu-malta/serial.c   |   47 ++++++++++++++++++++++++++
 arch/mips/configs/qemu-malta_defconfig |   56 ++++++++++++++++++++++++++++++++
 arch/mips/mach-malta/Kconfig           |    5 +++
 7 files changed, 135 insertions(+), 0 deletions(-)
 create mode 100644 arch/mips/boards/qemu-malta/Kconfig
 create mode 100644 arch/mips/boards/qemu-malta/Makefile
 create mode 100644 arch/mips/boards/qemu-malta/config.h
 create mode 100644 arch/mips/boards/qemu-malta/serial.c
 create mode 100644 arch/mips/configs/qemu-malta_defconfig

diff --git a/arch/mips/Makefile b/arch/mips/Makefile
index 678c2b5..99b38ab 100644
--- a/arch/mips/Makefile
+++ b/arch/mips/Makefile
@@ -61,6 +61,7 @@ endif
 LDFLAGS_barebox += -nostdlib
 
 machine-$(CONFIG_MACH_MIPS_MALTA)	:= malta
+board-$(CONFIG_BOARD_QEMU_MALTA)	:= qemu-malta
 
 machdirs := $(patsubst %,arch/mips/mach-%/,$(machine-y))
 
diff --git a/arch/mips/boards/qemu-malta/Kconfig b/arch/mips/boards/qemu-malta/Kconfig
new file mode 100644
index 0000000..6d86c14
--- /dev/null
+++ b/arch/mips/boards/qemu-malta/Kconfig
@@ -0,0 +1,6 @@
+if BOARD_QEMU_MALTA
+
+config BOARDINFO
+	default "qemu malta"
+
+endif
diff --git a/arch/mips/boards/qemu-malta/Makefile b/arch/mips/boards/qemu-malta/Makefile
new file mode 100644
index 0000000..ff1a655
--- /dev/null
+++ b/arch/mips/boards/qemu-malta/Makefile
@@ -0,0 +1 @@
+obj-$(CONFIG_DRIVER_SERIAL_NS16550) += serial.o
diff --git a/arch/mips/boards/qemu-malta/config.h b/arch/mips/boards/qemu-malta/config.h
new file mode 100644
index 0000000..eb4ab08
--- /dev/null
+++ b/arch/mips/boards/qemu-malta/config.h
@@ -0,0 +1,19 @@
+/*
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
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ *
+ */
+
+/* nothing special yet */
diff --git a/arch/mips/boards/qemu-malta/serial.c b/arch/mips/boards/qemu-malta/serial.c
new file mode 100644
index 0000000..63522ed
--- /dev/null
+++ b/arch/mips/boards/qemu-malta/serial.c
@@ -0,0 +1,47 @@
+/*
+ * Copyright (C) 2011 Antony Pavlov <antonynpavlov@gmail.com>
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
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
+ */
+
+#include <common.h>
+#include <types.h>
+#include <driver.h>
+#include <init.h>
+#include <ns16550.h>
+#include <mach/hardware.h>
+#include <asm/io.h>
+#include <asm/common.h>
+
+NS16550_READ_WRITE_UART_FUNC(malta, 0, 0)
+
+static struct NS16550_plat serial_plat = {
+	.clock = 1843200, /* no matter for emulated port */
+	.shift = 0,
+	.reg_read = malta_uart_read,
+	.reg_write = malta_uart_write,
+};
+
+static int malta_console_init(void)
+{
+	/* Register the serial port */
+	add_ns16550_device(-1, DEBUG_LL_UART_ADDR, 8,
+			IORESOURCE_MEM_8BIT, &serial_plat);
+
+	return 0;
+}
+console_initcall(malta_console_init);
diff --git a/arch/mips/configs/qemu-malta_defconfig b/arch/mips/configs/qemu-malta_defconfig
new file mode 100644
index 0000000..7df5a79
--- /dev/null
+++ b/arch/mips/configs/qemu-malta_defconfig
@@ -0,0 +1,56 @@
+CONFIG_STACK_SIZE=0x7000
+CONFIG_BROKEN=y
+CONFIG_EXPERIMENTAL=y
+CONFIG_LONGHELP=y
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_HUSH_GETOPT=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_MENU=y
+CONFIG_PARTITION=y
+# CONFIG_DEFAULT_ENVIRONMENT is not set
+CONFIG_POLLER=y
+CONFIG_DEBUG_INFO=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_LOADENV=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_MENU=y
+CONFIG_CMD_MENU_MANAGEMENT=y
+CONFIG_CMD_PASSWD=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_LOADB=y
+CONFIG_CMD_LOADY=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_CRC=y
+CONFIG_CMD_CRC_CMP=y
+CONFIG_CMD_MD5SUM=y
+CONFIG_CMD_SHA1SUM=y
+CONFIG_CMD_SHA256SUM=y
+CONFIG_CMD_MTEST=y
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_BOOTM_ZLIB=y
+CONFIG_CMD_BOOTM_BZLIB=y
+CONFIG_CMD_BOOTM_SHOW_TYPE=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_GO=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_PARTITION=y
+CONFIG_CMD_UNLZO=y
+CONFIG_NET=y
+CONFIG_NET_DHCP=y
+CONFIG_NET_NFS=y
+CONFIG_NET_PING=y
+CONFIG_NET_TFTP=y
+CONFIG_NET_TFTP_PUSH=y
+CONFIG_NET_NETCONSOLE=y
+CONFIG_NET_RESOLV=y
+# CONFIG_SPI is not set
+CONFIG_MTD=y
+CONFIG_FS_CRAMFS=y
+CONFIG_FS_FAT=y
+CONFIG_FS_FAT_WRITE=y
+CONFIG_FS_FAT_LFN=y
diff --git a/arch/mips/mach-malta/Kconfig b/arch/mips/mach-malta/Kconfig
index 6076a13..8e0666c 100644
--- a/arch/mips/mach-malta/Kconfig
+++ b/arch/mips/mach-malta/Kconfig
@@ -7,6 +7,11 @@ config ARCH_TEXT_BASE
 choice
 	prompt "Board type"
 
+config BOARD_QEMU_MALTA
+	bool "qemu malta"
+
 endchoice
 
+source arch/mips/boards/qemu-malta/Kconfig
+
 endif
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bw0-f49.google.com ([209.85.214.49])
	by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QblXL-0007Vi-TZ
	for barebox@lists.infradead.org; Wed, 29 Jun 2011 03:34:01 +0000
Received: by bwf12 with SMTP id 12so976381bwf.36
	for <barebox@lists.infradead.org>; Tue, 28 Jun 2011 20:31:49 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed, 29 Jun 2011 07:24:17 +0400
Message-Id: <1309317858-11861-3-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1309317858-11861-1-git-send-email-antonynpavlov@gmail.com>
References: <1309317858-11861-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 3/4] MIPS: add qemu malta board support to barebox
To: barebox@lists.infradead.org

Only supported peripheral is serial port.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/Makefile                     |    1 +
 arch/mips/boards/qemu-malta/Kconfig    |    2 +
 arch/mips/boards/qemu-malta/Makefile   |    1 +
 arch/mips/boards/qemu-malta/config.h   |   19 ++++++++++
 arch/mips/boards/qemu-malta/serial.c   |   61 ++++++++++++++++++++++++++++++++
 arch/mips/configs/qemu-malta_defconfig |   46 ++++++++++++++++++++++++
 arch/mips/mach-mti-malta/Kconfig       |    5 +++
 7 files changed, 135 insertions(+), 0 deletions(-)
 create mode 100644 arch/mips/boards/qemu-malta/Kconfig
 create mode 100644 arch/mips/boards/qemu-malta/Makefile
 create mode 100644 arch/mips/boards/qemu-malta/config.h
 create mode 100644 arch/mips/boards/qemu-malta/serial.c
 create mode 100644 arch/mips/configs/qemu-malta_defconfig

diff --git a/arch/mips/Makefile b/arch/mips/Makefile
index 117c4ae..d819486 100644
--- a/arch/mips/Makefile
+++ b/arch/mips/Makefile
@@ -28,6 +28,7 @@ LDFLAGS_uboot += -static --gc-sections
 endif
 
 machine-$(CONFIG_MACH_MIPS_MALTA)	:= mti-malta
+board-$(CONFIG_BOARD_QEMU_MALTA)	:= qemu-malta
 
 machdirs := $(patsubst %,arch/mips/mach-%/,$(machine-y))
 
diff --git a/arch/mips/boards/qemu-malta/Kconfig b/arch/mips/boards/qemu-malta/Kconfig
new file mode 100644
index 0000000..ab93116
--- /dev/null
+++ b/arch/mips/boards/qemu-malta/Kconfig
@@ -0,0 +1,2 @@
+config BOARDINFO
+	default "qemu malta"
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
index 0000000..cd30f28
--- /dev/null
+++ b/arch/mips/boards/qemu-malta/serial.c
@@ -0,0 +1,61 @@
+/*
+ * Copyright (C) 2011 Antony Pavlov <antonynpavlov@gmail.com>
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
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ *
+ */
+
+#include <common.h>
+#include <types.h>
+#include <driver.h>
+#include <init.h>
+#include <ns16550.h>
+#include <mach/hardware.h>
+#include <asm/io.h>
+
+/** to work with the 8250 UART driver implementation we need this function */
+static unsigned int malta_uart_read(unsigned long base, unsigned char reg_idx)
+{
+	return readb((char *)base + reg_idx);
+}
+
+/** to work with the 8250 UART driver implementation we need this function */
+static void malta_uart_write(unsigned int val, unsigned long base, unsigned char reg_idx)
+{
+	writeb(val, (char *)base + reg_idx);
+}
+
+static struct NS16550_plat serial_plat = {
+       .clock = 1843200, /* no matter */
+       .f_caps = CONSOLE_STDIN | CONSOLE_STDOUT | CONSOLE_STDERR,
+       .reg_read = malta_uart_read,
+       .reg_write = malta_uart_write,
+};
+
+/* we are expecting always one serial interface */
+static struct device_d generic_malta_serial_device = {
+       .name = "serial_ns16550",
+       .map_base = DEBUG_LL_UART_ADDR,
+       .size = 8,
+       .platform_data = (void *)&serial_plat,
+};
+
+static int malta_console_init(void)
+{
+       /* Register the serial port */
+       return register_device(&generic_malta_serial_device);
+}
+console_initcall(malta_console_init);
diff --git a/arch/mips/configs/qemu-malta_defconfig b/arch/mips/configs/qemu-malta_defconfig
new file mode 100644
index 0000000..507df8a
--- /dev/null
+++ b/arch/mips/configs/qemu-malta_defconfig
@@ -0,0 +1,46 @@
+CONFIG_STACK_SIZE=0x7000
+CONFIG_BROKEN=y
+CONFIG_EXPERIMENTAL=y
+CONFIG_PROMPT="uboot:"
+CONFIG_LONGHELP=y
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_HUSH_GETOPT=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_MENU=y
+CONFIG_PASSWORD=y
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
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_LOADB=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_CRC=y
+CONFIG_CMD_CRC_CMP=y
+CONFIG_CMD_MD5SUM=y
+CONFIG_CMD_SHA1SUM=y
+CONFIG_CMD_SHA256SUM=y
+CONFIG_CMD_MTEST=y
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_GO=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_PARTITION=y
+CONFIG_NET=y
+CONFIG_NET_DHCP=y
+CONFIG_NET_PING=y
+CONFIG_NET_TFTP=y
+CONFIG_NET_NETCONSOLE=y
+# CONFIG_SPI is not set
+CONFIG_MTD=y
+CONFIG_FS_CRAMFS=y
diff --git a/arch/mips/mach-mti-malta/Kconfig b/arch/mips/mach-mti-malta/Kconfig
index c243513..725784f 100644
--- a/arch/mips/mach-mti-malta/Kconfig
+++ b/arch/mips/mach-mti-malta/Kconfig
@@ -15,6 +15,11 @@ endmenu
 choice
 	prompt "Select your board"
 
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

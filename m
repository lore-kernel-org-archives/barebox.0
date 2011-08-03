Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-fx0-f49.google.com ([209.85.161.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QoXU8-0005xL-OK
	for barebox@lists.infradead.org; Wed, 03 Aug 2011 09:11:33 +0000
Received: by mail-fx0-f49.google.com with SMTP id 20so924936fxd.36
	for <barebox@lists.infradead.org>; Wed, 03 Aug 2011 02:11:28 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed,  3 Aug 2011 13:10:59 +0400
Message-Id: <1312362661-31340-10-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH v9 10/12] MIPS: add initial D-Link DIR-320 wireless router
	support
To: barebox@lists.infradead.org

Can be started from CFE using tftp, e.g.:

  CFE> ifconfig eth0 -addr=192.168.0.99
  CFE> boot -tftp -addr=a0800000 -raw 192.168.0.1:barebox.bin

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/Makefile                        |    1 +
 arch/mips/boards/dlink-dir-320/Kconfig    |    6 ++++
 arch/mips/boards/dlink-dir-320/Makefile   |    1 +
 arch/mips/boards/dlink-dir-320/config.h   |   19 +++++++++++
 arch/mips/boards/dlink-dir-320/serial.c   |   47 +++++++++++++++++++++++++++++
 arch/mips/configs/dlink-dir-320_defconfig |   46 ++++++++++++++++++++++++++++
 arch/mips/mach-bcm47xx/Kconfig            |    5 +++
 7 files changed, 125 insertions(+), 0 deletions(-)
 create mode 100644 arch/mips/boards/dlink-dir-320/Kconfig
 create mode 100644 arch/mips/boards/dlink-dir-320/Makefile
 create mode 100644 arch/mips/boards/dlink-dir-320/config.h
 create mode 100644 arch/mips/boards/dlink-dir-320/serial.c
 create mode 100644 arch/mips/configs/dlink-dir-320_defconfig

diff --git a/arch/mips/Makefile b/arch/mips/Makefile
index 122181f..43b8ae6 100644
--- a/arch/mips/Makefile
+++ b/arch/mips/Makefile
@@ -64,6 +64,7 @@ machine-$(CONFIG_MACH_MIPS_MALTA)	:= malta
 board-$(CONFIG_BOARD_QEMU_MALTA)	:= qemu-malta
 
 machine-$(CONFIG_MACH_MIPS_BCM47XX)	:= bcm47xx
+board-$(CONFIG_BOARD_DLINK_DIR320)	:= dlink-dir-320
 
 machdirs := $(patsubst %,arch/mips/mach-%/,$(machine-y))
 
diff --git a/arch/mips/boards/dlink-dir-320/Kconfig b/arch/mips/boards/dlink-dir-320/Kconfig
new file mode 100644
index 0000000..0393d04
--- /dev/null
+++ b/arch/mips/boards/dlink-dir-320/Kconfig
@@ -0,0 +1,6 @@
+if BOARD_DLINK_DIR320
+
+config BOARDINFO
+	default "D-Link DIR-320"
+
+endif
diff --git a/arch/mips/boards/dlink-dir-320/Makefile b/arch/mips/boards/dlink-dir-320/Makefile
new file mode 100644
index 0000000..ff1a655
--- /dev/null
+++ b/arch/mips/boards/dlink-dir-320/Makefile
@@ -0,0 +1 @@
+obj-$(CONFIG_DRIVER_SERIAL_NS16550) += serial.o
diff --git a/arch/mips/boards/dlink-dir-320/config.h b/arch/mips/boards/dlink-dir-320/config.h
new file mode 100644
index 0000000..eb4ab08
--- /dev/null
+++ b/arch/mips/boards/dlink-dir-320/config.h
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
diff --git a/arch/mips/boards/dlink-dir-320/serial.c b/arch/mips/boards/dlink-dir-320/serial.c
new file mode 100644
index 0000000..eb80659
--- /dev/null
+++ b/arch/mips/boards/dlink-dir-320/serial.c
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
+NS16550_READ_WRITE_UART_FUNC(dir320, 0, 0)
+
+static struct NS16550_plat serial_plat = {
+	.clock = 25804800,
+	.shift = 0,
+	.reg_read = dir320_uart_read,
+	.reg_write = dir320_uart_write,
+};
+
+static int dir320_console_init(void)
+{
+	/* Register the serial port */
+	add_ns16550_device(-1, DEBUG_LL_UART_ADDR, 8,
+			IORESOURCE_MEM_8BIT, &serial_plat);
+
+	return 0;
+}
+console_initcall(dir320_console_init);
diff --git a/arch/mips/configs/dlink-dir-320_defconfig b/arch/mips/configs/dlink-dir-320_defconfig
new file mode 100644
index 0000000..ca86a36
--- /dev/null
+++ b/arch/mips/configs/dlink-dir-320_defconfig
@@ -0,0 +1,46 @@
+CONFIG_MACH_MIPS_BCM47XX=y
+CONFIG_STACK_SIZE=0x7000
+CONFIG_BROKEN=y
+CONFIG_EXPERIMENTAL=y
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
diff --git a/arch/mips/mach-bcm47xx/Kconfig b/arch/mips/mach-bcm47xx/Kconfig
index 5143a15..d0df0fd 100644
--- a/arch/mips/mach-bcm47xx/Kconfig
+++ b/arch/mips/mach-bcm47xx/Kconfig
@@ -7,6 +7,11 @@ config ARCH_TEXT_BASE
 choice
 	prompt "Board type"
 
+config BOARD_DLINK_DIR320
+	bool "D-Link DIR-320"
+
 endchoice
 
+source arch/mips/boards/dlink-dir-320/Kconfig
+
 endif
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

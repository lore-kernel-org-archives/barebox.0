Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f177.google.com ([209.85.217.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SUjql-0002yJ-HR
 for barebox@lists.infradead.org; Wed, 16 May 2012 19:25:34 +0000
Received: by lbbgg6 with SMTP id gg6so978057lbb.36
 for <barebox@lists.infradead.org>; Wed, 16 May 2012 12:25:29 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed, 16 May 2012 23:25:15 +0400
Message-Id: <1337196316-8632-4-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1337196316-8632-1-git-send-email-antonynpavlov@gmail.com>
References: <1337196316-8632-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC v2 3/4] MIPS: XBurst: add Ritmix RZX-50 board support
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 Documentation/boards.dox                      |    1 +
 arch/mips/Makefile                            |    1 +
 arch/mips/boards/rzx50/Kconfig                |    6 +++
 arch/mips/boards/rzx50/Makefile               |    1 +
 arch/mips/boards/rzx50/config.h               |   19 +++++++
 arch/mips/boards/rzx50/rzx50.dox              |   46 +++++++++++++++++
 arch/mips/boards/rzx50/serial.c               |   66 +++++++++++++++++++++++++
 arch/mips/mach-xburst/Kconfig                 |   11 +++++
 arch/mips/mach-xburst/include/mach/debug_ll.h |    6 ++-
 arch/mips/mach-xburst/mach-xburst.dox         |    2 +
 10 files changed, 158 insertions(+), 1 deletion(-)
 create mode 100644 arch/mips/boards/rzx50/Kconfig
 create mode 100644 arch/mips/boards/rzx50/Makefile
 create mode 100644 arch/mips/boards/rzx50/config.h
 create mode 100644 arch/mips/boards/rzx50/rzx50.dox
 create mode 100644 arch/mips/boards/rzx50/serial.c

diff --git a/Documentation/boards.dox b/Documentation/boards.dox
index ba332a7..7fcba9c 100644
--- a/Documentation/boards.dox
+++ b/Documentation/boards.dox
@@ -51,6 +51,7 @@ MIPS type:
 
 @li @subpage dlink_dir_320
 @li @subpage qemu_malta
+@li @subpage rzx50
 
 */
 
diff --git a/arch/mips/Makefile b/arch/mips/Makefile
index 345d9a2..f28c21d 100644
--- a/arch/mips/Makefile
+++ b/arch/mips/Makefile
@@ -67,6 +67,7 @@ machine-$(CONFIG_MACH_MIPS_BCM47XX)	:= bcm47xx
 board-$(CONFIG_BOARD_DLINK_DIR320)	:= dlink-dir-320
 
 machine-$(CONFIG_MACH_MIPS_XBURST)	:= xburst
+board-$(CONFIG_BOARD_RZX50)	:= rzx50
 
 machdirs := $(patsubst %,arch/mips/mach-%/,$(machine-y))
 
diff --git a/arch/mips/boards/rzx50/Kconfig b/arch/mips/boards/rzx50/Kconfig
new file mode 100644
index 0000000..38401aa
--- /dev/null
+++ b/arch/mips/boards/rzx50/Kconfig
@@ -0,0 +1,6 @@
+if BOARD_RZX50
+
+config BOARDINFO
+	default "Ritmix RZX-50"
+
+endif
diff --git a/arch/mips/boards/rzx50/Makefile b/arch/mips/boards/rzx50/Makefile
new file mode 100644
index 0000000..ff1a655
--- /dev/null
+++ b/arch/mips/boards/rzx50/Makefile
@@ -0,0 +1 @@
+obj-$(CONFIG_DRIVER_SERIAL_NS16550) += serial.o
diff --git a/arch/mips/boards/rzx50/config.h b/arch/mips/boards/rzx50/config.h
new file mode 100644
index 0000000..eb4ab08
--- /dev/null
+++ b/arch/mips/boards/rzx50/config.h
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
diff --git a/arch/mips/boards/rzx50/rzx50.dox b/arch/mips/boards/rzx50/rzx50.dox
new file mode 100644
index 0000000..963473c
--- /dev/null
+++ b/arch/mips/boards/rzx50/rzx50.dox
@@ -0,0 +1,46 @@
+/** @page rzx50 Ritmix RZX-50 game console
+
+Ritmix RZX-50 is a portable game console for the Russian market.
+
+The portable game console has
+@li Ingenic JZ4755 SoC;
+@li 64 MiB SDRAM;
+@li 4 GiB microSDHC card / 4 GiB NAND type Flash Memory;
+@li RS232 serial interface (LV-TTL levels on the board!);
+@li LCD display (480x272);
+@li Video out interface;
+@li 1xUSB interface;
+@li buttons.
+
+The game console uses U-Boot 1.1.6 as bootloader.
+
+barebox-rzx50 mini-howto:
+
+1. Connect to the game console's UART (see. http://a320.emulate.su/2012/01/19/uart-na-ritmix-rzx-50/);
+
+2. Unblock U-Boot console (see. http://a320.emulate.su/2012/01/25/rzx-50-dostup-k-konsoli-u-boot/); Please note that U-Boot's Zmodem support does not work;
+
+3. Boot Ritmix linux and login;
+
+4. Upload barebox.bin via Zmodem
+@verbatim
+  # cd /tmp
+  # rz
+@endverbatim
+
+5. Write barebox to onboard flash
+@verbatim
+  # dd if=barebox.bin of=/dev/mmcblk0 seek=1048576 bs=1 count=262144
+@endverbatim
+
+6. Reboot RZX-50, next in U-Boot console start barebox:
+@verbatim
+  CETUS # msc read 0xa0800000 0x100000 0x40000; g a0800000
+@endverbatim
+
+Ritmix RZX-50 links:
+@li http://www.ritmixrussia.ru/products/252/entertainment/game/rzx-50
+@li ftp://ftp.ingenic.cn/2soc/4755/JZ4755_ds.pdf
+@li ftp://ftp.ingenic.cn/3sw/01linux/01loader/u-boot/u-boot-1.1.6-jz-20110719-r1728-add-jz4770.patch.bz2
+
+*/
diff --git a/arch/mips/boards/rzx50/serial.c b/arch/mips/boards/rzx50/serial.c
new file mode 100644
index 0000000..308cd18
--- /dev/null
+++ b/arch/mips/boards/rzx50/serial.c
@@ -0,0 +1,66 @@
+/*
+ * Copyright (C) 2012 Antony Pavlov <antonynpavlov@gmail.com>
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
+#include <mach/jz4750d_regs.h>
+#include <io.h>
+#include <asm/common.h>
+
+#define JZ4750D_UART_SHIFT	2
+
+#define ier		(1 << JZ4750D_UART_SHIFT)
+#define fcr		(2 << JZ4750D_UART_SHIFT)
+
+static void jz4750d_serial_reg_write(unsigned int val, unsigned long base,
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
+static struct NS16550_plat serial_plat = {
+	.clock = 12000000,
+	.shift = JZ4750D_UART_SHIFT,
+	.reg_write = &jz4750d_serial_reg_write,
+};
+
+static int rzx50_console_init(void)
+{
+	/* Register the serial port */
+	add_ns16550_device(-1, UART1_BASE, 8 << JZ4750D_UART_SHIFT,
+			IORESOURCE_MEM_8BIT, &serial_plat);
+
+	return 0;
+}
+console_initcall(rzx50_console_init);
diff --git a/arch/mips/mach-xburst/Kconfig b/arch/mips/mach-xburst/Kconfig
index 0306f2e..60e411c 100644
--- a/arch/mips/mach-xburst/Kconfig
+++ b/arch/mips/mach-xburst/Kconfig
@@ -7,4 +7,15 @@ config ARCH_TEXT_BASE
 config CPU_JZ4755
 	bool
 
+choice
+	prompt "Board type"
+
+config BOARD_RZX50
+	bool "Ritmix RZX-50"
+	select CPU_JZ4755
+
+endchoice
+
+source arch/mips/boards/rzx50/Kconfig
+
 endif
diff --git a/arch/mips/mach-xburst/include/mach/debug_ll.h b/arch/mips/mach-xburst/include/mach/debug_ll.h
index 90f6528..c3dbaa2 100644
--- a/arch/mips/mach-xburst/include/mach/debug_ll.h
+++ b/arch/mips/mach-xburst/include/mach/debug_ll.h
@@ -24,6 +24,10 @@
 /** @file
  *  This File contains declaration for early output support
  */
-#include <debug_ll_common.h>
+#ifdef CONFIG_BOARD_RZX50
+#include <mach/debug_ll_jz4755.h>
+#endif
+
+#include <debug_ll_ns16550.h>
 
 #endif  /* __MACH_XBURST_DEBUG_LL__ */
diff --git a/arch/mips/mach-xburst/mach-xburst.dox b/arch/mips/mach-xburst/mach-xburst.dox
index 84ae221..a5e524d 100644
--- a/arch/mips/mach-xburst/mach-xburst.dox
+++ b/arch/mips/mach-xburst/mach-xburst.dox
@@ -2,4 +2,6 @@
 
 @section xburst_boards XBurst-based boards
 
+@li @subpage rzx50
+
 */
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1S7Rb9-0004m6-V9
 for barebox@lists.infradead.org; Tue, 13 Mar 2012 13:17:09 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:6f8:1178:4:5054:ff:fe8d:eefb] helo=localhost)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1S7Rb2-0002yX-DO
 for barebox@lists.infradead.org; Tue, 13 Mar 2012 14:17:00 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Tue, 13 Mar 2012 14:16:46 +0100
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201203131416.47776.jbe@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [RFC] ARM/serial: add a DCC based console driver
To: barebox@lists.infradead.org

Hi,

please find attached an DCC based driver for Barebox to be able to get early 
boot messages. It acts as a regular serial console and can be used in 
conjunction with a JTAG debugger. This is really useful when no serial 
console is available (don't ask why...) and the bootloader hangs prior it can 
enable a network based console.

One issue is still present and I need some hints what might be going wrong 
here:

Sending chars via DCC blocks for ever, when I'm using a simple
while loop waiting for the DCC_OUTPUT_BUSY to be cleared. After adding a 
timeout loop I receive every other char at the JTAG side. When I write the 
char to the DCC even if it timeout, I receive *every* char. Only some chars 
are lost when I reduce the timeout value below 750 us.
Any idea? I checked the kernel source, but they doing the same: Waiting for 
the DCC_OUTPUT_BUSY to be cleared and timeout after a specific amount of 
loops (but without writing the char in this case).

Comments are welcome.

commit 809d26930dc734faad2a4ac4cc5126487a8af261
Author: Juergen Beisert <jbe@pengutronix.de>
Date:   Tue Mar 13 13:01:22 2012 +0100

    ARM/serial: add a DCC based console driver
    
    Signed-off-by: Juergen Beisert <jbe@pengutronix.de>

diff --git a/drivers/serial/Kconfig b/drivers/serial/Kconfig
index 9c7f9cf..a71efcf 100644
--- a/drivers/serial/Kconfig
+++ b/drivers/serial/Kconfig
@@ -103,4 +103,10 @@ config DRIVER_SERIAL_DUMMY
 	   an input character. Its sole purpose is to provide a regular console
 	   to work with the netconsole.
 
+config DRIVER_SERIAL_DCC
+	bool "DCC serial driver"
+	help
+	   This is a DCC based console driver. DCC is an ARM core internal
+	   EmbeddedICE feature and can be used with a JTAG debugger.
+
 endmenu
diff --git a/drivers/serial/Makefile b/drivers/serial/Makefile
index 0e89c01..91412bb 100644
--- a/drivers/serial/Makefile
+++ b/drivers/serial/Makefile
@@ -20,3 +20,4 @@ obj-$(CONFIG_DRIVER_SERIAL_ALTERA)		+= serial_altera.o
 obj-$(CONFIG_DRIVER_SERIAL_ALTERA_JTAG)		+= serial_altera_jtag.o
 obj-$(CONFIG_DRIVER_SERIAL_PXA)			+= serial_pxa.o
 obj-$(CONFIG_DRIVER_SERIAL_DUMMY)		+= serial_dummy.o
+obj-$(CONFIG_DRIVER_SERIAL_DCC)			+= serial_dcc.o
diff --git a/drivers/serial/serial_dcc.c b/drivers/serial/serial_dcc.c
new file mode 100644
index 0000000..a6e1a91
--- /dev/null
+++ b/drivers/serial/serial_dcc.c
@@ -0,0 +1,177 @@
+/*
+ * (c) 2012 Juergen Beisert <j.beisert@pengutronix.de>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#include <common.h>
+#include <driver.h>
+#include <init.h>
+#include <malloc.h>
+#include <clock.h>
+
+#if defined(CONFIG_CPU_32v4T) || defined(CONFIG_CPU_32v5)
+
+#define DCC_OUTPUT_BUSY (1 << 1)
+#define DCC_INPUT_READY (1 << 0)
+
+static u32 read_dcc(void)
+{
+	u32 c;
+
+	__asm__(
+		"mrc p14, 0, %0, c1, c0\n"
+		: "=r" (c));
+
+	return c;
+}
+
+static void write_dcc(u32 c)
+{
+	__asm__(
+		"mcr p14, 0, %0, c1, c0, 0\n"
+		:
+		: "r" (c));
+}
+
+static u32 poll_dcc(void)
+{
+	u32 ret;
+
+	__asm__(
+		"mrc p14, 0, %0, c0, c0, 0\n"
+		: "=r" (ret));
+
+	return ret;
+}
+#endif /* ARMv4 or ARMv5 */
+
+#if defined(CONFIG_CPU_V6) || defined(CONFIG_CPU_V7)
+
+#define DCC_OUTPUT_BUSY (1 << 29)
+#define DCC_INPUT_READY (1 << 28) /* FIXME */
+
+static u32 read_dcc(void)
+{
+	u32 c;
+
+	__asm__(
+		"mrc p14, 0, %0, c0, c5\n"	/* to be checked */
+		: "=r" (c));
+	return c;
+}
+
+static void write_dcc(u32 c)
+{
+	__asm__(
+		"mcr p14, 0, %0, c0, c5, 0\n"
+		:
+		: "r" (c));
+}
+
+static u32 poll_dcc(void)
+{
+	u32 ret;
+
+	__asm__(
+		"mrc p14, 0, %0, c0, c1, 0\n"
+		: "=r" (ret));
+	return ret;
+}
+#endif
+
+struct dcc_uart {
+	struct console_device cdev;
+};
+
+static int dcc_serial_setbaudrate(struct console_device *cdev, int baudrate)
+{
+	/* return happy */
+	return 0;
+}
+
+static void dcc_serial_putc(struct console_device *cdev, char c)
+{
+	uint64_t start = get_time_ns();
+	uint64_t toffs = 750 * 1000;
+
+	do {
+		if (!(poll_dcc() & DCC_OUTPUT_BUSY)) {
+			write_dcc(c);
+			break;
+		}
+	} while (!is_timeout(start, toffs));
+
+	write_dcc(c);	/* FIXME: the char gets not lost. It works, but why? */
+}
+
+static int dcc_serial_tstc(struct console_device *cdev)
+{
+	if (poll_dcc() & DCC_INPUT_READY)
+		return 1;
+	return 0;	/* nothing */
+}
+
+static int dcc_serial_getc(struct console_device *cdev)
+{
+	return read_dcc();
+}
+
+static void dcc_serial_flush(struct console_device *cdev)
+{
+	while (poll_dcc() & DCC_OUTPUT_BUSY)
+		;
+}
+
+static int dcc_serial_probe(struct device_d *dev)
+{
+	struct dcc_uart *priv;
+	struct console_device *cdev;
+
+	priv = xzalloc(sizeof(struct dcc_uart));
+	cdev = &priv->cdev;
+	dev->priv = priv;
+	cdev->dev = dev;
+	cdev->f_caps = CONSOLE_STDIN | CONSOLE_STDOUT | CONSOLE_STDERR;
+	cdev->tstc = dcc_serial_tstc;
+	cdev->putc = dcc_serial_putc;
+	cdev->getc = dcc_serial_getc;
+	cdev->flush = dcc_serial_flush;
+	cdev->setbrg = dcc_serial_setbaudrate;
+
+	/* Enable UART */
+	console_register(cdev);
+
+	return 0;
+}
+
+static void dcc_serial_remove(struct device_d *dev)
+{
+	struct dcc_uart *priv= dev->priv;
+
+	console_unregister(&priv->cdev);
+	free(priv);
+}
+
+static struct driver_d dcc_serial_driver = {
+	.name   = "dcc_serial",
+	.probe  = dcc_serial_probe,
+	.remove = dcc_serial_remove,
+};
+
+static int dcc_serial_init(void)
+{
+	register_driver(&dcc_serial_driver);
+	return 0;
+}
+
+console_initcall(dcc_serial_init);

jbe

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

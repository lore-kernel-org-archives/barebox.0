Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wy0-f177.google.com ([74.125.82.177])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q6UVh-0006eE-QI
	for barebox@lists.infradead.org; Sun, 03 Apr 2011 21:07:02 +0000
Received: by wyb28 with SMTP id 28so5118575wyb.36
	for <barebox@lists.infradead.org>; Sun, 03 Apr 2011 14:06:59 -0700 (PDT)
From: franck.jullien@gmail.com
Date: Sun,  3 Apr 2011 23:07:17 +0200
Message-Id: <1301864837-10139-1-git-send-email-franck.jullien@gmail.com>
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
Subject: [PATCH] [v2] Nios2: Add Altera UART driver
To: barebox@lists.infradead.org

From: Franck JULLIEN <franck.jullien@gmail.com>

This patch adds Altera UART driver. Kconfig and Makefile are
updated to include this new driver.

Signed-off-by: Franck JULLIEN <franck.jullien@gmail.com>
---
 drivers/serial/Kconfig         |    5 ++
 drivers/serial/Makefile        |    3 +-
 drivers/serial/serial_altera.c |   95 ++++++++++++++++++++++++++++++++++++++++
 3 files changed, 102 insertions(+), 1 deletions(-)
 create mode 100644 drivers/serial/serial_altera.c

diff --git a/drivers/serial/Kconfig b/drivers/serial/Kconfig
index ffd877a..9e05f4b 100644
--- a/drivers/serial/Kconfig
+++ b/drivers/serial/Kconfig
@@ -43,6 +43,11 @@ config DRIVER_SERIAL_BLACKFIN
 	default y
 	bool "Blackfin serial driver"
 
+config DRIVER_SERIAL_ALTERA
+	depends on NIOS2
+	default y
+	bool "Altera serial driver"
+
 config DRIVER_SERIAL_NS16550
 	default n
 	bool "NS16550 serial driver"
diff --git a/drivers/serial/Makefile b/drivers/serial/Makefile
index 9f0e12b..df9e705 100644
--- a/drivers/serial/Makefile
+++ b/drivers/serial/Makefile
@@ -5,7 +5,7 @@
 # serial_pl010.o
 # serial_xuartlite.o
 obj-$(CONFIG_DRIVER_SERIAL_ARM_DCC)		+= arm_dcc.o
-obj-$(CONFIG_SERIAL_AMBA_PL011) += amba-pl011.o
+obj-$(CONFIG_SERIAL_AMBA_PL011)			+= amba-pl011.o
 obj-$(CONFIG_DRIVER_SERIAL_IMX)			+= serial_imx.o
 obj-$(CONFIG_DRIVER_SERIAL_STM378X)		+= stm-serial.o
 obj-$(CONFIG_DRIVER_SERIAL_ATMEL)		+= atmel.o
@@ -16,3 +16,4 @@ obj-$(CONFIG_DRIVER_SERIAL_BLACKFIN)		+= serial_blackfin.o
 obj-$(CONFIG_DRIVER_SERIAL_NS16550)		+= serial_ns16550.o
 obj-$(CONFIG_DRIVER_SERIAL_PL010)		+= serial_pl010.o
 obj-$(CONFIG_DRIVER_SERIAL_S3C24X0)		+= serial_s3c24x0.o
+obj-$(CONFIG_DRIVER_SERIAL_ALTERA)		+= serial_altera.o
diff --git a/drivers/serial/serial_altera.c b/drivers/serial/serial_altera.c
new file mode 100644
index 0000000..54c7178
--- /dev/null
+++ b/drivers/serial/serial_altera.c
@@ -0,0 +1,95 @@
+/*
+ * (C) Copyright 2011, Franck JULLIEN, <elec4fun@gmail.com>
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
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
+ */
+
+#include <common.h>
+#include <driver.h>
+#include <init.h>
+#include <malloc.h>
+#include <asm/io.h>
+#include <asm/nios2-io.h>
+
+static int altera_serial_setbaudrate(struct console_device *cdev, int baudrate)
+{
+	struct nios_uart *uart = (struct nios_uart *)cdev->dev->map_base;
+	uint16_t div;
+
+	div = (CPU_FREQ / baudrate) - 1;
+	writew(div, &uart->divisor);
+
+	return 0;
+}
+
+static void altera_serial_putc(struct console_device *cdev, char c)
+{
+	struct nios_uart *uart = (struct nios_uart *)cdev->dev->map_base;
+
+	while ((readw(&uart->status) & NIOS_UART_TRDY) == 0);
+
+	writew(c, &uart->txdata);
+}
+
+static int altera_serial_tstc(struct console_device *cdev)
+{
+	struct nios_uart *uart = (struct nios_uart *)cdev->dev->map_base;
+
+	return readw(&uart->status) & NIOS_UART_RRDY;
+}
+
+static int altera_serial_getc(struct console_device *cdev)
+{
+	struct nios_uart *uart = (struct nios_uart *)cdev->dev->map_base;
+
+	while (altera_serial_tstc(cdev) == 0);
+
+	return readw(&uart->rxdata) & 0x000000FF;
+}
+
+static int altera_serial_probe(struct device_d *dev)
+{
+	struct console_device *cdev;
+
+	cdev = xmalloc(sizeof(struct console_device));
+	dev->type_data = cdev;
+	cdev->dev = dev;
+	cdev->f_caps = CONSOLE_STDIN | CONSOLE_STDOUT | CONSOLE_STDERR;
+	cdev->tstc = altera_serial_tstc;
+	cdev->putc = altera_serial_putc;
+	cdev->getc = altera_serial_getc;
+	cdev->setbrg = altera_serial_setbaudrate;
+
+	console_register(cdev);
+
+	return 0;
+}
+
+static struct driver_d altera_serial_driver = {
+	.name = "altera_serial",
+	.probe = altera_serial_probe,
+};
+
+static int altera_serial_init(void)
+{
+	return register_driver(&altera_serial_driver);
+}
+
+console_initcall(altera_serial_init);
+
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

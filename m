Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Reuqc-0006Cr-Ja
 for barebox@lists.infradead.org; Sun, 25 Dec 2011 20:39:15 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1ReuqA-0000hP-L0
 for barebox@lists.infradead.org; Sun, 25 Dec 2011 21:38:42 +0100
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <jbe@pengutronix.de>) id 1ReuqA-0001Lr-Gf
 for barebox@lists.infradead.org; Sun, 25 Dec 2011 21:38:42 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Sun, 25 Dec 2011 21:38:35 +0100
Message-Id: <1324845517-4601-13-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1324845517-4601-1-git-send-email-jbe@pengutronix.de>
References: <1324845517-4601-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 12/14] MACH SAMSUNG/S3C: Unify the UART driver for the S3C
 family of CPUs
To: barebox@lists.infradead.org

The UART is one of the units which differs only slightly inside the S3C family.
Prepare this driver to share it with more recent CPUs.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 arch/arm/boards/a9m2410/a9m2410.c              |    2 +-
 arch/arm/boards/a9m2440/a9m2440.c              |    2 +-
 arch/arm/boards/mini2440/mini2440.c            |    2 +-
 arch/arm/mach-samsung/include/mach/s3c-iomap.h |   15 +-
 drivers/serial/Kconfig                         |   10 +-
 drivers/serial/Makefile                        |    2 +-
 drivers/serial/serial_s3c.c                    |  188 ++++++++++++++++++++++++
 drivers/serial/serial_s3c24x0.c                |  172 ----------------------
 8 files changed, 204 insertions(+), 189 deletions(-)
 create mode 100644 drivers/serial/serial_s3c.c
 delete mode 100644 drivers/serial/serial_s3c24x0.c

diff --git a/arch/arm/boards/a9m2410/a9m2410.c b/arch/arm/boards/a9m2410/a9m2410.c
index 989dcf7..a66afb9 100644
--- a/arch/arm/boards/a9m2410/a9m2410.c
+++ b/arch/arm/boards/a9m2410/a9m2410.c
@@ -167,7 +167,7 @@ void __bare_init nand_boot(void)
 
 static int a9m2410_console_init(void)
 {
-	add_generic_device("s3c24x0_serial", -1, NULL, UART1_BASE, UART1_SIZE,
+	add_generic_device("s3c_serial", -1, NULL, S3C_UART1_BASE, S3C_UART1_SIZE,
 			   IORESOURCE_MEM, NULL);
 	return 0;
 }
diff --git a/arch/arm/boards/a9m2440/a9m2440.c b/arch/arm/boards/a9m2440/a9m2440.c
index 1986efb..077d726 100644
--- a/arch/arm/boards/a9m2440/a9m2440.c
+++ b/arch/arm/boards/a9m2440/a9m2440.c
@@ -168,7 +168,7 @@ void __bare_init nand_boot(void)
 
 static int a9m2440_console_init(void)
 {
-	add_generic_device("s3c24x0_serial", -1, NULL, UART1_BASE, UART1_SIZE,
+	add_generic_device("s3c_serial", -1, NULL, S3C_UART1_BASE, S3C_UART1_SIZE,
 			   IORESOURCE_MEM, NULL);
 	return 0;
 }
diff --git a/arch/arm/boards/mini2440/mini2440.c b/arch/arm/boards/mini2440/mini2440.c
index 0186465..ec4eb05 100644
--- a/arch/arm/boards/mini2440/mini2440.c
+++ b/arch/arm/boards/mini2440/mini2440.c
@@ -342,7 +342,7 @@ static int mini2440_console_init(void)
 	s3c_gpio_mode(GPH2_TXD0);
 	s3c_gpio_mode(GPH3_RXD0);
 
-	add_generic_device("s3c24x0_serial", -1, NULL, UART1_BASE, UART1_SIZE,
+	add_generic_device("s3c_serial", -1, NULL, S3C_UART1_BASE, S3C_UART1_SIZE,
 			   IORESOURCE_MEM, NULL);
 	return 0;
 }
diff --git a/arch/arm/mach-samsung/include/mach/s3c-iomap.h b/arch/arm/mach-samsung/include/mach/s3c-iomap.h
index 9677803..7c45c53 100644
--- a/arch/arm/mach-samsung/include/mach/s3c-iomap.h
+++ b/arch/arm/mach-samsung/include/mach/s3c-iomap.h
@@ -28,7 +28,7 @@
 #define S3C_CLOCK_POWER_BASE		0x4C000000
 #define S3C2410_LCD_BASE		0x4D000000
 #define S3C24X0_NAND_BASE		0x4E000000
-#define S3C24X0_UART_BASE		0x50000000
+#define S3C_UART_BASE			0x50000000
 #define S3C_TIMER_BASE			0x51000000
 #define S3C2410_USB_DEVICE_BASE		0x52000140
 #define S3C_WATCHDOG_BASE		0x53000000
@@ -52,13 +52,12 @@
 #endif
 #define NFC_RAM_SIZE 4096
 
-/* internal UARTs (driver based) */
-#define UART1_BASE (S3C24X0_UART_BASE)
-#define UART1_SIZE 0x4000
-#define UART2_BASE (S3C24X0_UART_BASE + 0x4000)
-#define UART2_SIZE 0x4000
-#define UART3_BASE (S3C24X0_UART_BASE + 0x8000)
-#define UART3_SIZE 0x4000
+#define S3C_UART1_BASE (S3C_UART_BASE)
+#define S3C_UART1_SIZE 0x4000
+#define S3C_UART2_BASE (S3C_UART_BASE + 0x4000)
+#define S3C_UART2_SIZE 0x4000
+#define S3C_UART3_BASE (S3C_UART_BASE + 0x8000)
+#define S3C_UART3_SIZE 0x4000
 
 /* CS configuration (direct access) */
 #define BWSCON (S3C24X0_MEMCTL_BASE)
diff --git a/drivers/serial/Kconfig b/drivers/serial/Kconfig
index 592d543..186b596 100644
--- a/drivers/serial/Kconfig
+++ b/drivers/serial/Kconfig
@@ -78,16 +78,16 @@ config DRIVER_SERIAL_PL010
 	help
 	  Enable this to get support for AMBA PL010 based serial devices
 
-config DRIVER_SERIAL_S3C24X0
-	bool "Samsung S3C24X0 serial driver"
+config DRIVER_SERIAL_S3C
+	bool "Samsung S3C serial driver"
 	depends on ARCH_S3C24xx
 	default y
 	help
-	  Say Y here if you want to use the CONS on a S3C24X0 CPU
+	  Say Y here if you want to use the CONS on a Samsung S3C CPU
 
-config DRIVER_SERIAL_S3C24X0_AUTOSYNC
+config DRIVER_SERIAL_S3C_AUTOSYNC
 	bool "Enable auto flow"
-	depends on DRIVER_SERIAL_S3C24X0
+	depends on DRIVER_SERIAL_S3C
 	help
 	  Say Y here if you want to use the auto flow feature of this
 	  UART. RTS and CTS will be handled by the hardware when enabled.
diff --git a/drivers/serial/Makefile b/drivers/serial/Makefile
index a702125..e2d56b9 100644
--- a/drivers/serial/Makefile
+++ b/drivers/serial/Makefile
@@ -15,7 +15,7 @@ obj-$(CONFIG_DRIVER_SERIAL_MPC5XXX)		+= serial_mpc5xxx.o
 obj-$(CONFIG_DRIVER_SERIAL_BLACKFIN)		+= serial_blackfin.o
 obj-$(CONFIG_DRIVER_SERIAL_NS16550)		+= serial_ns16550.o
 obj-$(CONFIG_DRIVER_SERIAL_PL010)		+= serial_pl010.o
-obj-$(CONFIG_DRIVER_SERIAL_S3C24X0)		+= serial_s3c24x0.o
+obj-$(CONFIG_DRIVER_SERIAL_S3C)			+= serial_s3c.o
 obj-$(CONFIG_DRIVER_SERIAL_ALTERA)		+= serial_altera.o
 obj-$(CONFIG_DRIVER_SERIAL_ALTERA_JTAG)		+= serial_altera_jtag.o
 obj-$(CONFIG_DRIVER_SERIAL_PXA)			+= serial_pxa.o
diff --git a/drivers/serial/serial_s3c.c b/drivers/serial/serial_s3c.c
new file mode 100644
index 0000000..b7e0987
--- /dev/null
+++ b/drivers/serial/serial_s3c.c
@@ -0,0 +1,188 @@
+/*
+ * (c) 2009...2011 Juergen Beisert <j.beisert@pengutronix.de>
+ *
+ * Based on code from:
+ * (c) 2004 Sascha Hauer <sascha@saschahauer.de>
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
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
+ *
+ */
+
+#include <common.h>
+#include <driver.h>
+#include <init.h>
+#include <malloc.h>
+#include <io.h>
+#include <mach/s3c-generic.h>
+#include <mach/s3c-iomap.h>
+
+/* Note: Offsets are for little endian access */
+#define ULCON 0x00		/* line control */
+#define UCON 0x04		/* UART control */
+#define UFCON 0x08		/* FIFO control */
+#define UMCON 0x0c		/* modem control */
+#define UTRSTAT 0x10		/* Rx/Tx status */
+#define UERSTAT 0x14		/* error status */
+#define UFSTAT 0x18		/* FIFO status */
+#define UMSTAT 0x1c		/* modem status */
+#define UTXH 0x20		/* transmitt */
+#define URXH 0x24		/* receive */
+#define UBRDIV 0x28		/* baudrate generator */
+
+static unsigned s3c_get_arch_uart_input_clock(void __iomem *base)
+{
+	unsigned reg = readw(base + UCON);
+
+	switch (reg & 0xc00) {
+		case 0x000:
+		case 0x800:
+			return s3c_get_pclk();
+		case 0x400:
+			break;	/* TODO UEXTCLK */
+		case 0xc00:
+			break;	/* TODO FCLK/n */
+	}
+
+	return 0;	/* not nice, but we can't emit an error message! */
+}
+
+static int s3c_serial_setbaudrate(struct console_device *cdev, int baudrate)
+{
+	struct device_d *dev = cdev->dev;
+	void __iomem *base = dev->priv;
+	unsigned val;
+
+	val = s3c_get_arch_uart_input_clock(base) / (16 * baudrate) - 1;
+	writew(val, base + UBRDIV);
+
+	return 0;
+}
+
+static int s3c_serial_init_port(struct console_device *cdev)
+{
+	struct device_d *dev = cdev->dev;
+	void __iomem *base = dev->priv;
+
+	/* FIFO enable, Tx/Rx FIFO clear */
+	writeb(0x07, base + UFCON);
+	writeb(0x00, base + UMCON);
+
+	/* Normal,No parity,1 stop,8 bit */
+	writeb(0x03, base + ULCON);
+	/*
+	 * tx=level,rx=edge,disable timeout int.,enable rx error int.,
+	 * normal,interrupt or polling
+	 */
+	writew(0x0245, base + UCON);
+
+#ifdef CONFIG_DRIVER_SERIAL_S3C_AUTOSYNC
+	writeb(0x10, base + UMCON); /* enable auto flow control */
+#else
+	writeb(0x01, base + UMCON); /* RTS up */
+#endif
+
+	return 0;
+}
+
+static void s3c_serial_putc(struct console_device *cdev, char c)
+{
+	struct device_d *dev = cdev->dev;
+	void __iomem *base = dev->priv;
+
+	/* Wait for Tx FIFO not full */
+	while (!(readb(base + UTRSTAT) & 0x2))
+		;
+
+	writeb(c, base + UTXH);
+}
+
+static int s3c_serial_tstc(struct console_device *cdev)
+{
+	struct device_d *dev = cdev->dev;
+	void __iomem *base = dev->priv;
+
+	/* If receive fifo is empty, return false */
+	if (readb(base + UTRSTAT) & 0x1)
+		return 1;
+
+	return 0;
+}
+
+static int s3c_serial_getc(struct console_device *cdev)
+{
+	struct device_d *dev = cdev->dev;
+	void __iomem *base = dev->priv;
+
+	/* wait for a character */
+	while (!(readb(base + UTRSTAT) & 0x1))
+		;
+
+	return readb(base + URXH);
+}
+
+static void s3c_serial_flush(struct console_device *cdev)
+{
+	struct device_d *dev = cdev->dev;
+	void __iomem *base = dev->priv;
+
+	while (!(readb(base + UTRSTAT) & 0x4))
+		;
+}
+
+static int s3c_serial_probe(struct device_d *dev)
+{
+	struct console_device *cdev;
+
+	cdev = xzalloc(sizeof(struct console_device));
+	dev->type_data = cdev;
+	dev->priv = dev_request_mem_region(dev, 0);
+	cdev->dev = dev;
+	cdev->f_caps = CONSOLE_STDIN | CONSOLE_STDOUT | CONSOLE_STDERR;
+	cdev->tstc = s3c_serial_tstc;
+	cdev->putc = s3c_serial_putc;
+	cdev->getc = s3c_serial_getc;
+	cdev->flush = s3c_serial_flush;
+	cdev->setbrg = s3c_serial_setbaudrate;
+
+	s3c_serial_init_port(cdev);
+
+	/* Enable UART */
+	console_register(cdev);
+
+	return 0;
+}
+
+static void s3c_serial_remove(struct device_d *dev)
+{
+	struct console_device *cdev = dev->type_data;
+
+	s3c_serial_flush(cdev);
+	free(cdev);
+	dev->type_data = NULL;
+}
+
+static struct driver_d s3c_serial_driver = {
+	.name   = "s3c_serial",
+	.probe  = s3c_serial_probe,
+	.remove = s3c_serial_remove,
+};
+
+static int s3c_serial_init(void)
+{
+	register_driver(&s3c_serial_driver);
+	return 0;
+}
+
+console_initcall(s3c_serial_init);
diff --git a/drivers/serial/serial_s3c24x0.c b/drivers/serial/serial_s3c24x0.c
deleted file mode 100644
index 4191a49..0000000
--- a/drivers/serial/serial_s3c24x0.c
+++ /dev/null
@@ -1,172 +0,0 @@
-/*
- * (c) 2009 Juergen Beisert <j.beisert@saschahauer.de>
- *
- * Based on code from:
- * (c) 2004 Sascha Hauer <sascha@saschahauer.de>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; either version 2 of the License, or
- * (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
- *
- */
-
-#include <common.h>
-#include <driver.h>
-#include <init.h>
-#include <malloc.h>
-#include <io.h>
-#include <mach/s3c-generic.h>
-#include <mach/s3c-iomap.h>
-
-/* Note: Offsets are for little endian access */
-#define ULCON 0x00		/* line control */
-#define UCON 0x04		/* UART control */
-#define UFCON 0x08		/* FIFO control */
-#define UMCON 0x0c		/* modem control */
-#define UTRSTAT 0x10		/* Rx/Tx status */
-#define UERSTAT 0x14		/* error status */
-#define UFSTAT 0x18		/* FIFO status */
-#define UMSTAT 0x1c		/* modem status */
-#define UTXH 0x20		/* transmitt */
-#define URXH 0x24		/* receive */
-#define UBRDIV 0x28		/* baudrate generator */
-
-static int s3c24x0_serial_setbaudrate(struct console_device *cdev, int baudrate)
-{
-	struct device_d *dev = cdev->dev;
-	void __iomem *base = dev->priv;
-	unsigned val;
-
-	/* value is calculated so : PCLK / (16 * baudrate) -1 */
-	val = s3c_get_pclk() / (16 * baudrate) - 1;
-	writew(val, base + UBRDIV);
-
-	return 0;
-}
-
-static int s3c24x0_serial_init_port(struct console_device *cdev)
-{
-	struct device_d *dev = cdev->dev;
-	void __iomem *base = dev->priv;
-
-	/* FIFO enable, Tx/Rx FIFO clear */
-	writeb(0x07, base + UFCON);
-	writeb(0x00, base + UMCON);
-
-	/* Normal,No parity,1 stop,8 bit */
-	writeb(0x03, base + ULCON);
-	/*
-	 * tx=level,rx=edge,disable timeout int.,enable rx error int.,
-	 * normal,interrupt or polling
-	 */
-	writew(0x0245, base + UCON);
-
-#ifdef CONFIG_DRIVER_SERIAL_S3C24X0_AUTOSYNC
-	writeb(0x10, base + UMCON); /* enable auto flow control */
-#else
-	writeb(0x01, base + UMCON); /* RTS up */
-#endif
-
-	return 0;
-}
-
-static void s3c24x0_serial_putc(struct console_device *cdev, char c)
-{
-	struct device_d *dev = cdev->dev;
-	void __iomem *base = dev->priv;
-
-	/* Wait for Tx FIFO not full */
-	while (!(readb(base + UTRSTAT) & 0x2))
-		;
-
-	writeb(c, base + UTXH);
-}
-
-static int s3c24x0_serial_tstc(struct console_device *cdev)
-{
-	struct device_d *dev = cdev->dev;
-	void __iomem *base = dev->priv;
-
-	/* If receive fifo is empty, return false */
-	if (readb(base + UTRSTAT) & 0x1)
-		return 1;
-
-	return 0;
-}
-
-static int s3c24x0_serial_getc(struct console_device *cdev)
-{
-	struct device_d *dev = cdev->dev;
-	void __iomem *base = dev->priv;
-
-	/* wait for a character */
-	while (!(readb(base + UTRSTAT) & 0x1))
-		;
-
-	return readb(base + URXH);
-}
-
-static void s3c24x0_serial_flush(struct console_device *cdev)
-{
-	struct device_d *dev = cdev->dev;
-	void __iomem *base = dev->priv;
-
-	while (!(readb(base + UTRSTAT) & 0x4))
-		;
-}
-
-static int s3c24x0_serial_probe(struct device_d *dev)
-{
-	struct console_device *cdev;
-
-	cdev = xzalloc(sizeof(struct console_device));
-	dev->type_data = cdev;
-	dev->priv = dev_request_mem_region(dev, 0);
-	cdev->dev = dev;
-	cdev->f_caps = CONSOLE_STDIN | CONSOLE_STDOUT | CONSOLE_STDERR;
-	cdev->tstc = s3c24x0_serial_tstc;
-	cdev->putc = s3c24x0_serial_putc;
-	cdev->getc = s3c24x0_serial_getc;
-	cdev->flush = s3c24x0_serial_flush;
-	cdev->setbrg = s3c24x0_serial_setbaudrate;
-
-	s3c24x0_serial_init_port(cdev);
-
-	/* Enable UART */
-	console_register(cdev);
-
-	return 0;
-}
-
-static void s3c24x0_serial_remove(struct device_d *dev)
-{
-	struct console_device *cdev = dev->type_data;
-
-	s3c24x0_serial_flush(cdev);
-	free(cdev);
-	dev->type_data = NULL;
-}
-
-static struct driver_d s3c24x0_serial_driver = {
-	.name   = "s3c24x0_serial",
-	.probe  = s3c24x0_serial_probe,
-	.remove = s3c24x0_serial_remove,
-};
-
-static int s3c24x0_serial_init(void)
-{
-	register_driver(&s3c24x0_serial_driver);
-	return 0;
-}
-
-console_initcall(s3c24x0_serial_init);
-- 
1.7.7.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

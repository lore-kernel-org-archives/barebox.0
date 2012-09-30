Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-f171.google.com ([209.85.212.171])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TI9cl-00027Q-9R
 for barebox@lists.infradead.org; Sun, 30 Sep 2012 02:51:21 +0000
Received: by mail-wi0-f171.google.com with SMTP id hj13so931637wib.0
 for <barebox@lists.infradead.org>; Sat, 29 Sep 2012 19:51:19 -0700 (PDT)
From: vj <vicencb@gmail.com>
Date: Sun, 30 Sep 2012 04:50:35 +0200
Message-Id: <1348973437-31132-8-git-send-email-vicencb@gmail.com>
In-Reply-To: <1348973437-31132-1-git-send-email-vicencb@gmail.com>
References: <1348973437-31132-1-git-send-email-vicencb@gmail.com>
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
Subject: [PATCH 7/9] omap4: add serial communications over usb boot
To: barebox@lists.infradead.org
Cc: vj <vicencb@gmail.com>

---
 drivers/serial/Kconfig                |  7 +++
 drivers/serial/Makefile               |  1 +
 drivers/serial/serial_omap4_usbboot.c | 87 +++++++++++++++++++++++++++++++++++
 3 files changed, 95 insertions(+)
 create mode 100644 drivers/serial/serial_omap4_usbboot.c

diff --git a/drivers/serial/Kconfig b/drivers/serial/Kconfig
index 7eb96ed..0627b6e 100644
--- a/drivers/serial/Kconfig
+++ b/drivers/serial/Kconfig
@@ -100,4 +100,11 @@ config DRIVER_SERIAL_PXA
 	bool "PXA serial driver"
 	depends on ARCH_PXA
 
+config DRIVER_SERIAL_OMAP4_USBBOOT
+	bool "serial driver over omap4 usb"
+	default n
+	depends on OMAP4_USBBOOT
+	help
+	  Enable this to get console support over the usb bus used to boot an OMAP4
+
 endmenu
diff --git a/drivers/serial/Makefile b/drivers/serial/Makefile
index e2d56b9..ff99e72 100644
--- a/drivers/serial/Makefile
+++ b/drivers/serial/Makefile
@@ -19,3 +19,4 @@ obj-$(CONFIG_DRIVER_SERIAL_S3C)			+= serial_s3c.o
 obj-$(CONFIG_DRIVER_SERIAL_ALTERA)		+= serial_altera.o
 obj-$(CONFIG_DRIVER_SERIAL_ALTERA_JTAG)		+= serial_altera_jtag.o
 obj-$(CONFIG_DRIVER_SERIAL_PXA)			+= serial_pxa.o
+obj-$(CONFIG_DRIVER_SERIAL_OMAP4_USBBOOT)	+= serial_omap4_usbboot.o
diff --git a/drivers/serial/serial_omap4_usbboot.c b/drivers/serial/serial_omap4_usbboot.c
new file mode 100644
index 0000000..e1653b8
--- /dev/null
+++ b/drivers/serial/serial_omap4_usbboot.c
@@ -0,0 +1,87 @@
+/*
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * version 2 as published by the Free Software Foundation.
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
+#include <init.h>
+#include <malloc.h>
+#include <errno.h>
+#include <mach/omap4_rom_usb.h>
+
+struct serial_omap4_usbboot_priv {
+	struct console_device cdev;
+	u32 val;
+};
+
+static void serial_omap4_usbboot_putc(struct console_device *cdev, char c)
+{
+	unsigned b = c;
+	omap4_usbboot_write(&b, 4);
+}
+
+static int serial_omap4_usbboot_tstc(struct console_device *cdev)
+{
+	struct serial_omap4_usbboot_priv *priv =
+		container_of(cdev, struct serial_omap4_usbboot_priv, cdev);
+	if (omap4_usbboot_is_read_waiting())
+		return 0;
+	else if (omap4_usbboot_is_read_ok())
+		return 1;
+	omap4_usbboot_queue_read(&priv->val, 4);
+	udelay(100);
+	if (omap4_usbboot_is_read_waiting())
+		return 0;
+	else if (omap4_usbboot_is_read_ok())
+		return 1;
+	return 0;
+}
+
+static int serial_omap4_usbboot_getc(struct console_device *cdev)
+{
+	struct serial_omap4_usbboot_priv *priv =
+		container_of(cdev, struct serial_omap4_usbboot_priv, cdev);
+	if (omap4_usbboot_is_read_waiting() || omap4_usbboot_is_read_ok()) {
+		omap4_usbboot_wait_read();
+		return priv->val;
+	}
+	omap4_usbboot_read(&priv->val, 4);
+	return priv->val;
+}
+
+static int serial_omap4_usbboot_probe(struct device_d *dev)
+{
+	struct serial_omap4_usbboot_priv *priv;
+	priv = xzalloc(sizeof(*priv));
+
+	priv->cdev.dev = dev;
+	priv->cdev.f_caps = CONSOLE_STDIN | CONSOLE_STDOUT | CONSOLE_STDERR;
+	priv->cdev.tstc = serial_omap4_usbboot_tstc;
+	priv->cdev.putc = serial_omap4_usbboot_putc;
+	priv->cdev.getc = serial_omap4_usbboot_getc;
+	priv->cdev.setbrg = NULL;
+
+	return console_register(&priv->cdev);
+}
+
+static struct driver_d serial_omap4_usbboot_driver = {
+	.name = "serial_omap4_usbboot",
+	.probe = serial_omap4_usbboot_probe,
+};
+
+static int serial_omap4_usbboot_init(void)
+{
+	return register_driver(&serial_omap4_usbboot_driver);
+}
+console_initcall(serial_omap4_usbboot_init);
-- 
1.7.12.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

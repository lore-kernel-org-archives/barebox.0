Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-f177.google.com ([209.85.212.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TGe7G-0007Rx-VP
 for barebox@lists.infradead.org; Tue, 25 Sep 2012 23:00:35 +0000
Received: by wibhn17 with SMTP id hn17so5109662wib.0
 for <barebox@lists.infradead.org>; Tue, 25 Sep 2012 16:00:33 -0700 (PDT)
From: vj <vicencb@gmail.com>
Date: Wed, 26 Sep 2012 00:59:52 +0200
Message-Id: <1348613994-1793-6-git-send-email-vicencb@gmail.com>
In-Reply-To: <1348613994-1793-1-git-send-email-vicencb@gmail.com>
References: <[RFC][PATCH] archosg9: add support for tablet>
 <1348613994-1793-1-git-send-email-vicencb@gmail.com>
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
Subject: [PATCH 5/7] add console support over the same USB used for booting
To: barebox@lists.infradead.org
Cc: vj <vicencb@gmail.com>

---
 drivers/serial/Kconfig      |  7 +++++
 drivers/serial/Makefile     |  1 +
 drivers/serial/serial_usb.c | 64 +++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 72 insertions(+)
 create mode 100644 drivers/serial/serial_usb.c

diff --git a/drivers/serial/Kconfig b/drivers/serial/Kconfig
index 7eb96ed..4e85e1f 100644
--- a/drivers/serial/Kconfig
+++ b/drivers/serial/Kconfig
@@ -100,4 +100,11 @@ config DRIVER_SERIAL_PXA
 	bool "PXA serial driver"
 	depends on ARCH_PXA
 
+config DRIVER_SERIAL_USB
+	bool "serial driver over omap4 usb"
+	default n
+	depends on USB_BOOT
+	help
+	  Enable this to get console support over the usb bus used to boot an OMAP4
+
 endmenu
diff --git a/drivers/serial/Makefile b/drivers/serial/Makefile
index e2d56b9..a89bb44 100644
--- a/drivers/serial/Makefile
+++ b/drivers/serial/Makefile
@@ -19,3 +19,4 @@ obj-$(CONFIG_DRIVER_SERIAL_S3C)			+= serial_s3c.o
 obj-$(CONFIG_DRIVER_SERIAL_ALTERA)		+= serial_altera.o
 obj-$(CONFIG_DRIVER_SERIAL_ALTERA_JTAG)		+= serial_altera_jtag.o
 obj-$(CONFIG_DRIVER_SERIAL_PXA)			+= serial_pxa.o
+obj-$(CONFIG_DRIVER_SERIAL_USB)			+= serial_usb.o
diff --git a/drivers/serial/serial_usb.c b/drivers/serial/serial_usb.c
new file mode 100644
index 0000000..25391db
--- /dev/null
+++ b/drivers/serial/serial_usb.c
@@ -0,0 +1,64 @@
+/*
+ * Use of usb-port as a serial communications port
+*/
+
+#include <common.h>
+#include <init.h>
+#include <malloc.h>
+#include <errno.h>
+#include <mach/omap4_rom_usb.h>
+
+struct serial_usb_priv {
+	struct console_device cdev;
+	int val;
+};
+
+static void serial_usb_putc(struct console_device *cdev, char c){
+	unsigned b = c;
+	usb_write(&b, 4);
+}
+
+static int serial_usb_tstc(struct console_device *cdev){
+	struct serial_usb_priv *priv = container_of(cdev, struct serial_usb_priv, cdev);
+	if(pusb->dread.status == -1 || pusb->dread.status == STATUS_WAITING)
+		return 0;
+	else if(pusb->dread.status != STATUS_OKAY)
+		usb_queue_read(&priv->val, 4);
+	return pusb->dread.status == STATUS_OKAY;
+}
+
+static int serial_usb_getc(struct console_device *cdev){
+	struct serial_usb_priv *priv = container_of(cdev, struct serial_usb_priv, cdev);
+	if(pusb->dread.status == -1 || pusb->dread.status == STATUS_WAITING)
+		;
+	else if(pusb->dread.status != STATUS_OKAY)
+		usb_queue_read(&priv->val, 4);
+	usb_wait_read();
+	pusb->dread.status = -2;
+	return priv->val;
+}
+
+static int serial_usb_probe(struct device_d *dev){
+	struct serial_usb_priv *priv;
+	priv = xzalloc(sizeof(*priv));
+	pusb->dread.status=-2;
+
+	priv->cdev.dev = dev;
+	priv->cdev.f_caps = CONSOLE_STDIN | CONSOLE_STDOUT | CONSOLE_STDERR;
+	priv->cdev.tstc = serial_usb_tstc;
+	priv->cdev.putc = serial_usb_putc;
+	priv->cdev.getc = serial_usb_getc;
+	priv->cdev.setbrg = NULL;
+
+	return console_register(&priv->cdev);
+}
+
+static struct driver_d serial_usb_driver = {
+	.name = "serial_usb",
+	.probe = serial_usb_probe,
+};
+
+static int serial_usb_init(void){
+	return register_driver(&serial_usb_driver);
+}
+console_initcall(serial_usb_init);
-- 
1.7.12.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

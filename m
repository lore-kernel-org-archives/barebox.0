Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXKxd-00021k-9u
 for barebox@lists.infradead.org; Sun, 02 Jun 2019 07:31:23 +0000
Received: by mail-lf1-x129.google.com with SMTP id m15so11127481lfh.4
 for <barebox@lists.infradead.org>; Sun, 02 Jun 2019 00:31:20 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sun,  2 Jun 2019 10:30:59 +0300
Message-Id: <20190602073101.21352-3-antonynpavlov@gmail.com>
In-Reply-To: <20190602073101.21352-1-antonynpavlov@gmail.com>
References: <20190602073101.21352-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [RFC 2/4] serial: add litex UART driver
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/serial/Makefile       |  1 +
 drivers/serial/serial_litex.c | 99 +++++++++++++++++++++++++++++++++++
 2 files changed, 100 insertions(+)

diff --git a/drivers/serial/Makefile b/drivers/serial/Makefile
index 4174cc1ffb..fa86aa8c05 100644
--- a/drivers/serial/Makefile
+++ b/drivers/serial/Makefile
@@ -23,3 +23,4 @@ obj-$(CONFIG_DRIVER_SERIAL_CADENCE)		+= serial_cadence.o
 obj-$(CONFIG_DRIVER_SERIAL_EFI_STDIO)		+= efi-stdio.o
 obj-$(CONFIG_DRIVER_SERIAL_DIGIC)		+= serial_digic.o
 obj-$(CONFIG_DRIVER_SERIAL_LPUART)		+= serial_lpuart.o
+obj-$(CONFIG_MACH_LITEX)			+= serial_litex.o
diff --git a/drivers/serial/serial_litex.c b/drivers/serial/serial_litex.c
new file mode 100644
index 0000000000..4a23921ac7
--- /dev/null
+++ b/drivers/serial/serial_litex.c
@@ -0,0 +1,99 @@
+// SPDX-License-Identifier: GPL-2.
+/*
+ * Copyright (C) 2019 Antony Pavlov <antonynpavlov@gmail.com>
+ *
+ * This file is part of barebox.
+ * See file CREDITS for list of people who contributed to this project.
+ *
+ */
+
+#include <common.h>
+#include <init.h>
+#include <malloc.h>
+#include <io.h>
+
+#include <mach/debug_ll.h>
+
+static inline uint32_t litex_serial_readb(struct console_device *cdev,
+						uint32_t offset)
+{
+	void __iomem *base = cdev->dev->priv;
+
+	return readb(base + offset);
+}
+
+static inline void litex_serial_writeb(struct console_device *cdev,
+					uint32_t value, uint32_t offset)
+{
+	void __iomem *base = cdev->dev->priv;
+
+	writeb(value, base + offset);
+}
+
+static void litex_serial_putc(struct console_device *cdev, char c)
+{
+	while (litex_serial_readb(cdev, UART_TXFULL))
+		;
+
+	litex_serial_writeb(cdev, c, UART_RXTX);
+}
+
+static int litex_serial_getc(struct console_device *cdev)
+{
+	int c;
+
+	while (litex_serial_readb(cdev, UART_RXEMPTY))
+		;
+
+	c = litex_serial_readb(cdev, UART_RXTX);
+
+	/* refresh UART_RXEMPTY by writing UART_EV_RX to UART_EV_PENDING */
+	litex_serial_writeb(cdev, UART_EV_RX, UART_EV_PENDING);
+
+	return c;
+}
+
+static int litex_serial_tstc(struct console_device *cdev)
+{
+	if (litex_serial_readb(cdev, UART_RXEMPTY)) {
+		return 0;
+	}
+
+	return 1;
+}
+
+static int litex_serial_probe(struct device_d *dev)
+{
+	struct resource *iores;
+	struct console_device *cdev;
+
+	cdev = xzalloc(sizeof(struct console_device));
+	iores = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(iores))
+		return PTR_ERR(iores);
+	dev->priv = IOMEM(iores->start);
+	cdev->dev = dev;
+	cdev->tstc = &litex_serial_tstc;
+	cdev->putc = &litex_serial_putc;
+	cdev->getc = &litex_serial_getc;
+	cdev->setbrg = NULL;
+
+	console_register(cdev);
+
+	return 0;
+}
+
+static __maybe_unused struct of_device_id litex_serial_dt_ids[] = {
+	{
+		.compatible = "litex,uart",
+	}, {
+		/* sentinel */
+	}
+};
+
+static struct driver_d litex_serial_driver = {
+	.name  = "litex-uart",
+	.probe = litex_serial_probe,
+	.of_compatible = DRV_OF_COMPAT(litex_serial_dt_ids),
+};
+console_platform_driver(litex_serial_driver);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

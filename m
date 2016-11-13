Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x243.google.com ([2a00:1450:4010:c07::243])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c62fj-0000Av-AN
 for barebox@lists.infradead.org; Sun, 13 Nov 2016 21:50:55 +0000
Received: by mail-lf0-x243.google.com with SMTP id p100so5450488lfg.2
 for <barebox@lists.infradead.org>; Sun, 13 Nov 2016 13:50:22 -0800 (PST)
Received: from localhost.localdomain (ppp109-252-108-239.pppoe.spdop.ru.
 [109.252.108.239])
 by smtp.gmail.com with ESMTPSA id c2sm3977454ljb.8.2016.11.13.13.50.19
 for <barebox@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 13 Nov 2016 13:50:19 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon, 14 Nov 2016 00:50:14 +0300
Message-Id: <20161113215015.9399-2-antonynpavlov@gmail.com>
In-Reply-To: <20161113215015.9399-1-antonynpavlov@gmail.com>
References: <20161113215015.9399-1-antonynpavlov@gmail.com>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [RFCv2 1/2] serial: add driver for SiFive UART
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---

TODO:

  * add speed setup support.

 drivers/serial/Kconfig         |   3 ++
 drivers/serial/Makefile        |   1 +
 drivers/serial/serial_sifive.c | 109 +++++++++++++++++++++++++++++++++++++++++
 3 files changed, 113 insertions(+)

diff --git a/drivers/serial/Kconfig b/drivers/serial/Kconfig
index b112d7e..70509b9 100644
--- a/drivers/serial/Kconfig
+++ b/drivers/serial/Kconfig
@@ -117,6 +117,9 @@ config DRIVER_SERIAL_S3C_AUTOSYNC
 	  Say Y here if you want to use the auto flow feature of this
 	  UART. RTS and CTS will be handled by the hardware when enabled.
 
+config DRIVER_SERIAL_SIFIVE
+	bool "SiFive serial driver"
+
 config DRIVER_SERIAL_PXA
 	bool "PXA serial driver"
 	depends on ARCH_PXA
diff --git a/drivers/serial/Makefile b/drivers/serial/Makefile
index 189e777..368e992 100644
--- a/drivers/serial/Makefile
+++ b/drivers/serial/Makefile
@@ -20,3 +20,4 @@ obj-$(CONFIG_DRIVER_SERIAL_AUART)		+= serial_auart.o
 obj-$(CONFIG_DRIVER_SERIAL_CADENCE)		+= serial_cadence.o
 obj-$(CONFIG_DRIVER_SERIAL_EFI_STDIO)		+= efi-stdio.o
 obj-$(CONFIG_DRIVER_SERIAL_DIGIC)		+= serial_digic.o
+obj-$(CONFIG_DRIVER_SERIAL_SIFIVE)		+= serial_sifive.o
diff --git a/drivers/serial/serial_sifive.c b/drivers/serial/serial_sifive.c
new file mode 100644
index 0000000..06e3521
--- /dev/null
+++ b/drivers/serial/serial_sifive.c
@@ -0,0 +1,109 @@
+/*
+ * Copyright (C) 2016 Antony Pavlov <antonynpavlov@gmail.com>
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
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#include <common.h>
+#include <init.h>
+#include <malloc.h>
+#include <io.h>
+
+#define UART_RX_OFFSET 0
+#define UART_TX_OFFSET 0
+#define UART_TX_COUNT_OFFSET 0x4
+#define UART_RX_COUNT_OFFSET 0x8
+#define UART_DIVIDER_OFFSET  0xC
+
+static inline uint32_t sifive_serial_readl(struct console_device *cdev,
+						uint32_t offset)
+{
+	void __iomem *base = cdev->dev->priv;
+
+	return readl(base + offset);
+}
+
+static inline void sifive_serial_writel(struct console_device *cdev,
+					uint32_t value, uint32_t offset)
+{
+	void __iomem *base = cdev->dev->priv;
+
+	writel(value, base + offset);
+}
+
+static int sifive_serial_setbaudrate(struct console_device *cdev, int baudrate)
+{
+	/* FIXME: no baudrate setup at the momement :( */
+
+	return 0;
+}
+
+static void sifive_serial_putc(struct console_device *cdev, char c)
+{
+	sifive_serial_writel(cdev, c, UART_TX_OFFSET);
+}
+
+static int sifive_serial_getc(struct console_device *cdev)
+{
+	uint32_t rxcnt;
+
+	do {
+		rxcnt = sifive_serial_readl(cdev, UART_RX_COUNT_OFFSET);
+	} while (!rxcnt);
+
+	return sifive_serial_readl(cdev, UART_RX_OFFSET);
+}
+
+static int sifive_serial_tstc(struct console_device *cdev)
+{
+	uint32_t rxcnt = sifive_serial_readl(cdev, UART_RX_COUNT_OFFSET);
+
+	return (rxcnt != 0);
+}
+
+static int sifive_serial_probe(struct device_d *dev)
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
+	cdev->tstc = &sifive_serial_tstc;
+	cdev->putc = &sifive_serial_putc;
+	cdev->getc = &sifive_serial_getc;
+	cdev->setbrg = &sifive_serial_setbaudrate;
+
+	console_register(cdev);
+
+	return 0;
+}
+
+static __maybe_unused struct of_device_id sifive_serial_dt_ids[] = {
+	{
+		.compatible = "sifive,uart",
+	}, {
+		/* sentinel */
+	}
+};
+
+static struct driver_d sifive_serial_driver = {
+	.name  = "sifive-uart",
+	.probe = sifive_serial_probe,
+	.of_compatible = DRV_OF_COMPAT(sifive_serial_dt_ids),
+};
+console_platform_driver(sifive_serial_driver);
-- 
2.10.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

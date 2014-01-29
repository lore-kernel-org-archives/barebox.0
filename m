Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W8RTY-000479-7F
 for barebox@lists.infradead.org; Wed, 29 Jan 2014 09:30:29 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 29 Jan 2014 10:30:00 +0100
Message-Id: <1390987800-18095-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1390987800-18095-1-git-send-email-s.hauer@pengutronix.de>
References: <1390987800-18095-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] misc: Add devicetree SRAM driver
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/misc/Kconfig  |  6 +++++
 drivers/misc/Makefile |  1 +
 drivers/misc/sram.c   | 75 +++++++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 82 insertions(+)
 create mode 100644 drivers/misc/sram.c

diff --git a/drivers/misc/Kconfig b/drivers/misc/Kconfig
index e59c4f1..c34a4af 100644
--- a/drivers/misc/Kconfig
+++ b/drivers/misc/Kconfig
@@ -9,4 +9,10 @@ config JTAG
 	depends on GENERIC_GPIO
 	help
 	  Controls JTAG chains connected to I/O pins
+
+config SRAM
+	bool "Generic SRAM driver"
+	help
+	  This driver adds support for memory mapped SRAM.
+
 endmenu
diff --git a/drivers/misc/Makefile b/drivers/misc/Makefile
index b085577..908c8cb 100644
--- a/drivers/misc/Makefile
+++ b/drivers/misc/Makefile
@@ -3,3 +3,4 @@
 #
 
 obj-$(CONFIG_JTAG)		+= jtag.o
+obj-$(CONFIG_SRAM)		+= sram.o
diff --git a/drivers/misc/sram.c b/drivers/misc/sram.c
new file mode 100644
index 0000000..7ea23b7
--- /dev/null
+++ b/drivers/misc/sram.c
@@ -0,0 +1,75 @@
+/*
+ * drivers/misc/sram.c - generic memory mapped SRAM driver
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
+ */
+
+#include <common.h>
+#include <errno.h>
+#include <driver.h>
+#include <malloc.h>
+#include <init.h>
+
+struct sram {
+	struct resource *res;
+	char *name;
+	struct cdev cdev;
+};
+
+static struct file_operations memops = {
+	.read  = mem_read,
+	.write = mem_write,
+	.memmap = generic_memmap_rw,
+	.lseek = dev_lseek_default,
+};
+
+static int sram_probe(struct device_d *dev)
+{
+	struct sram *sram;
+	struct resource *res;
+	void __iomem *base;
+	int ret;
+
+	base = dev_request_mem_region(dev, 0);
+	if (!base)
+		return -EBUSY;
+
+	sram = xzalloc(sizeof(*sram));
+
+	sram->cdev.name = asprintf("sram%d",
+			cdev_find_free_index("sram"));
+
+	res = dev_get_resource(dev, 0);
+
+	sram->cdev.size = (unsigned long)resource_size(res);
+	sram->cdev.ops = &memops;
+	sram->cdev.dev = dev;
+
+	ret = devfs_create(&sram->cdev);
+	if (ret)
+		return ret;
+
+	return 0;
+}
+
+static __maybe_unused struct of_device_id sram_dt_ids[] = {
+	{
+		.compatible = "mmio-sram",
+	}, {
+	},
+};
+
+static struct driver_d sram_driver = {
+	.name = "mmio-sram",
+	.probe = sram_probe,
+	.of_compatible = sram_dt_ids,
+};
+device_platform_driver(sram_driver);
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

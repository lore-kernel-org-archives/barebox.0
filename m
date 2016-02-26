Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aZH92-000612-W0
 for barebox@lists.infradead.Org; Fri, 26 Feb 2016 12:05:18 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Fri, 26 Feb 2016 13:04:43 +0100
Message-Id: <1456488287-23404-2-git-send-email-s.trumtrar@pengutronix.de>
In-Reply-To: <1456488287-23404-1-git-send-email-s.trumtrar@pengutronix.de>
References: <1456488287-23404-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 1/5] drivers: add simple hw_random implementation
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Add a simple hw_random implementation based on code from
Linux v4.5-rc5.

All the entropypool initialization stuff is left out and
the obsolete data_read/data_present calls are omitted.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 drivers/Kconfig            |   1 +
 drivers/Makefile           |   1 +
 drivers/hw_random/Kconfig  |   6 +++
 drivers/hw_random/Makefile |   1 +
 drivers/hw_random/core.c   | 110 +++++++++++++++++++++++++++++++++++++++++++++
 include/linux/hw_random.h  |  44 ++++++++++++++++++
 6 files changed, 163 insertions(+)
 create mode 100644 drivers/hw_random/Kconfig
 create mode 100644 drivers/hw_random/Makefile
 create mode 100644 drivers/hw_random/core.c
 create mode 100644 include/linux/hw_random.h

diff --git a/drivers/Kconfig b/drivers/Kconfig
index 5984ccca2c95..ab07f22e99c0 100644
--- a/drivers/Kconfig
+++ b/drivers/Kconfig
@@ -31,5 +31,6 @@ source "drivers/pci/Kconfig"
 source "drivers/rtc/Kconfig"
 source "drivers/firmware/Kconfig"
 source "drivers/phy/Kconfig"
+source "drivers/hw_random/Kconfig"
 
 endmenu
diff --git a/drivers/Makefile b/drivers/Makefile
index 3afbb61b2d3b..ee99a8fca2a2 100644
--- a/drivers/Makefile
+++ b/drivers/Makefile
@@ -31,3 +31,4 @@ obj-y += rtc/
 obj-$(CONFIG_FIRMWARE) += firmware/
 obj-$(CONFIG_GENERIC_PHY) += phy/
 obj-$(CONFIG_HABV4) += habv4/
+obj-$(CONFIG_HWRNG) += hw_random/
diff --git a/drivers/hw_random/Kconfig b/drivers/hw_random/Kconfig
new file mode 100644
index 000000000000..807fcadd31f7
--- /dev/null
+++ b/drivers/hw_random/Kconfig
@@ -0,0 +1,6 @@
+menuconfig HWRNG
+	bool "HWRNG Support"
+	help
+	  Support for HWRNG(Hardware Random Number Generator) devices.
+
+	  If unsure, say no.
diff --git a/drivers/hw_random/Makefile b/drivers/hw_random/Makefile
new file mode 100644
index 000000000000..15307b100f29
--- /dev/null
+++ b/drivers/hw_random/Makefile
@@ -0,0 +1 @@
+obj-$(CONFIG_HWRNG)		+= core.o
diff --git a/drivers/hw_random/core.c b/drivers/hw_random/core.c
new file mode 100644
index 000000000000..69856972980e
--- /dev/null
+++ b/drivers/hw_random/core.c
@@ -0,0 +1,110 @@
+/*
+ * Copyright (c) 2016 Pengutronix, Steffen Trumtrar <kernel@pengutronix.de>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ *
+ * derived from Linux kernel drivers/char/hw_random/core.c
+ */
+
+#include <common.h>
+#include <linux/hw_random.h>
+
+static LIST_HEAD(hwrngs);
+
+#define RNG_BUFFER_SIZE		32
+
+int hwrng_get_data(struct hwrng *rng, u8 *buffer, size_t size, int wait)
+{
+	if (rng->read)
+		return rng->read(rng, buffer, size, wait);
+
+	return 0;
+}
+
+static int hwrng_init(struct hwrng *rng)
+{
+	int ret = 0;
+
+	if (rng->init)
+		ret = rng->init(rng);
+
+	list_add_tail(&rng->list, &hwrngs);
+
+	return ret;
+}
+
+static ssize_t rng_dev_read(struct cdev *cdev, void *buf, size_t size,
+			    loff_t offset, unsigned long flags)
+{
+	struct hwrng *rng = container_of(cdev, struct hwrng, cdev);
+	ssize_t cur = 0;
+	int err = 0;
+	int len;
+	size_t count = size;
+
+	memset(buf, 0, size);
+
+	while (count) {
+		len = hwrng_get_data(rng, rng->buf, RNG_BUFFER_SIZE, true);
+		if (len < 0) {
+			err = len;
+			break;
+		}
+
+		if (len > count)
+			len = count;
+
+		memcpy(buf + cur, rng->buf, len);
+
+		count -= len;
+		cur += len;
+	}
+
+	return cur ? : err;
+}
+
+
+static struct file_operations rng_chrdev_ops = {
+	.read  = rng_dev_read,
+	.lseek = dev_lseek_default,
+};
+
+static int hwrng_register_cdev(struct hwrng *rng)
+{
+	rng->cdev.name = "hwrng";
+	rng->cdev.flags = DEVFS_IS_CHARACTER_DEV;
+	rng->cdev.ops = &rng_chrdev_ops;
+	rng->cdev.dev = rng->dev;
+
+	return devfs_create(&rng->cdev);
+}
+
+struct hwrng *hwrng_get_first(void)
+{
+	if (!list_empty(&hwrngs))
+		return list_first_entry(&hwrngs, struct hwrng, list);
+	else
+		return ERR_PTR(-ENODEV);
+}
+
+int hwrng_register(struct device_d *dev, struct hwrng *rng)
+{
+	int err;
+
+	if (rng->name == NULL || rng->read == NULL)
+		return -EINVAL;
+
+	rng->buf = xzalloc(RNG_BUFFER_SIZE);
+
+	err = hwrng_init(rng);
+	if (err)
+		return err;
+
+	rng->dev = dev;
+
+	err = hwrng_register_cdev(rng);
+
+	return err;
+}
diff --git a/include/linux/hw_random.h b/include/linux/hw_random.h
new file mode 100644
index 000000000000..ccec1d55b105
--- /dev/null
+++ b/include/linux/hw_random.h
@@ -0,0 +1,44 @@
+/*
+	Hardware Random Number Generator
+
+	Please read Documentation/hw_random.txt for details on use.
+
+	----------------------------------------------------------
+	This software may be used and distributed according to the terms
+        of the GNU General Public License, incorporated herein by reference.
+
+ */
+
+#ifndef LINUX_HWRANDOM_H_
+#define LINUX_HWRANDOM_H_
+
+#include <linux/list.h>
+
+/**
+ * struct hwrng - Hardware Random Number Generator driver
+ * @name:		Unique RNG name.
+ * @init:		Initialization callback (can be NULL).
+ * @read:		New API. drivers can fill up to max bytes of data
+ *			into the buffer. The buffer is aligned for any type.
+ * @priv:		Private data, for use by the RNG driver.
+ */
+struct hwrng {
+	const char *name;
+	int (*init)(struct hwrng *rng);
+	int (*read)(struct hwrng *rng, void *data, size_t max, bool wait);
+	unsigned long priv;
+
+	struct list_head list;
+
+	struct cdev cdev;
+	struct device_d *dev;
+	u8 *buf;
+};
+
+/** Register a new Hardware Random Number Generator driver. */
+extern int hwrng_register(struct device_d *dev, struct hwrng *rng);
+extern struct hwrng *hwrng_get_first(void);
+extern int hwrng_get_data(struct hwrng *rng, u8 *buffer, size_t size,
+			  int wait);
+
+#endif /* LINUX_HWRANDOM_H_ */
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

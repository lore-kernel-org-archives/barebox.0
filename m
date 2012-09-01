Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 2.mo2.mail-out.ovh.net ([188.165.53.149]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T7mvy-0006G3-Hy
 for barebox@lists.infradead.org; Sat, 01 Sep 2012 12:36:20 +0000
Received: from mail21.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 554B5DC6FDB
 for <barebox@lists.infradead.org>; Sat,  1 Sep 2012 14:41:28 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat,  1 Sep 2012 14:36:28 +0200
Message-Id: <1346502990-21603-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20120901102248.GJ18708@game.jcrosoft.org>
References: <20120901102248.GJ18708@game.jcrosoft.org>
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
Subject: [PATCH 1/3] Introduce ARM AMBA bus
To: barebox@lists.infradead.org

This will allow to detect the amba device and use the right driver for it at
runtime.

The code is base on linux 3.5.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/Makefile         |    1 +
 drivers/amba/Makefile    |    2 +
 drivers/amba/bus.c       |  212 ++++++++++++++++++++++++++++++++++++++++++++++
 include/linux/amba/bus.h |  157 ++++++++++++++++++++++++++++++++++
 4 files changed, 372 insertions(+)
 create mode 100644 drivers/amba/Makefile
 create mode 100644 drivers/amba/bus.c
 create mode 100644 include/linux/amba/bus.h

diff --git a/drivers/Makefile b/drivers/Makefile
index 005ab24..ceb8f82 100644
--- a/drivers/Makefile
+++ b/drivers/Makefile
@@ -1,4 +1,5 @@
 obj-y	+= base/
+obj-$(CONFIG_ARM_AMBA) += amba/
 obj-y	+= net/
 obj-y	+= serial/
 obj-y	+= mtd/
diff --git a/drivers/amba/Makefile b/drivers/amba/Makefile
new file mode 100644
index 0000000..a4a511b
--- /dev/null
+++ b/drivers/amba/Makefile
@@ -0,0 +1,2 @@
+
+obj-y += bus.o
diff --git a/drivers/amba/bus.c b/drivers/amba/bus.c
new file mode 100644
index 0000000..6cde349
--- /dev/null
+++ b/drivers/amba/bus.c
@@ -0,0 +1,212 @@
+/*
+ * Copyright (C) 2003 Deep Blue Solutions Ltd, All Rights Reserved.
+ * Copyright (c) 2012 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ *
+ * Under GPLv2.
+ */
+#include <common.h>
+#include <driver.h>
+#include <linux/clk.h>
+#include <linux/amba/bus.h>
+#include <io.h>
+
+#define to_amba_driver(d)	container_of(d, struct amba_driver, drv)
+
+static const struct amba_id *
+amba_lookup(const struct amba_id *table, struct amba_device *dev)
+{
+	int ret = 0;
+
+	while (table->mask) {
+		ret = (dev->periphid & table->mask) == table->id;
+		if (ret)
+			break;
+		table++;
+	}
+
+	return ret ? table : NULL;
+}
+
+static int amba_match(struct device_d *dev, struct driver_d *drv)
+{
+	struct amba_device *pcdev = to_amba_device(dev);
+
+	struct amba_driver *pcdrv = to_amba_driver(drv);
+
+	return amba_lookup(pcdrv->id_table, pcdev) == NULL;
+}
+
+static int amba_get_enable_pclk(struct amba_device *pcdev)
+{
+	struct clk *pclk = clk_get(&pcdev->dev, "apb_pclk");
+	int ret;
+
+	pcdev->pclk = pclk;
+
+	if (IS_ERR(pclk))
+		return PTR_ERR(pclk);
+
+	ret = clk_enable(pclk);
+	if (ret) {
+		clk_put(pclk);
+	}
+
+	return ret;
+}
+
+static int amba_probe(struct device_d *dev)
+{
+	struct amba_device *pcdev = to_amba_device(dev);
+	struct amba_driver *pcdrv = to_amba_driver(dev->driver);
+	const struct amba_id *id = amba_lookup(pcdrv->id_table, pcdev);
+
+	return pcdrv->probe(pcdev, id);
+}
+
+static void amba_remove(struct device_d *dev)
+{
+	struct amba_device *pcdev = to_amba_device(dev);
+	struct amba_driver *drv = to_amba_driver(dev->driver);
+
+	drv->remove(pcdev);
+}
+
+struct bus_type amba_bustype = {
+	.name = "amba",
+	.match = amba_match,
+	.probe = amba_probe,
+	.remove = amba_remove,
+};
+
+int amba_driver_register(struct amba_driver *drv)
+{
+	drv->drv.bus = &amba_bustype;
+#define SETFN(fn)	if (drv->fn) drv->drv.fn = amba_##fn
+	SETFN(probe);
+	SETFN(remove);
+
+	return register_driver(&drv->drv);
+}
+
+/**
+ *	amba_device_add - add a previously allocated AMBA device structure
+ *	@dev: AMBA device allocated by amba_device_alloc
+ *	@parent: resource parent for this devices resources
+ *
+ *	Claim the resource, and read the device cell ID if not already
+ *	initialized.  Register the AMBA device with the Linux device
+ *	manager.
+ */
+int amba_device_add(struct amba_device *dev)
+{
+	u32 size;
+	void __iomem *tmp;
+	int i, ret;
+	struct resource *res = NULL;
+
+	dev->dev.bus = &amba_bustype;
+
+	/*
+	 * Dynamically calculate the size of the resource
+	 * and use this for iomap
+	 */
+	size = resource_size(&dev->res);
+	res = request_iomem_region("amba", dev->res.start, dev->res.end);
+	if (!res)
+		return -ENOMEM;
+	dev->base = tmp = (void __force __iomem *)res->start;
+	if (!tmp) {
+		ret = -ENOMEM;
+		goto err_release;
+	}
+
+	/* Hard-coded primecell ID instead of plug-n-play */
+	if (dev->periphid != 0)
+		goto skip_probe;
+
+	ret = amba_get_enable_pclk(dev);
+	if (ret == 0) {
+		u32 pid, cid;
+
+		/*
+		 * Read pid and cid based on size of resource
+		 * they are located at end of region
+		 */
+		for (pid = 0, i = 0; i < 4; i++)
+			pid |= (readl(tmp + size - 0x20 + 4 * i) & 255) <<
+				(i * 8);
+		for (cid = 0, i = 0; i < 4; i++)
+			cid |= (readl(tmp + size - 0x10 + 4 * i) & 255) <<
+				(i * 8);
+
+		if (cid == AMBA_CID)
+			dev->periphid = pid;
+
+		if (!dev->periphid)
+			ret = -ENODEV;
+	}
+
+	if (ret)
+		goto err_release;
+
+ skip_probe:
+	ret = register_device(&dev->dev);
+	if (ret)
+		goto err_release;
+
+		return ret;
+ err_release:
+	release_region(res);
+	return ret;
+}
+
+struct amba_device *
+amba_aphb_device_add(struct device_d *parent, const char *name, int id,
+		     resource_size_t base, size_t size,
+		     void *pdata, unsigned int periphid)
+{
+	struct amba_device *dev;
+	int ret;
+
+	dev = amba_device_alloc(name, id, base, size);
+	if (!dev)
+		return ERR_PTR(-ENOMEM);
+
+	dev->periphid = periphid;
+	dev->dev.platform_data = pdata;
+	dev->dev.parent = parent;
+
+	ret = amba_device_add(dev);
+	if (ret) {
+		return ERR_PTR(ret);
+	}
+
+	return dev;
+}
+
+/**
+ *	amba_device_alloc - allocate an AMBA device
+ *	@name: sysfs name of the AMBA device
+ *	@base: base of AMBA device
+ *	@size: size of AMBA device
+ *
+ *	Allocate and initialize an AMBA device structure.  Returns %NULL
+ *	on failure.
+ */
+struct amba_device *amba_device_alloc(const char *name, int id, resource_size_t base,
+	size_t size)
+{
+	struct amba_device *dev;
+
+	dev = xzalloc(sizeof(*dev));
+	if (dev) {
+		strcpy(dev->dev.name, name);
+		dev->dev.id = id;
+		dev->res.start = base;
+		dev->res.end = base + size - 1;
+		dev->res.flags = IORESOURCE_MEM;
+	}
+
+	return dev;
+}
+
diff --git a/include/linux/amba/bus.h b/include/linux/amba/bus.h
new file mode 100644
index 0000000..34e6ace
--- /dev/null
+++ b/include/linux/amba/bus.h
@@ -0,0 +1,157 @@
+/*
+ *  linux/include/amba/bus.h
+ *
+ *  This device type deals with ARM PrimeCells and anything else that
+ *  presents a proper CID (0xB105F00D) at the end of the I/O register
+ *  region or that is derived from a PrimeCell.
+ *
+ *  Copyright (C) 2003 Deep Blue Solutions Ltd, All Rights Reserved.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ */
+#ifndef ASMARM_AMBA_H
+#define ASMARM_AMBA_H
+
+#include <linux/clk.h>
+#include <driver.h>
+#include <linux/err.h>
+
+#define AMBA_CID	0xb105f00d
+
+/**
+ * struct amba_id - identifies a device on an AMBA bus
+ * @id: The significant bits if the hardware device ID
+ * @mask: Bitmask specifying which bits of the id field are significant when
+ *	matching.  A driver binds to a device when ((hardware device ID) & mask)
+ *	== id.
+ * @data: Private data used by the driver.
+ */
+struct amba_id {
+	unsigned int		id;
+	unsigned int		mask;
+#ifndef __KERNEL__
+	kernel_ulong_t		data;
+#else
+	void			*data;
+#endif
+};
+
+struct clk;
+
+struct amba_device {
+	struct device_d		dev;
+	struct resource		res;
+	void __iomem		*base;
+	struct clk		*pclk;
+	unsigned int		periphid;
+};
+
+struct amba_driver {
+	struct driver_d		drv;
+	int			(*probe)(struct amba_device *, const struct amba_id *);
+	int			(*remove)(struct amba_device *);
+	const struct amba_id	*id_table;
+};
+
+enum amba_vendor {
+	AMBA_VENDOR_ARM = 0x41,
+	AMBA_VENDOR_ST = 0x80,
+};
+
+extern struct bus_type amba_bustype;
+
+#define to_amba_device(d)	container_of(d, struct amba_device, dev)
+
+#define amba_get_drvdata(d)	dev_get_drvdata(&d->dev)
+#define amba_set_drvdata(d,p)	dev_set_drvdata(&d->dev, p)
+
+int amba_driver_register(struct amba_driver *);
+void amba_driver_unregister(struct amba_driver *);
+struct amba_device *amba_device_alloc(const char *, int id, resource_size_t, size_t);
+void amba_device_put(struct amba_device *);
+int amba_device_add(struct amba_device *);
+int amba_device_register(struct amba_device *, struct resource *);
+
+struct amba_device *
+amba_aphb_device_add(struct device_d *parent, const char *name, int id,
+		     resource_size_t base, size_t size,
+		     void *pdata, unsigned int periphid);
+
+static inline struct amba_device *
+amba_apb_device_add(struct device_d *parent, const char *name, int id,
+		    resource_size_t base, size_t size,
+		    void *pdata, unsigned int periphid)
+{
+	return amba_aphb_device_add(parent, name, id, base, size, pdata,
+				    periphid);
+}
+
+static inline struct amba_device *
+amba_ahb_device_add(struct device_d *parent, const char *name, int id,
+		    resource_size_t base, size_t size,
+		    void *pdata, unsigned int periphid)
+{
+	return amba_aphb_device_add(parent, name, id, base, size, pdata,
+				    periphid);
+}
+
+
+void amba_device_unregister(struct amba_device *);
+struct amba_device *amba_find_device(const char *, struct device_d *, unsigned int, unsigned int);
+int amba_request_regions(struct amba_device *, const char *);
+void amba_release_regions(struct amba_device *);
+
+static inline void __iomem *amba_get_mem_region(struct amba_device *dev)
+{
+	return dev->base;
+}
+
+#define amba_pclk_enable(d)	\
+	(IS_ERR((d)->pclk) ? 0 : clk_enable((d)->pclk))
+
+#define amba_pclk_disable(d)	\
+	do { if (!IS_ERR((d)->pclk)) clk_disable((d)->pclk); } while (0)
+
+/* Some drivers don't use the struct amba_device */
+#define AMBA_CONFIG_BITS(a) (((a) >> 24) & 0xff)
+#define AMBA_REV_BITS(a) (((a) >> 20) & 0x0f)
+#define AMBA_MANF_BITS(a) (((a) >> 12) & 0xff)
+#define AMBA_PART_BITS(a) ((a) & 0xfff)
+
+#define amba_config(d)	AMBA_CONFIG_BITS((d)->periphid)
+#define amba_rev(d)	AMBA_REV_BITS((d)->periphid)
+#define amba_manf(d)	AMBA_MANF_BITS((d)->periphid)
+#define amba_part(d)	AMBA_PART_BITS((d)->periphid)
+
+#define __AMBA_DEV(busid, data)				\
+	{							\
+		.init_name = busid,				\
+		.platform_data = data,				\
+	}
+
+/*
+ * APB devices do not themselves have the ability to address memory,
+ * so DMA masks should be zero (much like USB peripheral devices.)
+ * The DMA controller DMA masks should be used instead (much like
+ * USB host controllers in conventional PCs.)
+ */
+#define AMBA_APB_DEVICE(name, busid, id, base, data)	\
+struct amba_device name##_device = {				\
+	.dev = __AMBA_DEV(busid, data),			\
+	.res = DEFINE_RES_MEM(base, SZ_4K),			\
+	.periphid = id,						\
+}
+
+/*
+ * AHB devices are DMA capable, so set their DMA masks
+ */
+#define AMBA_AHB_DEVICE(name, busid, id, base, data)	\
+struct amba_device name##_device = {				\
+	.dev = __AMBA_DEV(busid, data),			\
+	.res = DEFINE_RES_MEM(base, SZ_4K),			\
+	.periphid = id,						\
+}
+
+#endif
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

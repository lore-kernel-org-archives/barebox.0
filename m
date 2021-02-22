Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lE5IP-0005KL-EF
 for barebox@lists.infradead.org; Mon, 22 Feb 2021 07:06:26 +0000
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon, 22 Feb 2021 08:05:59 +0100
Message-Id: <20210222070605.589180-4-ahmad@a3f.at>
In-Reply-To: <20210222070605.589180-1-ahmad@a3f.at>
References: <20210222070605.589180-1-ahmad@a3f.at>
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
Subject: [PATCH 3/8] drivers: add support for memory-mapped VirtIO
 paravirtualization
To: barebox@lists.infradead.org
Cc: rcz@pengutronix.de

Sandbox is only useful to test barebox in isolation. For interaction
between barebox and firmware/OS, Qemu is the better choice.
Qemu supports specifying VirtIO devices on the command line, which it
automatically fixes up into the device tree. This is nice. Add support
for that.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 drivers/Kconfig                    |   1 +
 drivers/Makefile                   |   1 +
 drivers/virtio/Kconfig             |  28 ++
 drivers/virtio/Makefile            |   3 +
 drivers/virtio/virtio.c            | 347 +++++++++++++++++++++
 drivers/virtio/virtio_mmio.c       | 465 ++++++++++++++++++++++++++++
 drivers/virtio/virtio_ring.c       | 365 ++++++++++++++++++++++
 include/linux/typecheck.h          |  25 ++
 include/linux/virtio.h             | 128 ++++++++
 include/linux/virtio_byteorder.h   |  64 ++++
 include/linux/virtio_config.h      | 480 +++++++++++++++++++++++++++++
 include/linux/virtio_ring.h        | 330 ++++++++++++++++++++
 include/uapi/linux/virtio_config.h |  95 ++++++
 include/uapi/linux/virtio_ids.h    |  58 ++++
 include/uapi/linux/virtio_mmio.h   | 152 +++++++++
 include/uapi/linux/virtio_ring.h   | 244 +++++++++++++++
 include/uapi/linux/virtio_rng.h    |   8 +
 include/uapi/linux/virtio_types.h  |  46 +++
 18 files changed, 2840 insertions(+)
 create mode 100644 drivers/virtio/Kconfig
 create mode 100644 drivers/virtio/Makefile
 create mode 100644 drivers/virtio/virtio.c
 create mode 100644 drivers/virtio/virtio_mmio.c
 create mode 100644 drivers/virtio/virtio_ring.c
 create mode 100644 include/linux/typecheck.h
 create mode 100644 include/linux/virtio.h
 create mode 100644 include/linux/virtio_byteorder.h
 create mode 100644 include/linux/virtio_config.h
 create mode 100644 include/linux/virtio_ring.h
 create mode 100644 include/uapi/linux/virtio_config.h
 create mode 100644 include/uapi/linux/virtio_ids.h
 create mode 100644 include/uapi/linux/virtio_mmio.h
 create mode 100644 include/uapi/linux/virtio_ring.h
 create mode 100644 include/uapi/linux/virtio_rng.h
 create mode 100644 include/uapi/linux/virtio_types.h

diff --git a/drivers/Kconfig b/drivers/Kconfig
index 0b87c2af2a83..787d36693309 100644
--- a/drivers/Kconfig
+++ b/drivers/Kconfig
@@ -44,5 +44,6 @@ source "drivers/soc/imx/Kconfig"
 source "drivers/nvme/Kconfig"
 source "drivers/ddr/Kconfig"
 source "drivers/power/Kconfig"
+source "drivers/virtio/Kconfig"
 
 endmenu
diff --git a/drivers/Makefile b/drivers/Makefile
index fab3790288f7..5e440b573635 100644
--- a/drivers/Makefile
+++ b/drivers/Makefile
@@ -43,4 +43,5 @@ obj-y	+= soc/imx/
 obj-y	+= nvme/
 obj-y	+= ddr/
 obj-y	+= power/
+obj-y	+= virtio/
 obj-$(CONFIG_SOUND) += sound/
diff --git a/drivers/virtio/Kconfig b/drivers/virtio/Kconfig
new file mode 100644
index 000000000000..59e3d3c3f54b
--- /dev/null
+++ b/drivers/virtio/Kconfig
@@ -0,0 +1,28 @@
+# SPDX-License-Identifier: GPL-2.0-only
+config VIRTIO
+	bool
+	help
+	  This option is selected by any driver which implements the virtio
+	  bus, such as CONFIG_VIRTIO_MMIO.
+
+config ARCH_HAS_RESTRICTED_VIRTIO_MEMORY_ACCESS
+	bool
+	help
+	  This option is selected if the architecture may need to enforce
+	  VIRTIO_F_ACCESS_PLATFORM
+
+menuconfig VIRTIO_MENU
+	bool "Virtio drivers"
+	default y
+
+if VIRTIO_MENU
+
+config VIRTIO_MMIO
+	bool "Platform bus driver for memory mapped virtio devices"
+	depends on HAS_DMA
+	select VIRTIO
+	help
+	 This drivers provides support for memory mapped virtio
+	 platform device driver. This is usually used with Qemu.
+
+endif # VIRTIO_MENU
diff --git a/drivers/virtio/Makefile b/drivers/virtio/Makefile
new file mode 100644
index 000000000000..94ff1398fb3c
--- /dev/null
+++ b/drivers/virtio/Makefile
@@ -0,0 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0
+obj-$(CONFIG_VIRTIO) += virtio.o virtio_ring.o
+obj-$(CONFIG_VIRTIO_MMIO) += virtio_mmio.o
diff --git a/drivers/virtio/virtio.c b/drivers/virtio/virtio.c
new file mode 100644
index 000000000000..c96c465e8734
--- /dev/null
+++ b/drivers/virtio/virtio.c
@@ -0,0 +1,347 @@
+// SPDX-License-Identifier: GPL-2.0-only
+#include <common.h>
+#include <linux/virtio.h>
+#include <linux/spinlock.h>
+#include <linux/virtio_config.h>
+#include <module.h>
+#include <linux/kernel.h>
+#include <uapi/linux/virtio_ids.h>
+
+static int status_show(struct param_d *param, void *_dev)
+{
+	struct virtio_device *dev = _dev;
+
+	dev->status_param = dev->config->get_status(dev);
+	return 0;
+}
+
+static struct param_d *virtio_dev_add_param_features(struct virtio_device *dev)
+{
+	struct param_d *param;
+	unsigned int i;
+	char *buf;
+	int len = 0;
+
+	buf = xmalloc(sizeof(dev->features)*8 + 1);
+
+	/* We actually represent this as a bitstring, as it could be
+	 * arbitrary length in future. */
+	for (i = 0; i < sizeof(dev->features)*8; i++)
+		len += sprintf(buf+len, "%c",
+			       __virtio_test_bit(dev, i) ? '1' : '0');
+
+	param = dev_add_param_string_fixed(&dev->dev, "features", buf);
+	free(buf);
+
+	return param;
+}
+
+static inline int virtio_id_match(const struct virtio_device *dev,
+				  const struct virtio_device_id *id)
+{
+	if (id->device != dev->id.device && id->device != VIRTIO_DEV_ANY_ID)
+		return 0;
+
+	return id->vendor == VIRTIO_DEV_ANY_ID || id->vendor == dev->id.vendor;
+}
+
+/* This looks through all the IDs a driver claims to support.  If any of them
+ * match, we return 1 and the kernel will call virtio_dev_probe(). */
+static int virtio_dev_match(struct device_d *_dv, struct driver_d *_dr)
+{
+	unsigned int i;
+	struct virtio_device *dev = dev_to_virtio(_dv);
+	const struct virtio_device_id *ids;
+
+	ids = drv_to_virtio(_dr)->id_table;
+	for (i = 0; ids[i].device; i++)
+		if (virtio_id_match(dev, &ids[i]))
+			return 0;
+
+	return -1;
+}
+
+void virtio_check_driver_offered_feature(const struct virtio_device *vdev,
+					 unsigned int fbit)
+{
+	unsigned int i;
+	struct virtio_driver *drv = drv_to_virtio(vdev->dev.driver);
+
+	for (i = 0; i < drv->feature_table_size; i++)
+		if (drv->feature_table[i] == fbit)
+			return;
+
+	if (drv->feature_table_legacy) {
+		for (i = 0; i < drv->feature_table_size_legacy; i++)
+			if (drv->feature_table_legacy[i] == fbit)
+				return;
+	}
+
+	BUG();
+}
+EXPORT_SYMBOL_GPL(virtio_check_driver_offered_feature);
+
+static void __virtio_config_changed(struct virtio_device *dev)
+{
+	struct virtio_driver *drv = drv_to_virtio(dev->dev.driver);
+
+	if (!dev->config_enabled)
+		dev->config_change_pending = true;
+	else if (drv && drv->config_changed)
+		drv->config_changed(dev);
+}
+
+void virtio_config_changed(struct virtio_device *dev)
+{
+	unsigned long flags;
+
+	spin_lock_irqsave(&dev->config_lock, flags);
+	__virtio_config_changed(dev);
+	spin_unlock_irqrestore(&dev->config_lock, flags);
+}
+EXPORT_SYMBOL_GPL(virtio_config_changed);
+
+void virtio_config_disable(struct virtio_device *dev)
+{
+	dev->config_enabled = false;
+}
+EXPORT_SYMBOL_GPL(virtio_config_disable);
+
+void virtio_config_enable(struct virtio_device *dev)
+{
+	dev->config_enabled = true;
+	if (dev->config_change_pending)
+		__virtio_config_changed(dev);
+	dev->config_change_pending = false;
+}
+EXPORT_SYMBOL_GPL(virtio_config_enable);
+
+void virtio_add_status(struct virtio_device *dev, unsigned int status)
+{
+	dev->config->set_status(dev, dev->config->get_status(dev) | status);
+}
+EXPORT_SYMBOL_GPL(virtio_add_status);
+
+int virtio_finalize_features(struct virtio_device *dev)
+{
+	int ret = dev->config->finalize_features(dev);
+	unsigned status;
+
+	if (ret)
+		return ret;
+
+	ret = arch_has_restricted_virtio_memory_access();
+	if (ret) {
+		if (!virtio_has_feature(dev, VIRTIO_F_VERSION_1)) {
+			dev_warn(&dev->dev,
+				 "device must provide VIRTIO_F_VERSION_1\n");
+			return -ENODEV;
+		}
+
+		if (!virtio_has_feature(dev, VIRTIO_F_ACCESS_PLATFORM)) {
+			dev_warn(&dev->dev,
+				 "device must provide VIRTIO_F_ACCESS_PLATFORM\n");
+			return -ENODEV;
+		}
+	}
+
+	if (!virtio_has_feature(dev, VIRTIO_F_VERSION_1))
+		return 0;
+
+	virtio_add_status(dev, VIRTIO_CONFIG_S_FEATURES_OK);
+	status = dev->config->get_status(dev);
+	if (!(status & VIRTIO_CONFIG_S_FEATURES_OK)) {
+		dev_err(&dev->dev, "virtio: device refuses features: %x\n",
+			status);
+		return -ENODEV;
+	}
+	return 0;
+}
+EXPORT_SYMBOL_GPL(virtio_finalize_features);
+
+int virtio_find_vqs(struct virtio_device *vdev, unsigned int nvqs,
+		    struct virtqueue *vqs[])
+{
+	return vdev->config->find_vqs(vdev, nvqs, vqs);
+}
+EXPORT_SYMBOL_GPL(virtio_find_vqs);
+
+static int virtio_dev_probe(struct device_d *_d)
+{
+	int err, i;
+	struct virtio_device *dev = dev_to_virtio(_d);
+	struct virtio_driver *drv = drv_to_virtio(dev->dev.driver);
+	u64 device_features;
+	u64 driver_features;
+	u64 driver_features_legacy;
+
+	/* We have a driver! */
+	virtio_add_status(dev, VIRTIO_CONFIG_S_DRIVER);
+
+	/* Figure out what features the device supports. */
+	device_features = dev->config->get_features(dev);
+
+	/* Figure out what features the driver supports. */
+	driver_features = 0;
+	for (i = 0; i < drv->feature_table_size; i++) {
+		unsigned int f = drv->feature_table[i];
+		BUG_ON(f >= 64);
+		driver_features |= (1ULL << f);
+	}
+
+	/* Some drivers have a separate feature table for virtio v1.0 */
+	if (drv->feature_table_legacy) {
+		driver_features_legacy = 0;
+		for (i = 0; i < drv->feature_table_size_legacy; i++) {
+			unsigned int f = drv->feature_table_legacy[i];
+			BUG_ON(f >= 64);
+			driver_features_legacy |= (1ULL << f);
+		}
+	} else {
+		driver_features_legacy = driver_features;
+	}
+
+	if (device_features & (1ULL << VIRTIO_F_VERSION_1))
+		dev->features = driver_features & device_features;
+	else
+		dev->features = driver_features_legacy & device_features;
+
+	/* Transport features always preserved to pass to finalize_features. */
+	for (i = VIRTIO_TRANSPORT_F_START; i < VIRTIO_TRANSPORT_F_END; i++)
+		if (device_features & (1ULL << i))
+			__virtio_set_bit(dev, i);
+
+	if (drv->validate) {
+		err = drv->validate(dev);
+		if (err)
+			goto err;
+	}
+
+	err = virtio_finalize_features(dev);
+	if (err)
+		goto err;
+
+	err = drv->probe(dev);
+	if (err)
+		goto err;
+
+	/* If probe didn't do it, mark device DRIVER_OK ourselves. */
+	if (!(dev->config->get_status(dev) & VIRTIO_CONFIG_S_DRIVER_OK))
+		virtio_device_ready(dev);
+
+	if (drv->scan)
+		drv->scan(dev);
+
+	virtio_config_enable(dev);
+
+	return 0;
+err:
+	virtio_add_status(dev, VIRTIO_CONFIG_S_FAILED);
+	return err;
+
+}
+
+static void virtio_dev_remove(struct device_d *_d)
+{
+	struct virtio_device *dev = dev_to_virtio(_d);
+	struct virtio_driver *drv = drv_to_virtio(dev->dev.driver);
+
+	virtio_config_disable(dev);
+
+	drv->remove(dev);
+
+	WARN_ONCE(dev->config->get_status(dev), "Driver should have reset device");
+
+	/* Acknowledge the device's existence again. */
+	virtio_add_status(dev, VIRTIO_CONFIG_S_ACKNOWLEDGE);
+}
+
+static struct bus_type virtio_bus = {
+	.name  = "virtio",
+	.match = virtio_dev_match,
+	.probe = virtio_dev_probe,
+	.remove = virtio_dev_remove,
+};
+
+int virtio_driver_register(struct virtio_driver *driver)
+{
+	/* Catch this early. */
+	BUG_ON(driver->feature_table_size && !driver->feature_table);
+	driver->driver.bus = &virtio_bus;
+
+	return register_driver(&driver->driver);
+}
+EXPORT_SYMBOL_GPL(virtio_driver_register);
+
+/**
+ * register_virtio_device - register virtio device
+ * @dev        : virtio device to be registered
+ *
+ * On error, the caller must call put_device on &@dev->dev (and not kfree),
+ * as another code path may have obtained a reference to @dev.
+ *
+ * Returns: 0 on suceess, -error on failure
+ */
+int register_virtio_device(struct virtio_device *dev)
+{
+	int err;
+
+	dev->dev.bus = &virtio_bus;
+	dev->dev.id = DEVICE_ID_DYNAMIC;
+	dev->dev.name = "virtio";
+
+	spin_lock_init(&dev->config_lock);
+	dev->config_enabled = false;
+	dev->config_change_pending = false;
+
+	/* We always start by resetting the device, in case a previous
+	 * driver messed it up.  This also tests that code path a little. */
+	dev->config->reset(dev);
+
+	/* Acknowledge that we've seen the device. */
+	virtio_add_status(dev, VIRTIO_CONFIG_S_ACKNOWLEDGE);
+
+	INIT_LIST_HEAD(&dev->vqs);
+
+	/*
+	 * register_device() causes the bus infrastructure to look for a matching
+	 * driver.
+	 */
+	err = register_device(&dev->dev);
+	if (err)
+		goto out;
+
+	dev_add_param_uint32_ro(&dev->dev, "device", &dev->id.device, "0x%04x");
+	dev_add_param_uint32_ro(&dev->dev, "vendor", &dev->id.vendor, "0x%04x");
+	dev_add_param_uint32(&dev->dev, "status", param_set_readonly,
+			     status_show, &dev->status_param, "0x%08x", dev);
+	virtio_dev_add_param_features(dev);
+
+out:
+	if (err)
+		virtio_add_status(dev, VIRTIO_CONFIG_S_FAILED);
+	return err;
+}
+EXPORT_SYMBOL_GPL(register_virtio_device);
+
+bool is_virtio_device(struct device_d *dev)
+{
+	return dev->bus == &virtio_bus;
+}
+EXPORT_SYMBOL_GPL(is_virtio_device);
+
+void unregister_virtio_device(struct virtio_device *dev)
+{
+	unregister_device(&dev->dev);
+}
+EXPORT_SYMBOL_GPL(unregister_virtio_device);
+
+static int virtio_init(void)
+{
+	if (bus_register(&virtio_bus) != 0)
+		panic("virtio bus registration failed");
+	return 0;
+}
+core_initcall(virtio_init);
+
+MODULE_LICENSE("GPL");
diff --git a/drivers/virtio/virtio_mmio.c b/drivers/virtio/virtio_mmio.c
new file mode 100644
index 000000000000..821b43871a04
--- /dev/null
+++ b/drivers/virtio/virtio_mmio.c
@@ -0,0 +1,465 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Virtio memory mapped device driver
+ *
+ * Copyright 2011-2014, ARM Ltd.
+ *
+ * This module allows virtio devices to be used over a virtual, memory mapped
+ * platform device.
+ *
+ * The guest device(s) may be instantiated via Device Tree node, eg.:
+ *
+ *		virtio_block@1e000 {
+ *			compatible = "virtio,mmio";
+ *			reg = <0x1e000 0x100>;
+ *			interrupts = <42>;
+ *		}
+ *
+ * Qemu will automatically fix up the nodes corresponding to its command line
+ * arguments into the barebox device tree.
+ *
+ * Based on Virtio PCI driver by Anthony Liguori, copyright IBM Corp. 2007
+ */
+
+#define pr_fmt(fmt) "virtio-mmio: " fmt
+
+#include <common.h>
+#include <io.h>
+#include <linux/list.h>
+#include <linux/kernel.h>
+#include <driver.h>
+#include <linux/slab.h>
+#include <linux/virtio.h>
+#include <linux/virtio_config.h>
+#include <uapi/linux/virtio_mmio.h>
+#include <linux/virtio_ring.h>
+
+#define to_virtio_mmio_device(_plat_dev) \
+	container_of(_plat_dev, struct virtio_mmio_device, vdev)
+
+#define VIRTIO_MMIO_VRING_ALIGN		PAGE_SIZE
+
+struct virtio_mmio_device {
+	struct virtio_device vdev;
+
+	void __iomem *base;
+	unsigned long version;
+};
+
+struct virtio_mmio_vq_info {
+	/* the actual virtqueue */
+	struct virtqueue *vq;
+};
+
+static int virtio_mmio_get_config(struct virtio_device *vdev, unsigned int offset,
+				  void *buf, unsigned int len)
+{
+	struct virtio_mmio_device *priv = to_virtio_mmio_device(vdev);
+	void __iomem *base = priv->base + VIRTIO_MMIO_CONFIG;
+	u8 b;
+	__le16 w;
+	__le32 l;
+
+	if (priv->version == 1) {
+		u8 *ptr = buf;
+		int i;
+
+		for (i = 0; i < len; i++)
+			ptr[i] = readb(base + offset + i);
+
+		return 0;
+	}
+
+	switch (len) {
+	case 1:
+		b = readb(base + offset);
+		memcpy(buf, &b, sizeof(b));
+		break;
+	case 2:
+		w = cpu_to_le16(readw(base + offset));
+		memcpy(buf, &w, sizeof(w));
+		break;
+	case 4:
+		l = cpu_to_le32(readl(base + offset));
+		memcpy(buf, &l, sizeof(l));
+		break;
+	case 8:
+		l = cpu_to_le32(readl(base + offset));
+		memcpy(buf, &l, sizeof(l));
+		l = cpu_to_le32(readl(base + offset + sizeof(l)));
+		memcpy(buf + sizeof(l), &l, sizeof(l));
+		break;
+	default:
+		WARN_ON(true);
+	}
+
+	return 0;
+}
+
+static int virtio_mmio_set_config(struct virtio_device *vdev, unsigned int offset,
+				  const void *buf, unsigned int len)
+{
+	struct virtio_mmio_device *priv = to_virtio_mmio_device(vdev);
+	void __iomem *base = priv->base + VIRTIO_MMIO_CONFIG;
+	u8 b;
+	__le16 w;
+	__le32 l;
+
+	if (priv->version == 1) {
+		const u8 *ptr = buf;
+		int i;
+
+		for (i = 0; i < len; i++)
+			writeb(ptr[i], base + offset + i);
+
+		return 0;
+	}
+
+	switch (len) {
+	case 1:
+		memcpy(&b, buf, sizeof(b));
+		writeb(b, base + offset);
+		break;
+	case 2:
+		memcpy(&w, buf, sizeof(w));
+		writew(le16_to_cpu(w), base + offset);
+		break;
+	case 4:
+		memcpy(&l, buf, sizeof(l));
+		writel(le32_to_cpu(l), base + offset);
+		break;
+	case 8:
+		memcpy(&l, buf, sizeof(l));
+		writel(le32_to_cpu(l), base + offset);
+		memcpy(&l, buf + sizeof(l), sizeof(l));
+		writel(le32_to_cpu(l), base + offset + sizeof(l));
+		break;
+	default:
+		WARN_ON(true);
+	}
+
+	return 0;
+}
+
+static int virtio_mmio_generation(struct virtio_device *vdev, u32 *counter)
+{
+	struct virtio_mmio_device *priv = to_virtio_mmio_device(vdev);
+
+	if (priv->version == 1)
+		*counter = 0;
+	else
+		*counter = readl(priv->base + VIRTIO_MMIO_CONFIG_GENERATION);
+
+	return 0;
+}
+
+static int virtio_mmio_get_status(struct virtio_device *vdev)
+{
+	struct virtio_mmio_device *priv = to_virtio_mmio_device(vdev);
+
+	return readl(priv->base + VIRTIO_MMIO_STATUS) & 0xff;
+}
+
+static int virtio_mmio_set_status(struct virtio_device *vdev, u8 status)
+{
+	struct virtio_mmio_device *priv = to_virtio_mmio_device(vdev);
+
+	/* We should never be setting status to 0 */
+	WARN_ON(status == 0);
+
+	writel(status, priv->base + VIRTIO_MMIO_STATUS);
+
+	return 0;
+}
+
+static int virtio_mmio_reset(struct virtio_device *vdev)
+{
+	struct virtio_mmio_device *priv = to_virtio_mmio_device(vdev);
+
+	/* 0 status means a reset */
+	writel(0, priv->base + VIRTIO_MMIO_STATUS);
+
+	return 0;
+}
+
+static u64 virtio_mmio_get_features(struct virtio_device *vdev)
+{
+	struct virtio_mmio_device *priv = to_virtio_mmio_device(vdev);
+	u64 features;
+
+	writel(1, priv->base + VIRTIO_MMIO_DEVICE_FEATURES_SEL);
+	features = readl(priv->base + VIRTIO_MMIO_DEVICE_FEATURES);
+	features <<= 32;
+
+	writel(0, priv->base + VIRTIO_MMIO_DEVICE_FEATURES_SEL);
+	features |= readl(priv->base + VIRTIO_MMIO_DEVICE_FEATURES);
+
+	return features;
+}
+
+ static int virtio_mmio_finalize_features(struct virtio_device *vdev)
+{
+	struct virtio_mmio_device *priv = to_virtio_mmio_device(vdev);
+
+	/* Make sure there is are no mixed devices */
+	if (priv->version == 2 && !__virtio_test_bit(vdev, VIRTIO_F_VERSION_1)) {
+		dev_err(&vdev->dev, "New virtio-mmio devices (version 2) must provide VIRTIO_F_VERSION_1 feature!\n");
+		return -EINVAL;
+	}
+
+	writel(1, priv->base + VIRTIO_MMIO_DRIVER_FEATURES_SEL);
+	writel((u32)(vdev->features >> 32),
+	       priv->base + VIRTIO_MMIO_DRIVER_FEATURES);
+
+	writel(0, priv->base + VIRTIO_MMIO_DRIVER_FEATURES_SEL);
+	writel((u32)vdev->features,
+	       priv->base + VIRTIO_MMIO_DRIVER_FEATURES);
+
+	return 0;
+}
+
+static struct virtqueue *virtio_mmio_setup_vq(struct virtio_device *vdev,
+					      unsigned int index)
+{
+	struct virtio_mmio_device *priv = to_virtio_mmio_device(vdev);
+	struct virtqueue *vq;
+	unsigned int num;
+	int err;
+
+	/* Select the queue we're interested in */
+	writel(index, priv->base + VIRTIO_MMIO_QUEUE_SEL);
+
+	/* Queue shouldn't already be set up */
+	if (readl(priv->base + (priv->version == 1 ?
+	    VIRTIO_MMIO_QUEUE_PFN : VIRTIO_MMIO_QUEUE_READY))) {
+		err = -ENOENT;
+		goto error_available;
+	}
+
+	num = readl(priv->base + VIRTIO_MMIO_QUEUE_NUM_MAX);
+	if (num == 0) {
+		err = -ENOENT;
+		goto error_new_virtqueue;
+	}
+
+	/* Create the vring */
+	vq = vring_create_virtqueue(index, num, VIRTIO_MMIO_VRING_ALIGN, vdev);
+	if (!vq) {
+		err = -ENOMEM;
+		goto error_new_virtqueue;
+	}
+
+	/* Activate the queue */
+	writel(virtqueue_get_vring_size(vq),
+	       priv->base + VIRTIO_MMIO_QUEUE_NUM);
+	if (priv->version == 1) {
+		u64 q_pfn = virtqueue_get_desc_addr(vq) >> PAGE_SHIFT;
+
+		/*
+		 * virtio-mmio v1 uses a 32bit QUEUE PFN. If we have something
+		 * that doesn't fit in 32bit, fail the setup rather than
+		 * pretending to be successful.
+		 */
+		if (q_pfn >> 32) {
+			debug("platform bug: legacy virtio-mmio must not be used with RAM above 0x%llxGB\n",
+			      0x1ULL << (32 + PAGE_SHIFT - 30));
+			err = -E2BIG;
+			goto error_bad_pfn;
+		}
+
+		writel(PAGE_SIZE, priv->base + VIRTIO_MMIO_QUEUE_ALIGN);
+		writel(q_pfn, priv->base + VIRTIO_MMIO_QUEUE_PFN);
+	} else {
+		u64 addr;
+
+		addr = virtqueue_get_desc_addr(vq);
+		writel((u32)addr, priv->base + VIRTIO_MMIO_QUEUE_DESC_LOW);
+		writel((u32)(addr >> 32),
+		       priv->base + VIRTIO_MMIO_QUEUE_DESC_HIGH);
+
+		addr = virtqueue_get_avail_addr(vq);
+		writel((u32)addr, priv->base + VIRTIO_MMIO_QUEUE_AVAIL_LOW);
+		writel((u32)(addr >> 32),
+		       priv->base + VIRTIO_MMIO_QUEUE_AVAIL_HIGH);
+
+		addr = virtqueue_get_used_addr(vq);
+		writel((u32)addr, priv->base + VIRTIO_MMIO_QUEUE_USED_LOW);
+		writel((u32)(addr >> 32),
+		       priv->base + VIRTIO_MMIO_QUEUE_USED_HIGH);
+
+		writel(1, priv->base + VIRTIO_MMIO_QUEUE_READY);
+	}
+
+	return vq;
+
+error_bad_pfn:
+	vring_del_virtqueue(vq);
+
+error_new_virtqueue:
+	if (priv->version == 1) {
+		writel(0, priv->base + VIRTIO_MMIO_QUEUE_PFN);
+	} else {
+		writel(0, priv->base + VIRTIO_MMIO_QUEUE_READY);
+		WARN_ON(readl(priv->base + VIRTIO_MMIO_QUEUE_READY));
+	}
+
+error_available:
+	return ERR_PTR(err);
+}
+
+static void virtio_mmio_del_vq(struct virtqueue *vq)
+{
+	struct virtio_mmio_device *priv = to_virtio_mmio_device(vq->vdev);
+	unsigned int index = vq->index;
+
+	/* Select and deactivate the queue */
+	writel(index, priv->base + VIRTIO_MMIO_QUEUE_SEL);
+	if (priv->version == 1) {
+		writel(0, priv->base + VIRTIO_MMIO_QUEUE_PFN);
+	} else {
+		writel(0, priv->base + VIRTIO_MMIO_QUEUE_READY);
+		WARN_ON(readl(priv->base + VIRTIO_MMIO_QUEUE_READY));
+	}
+
+	vring_del_virtqueue(vq);
+}
+
+static int virtio_mmio_del_vqs(struct virtio_device *vdev)
+{
+	struct virtqueue *vq, *n;
+
+	list_for_each_entry_safe(vq, n, &vdev->vqs, list)
+		virtio_mmio_del_vq(vq);
+
+	return 0;
+}
+
+static int virtio_mmio_find_vqs(struct virtio_device *vdev, unsigned int nvqs,
+				struct virtqueue *vqs[])
+{
+	int i;
+
+	for (i = 0; i < nvqs; ++i) {
+		vqs[i] = virtio_mmio_setup_vq(vdev, i);
+		if (IS_ERR(vqs[i])) {
+			virtio_mmio_del_vqs(vdev);
+			return PTR_ERR(vqs[i]);
+		}
+	}
+
+	return 0;
+}
+
+static int virtio_mmio_notify(struct virtio_device *vdev, struct virtqueue *vq)
+{
+	struct virtio_mmio_device *priv = to_virtio_mmio_device(vdev);
+
+	/*
+	 * We write the queue's selector into the notification register
+	 * to signal the other end
+	 */
+	writel(vq->index, priv->base + VIRTIO_MMIO_QUEUE_NOTIFY);
+
+	return 0;
+}
+
+static const struct virtio_config_ops virtio_mmio_config_ops = {
+	.get_config	= virtio_mmio_get_config,
+	.set_config	= virtio_mmio_set_config,
+	.generation	= virtio_mmio_generation,
+	.get_status	= virtio_mmio_get_status,
+	.set_status	= virtio_mmio_set_status,
+	.reset		= virtio_mmio_reset,
+	.get_features	= virtio_mmio_get_features,
+	.finalize_features	= virtio_mmio_finalize_features,
+	.find_vqs	= virtio_mmio_find_vqs,
+	.del_vqs	= virtio_mmio_del_vqs,
+	.notify		= virtio_mmio_notify,
+};
+
+
+/* Platform device */
+
+static int virtio_mmio_probe(struct device_d *dev)
+{
+	struct virtio_mmio_device *vm_dev;
+	struct resource *res;
+	unsigned long magic;
+
+	vm_dev = kzalloc(sizeof(*vm_dev), GFP_KERNEL);
+	if (!vm_dev)
+		return -ENOMEM;
+
+	vm_dev->vdev.dev.parent = dev;
+	vm_dev->vdev.config = &virtio_mmio_config_ops;
+
+	res = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(res))
+		return PTR_ERR(res);
+
+	vm_dev->base = IOMEM(res->start);
+
+	/* Check magic value */
+	magic = readl(vm_dev->base + VIRTIO_MMIO_MAGIC_VALUE);
+	if (magic != ('v' | 'i' << 8 | 'r' << 16 | 't' << 24)) {
+		dev_warn(dev, "Wrong magic value 0x%08lx!\n", magic);
+		return -ENODEV;
+	}
+
+	/* Check device version */
+	vm_dev->version = readl(vm_dev->base + VIRTIO_MMIO_VERSION);
+	if (vm_dev->version < 1 || vm_dev->version > 2) {
+		dev_err(dev, "Version %ld not supported!\n",
+				vm_dev->version);
+		return -ENXIO;
+	}
+
+	vm_dev->vdev.id.device = readl(vm_dev->base + VIRTIO_MMIO_DEVICE_ID);
+	if (vm_dev->vdev.id.device == 0) {
+		/*
+		 * virtio-mmio device with an ID 0 is a (dummy) placeholder
+		 * with no function. End probing now with no error reported.
+		 */
+		return -ENODEV;
+	}
+	vm_dev->vdev.id.vendor = readl(vm_dev->base + VIRTIO_MMIO_VENDOR_ID);
+
+	if (vm_dev->version == 1)
+		writel(PAGE_SIZE, vm_dev->base + VIRTIO_MMIO_GUEST_PAGE_SIZE);
+
+	dev->priv = vm_dev;
+
+	return register_virtio_device(&vm_dev->vdev);
+}
+
+static void virtio_mmio_remove(struct device_d *dev)
+{
+	struct virtio_mmio_device *vm_dev = dev->priv;
+	unregister_virtio_device(&vm_dev->vdev);
+}
+
+
+/* Platform driver */
+
+static const struct of_device_id virtio_mmio_match[] = {
+	{ .compatible = "virtio,mmio", },
+	{},
+};
+
+static struct driver_d virtio_mmio_driver = {
+	.probe		= virtio_mmio_probe,
+	.remove		= virtio_mmio_remove,
+	.name		= "virtio-mmio",
+	.of_compatible	= virtio_mmio_match,
+};
+
+static int __init virtio_mmio_init(void)
+{
+	return platform_driver_register(&virtio_mmio_driver);
+}
+
+module_init(virtio_mmio_init);
+
+MODULE_AUTHOR("Pawel Moll <pawel.moll@arm.com>");
+MODULE_DESCRIPTION("Platform bus driver for memory mapped virtio devices");
+MODULE_LICENSE("GPL");
diff --git a/drivers/virtio/virtio_ring.c b/drivers/virtio/virtio_ring.c
new file mode 100644
index 000000000000..cac3362e7251
--- /dev/null
+++ b/drivers/virtio/virtio_ring.c
@@ -0,0 +1,365 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright (C) 2018, Tuomas Tynkkynen <tuomas.tynkkynen@iki.fi>
+ * Copyright (C) 2018, Bin Meng <bmeng.cn@gmail.com>
+ *
+ * virtio ring implementation
+ */
+
+#define pr_fmt(fmt) "virtio_ring: " fmt
+
+#include <common.h>
+#include <linux/virtio_config.h>
+#include <linux/virtio_types.h>
+#include <linux/virtio.h>
+#include <linux/virtio_ring.h>
+#include <linux/bug.h>
+#include <dma.h>
+
+#define vq_debug(vq, fmt, ...) \
+	dev_dbg(&vq->vdev->dev, fmt, ##__VA_ARGS__)
+
+#define vq_info(vq, fmt, ...) \
+	dev_info(&vq->vdev->dev, fmt, ##__VA_ARGS__)
+
+int virtqueue_add(struct virtqueue *vq, struct virtio_sg *sgs[],
+		  unsigned int out_sgs, unsigned int in_sgs)
+{
+	struct vring_desc *desc;
+	unsigned int total_sg = out_sgs + in_sgs;
+	unsigned int i, n, avail, descs_used, uninitialized_var(prev);
+	int head;
+
+	WARN_ON(total_sg == 0);
+
+	head = vq->free_head;
+
+	desc = vq->vring.desc;
+	i = head;
+	descs_used = total_sg;
+
+	if (vq->num_free < descs_used) {
+		vq_debug(vq, "Can't add buf len %i - avail = %i\n",
+		      descs_used, vq->num_free);
+		/*
+		 * FIXME: for historical reasons, we force a notify here if
+		 * there are outgoing parts to the buffer.  Presumably the
+		 * host should service the ring ASAP.
+		 */
+		if (out_sgs)
+			virtio_notify(vq->vdev, vq);
+		return -ENOSPC;
+	}
+
+	for (n = 0; n < out_sgs; n++) {
+		struct virtio_sg *sg = sgs[n];
+
+		desc[i].flags = cpu_to_virtio16(vq->vdev, VRING_DESC_F_NEXT);
+		desc[i].addr = cpu_to_virtio64(vq->vdev, (u64)(size_t)sg->addr);
+		desc[i].len = cpu_to_virtio32(vq->vdev, sg->length);
+
+		prev = i;
+		i = virtio16_to_cpu(vq->vdev, desc[i].next);
+	}
+	for (; n < (out_sgs + in_sgs); n++) {
+		struct virtio_sg *sg = sgs[n];
+
+		desc[i].flags = cpu_to_virtio16(vq->vdev, VRING_DESC_F_NEXT |
+						VRING_DESC_F_WRITE);
+		desc[i].addr = cpu_to_virtio64(vq->vdev,
+					       (u64)(uintptr_t)sg->addr);
+		desc[i].len = cpu_to_virtio32(vq->vdev, sg->length);
+
+		prev = i;
+		i = virtio16_to_cpu(vq->vdev, desc[i].next);
+	}
+	/* Last one doesn't continue */
+	desc[prev].flags &= cpu_to_virtio16(vq->vdev, ~VRING_DESC_F_NEXT);
+
+	/* We're using some buffers from the free list. */
+	vq->num_free -= descs_used;
+
+	/* Update free pointer */
+	vq->free_head = i;
+
+	/*
+	 * Put entry in available array (but don't update avail->idx
+	 * until they do sync).
+	 */
+	avail = vq->avail_idx_shadow & (vq->vring.num - 1);
+	vq->vring.avail->ring[avail] = cpu_to_virtio16(vq->vdev, head);
+
+	/*
+	 * Descriptors and available array need to be set before we expose the
+	 * new available array entries.
+	 */
+	virtio_wmb();
+	vq->avail_idx_shadow++;
+	vq->vring.avail->idx = cpu_to_virtio16(vq->vdev, vq->avail_idx_shadow);
+	vq->num_added++;
+
+	/*
+	 * This is very unlikely, but theoretically possible.
+	 * Kick just in case.
+	 */
+	if (unlikely(vq->num_added == (1 << 16) - 1))
+		virtqueue_kick(vq);
+
+	return 0;
+}
+
+static bool virtqueue_kick_prepare(struct virtqueue *vq)
+{
+	u16 new, old;
+	bool needs_kick;
+
+	/*
+	 * We need to expose available array entries before checking
+	 * avail event.
+	 */
+	virtio_mb();
+
+	old = vq->avail_idx_shadow - vq->num_added;
+	new = vq->avail_idx_shadow;
+	vq->num_added = 0;
+
+	if (vq->event) {
+		needs_kick = vring_need_event(virtio16_to_cpu(vq->vdev,
+				vring_avail_event(&vq->vring)), new, old);
+	} else {
+		needs_kick = !(vq->vring.used->flags & cpu_to_virtio16(vq->vdev,
+				VRING_USED_F_NO_NOTIFY));
+	}
+
+	return needs_kick;
+}
+
+void virtqueue_kick(struct virtqueue *vq)
+{
+	if (virtqueue_kick_prepare(vq))
+		virtio_notify(vq->vdev, vq);
+}
+
+static void detach_buf(struct virtqueue *vq, unsigned int head)
+{
+	unsigned int i;
+	__virtio16 nextflag = cpu_to_virtio16(vq->vdev, VRING_DESC_F_NEXT);
+
+	/* Put back on free list: unmap first-level descriptors and find end */
+	i = head;
+
+	while (vq->vring.desc[i].flags & nextflag) {
+		i = virtio16_to_cpu(vq->vdev, vq->vring.desc[i].next);
+		vq->num_free++;
+	}
+
+	vq->vring.desc[i].next = cpu_to_virtio16(vq->vdev, vq->free_head);
+	vq->free_head = head;
+
+	/* Plus final descriptor */
+	vq->num_free++;
+}
+
+static inline bool more_used(const struct virtqueue *vq)
+{
+	return virtqueue_poll(vq, vq->last_used_idx);
+}
+
+void *virtqueue_get_buf(struct virtqueue *vq, unsigned int *len)
+{
+	unsigned int i;
+	u16 last_used;
+
+	if (!more_used(vq)) {
+		vq_debug(vq, "No more buffers in queue\n");
+		return NULL;
+	}
+
+	/* Only get used array entries after they have been exposed by host */
+	virtio_rmb();
+
+	last_used = (vq->last_used_idx & (vq->vring.num - 1));
+	i = virtio32_to_cpu(vq->vdev, vq->vring.used->ring[last_used].id);
+	if (len) {
+		*len = virtio32_to_cpu(vq->vdev,
+				       vq->vring.used->ring[last_used].len);
+		vq_debug(vq, "last used idx %u with len %u\n", i, *len);
+	}
+
+	if (unlikely(i >= vq->vring.num)) {
+		vq_info(vq, "id %u out of range\n", i);
+		return NULL;
+	}
+
+	detach_buf(vq, i);
+	vq->last_used_idx++;
+	/*
+	 * If we expect an interrupt for the next entry, tell host
+	 * by writing event index and flush out the write before
+	 * the read in the next get_buf call.
+	 */
+	if (!(vq->avail_flags_shadow & VRING_AVAIL_F_NO_INTERRUPT))
+		virtio_store_mb(&vring_used_event(&vq->vring),
+				cpu_to_virtio16(vq->vdev, vq->last_used_idx));
+
+	return (void *)(uintptr_t)virtio64_to_cpu(vq->vdev,
+						  vq->vring.desc[i].addr);
+}
+
+static struct virtqueue *__vring_new_virtqueue(unsigned int index,
+					       struct vring vring,
+					       struct virtio_device *vdev)
+{
+	unsigned int i;
+	struct virtqueue *vq;
+
+	vq = malloc(sizeof(*vq));
+	if (!vq)
+		return NULL;
+
+	vq->vdev = vdev;
+	vq->index = index;
+	vq->num_free = vring.num;
+	vq->vring = vring;
+	vq->last_used_idx = 0;
+	vq->avail_flags_shadow = 0;
+	vq->avail_idx_shadow = 0;
+	vq->num_added = 0;
+	list_add_tail(&vq->list, &vdev->vqs);
+
+	vq->event = virtio_has_feature(vdev, VIRTIO_RING_F_EVENT_IDX);
+
+	/* Tell other side not to bother us */
+	vq->avail_flags_shadow |= VRING_AVAIL_F_NO_INTERRUPT;
+	if (!vq->event)
+		vq->vring.avail->flags = cpu_to_virtio16(vdev,
+				vq->avail_flags_shadow);
+
+	/* Put everything in free lists */
+	vq->free_head = 0;
+	for (i = 0; i < vring.num - 1; i++)
+		vq->vring.desc[i].next = cpu_to_virtio16(vdev, i + 1);
+
+	return vq;
+}
+
+struct virtqueue *vring_create_virtqueue(unsigned int index, unsigned int num,
+					 unsigned int vring_align,
+					 struct virtio_device *vdev)
+{
+	struct virtqueue *vq;
+	void *queue = NULL;
+	struct vring vring;
+
+	/* We assume num is a power of 2 */
+	if (num & (num - 1)) {
+		pr_err("Bad virtqueue length %u\n", num);
+		return NULL;
+	}
+
+	/* TODO: allocate each queue chunk individually */
+	for (; num && vring_size(num, vring_align) > PAGE_SIZE; num /= 2) {
+		queue = memalign(PAGE_SIZE, vring_size(num, vring_align));
+		if (queue)
+			break;
+	}
+
+	if (!num)
+		return NULL;
+
+	if (!queue) {
+		/* Try to get a single page. You are my only hope! */
+		queue = memalign(PAGE_SIZE, vring_size(num, vring_align));
+	}
+	if (!queue)
+		return NULL;
+
+	memset(queue, 0, vring_size(num, vring_align));
+	vring_init(&vring, num, queue, vring_align);
+
+	vq = __vring_new_virtqueue(index, vring, vdev);
+	if (!vq) {
+		free(queue);
+		return NULL;
+	}
+	vq_debug(vq, "created vring @ %p for vq with num %u\n", queue, num);
+
+	return vq;
+}
+
+void vring_del_virtqueue(struct virtqueue *vq)
+{
+	free(vq->vring.desc);
+	list_del(&vq->list);
+	free(vq);
+}
+
+unsigned int virtqueue_get_vring_size(struct virtqueue *vq)
+{
+	return vq->vring.num;
+}
+
+dma_addr_t virtqueue_get_desc_addr(struct virtqueue *vq)
+{
+	return (dma_addr_t)vq->vring.desc;
+}
+
+dma_addr_t virtqueue_get_avail_addr(struct virtqueue *vq)
+{
+	return (dma_addr_t)vq->vring.desc +
+	       ((char *)vq->vring.avail - (char *)vq->vring.desc);
+}
+
+dma_addr_t virtqueue_get_used_addr(struct virtqueue *vq)
+{
+	return (dma_addr_t)vq->vring.desc +
+	       ((char *)vq->vring.used - (char *)vq->vring.desc);
+}
+
+bool virtqueue_poll(const struct virtqueue *vq, u16 last_used_idx)
+{
+	virtio_mb();
+
+	return last_used_idx != virtio16_to_cpu(vq->vdev, vq->vring.used->idx);
+}
+
+void virtqueue_dump(struct virtqueue *vq)
+{
+	unsigned int i;
+
+	printf("virtqueue %p for dev %s:\n", vq, vq->vdev->dev.name);
+	printf("\tindex %u, phys addr %p num %u\n",
+	       vq->index, vq->vring.desc, vq->vring.num);
+	printf("\tfree_head %u, num_added %u, num_free %u\n",
+	       vq->free_head, vq->num_added, vq->num_free);
+	printf("\tlast_used_idx %u, avail_flags_shadow %u, avail_idx_shadow %u\n",
+	       vq->last_used_idx, vq->avail_flags_shadow, vq->avail_idx_shadow);
+
+	printf("Descriptor dump:\n");
+	for (i = 0; i < vq->vring.num; i++) {
+		printf("\tdesc[%u] = { 0x%llx, len %u, flags %u, next %u }\n",
+		       i, vq->vring.desc[i].addr, vq->vring.desc[i].len,
+		       vq->vring.desc[i].flags, vq->vring.desc[i].next);
+	}
+
+	printf("Avail ring dump:\n");
+	printf("\tflags %u, idx %u\n",
+	       vq->vring.avail->flags, vq->vring.avail->idx);
+	for (i = 0; i < vq->vring.num; i++) {
+		printf("\tavail[%u] = %u\n",
+		       i, vq->vring.avail->ring[i]);
+	}
+
+	printf("Used ring dump:\n");
+	printf("\tflags %u, idx %u\n",
+	       vq->vring.used->flags, vq->vring.used->idx);
+	for (i = 0; i < vq->vring.num; i++) {
+		printf("\tused[%u] = { %u, %u }\n", i,
+		       vq->vring.used->ring[i].id, vq->vring.used->ring[i].len);
+	}
+}
+
+int virtio_notify(struct virtio_device *vdev, struct virtqueue *vq)
+{
+	return vdev->config->notify(vdev, vq);
+}
diff --git a/include/linux/typecheck.h b/include/linux/typecheck.h
new file mode 100644
index 000000000000..20d310331eb5
--- /dev/null
+++ b/include/linux/typecheck.h
@@ -0,0 +1,25 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef TYPECHECK_H_INCLUDED
+#define TYPECHECK_H_INCLUDED
+
+/*
+ * Check at compile time that something is of a particular type.
+ * Always evaluates to 1 so you may use it easily in comparisons.
+ */
+#define typecheck(type,x) \
+({	type __dummy; \
+	typeof(x) __dummy2; \
+	(void)(&__dummy == &__dummy2); \
+	1; \
+})
+
+/*
+ * Check at compile time that 'function' is a certain type, or is a pointer
+ * to that type (needs to use typedef for the function type.)
+ */
+#define typecheck_fn(type,function) \
+({	typeof(type) __tmp = function; \
+	(void)__tmp; \
+})
+
+#endif		/* TYPECHECK_H_INCLUDED */
diff --git a/include/linux/virtio.h b/include/linux/virtio.h
new file mode 100644
index 000000000000..8a1a80ddc820
--- /dev/null
+++ b/include/linux/virtio.h
@@ -0,0 +1,128 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef _LINUX_VIRTIO_H
+#define _LINUX_VIRTIO_H
+/* Everything a virtio driver needs to work with any particular virtio
+ * implementation. */
+#include <linux/types.h>
+#include <driver.h>
+#include <linux/slab.h>
+
+struct virtio_device_id {
+	__u32 device;
+	__u32 vendor;
+};
+#define VIRTIO_DEV_ANY_ID	0xffffffff
+
+/**
+ * virtio scatter-gather struct
+ *
+ * @addr:		sg buffer address
+ * @lengh:		sg buffer length
+ */
+struct virtio_sg {
+	void *addr;
+	size_t length;
+};
+
+struct virtio_config_ops;
+
+/**
+ * virtio_device - representation of a device using virtio
+ * @index: unique position on the virtio bus
+ * @failed: saved value for VIRTIO_CONFIG_S_FAILED bit (for restore)
+ * @config_enabled: configuration change reporting enabled
+ * @config_change_pending: configuration change reported while disabled
+ * @dev: underlying device.
+ * @id: the device type identification (used to match it with a driver).
+ * @config: the configuration ops for this device.
+ * @vringh_config: configuration ops for host vrings.
+ * @vqs: the list of virtqueues for this device.
+ * @features: the features supported by both driver and device.
+ * @priv: private pointer for the driver's use.
+ */
+struct virtio_device {
+	int index;
+	bool failed;
+	bool config_enabled;
+	bool config_change_pending;
+	struct device_d dev;
+	struct virtio_device_id id;
+	const struct virtio_config_ops *config;
+	struct list_head vqs;
+	u64 features;
+	void *priv;
+	u32 status_param;
+};
+
+static inline struct virtio_device *dev_to_virtio(struct device_d *_dev)
+{
+	return container_of(_dev, struct virtio_device, dev);
+}
+
+void virtio_add_status(struct virtio_device *dev, unsigned int status);
+int register_virtio_device(struct virtio_device *dev);
+void unregister_virtio_device(struct virtio_device *dev);
+bool is_virtio_device(struct device_d *dev);
+
+void virtio_break_device(struct virtio_device *dev);
+
+void virtio_config_changed(struct virtio_device *dev);
+void virtio_config_disable(struct virtio_device *dev);
+void virtio_config_enable(struct virtio_device *dev);
+int virtio_finalize_features(struct virtio_device *dev);
+
+size_t virtio_max_dma_size(struct virtio_device *vdev);
+
+#define virtio_device_for_each_vq(vdev, vq) \
+	list_for_each_entry(vq, &vdev->vqs, list)
+
+/**
+ * virtio_driver - operations for a virtio I/O driver
+ * @driver: underlying device driver (populate name and owner).
+ * @id_table: the ids serviced by this driver.
+ * @feature_table: an array of feature numbers supported by this driver.
+ * @feature_table_size: number of entries in the feature table array.
+ * @feature_table_legacy: same as feature_table but when working in legacy mode.
+ * @feature_table_size_legacy: number of entries in feature table legacy array.
+ * @probe: the function to call when a device is found.  Returns 0 or -errno.
+ * @scan: optional function to call after successful probe; intended
+ *    for virtio-scsi to invoke a scan.
+ * @remove: the function to call when a device is removed.
+ * @config_changed: optional function to call when the device configuration
+ *    changes; may be called in interrupt context.
+ * @freeze: optional function to call during suspend/hibernation.
+ * @restore: optional function to call on resume.
+ */
+struct virtio_driver {
+	struct driver_d driver;
+	const struct virtio_device_id *id_table;
+	const unsigned int *feature_table;
+	unsigned int feature_table_size;
+	const unsigned int *feature_table_legacy;
+	unsigned int feature_table_size_legacy;
+	int (*validate)(struct virtio_device *dev);
+	int (*probe)(struct virtio_device *dev);
+	void (*scan)(struct virtio_device *dev);
+	void (*remove)(struct virtio_device *dev);
+	void (*config_changed)(struct virtio_device *dev);
+};
+
+static inline struct virtio_driver *drv_to_virtio(struct driver_d *drv)
+{
+	return container_of(drv, struct virtio_driver, driver);
+}
+
+int virtio_driver_register(struct virtio_driver *drv);
+
+/* module_virtio_driver() - Helper macro for drivers that don't do
+ * anything special in module init/exit.  This eliminates a lot of
+ * boilerplate.  Each module may only use this macro once, and
+ * calling it replaces module_init() and module_exit()
+ */
+#define module_virtio_driver(drv) \
+	device_virtio_driver(drv)
+
+#define device_virtio_driver(drv) \
+	register_driver_macro(device,virtio,drv)
+
+#endif /* _LINUX_VIRTIO_H */
diff --git a/include/linux/virtio_byteorder.h b/include/linux/virtio_byteorder.h
new file mode 100644
index 000000000000..825aaefac9b1
--- /dev/null
+++ b/include/linux/virtio_byteorder.h
@@ -0,0 +1,64 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef _LINUX_VIRTIO_BYTEORDER_H
+#define _LINUX_VIRTIO_BYTEORDER_H
+#include <linux/types.h>
+#include <uapi/linux/virtio_types.h>
+
+static inline bool virtio_legacy_is_little_endian(void)
+{
+#ifdef __LITTLE_ENDIAN
+	return true;
+#else
+	return false;
+#endif
+}
+
+static inline u16 __virtio16_to_cpu(bool little_endian, __virtio16 val)
+{
+	if (little_endian)
+		return le16_to_cpu((__force __le16)val);
+	else
+		return be16_to_cpu((__force __be16)val);
+}
+
+static inline __virtio16 __cpu_to_virtio16(bool little_endian, u16 val)
+{
+	if (little_endian)
+		return (__force __virtio16)cpu_to_le16(val);
+	else
+		return (__force __virtio16)cpu_to_be16(val);
+}
+
+static inline u32 __virtio32_to_cpu(bool little_endian, __virtio32 val)
+{
+	if (little_endian)
+		return le32_to_cpu((__force __le32)val);
+	else
+		return be32_to_cpu((__force __be32)val);
+}
+
+static inline __virtio32 __cpu_to_virtio32(bool little_endian, u32 val)
+{
+	if (little_endian)
+		return (__force __virtio32)cpu_to_le32(val);
+	else
+		return (__force __virtio32)cpu_to_be32(val);
+}
+
+static inline u64 __virtio64_to_cpu(bool little_endian, __virtio64 val)
+{
+	if (little_endian)
+		return le64_to_cpu((__force __le64)val);
+	else
+		return be64_to_cpu((__force __be64)val);
+}
+
+static inline __virtio64 __cpu_to_virtio64(bool little_endian, u64 val)
+{
+	if (little_endian)
+		return (__force __virtio64)cpu_to_le64(val);
+	else
+		return (__force __virtio64)cpu_to_be64(val);
+}
+
+#endif /* _LINUX_VIRTIO_BYTEORDER */
diff --git a/include/linux/virtio_config.h b/include/linux/virtio_config.h
new file mode 100644
index 000000000000..5ee0807fb098
--- /dev/null
+++ b/include/linux/virtio_config.h
@@ -0,0 +1,480 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef _LINUX_VIRTIO_CONFIG_H
+#define _LINUX_VIRTIO_CONFIG_H
+
+#include <linux/err.h>
+#include <linux/bug.h>
+#include <linux/virtio.h>
+#include <linux/virtio_byteorder.h>
+#include <linux/compiler_types.h>
+#include <linux/typecheck.h>
+#include <uapi/linux/virtio_config.h>
+
+#ifndef might_sleep
+#define might_sleep() do { } while (0)
+#endif
+
+struct virtio_shm_region {
+	u64 addr;
+	u64 len;
+};
+
+struct virtqueue;
+
+/* virtio bus operations */
+struct virtio_config_ops {
+	/**
+	 * get_config() - read the value of a configuration field
+	 *
+	 * @vdev:	the real virtio device
+	 * @offset:	the offset of the configuration field
+	 * @buf:	the buffer to write the field value into
+	 * @len:	the length of the buffer
+	 * @return 0 if OK, -ve on error
+	 */
+	int (*get_config)(struct virtio_device *vdev, unsigned int offset,
+			  void *buf, unsigned int len);
+	/**
+	 * set_config() - write the value of a configuration field
+	 *
+	 * @vdev:	the real virtio device
+	 * @offset:	the offset of the configuration field
+	 * @buf:	the buffer to read the field value from
+	 * @len:	the length of the buffer
+	 * @return 0 if OK, -ve on error
+	 */
+	int (*set_config)(struct virtio_device *vdev, unsigned int offset,
+			  const void *buf, unsigned int len);
+	/**
+	 * generation() - config generation counter
+	 *
+	 * @vdev:	the real virtio device
+	 * @counter:	the returned config generation counter
+	 * @return 0 if OK, -ve on error
+	 */
+	int (*generation)(struct virtio_device *vdev, u32 *counter);
+	/**
+	 * get_status() - read the status byte
+	 *
+	 * @vdev:	the real virtio device
+	 * @status:	the returned status byte
+	 * @return 0 if OK, -ve on error
+	 */
+	int (*get_status)(struct virtio_device *vdev);
+	/**
+	 * set_status() - write the status byte
+	 *
+	 * @vdev:	the real virtio device
+	 * @status:	the new status byte
+	 * @return 0 if OK, -ve on error
+	 */
+	int (*set_status)(struct virtio_device *vdev, u8 status);
+	/**
+	 * reset() - reset the device
+	 *
+	 * @vdev:	the real virtio device
+	 * @return 0 if OK, -ve on error
+	 */
+	int (*reset)(struct virtio_device *vdev);
+	/**
+	 * get_features() - get the array of feature bits for this device
+	 *
+	 * @vdev:	the real virtio device
+	 * @return features
+	 */
+	u64 (*get_features)(struct virtio_device *vdev);
+	/**
+	 * set_features() - confirm what device features we'll be using
+	 *
+	 * @vdev:	the real virtio device
+	 * @return 0 if OK, -ve on error
+	 */
+	int (*set_features)(struct virtio_device *vdev);
+	/**
+	 * find_vqs() - find virtqueues and instantiate them
+	 *
+	 * @vdev:	the real virtio device
+	 * @nvqs:	the number of virtqueues to find
+	 * @vqs:	on success, includes new virtqueues
+	 * @return 0 if OK, -ve on error
+	 */
+	int (*find_vqs)(struct virtio_device *vdev, unsigned int nvqs,
+			struct virtqueue *vqs[]);
+	/**
+	 * del_vqs() - free virtqueues found by find_vqs()
+	 *
+	 * @vdev:	the real virtio device
+	 * @return 0 if OK, -ve on error
+	 */
+	int (*del_vqs)(struct virtio_device *vdev);
+	/**
+	 * notify() - notify the device to process the queue
+	 *
+	 * @vdev:	the real virtio device
+	 * @vq:		virtqueue to process
+	 * @return 0 if OK, -ve on error
+	 */
+	int (*notify)(struct virtio_device *vdev, struct virtqueue *vq);
+	/**
+	 * finalize_features() - confirm what device features we'll be using.
+	 * @vdev: 	the virtio_device
+	 * 		This gives the final feature bits for the device: it can change
+	 * 		the dev->feature bits if it wants.
+	 * @returns 0 if OK, -ve on error
+	 */
+	int (*finalize_features)(struct virtio_device *vdev);
+};
+
+/* If driver didn't advertise the feature, it will never appear. */
+void virtio_check_driver_offered_feature(const struct virtio_device *vdev,
+					 unsigned int fbit);
+
+/**
+ * __virtio_test_bit - helper to test feature bits. For use by transports.
+ *                     Devices should normally use virtio_has_feature,
+ *                     which includes more checks.
+ * @vdev: the device
+ * @fbit: the feature bit
+ */
+static inline bool __virtio_test_bit(const struct virtio_device *vdev,
+				     unsigned int fbit)
+{
+	/* Did you forget to fix assumptions on max features? */
+	if (__builtin_constant_p(fbit))
+		BUILD_BUG_ON(fbit >= 64);
+	else
+		BUG_ON(fbit >= 64);
+
+	return vdev->features & BIT_ULL(fbit);
+}
+
+/**
+ * __virtio_set_bit - helper to set feature bits. For use by transports.
+ * @vdev: the device
+ * @fbit: the feature bit
+ */
+static inline void __virtio_set_bit(struct virtio_device *vdev,
+				    unsigned int fbit)
+{
+	/* Did you forget to fix assumptions on max features? */
+	if (__builtin_constant_p(fbit))
+		BUILD_BUG_ON(fbit >= 64);
+	else
+		BUG_ON(fbit >= 64);
+
+	vdev->features |= BIT_ULL(fbit);
+}
+
+/**
+ * __virtio_clear_bit - helper to clear feature bits. For use by transports.
+ * @vdev: the device
+ * @fbit: the feature bit
+ */
+static inline void __virtio_clear_bit(struct virtio_device *vdev,
+				      unsigned int fbit)
+{
+	/* Did you forget to fix assumptions on max features? */
+	if (__builtin_constant_p(fbit))
+		BUILD_BUG_ON(fbit >= 64);
+	else
+		BUG_ON(fbit >= 64);
+
+	vdev->features &= ~BIT_ULL(fbit);
+}
+
+/**
+ * virtio_has_feature - helper to determine if this device has this feature.
+ * @vdev: the device
+ * @fbit: the feature bit
+ */
+static inline bool virtio_has_feature(const struct virtio_device *vdev,
+				      unsigned int fbit)
+{
+	if (fbit < VIRTIO_TRANSPORT_F_START)
+		virtio_check_driver_offered_feature(vdev, fbit);
+
+	return __virtio_test_bit(vdev, fbit);
+}
+
+/**
+ * virtio_has_dma_quirk - determine whether this device has the DMA quirk
+ * @vdev: the device
+ */
+static inline bool virtio_has_dma_quirk(const struct virtio_device *vdev)
+{
+	/*
+	 * Note the reverse polarity of the quirk feature (compared to most
+	 * other features), this is for compatibility with legacy systems.
+	 */
+	return !virtio_has_feature(vdev, VIRTIO_F_ACCESS_PLATFORM);
+}
+
+static inline bool virtio_is_little_endian(struct virtio_device *vdev)
+{
+	return virtio_legacy_is_little_endian();
+}
+
+
+/**
+ * virtio_get_config() - read the value of a configuration field
+ *
+ * @vdev:	the real virtio device
+ * @offset:	the offset of the configuration field
+ * @buf:	the buffer to write the field value into
+ * @len:	the length of the buffer
+ * @return 0 if OK, -ve on error
+ */
+static inline int virtio_get_config(struct virtio_device *vdev, unsigned int offset,
+				    void *buf, unsigned int len)
+{
+	return vdev->config->get_config(vdev, offset, buf, len);
+}
+
+/**
+ * virtio_set_config() - write the value of a configuration field
+ *
+ * @vdev:	the real virtio device
+ * @offset:	the offset of the configuration field
+ * @buf:	the buffer to read the field value from
+ * @len:	the length of the buffer
+ * @return 0 if OK, -ve on error
+ */
+int virtio_set_config(struct virtio_device *vdev, unsigned int offset,
+		      void *buf, unsigned int len);
+
+/**
+ * virtio_find_vqs() - find virtqueues and instantiate them
+ *
+ * @vdev:	the real virtio device
+ * @nvqs:	the number of virtqueues to find
+ * @vqs:	on success, includes new virtqueues
+ * @return 0 if OK, -ve on error
+ */
+int virtio_find_vqs(struct virtio_device *vdev, unsigned int nvqs,
+		    struct virtqueue *vqs[]);
+
+/**
+ * virtio_device_ready - enable vq use in probe function
+ * @vdev: the device
+ *
+ * Driver must call this to use vqs in the probe function.
+ *
+ * Note: vqs are enabled automatically after probe returns.
+ */
+static inline
+void virtio_device_ready(struct virtio_device *dev)
+{
+	unsigned status = dev->config->get_status(dev);
+
+	BUG_ON(status & VIRTIO_CONFIG_S_DRIVER_OK);
+	dev->config->set_status(dev, status | VIRTIO_CONFIG_S_DRIVER_OK);
+}
+
+
+/* Memory accessors */
+static inline u16 virtio16_to_cpu(struct virtio_device *vdev, __virtio16 val)
+{
+	return __virtio16_to_cpu(virtio_is_little_endian(vdev), val);
+}
+
+static inline __virtio16 cpu_to_virtio16(struct virtio_device *vdev, u16 val)
+{
+	return __cpu_to_virtio16(virtio_is_little_endian(vdev), val);
+}
+
+static inline u32 virtio32_to_cpu(struct virtio_device *vdev, __virtio32 val)
+{
+	return __virtio32_to_cpu(virtio_is_little_endian(vdev), val);
+}
+
+static inline __virtio32 cpu_to_virtio32(struct virtio_device *vdev, u32 val)
+{
+	return __cpu_to_virtio32(virtio_is_little_endian(vdev), val);
+}
+
+static inline u64 virtio64_to_cpu(struct virtio_device *vdev, __virtio64 val)
+{
+	return __virtio64_to_cpu(virtio_is_little_endian(vdev), val);
+}
+
+static inline __virtio64 cpu_to_virtio64(struct virtio_device *vdev, u64 val)
+{
+	return __cpu_to_virtio64(virtio_is_little_endian(vdev), val);
+}
+
+/* Read @count fields, @bytes each */
+static inline void __virtio_cread_many(struct virtio_device *vdev,
+				       unsigned int offset,
+				       void *buf, size_t count, size_t bytes)
+{
+	u32 old, gen;
+	int i;
+
+	/* no need to check return value as generation can be optional */
+	vdev->config->generation(vdev, &gen);
+	do {
+		old = gen;
+
+		for (i = 0; i < count; i++)
+			virtio_get_config(vdev, offset + bytes * i,
+					  buf + i * bytes, bytes);
+
+		vdev->config->generation(vdev, &gen);
+	} while (gen != old);
+}
+
+static inline void virtio_cread_bytes(struct virtio_device *vdev,
+				      unsigned int offset,
+				      void *buf, size_t len)
+{
+	__virtio_cread_many(vdev, offset, buf, len, 1);
+}
+
+static inline u8 virtio_cread8(struct virtio_device *vdev, unsigned int offset)
+{
+	u8 ret;
+
+	virtio_get_config(vdev, offset, &ret, sizeof(ret));
+	return ret;
+}
+
+static inline void virtio_cwrite8(struct virtio_device *vdev,
+				  unsigned int offset, u8 val)
+{
+	virtio_set_config(vdev, offset, &val, sizeof(val));
+}
+
+static inline u16 virtio_cread16(struct virtio_device *vdev,
+				 unsigned int offset)
+{
+	u16 ret;
+
+	virtio_get_config(vdev, offset, &ret, sizeof(ret));
+	return virtio16_to_cpu(vdev, (__force __virtio16)ret);
+}
+
+static inline void virtio_cwrite16(struct virtio_device *vdev,
+				   unsigned int offset, u16 val)
+{
+	val = (__force u16)cpu_to_virtio16(vdev, val);
+	virtio_set_config(vdev, offset, &val, sizeof(val));
+}
+
+static inline u32 virtio_cread32(struct virtio_device *vdev,
+				 unsigned int offset)
+{
+	u32 ret;
+
+	virtio_get_config(vdev, offset, &ret, sizeof(ret));
+	return virtio32_to_cpu(vdev, (__force __virtio32)ret);
+}
+
+static inline void virtio_cwrite32(struct virtio_device *vdev,
+				   unsigned int offset, u32 val)
+{
+	val = (__force u32)cpu_to_virtio32(vdev, val);
+	virtio_set_config(vdev, offset, &val, sizeof(val));
+}
+
+static inline u64 virtio_cread64(struct virtio_device *vdev,
+				 unsigned int offset)
+{
+	u64 ret;
+
+	__virtio_cread_many(vdev, offset, &ret, 1, sizeof(ret));
+	return virtio64_to_cpu(vdev, (__force __virtio64)ret);
+}
+
+static inline void virtio_cwrite64(struct virtio_device *vdev,
+				   unsigned int offset, u64 val)
+{
+	val = (__force u64)cpu_to_virtio64(vdev, val);
+	virtio_set_config(vdev, offset, &val, sizeof(val));
+}
+
+/* Config space read accessor */
+#define virtio_cread(vdev, structname, member, ptr)			\
+	do {								\
+		/* Must match the member's type, and be integer */	\
+		if (!typecheck(typeof((((structname *)0)->member)), *(ptr))) \
+			(*ptr) = 1;					\
+									\
+		switch (sizeof(*ptr)) {					\
+		case 1:							\
+			*(ptr) = virtio_cread8(vdev,			\
+					       offsetof(structname, member)); \
+			break;						\
+		case 2:							\
+			*(ptr) = virtio_cread16(vdev,			\
+						offsetof(structname, member)); \
+			break;						\
+		case 4:							\
+			*(ptr) = virtio_cread32(vdev,			\
+						offsetof(structname, member)); \
+			break;						\
+		case 8:							\
+			*(ptr) = virtio_cread64(vdev,			\
+						offsetof(structname, member)); \
+			break;						\
+		default:						\
+			WARN_ON(true);					\
+		}							\
+	} while (0)
+
+/* Config space write accessor */
+#define virtio_cwrite(vdev, structname, member, ptr)			\
+	do {								\
+		/* Must match the member's type, and be integer */	\
+		if (!typecheck(typeof((((structname *)0)->member)), *(ptr))) \
+			WARN_ON((*ptr) == 1);				\
+									\
+		switch (sizeof(*ptr)) {					\
+		case 1:							\
+			virtio_cwrite8(vdev,				\
+				       offsetof(structname, member),	\
+				       *(ptr));				\
+			break;						\
+		case 2:							\
+			virtio_cwrite16(vdev,				\
+					offsetof(structname, member),	\
+					*(ptr));			\
+			break;						\
+		case 4:							\
+			virtio_cwrite32(vdev,				\
+					offsetof(structname, member),	\
+					*(ptr));			\
+			break;						\
+		case 8:							\
+			virtio_cwrite64(vdev,				\
+					offsetof(structname, member),	\
+					*(ptr));			\
+			break;						\
+		default:						\
+			WARN_ON(true);					\
+		}							\
+	} while (0)
+
+/* Conditional config space accessors */
+#define virtio_cread_feature(vdev, fbit, structname, member, ptr)	\
+	({								\
+		int _r = 0;						\
+		if (!virtio_has_feature(vdev, fbit))			\
+			_r = -ENOENT;					\
+		else							\
+			virtio_cread(vdev, structname, member, ptr);	\
+		_r;							\
+	})
+
+#ifdef CONFIG_ARCH_HAS_RESTRICTED_VIRTIO_MEMORY_ACCESS
+int arch_has_restricted_virtio_memory_access(void);
+#else
+static inline int arch_has_restricted_virtio_memory_access(void)
+{
+	return 0;
+}
+#endif /* CONFIG_ARCH_HAS_RESTRICTED_VIRTIO_MEMORY_ACCESS */
+
+
+#undef might_sleep
+
+#endif /* _LINUX_VIRTIO_CONFIG_H */
diff --git a/include/linux/virtio_ring.h b/include/linux/virtio_ring.h
new file mode 100644
index 000000000000..3c11592b09e4
--- /dev/null
+++ b/include/linux/virtio_ring.h
@@ -0,0 +1,330 @@
+/* SPDX-License-Identifier: BSD-3-Clause */
+/*
+ * Copyright (C) 2018, Tuomas Tynkkynen <tuomas.tynkkynen@iki.fi>
+ * Copyright (C) 2018, Bin Meng <bmeng.cn@gmail.com>
+ *
+ * From Linux kernel include/uapi/linux/virtio_ring.h
+ */
+
+#ifndef _LINUX_VIRTIO_RING_H
+#define _LINUX_VIRTIO_RING_H
+
+#include <linux/virtio_types.h>
+
+/* This marks a buffer as continuing via the next field */
+#define VRING_DESC_F_NEXT		1
+/* This marks a buffer as write-only (otherwise read-only) */
+#define VRING_DESC_F_WRITE		2
+/* This means the buffer contains a list of buffer descriptors */
+#define VRING_DESC_F_INDIRECT		4
+
+/*
+ * The Host uses this in used->flags to advise the Guest: don't kick me when
+ * you add a buffer. It's unreliable, so it's simply an optimization. Guest
+ * will still kick if it's out of buffers.
+ */
+#define VRING_USED_F_NO_NOTIFY		1
+
+/*
+ * The Guest uses this in avail->flags to advise the Host: don't interrupt me
+ * when you consume a buffer. It's unreliable, so it's simply an optimization.
+ */
+#define VRING_AVAIL_F_NO_INTERRUPT	1
+
+/* We support indirect buffer descriptors */
+#define VIRTIO_RING_F_INDIRECT_DESC	28
+
+/*
+ * The Guest publishes the used index for which it expects an interrupt
+ * at the end of the avail ring. Host should ignore the avail->flags field.
+ *
+ * The Host publishes the avail index for which it expects a kick
+ * at the end of the used ring. Guest should ignore the used->flags field.
+ */
+#define VIRTIO_RING_F_EVENT_IDX		29
+
+/* Virtio ring descriptors: 16 bytes. These can chain together via "next". */
+struct vring_desc {
+	/* Address (guest-physical) */
+	__virtio64 addr;
+	/* Length */
+	__virtio32 len;
+	/* The flags as indicated above */
+	__virtio16 flags;
+	/* We chain unused descriptors via this, too */
+	__virtio16 next;
+};
+
+struct vring_avail {
+	__virtio16 flags;
+	__virtio16 idx;
+	__virtio16 ring[];
+};
+
+struct vring_used_elem {
+	/* Index of start of used descriptor chain */
+	__virtio32 id;
+	/* Total length of the descriptor chain which was used (written to) */
+	__virtio32 len;
+};
+
+struct vring_used {
+	__virtio16 flags;
+	__virtio16 idx;
+	struct vring_used_elem ring[];
+};
+
+struct vring {
+	unsigned int num;
+	struct vring_desc *desc;
+	struct vring_avail *avail;
+	struct vring_used *used;
+};
+
+/**
+ * virtqueue - a queue to register buffers for sending or receiving.
+ *
+ * @list: the chain of virtqueues for this device
+ * @vdev: the virtio device this queue was created for
+ * @index: the zero-based ordinal number for this queue
+ * @num_free: number of elements we expect to be able to fit
+ * @vring: actual memory layout for this queue
+ * @event: host publishes avail event idx
+ * @free_head: head of free buffer list
+ * @num_added: number we've added since last sync
+ * @last_used_idx: last used index we've seen
+ * @avail_flags_shadow: last written value to avail->flags
+ * @avail_idx_shadow: last written value to avail->idx in guest byte order
+ */
+struct virtqueue {
+	struct list_head list;
+	struct virtio_device *vdev;
+	unsigned int index;
+	unsigned int num_free;
+	struct vring vring;
+	bool event;
+	unsigned int free_head;
+	unsigned int num_added;
+	u16 last_used_idx;
+	u16 avail_flags_shadow;
+	u16 avail_idx_shadow;
+};
+
+/*
+ * Alignment requirements for vring elements.
+ * When using pre-virtio 1.0 layout, these fall out naturally.
+ */
+#define VRING_AVAIL_ALIGN_SIZE		2
+#define VRING_USED_ALIGN_SIZE		4
+#define VRING_DESC_ALIGN_SIZE		16
+
+/*
+ * We publish the used event index at the end of the available ring,
+ * and vice versa. They are at the end for backwards compatibility.
+ */
+#define vring_used_event(vr)	((vr)->avail->ring[(vr)->num])
+#define vring_avail_event(vr)	(*(__virtio16 *)&(vr)->used->ring[(vr)->num])
+
+static inline void vring_init(struct vring *vr, unsigned int num, void *p,
+			      unsigned long align)
+{
+	vr->num = num;
+	vr->desc = p;
+	vr->avail = p + num * sizeof(struct vring_desc);
+	vr->used = (void *)(((uintptr_t)&vr->avail->ring[num] +
+		   sizeof(__virtio16) + align - 1) & ~(align - 1));
+}
+
+static inline unsigned int vring_size(unsigned int num, unsigned long align)
+{
+	return ((sizeof(struct vring_desc) * num +
+		sizeof(__virtio16) * (3 + num)  + align - 1) & ~(align - 1)) +
+		sizeof(__virtio16) * 3 + sizeof(struct vring_used_elem) * num;
+}
+
+/*
+ * The following is used with USED_EVENT_IDX and AVAIL_EVENT_IDX.
+ * Assuming a given event_idx value from the other side, if we have just
+ * incremented index from old to new_idx, should we trigger an event?
+ */
+static inline int vring_need_event(__u16 event_idx, __u16 new_idx, __u16 old)
+{
+	/*
+	 * Note: Xen has similar logic for notification hold-off
+	 * in include/xen/interface/io/ring.h with req_event and req_prod
+	 * corresponding to event_idx + 1 and new_idx respectively.
+	 * Note also that req_event and req_prod in Xen start at 1,
+	 * event indexes in virtio start at 0.
+	 */
+	return (__u16)(new_idx - event_idx - 1) < (__u16)(new_idx - old);
+}
+
+struct virtio_sg;
+
+/**
+ * virtqueue_add - expose buffers to other end
+ *
+ * @vq:		the struct virtqueue we're talking about
+ * @sgs:	array of terminated scatterlists
+ * @out_sgs:	the number of scatterlists readable by other side
+ * @in_sgs:	the number of scatterlists which are writable
+ *		(after readable ones)
+ *
+ * Caller must ensure we don't call this with other virtqueue operations
+ * at the same time (except where noted).
+ *
+ * Returns zero or a negative error (ie. ENOSPC, ENOMEM, EIO).
+ */
+int virtqueue_add(struct virtqueue *vq, struct virtio_sg *sgs[],
+		  unsigned int out_sgs, unsigned int in_sgs);
+
+/**
+ * virtqueue_kick - update after add_buf
+ *
+ * @vq:		the struct virtqueue
+ *
+ * After one or more virtqueue_add() calls, invoke this to kick
+ * the other side.
+ *
+ * Caller must ensure we don't call this with other virtqueue
+ * operations at the same time (except where noted).
+ */
+void virtqueue_kick(struct virtqueue *vq);
+
+/**
+ * virtqueue_get_buf - get the next used buffer
+ *
+ * @vq:		the struct virtqueue we're talking about
+ * @len:	the length written into the buffer
+ *
+ * If the device wrote data into the buffer, @len will be set to the
+ * amount written. This means you don't need to clear the buffer
+ * beforehand to ensure there's no data leakage in the case of short
+ * writes.
+ *
+ * Caller must ensure we don't call this with other virtqueue
+ * operations at the same time (except where noted).
+ *
+ * Returns NULL if there are no used buffers, or the memory buffer
+ * handed to virtqueue_add_*().
+ */
+void *virtqueue_get_buf(struct virtqueue *vq, unsigned int *len);
+
+/**
+ * vring_create_virtqueue - create a virtqueue for a virtio device
+ *
+ * @index:	the index of the queue
+ * @num:	number of elements of the queue
+ * @vring_align:the alignment requirement of the descriptor ring
+ * @udev:	the virtio transport device
+ * @return: the virtqueue pointer or NULL if failed
+ *
+ * This creates a virtqueue and allocates the descriptor ring for a virtio
+ * device. The caller should query virtqueue_get_ring_size() to learn the
+ * actual size of the ring.
+ *
+ * This API is supposed to be called by the virtio transport driver in the
+ * virtio find_vqs() uclass method.
+ */
+struct virtqueue *vring_create_virtqueue(unsigned int index, unsigned int num,
+					 unsigned int vring_align,
+					 struct virtio_device *vdev);
+
+/**
+ * vring_del_virtqueue - destroy a virtqueue
+ *
+ * @vq:		the struct virtqueue we're talking about
+ *
+ * This destroys a virtqueue. If created with vring_create_virtqueue(),
+ * this also frees the descriptor ring.
+ *
+ * This API is supposed to be called by the virtio transport driver in the
+ * virtio del_vqs() uclass method.
+ */
+void vring_del_virtqueue(struct virtqueue *vq);
+
+/**
+ * virtqueue_get_vring_size - get the size of the virtqueue's vring
+ *
+ * @vq:		the struct virtqueue containing the vring of interest
+ * @return: the size of the vring in a virtqueue.
+ */
+unsigned int virtqueue_get_vring_size(struct virtqueue *vq);
+
+/**
+ * virtqueue_get_desc_addr - get the vring descriptor table address
+ *
+ * @vq:		the struct virtqueue containing the vring of interest
+ * @return: the descriptor table address of the vring in a virtqueue.
+ */
+dma_addr_t virtqueue_get_desc_addr(struct virtqueue *vq);
+
+/**
+ * virtqueue_get_avail_addr - get the vring available ring address
+ *
+ * @vq:		the struct virtqueue containing the vring of interest
+ * @return: the available ring address of the vring in a virtqueue.
+ */
+dma_addr_t virtqueue_get_avail_addr(struct virtqueue *vq);
+
+/**
+ * virtqueue_get_used_addr - get the vring used ring address
+ *
+ * @vq:		the struct virtqueue containing the vring of interest
+ * @return: the used ring address of the vring in a virtqueue.
+ */
+dma_addr_t virtqueue_get_used_addr(struct virtqueue *vq);
+
+/**
+ * virtqueue_poll - query pending used buffers
+ *
+ * @vq:			the struct virtqueue we're talking about
+ * @last_used_idx:	virtqueue last used index
+ *
+ * Returns "true" if there are pending used buffers in the queue.
+ */
+bool virtqueue_poll(const struct virtqueue *vq, u16 last_used_idx);
+
+/**
+ * virtio_notify() - notify the device to process the queue
+ *
+ * @vdev:	the real virtio device
+ * @vq:		virtqueue to process
+ * @return 0 if OK, -ve on error
+ */
+int virtio_notify(struct virtio_device *vdev, struct virtqueue *vq);
+
+
+/**
+ * virtqueue_dump - dump the virtqueue for debugging
+ *
+ * @vq:		the struct virtqueue we're talking about
+ *
+ * Caller must ensure we don't call this with other virtqueue operations
+ * at the same time (except where noted).
+ */
+void virtqueue_dump(struct virtqueue *vq);
+
+/*
+ * Barriers in virtio are tricky. Since we are not in a hyperviosr/guest
+ * scenario, having these as nops is enough to work as expected.
+ */
+
+static inline void virtio_mb(void)
+{
+}
+
+static inline void virtio_rmb(void)
+{
+}
+
+static inline void virtio_wmb(void)
+{
+}
+
+static inline void virtio_store_mb(__virtio16 *p, __virtio16 v)
+{
+	WRITE_ONCE(*p, v);
+}
+
+#endif /* _LINUX_VIRTIO_RING_H */
diff --git a/include/uapi/linux/virtio_config.h b/include/uapi/linux/virtio_config.h
new file mode 100644
index 000000000000..b5eda06f0d57
--- /dev/null
+++ b/include/uapi/linux/virtio_config.h
@@ -0,0 +1,95 @@
+#ifndef _UAPI_LINUX_VIRTIO_CONFIG_H
+#define _UAPI_LINUX_VIRTIO_CONFIG_H
+/* This header, excluding the #ifdef __KERNEL__ part, is BSD licensed so
+ * anyone can use the definitions to implement compatible drivers/servers.
+ *
+ * Redistribution and use in source and binary forms, with or without
+ * modification, are permitted provided that the following conditions
+ * are met:
+ * 1. Redistributions of source code must retain the above copyright
+ *    notice, this list of conditions and the following disclaimer.
+ * 2. Redistributions in binary form must reproduce the above copyright
+ *    notice, this list of conditions and the following disclaimer in the
+ *    documentation and/or other materials provided with the distribution.
+ * 3. Neither the name of IBM nor the names of its contributors
+ *    may be used to endorse or promote products derived from this software
+ *    without specific prior written permission.
+ * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS ``AS IS'' AND
+ * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
+ * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
+ * ARE DISCLAIMED.  IN NO EVENT SHALL IBM OR CONTRIBUTORS BE LIABLE
+ * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
+ * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
+ * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
+ * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
+ * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
+ * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
+ * SUCH DAMAGE. */
+
+/* Virtio devices use a standardized configuration space to define their
+ * features and pass configuration information, but each implementation can
+ * store and access that space differently. */
+#include <linux/types.h>
+
+/* Status byte for guest to report progress, and synchronize features. */
+/* We have seen device and processed generic fields (VIRTIO_CONFIG_F_VIRTIO) */
+#define VIRTIO_CONFIG_S_ACKNOWLEDGE	1
+/* We have found a driver for the device. */
+#define VIRTIO_CONFIG_S_DRIVER		2
+/* Driver has used its parts of the config, and is happy */
+#define VIRTIO_CONFIG_S_DRIVER_OK	4
+/* Driver has finished configuring features */
+#define VIRTIO_CONFIG_S_FEATURES_OK	8
+/* Device entered invalid state, driver must reset it */
+#define VIRTIO_CONFIG_S_NEEDS_RESET	0x40
+/* We've given up on this device. */
+#define VIRTIO_CONFIG_S_FAILED		0x80
+
+/*
+ * Virtio feature bits VIRTIO_TRANSPORT_F_START through
+ * VIRTIO_TRANSPORT_F_END are reserved for the transport
+ * being used (e.g. virtio_ring, virtio_pci etc.), the
+ * rest are per-device feature bits.
+ */
+#define VIRTIO_TRANSPORT_F_START	28
+#define VIRTIO_TRANSPORT_F_END		38
+
+#ifndef VIRTIO_CONFIG_NO_LEGACY
+/* Do we get callbacks when the ring is completely used, even if we've
+ * suppressed them? */
+#define VIRTIO_F_NOTIFY_ON_EMPTY	24
+
+/* Can the device handle any descriptor layout? */
+#define VIRTIO_F_ANY_LAYOUT		27
+#endif /* VIRTIO_CONFIG_NO_LEGACY */
+
+/* v1.0 compliant. */
+#define VIRTIO_F_VERSION_1		32
+
+/*
+ * If clear - device has the platform DMA (e.g. IOMMU) bypass quirk feature.
+ * If set - use platform DMA tools to access the memory.
+ *
+ * Note the reverse polarity (compared to most other features),
+ * this is for compatibility with legacy systems.
+ */
+#define VIRTIO_F_ACCESS_PLATFORM	33
+#ifndef __KERNEL__
+/* Legacy name for VIRTIO_F_ACCESS_PLATFORM (for compatibility with old userspace) */
+#define VIRTIO_F_IOMMU_PLATFORM		VIRTIO_F_ACCESS_PLATFORM
+#endif /* __KERNEL__ */
+
+/* This feature indicates support for the packed virtqueue layout. */
+#define VIRTIO_F_RING_PACKED		34
+
+/*
+ * This feature indicates that memory accesses by the driver and the
+ * device are ordered in a way described by the platform.
+ */
+#define VIRTIO_F_ORDER_PLATFORM		36
+
+/*
+ * Does the device support Single Root I/O Virtualization?
+ */
+#define VIRTIO_F_SR_IOV			37
+#endif /* _UAPI_LINUX_VIRTIO_CONFIG_H */
diff --git a/include/uapi/linux/virtio_ids.h b/include/uapi/linux/virtio_ids.h
new file mode 100644
index 000000000000..bc1c0621f5ed
--- /dev/null
+++ b/include/uapi/linux/virtio_ids.h
@@ -0,0 +1,58 @@
+#ifndef _LINUX_VIRTIO_IDS_H
+#define _LINUX_VIRTIO_IDS_H
+/*
+ * Virtio IDs
+ *
+ * This header is BSD licensed so anyone can use the definitions to implement
+ * compatible drivers/servers.
+ *
+ * Redistribution and use in source and binary forms, with or without
+ * modification, are permitted provided that the following conditions
+ * are met:
+ * 1. Redistributions of source code must retain the above copyright
+ *    notice, this list of conditions and the following disclaimer.
+ * 2. Redistributions in binary form must reproduce the above copyright
+ *    notice, this list of conditions and the following disclaimer in the
+ *    documentation and/or other materials provided with the distribution.
+ * 3. Neither the name of IBM nor the names of its contributors
+ *    may be used to endorse or promote products derived from this software
+ *    without specific prior written permission.
+ * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS ``AS IS'' AND
+ * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
+ * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
+ * ARE DISCLAIMED.  IN NO EVENT SHALL IBM OR CONTRIBUTORS BE LIABLE
+ * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
+ * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
+ * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
+ * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
+ * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
+ * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
+ * SUCH DAMAGE. */
+
+#define VIRTIO_ID_NET			1 /* virtio net */
+#define VIRTIO_ID_BLOCK			2 /* virtio block */
+#define VIRTIO_ID_CONSOLE		3 /* virtio console */
+#define VIRTIO_ID_RNG			4 /* virtio rng */
+#define VIRTIO_ID_BALLOON		5 /* virtio balloon */
+#define VIRTIO_ID_IOMEM			6 /* virtio ioMemory */
+#define VIRTIO_ID_RPMSG			7 /* virtio remote processor messaging */
+#define VIRTIO_ID_SCSI			8 /* virtio scsi */
+#define VIRTIO_ID_9P			9 /* 9p virtio console */
+#define VIRTIO_ID_MAC80211_WLAN		10 /* virtio WLAN MAC */
+#define VIRTIO_ID_RPROC_SERIAL		11 /* virtio remoteproc serial link */
+#define VIRTIO_ID_CAIF			12 /* Virtio caif */
+#define VIRTIO_ID_MEMORY_BALLOON	13 /* virtio memory balloon */
+#define VIRTIO_ID_GPU			16 /* virtio GPU */
+#define VIRTIO_ID_CLOCK			17 /* virtio clock/timer */
+#define VIRTIO_ID_INPUT			18 /* virtio input */
+#define VIRTIO_ID_VSOCK			19 /* virtio vsock transport */
+#define VIRTIO_ID_CRYPTO		20 /* virtio crypto */
+#define VIRTIO_ID_SIGNAL_DIST		21 /* virtio signal distribution device */
+#define VIRTIO_ID_PSTORE		22 /* virtio pstore device */
+#define VIRTIO_ID_IOMMU			23 /* virtio IOMMU */
+#define VIRTIO_ID_MEM			24 /* virtio mem */
+#define VIRTIO_ID_FS			26 /* virtio filesystem */
+#define VIRTIO_ID_PMEM			27 /* virtio pmem */
+#define VIRTIO_ID_MAC80211_HWSIM	29 /* virtio mac80211-hwsim */
+
+#endif /* _LINUX_VIRTIO_IDS_H */
diff --git a/include/uapi/linux/virtio_mmio.h b/include/uapi/linux/virtio_mmio.h
new file mode 100644
index 000000000000..0650f91bea6c
--- /dev/null
+++ b/include/uapi/linux/virtio_mmio.h
@@ -0,0 +1,152 @@
+/*
+ * Virtio platform device driver
+ *
+ * Copyright 2011, ARM Ltd.
+ *
+ * Based on Virtio PCI driver by Anthony Liguori, copyright IBM Corp. 2007
+ *
+ * This header is BSD licensed so anyone can use the definitions to implement
+ * compatible drivers/servers.
+ *
+ * Redistribution and use in source and binary forms, with or without
+ * modification, are permitted provided that the following conditions
+ * are met:
+ * 1. Redistributions of source code must retain the above copyright
+ *    notice, this list of conditions and the following disclaimer.
+ * 2. Redistributions in binary form must reproduce the above copyright
+ *    notice, this list of conditions and the following disclaimer in the
+ *    documentation and/or other materials provided with the distribution.
+ * 3. Neither the name of IBM nor the names of its contributors
+ *    may be used to endorse or promote products derived from this software
+ *    without specific prior written permission.
+ * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS ``AS IS'' AND
+ * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
+ * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
+ * ARE DISCLAIMED.  IN NO EVENT SHALL IBM OR CONTRIBUTORS BE LIABLE
+ * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
+ * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
+ * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
+ * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
+ * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
+ * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
+ * SUCH DAMAGE.
+ */
+
+#ifndef _LINUX_VIRTIO_MMIO_H
+#define _LINUX_VIRTIO_MMIO_H
+
+/*
+ * Control registers
+ */
+
+/* Magic value ("virt" string) - Read Only */
+#define VIRTIO_MMIO_MAGIC_VALUE		0x000
+
+/* Virtio device version - Read Only */
+#define VIRTIO_MMIO_VERSION		0x004
+
+/* Virtio device ID - Read Only */
+#define VIRTIO_MMIO_DEVICE_ID		0x008
+
+/* Virtio vendor ID - Read Only */
+#define VIRTIO_MMIO_VENDOR_ID		0x00c
+
+/* Bitmask of the features supported by the device (host)
+ * (32 bits per set) - Read Only */
+#define VIRTIO_MMIO_DEVICE_FEATURES	0x010
+
+/* Device (host) features set selector - Write Only */
+#define VIRTIO_MMIO_DEVICE_FEATURES_SEL	0x014
+
+/* Bitmask of features activated by the driver (guest)
+ * (32 bits per set) - Write Only */
+#define VIRTIO_MMIO_DRIVER_FEATURES	0x020
+
+/* Activated features set selector - Write Only */
+#define VIRTIO_MMIO_DRIVER_FEATURES_SEL	0x024
+
+
+#ifndef VIRTIO_MMIO_NO_LEGACY /* LEGACY DEVICES ONLY! */
+
+/* Guest's memory page size in bytes - Write Only */
+#define VIRTIO_MMIO_GUEST_PAGE_SIZE	0x028
+
+#endif
+
+
+/* Queue selector - Write Only */
+#define VIRTIO_MMIO_QUEUE_SEL		0x030
+
+/* Maximum size of the currently selected queue - Read Only */
+#define VIRTIO_MMIO_QUEUE_NUM_MAX	0x034
+
+/* Queue size for the currently selected queue - Write Only */
+#define VIRTIO_MMIO_QUEUE_NUM		0x038
+
+
+#ifndef VIRTIO_MMIO_NO_LEGACY /* LEGACY DEVICES ONLY! */
+
+/* Used Ring alignment for the currently selected queue - Write Only */
+#define VIRTIO_MMIO_QUEUE_ALIGN		0x03c
+
+/* Guest's PFN for the currently selected queue - Read Write */
+#define VIRTIO_MMIO_QUEUE_PFN		0x040
+
+#endif
+
+
+/* Ready bit for the currently selected queue - Read Write */
+#define VIRTIO_MMIO_QUEUE_READY		0x044
+
+/* Queue notifier - Write Only */
+#define VIRTIO_MMIO_QUEUE_NOTIFY	0x050
+
+/* Interrupt status - Read Only */
+#define VIRTIO_MMIO_INTERRUPT_STATUS	0x060
+
+/* Interrupt acknowledge - Write Only */
+#define VIRTIO_MMIO_INTERRUPT_ACK	0x064
+
+/* Device status register - Read Write */
+#define VIRTIO_MMIO_STATUS		0x070
+
+/* Selected queue's Descriptor Table address, 64 bits in two halves */
+#define VIRTIO_MMIO_QUEUE_DESC_LOW	0x080
+#define VIRTIO_MMIO_QUEUE_DESC_HIGH	0x084
+
+/* Selected queue's Available Ring address, 64 bits in two halves */
+#define VIRTIO_MMIO_QUEUE_AVAIL_LOW	0x090
+#define VIRTIO_MMIO_QUEUE_AVAIL_HIGH	0x094
+
+/* Selected queue's Used Ring address, 64 bits in two halves */
+#define VIRTIO_MMIO_QUEUE_USED_LOW	0x0a0
+#define VIRTIO_MMIO_QUEUE_USED_HIGH	0x0a4
+
+/* Shared memory region id */
+#define VIRTIO_MMIO_SHM_SEL             0x0ac
+
+/* Shared memory region length, 64 bits in two halves */
+#define VIRTIO_MMIO_SHM_LEN_LOW         0x0b0
+#define VIRTIO_MMIO_SHM_LEN_HIGH        0x0b4
+
+/* Shared memory region base address, 64 bits in two halves */
+#define VIRTIO_MMIO_SHM_BASE_LOW        0x0b8
+#define VIRTIO_MMIO_SHM_BASE_HIGH       0x0bc
+
+/* Configuration atomicity value */
+#define VIRTIO_MMIO_CONFIG_GENERATION	0x0fc
+
+/* The config space is defined by each driver as
+ * the per-driver configuration space - Read Write */
+#define VIRTIO_MMIO_CONFIG		0x100
+
+
+
+/*
+ * Interrupt flags (re: interrupt status & acknowledge registers)
+ */
+
+#define VIRTIO_MMIO_INT_VRING		(1 << 0)
+#define VIRTIO_MMIO_INT_CONFIG		(1 << 1)
+
+#endif
diff --git a/include/uapi/linux/virtio_ring.h b/include/uapi/linux/virtio_ring.h
new file mode 100644
index 000000000000..b72a5b8b4a3e
--- /dev/null
+++ b/include/uapi/linux/virtio_ring.h
@@ -0,0 +1,244 @@
+#ifndef _UAPI_LINUX_VIRTIO_RING_H
+#define _UAPI_LINUX_VIRTIO_RING_H
+/* An interface for efficient virtio implementation, currently for use by KVM,
+ * but hopefully others soon.  Do NOT change this since it will
+ * break existing servers and clients.
+ *
+ * This header is BSD licensed so anyone can use the definitions to implement
+ * compatible drivers/servers.
+ *
+ * Redistribution and use in source and binary forms, with or without
+ * modification, are permitted provided that the following conditions
+ * are met:
+ * 1. Redistributions of source code must retain the above copyright
+ *    notice, this list of conditions and the following disclaimer.
+ * 2. Redistributions in binary form must reproduce the above copyright
+ *    notice, this list of conditions and the following disclaimer in the
+ *    documentation and/or other materials provided with the distribution.
+ * 3. Neither the name of IBM nor the names of its contributors
+ *    may be used to endorse or promote products derived from this software
+ *    without specific prior written permission.
+ * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS ``AS IS'' AND
+ * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
+ * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
+ * ARE DISCLAIMED.  IN NO EVENT SHALL IBM OR CONTRIBUTORS BE LIABLE
+ * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
+ * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
+ * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
+ * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
+ * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
+ * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
+ * SUCH DAMAGE.
+ *
+ * Copyright Rusty Russell IBM Corporation 2007. */
+#ifndef __KERNEL__
+#include <stdint.h>
+#endif
+#include <linux/types.h>
+#include <uapi/linux/virtio_types.h>
+
+/* This marks a buffer as continuing via the next field. */
+#define VRING_DESC_F_NEXT	1
+/* This marks a buffer as write-only (otherwise read-only). */
+#define VRING_DESC_F_WRITE	2
+/* This means the buffer contains a list of buffer descriptors. */
+#define VRING_DESC_F_INDIRECT	4
+
+/*
+ * Mark a descriptor as available or used in packed ring.
+ * Notice: they are defined as shifts instead of shifted values.
+ */
+#define VRING_PACKED_DESC_F_AVAIL	7
+#define VRING_PACKED_DESC_F_USED	15
+
+/* The Host uses this in used->flags to advise the Guest: don't kick me when
+ * you add a buffer.  It's unreliable, so it's simply an optimization.  Guest
+ * will still kick if it's out of buffers. */
+#define VRING_USED_F_NO_NOTIFY	1
+/* The Guest uses this in avail->flags to advise the Host: don't interrupt me
+ * when you consume a buffer.  It's unreliable, so it's simply an
+ * optimization.  */
+#define VRING_AVAIL_F_NO_INTERRUPT	1
+
+/* Enable events in packed ring. */
+#define VRING_PACKED_EVENT_FLAG_ENABLE	0x0
+/* Disable events in packed ring. */
+#define VRING_PACKED_EVENT_FLAG_DISABLE	0x1
+/*
+ * Enable events for a specific descriptor in packed ring.
+ * (as specified by Descriptor Ring Change Event Offset/Wrap Counter).
+ * Only valid if VIRTIO_RING_F_EVENT_IDX has been negotiated.
+ */
+#define VRING_PACKED_EVENT_FLAG_DESC	0x2
+
+/*
+ * Wrap counter bit shift in event suppression structure
+ * of packed ring.
+ */
+#define VRING_PACKED_EVENT_F_WRAP_CTR	15
+
+/* We support indirect buffer descriptors */
+#define VIRTIO_RING_F_INDIRECT_DESC	28
+
+/* The Guest publishes the used index for which it expects an interrupt
+ * at the end of the avail ring. Host should ignore the avail->flags field. */
+/* The Host publishes the avail index for which it expects a kick
+ * at the end of the used ring. Guest should ignore the used->flags field. */
+#define VIRTIO_RING_F_EVENT_IDX		29
+
+/* Alignment requirements for vring elements.
+ * When using pre-virtio 1.0 layout, these fall out naturally.
+ */
+#define VRING_AVAIL_ALIGN_SIZE 2
+#define VRING_USED_ALIGN_SIZE 4
+#define VRING_DESC_ALIGN_SIZE 16
+
+/* Virtio ring descriptors: 16 bytes.  These can chain together via "next". */
+struct vring_desc {
+	/* Address (guest-physical). */
+	__virtio64 addr;
+	/* Length. */
+	__virtio32 len;
+	/* The flags as indicated above. */
+	__virtio16 flags;
+	/* We chain unused descriptors via this, too */
+	__virtio16 next;
+};
+
+struct vring_avail {
+	__virtio16 flags;
+	__virtio16 idx;
+	__virtio16 ring[];
+};
+
+/* u32 is used here for ids for padding reasons. */
+struct vring_used_elem {
+	/* Index of start of used descriptor chain. */
+	__virtio32 id;
+	/* Total length of the descriptor chain which was used (written to) */
+	__virtio32 len;
+};
+
+typedef struct vring_used_elem __attribute__((aligned(VRING_USED_ALIGN_SIZE)))
+	vring_used_elem_t;
+
+struct vring_used {
+	__virtio16 flags;
+	__virtio16 idx;
+	vring_used_elem_t ring[];
+};
+
+/*
+ * The ring element addresses are passed between components with different
+ * alignments assumptions. Thus, we might need to decrease the compiler-selected
+ * alignment, and so must use a typedef to make sure the aligned attribute
+ * actually takes hold:
+ *
+ * https://gcc.gnu.org/onlinedocs//gcc/Common-Type-Attributes.html#Common-Type-Attributes
+ *
+ * When used on a struct, or struct member, the aligned attribute can only
+ * increase the alignment; in order to decrease it, the packed attribute must
+ * be specified as well. When used as part of a typedef, the aligned attribute
+ * can both increase and decrease alignment, and specifying the packed
+ * attribute generates a warning.
+ */
+typedef struct vring_desc __attribute__((aligned(VRING_DESC_ALIGN_SIZE)))
+	vring_desc_t;
+typedef struct vring_avail __attribute__((aligned(VRING_AVAIL_ALIGN_SIZE)))
+	vring_avail_t;
+typedef struct vring_used __attribute__((aligned(VRING_USED_ALIGN_SIZE)))
+	vring_used_t;
+
+struct vring {
+	unsigned int num;
+
+	vring_desc_t *desc;
+
+	vring_avail_t *avail;
+
+	vring_used_t *used;
+};
+
+#ifndef VIRTIO_RING_NO_LEGACY
+
+/* The standard layout for the ring is a continuous chunk of memory which looks
+ * like this.  We assume num is a power of 2.
+ *
+ * struct vring
+ * {
+ *	// The actual descriptors (16 bytes each)
+ *	struct vring_desc desc[num];
+ *
+ *	// A ring of available descriptor heads with free-running index.
+ *	__virtio16 avail_flags;
+ *	__virtio16 avail_idx;
+ *	__virtio16 available[num];
+ *	__virtio16 used_event_idx;
+ *
+ *	// Padding to the next align boundary.
+ *	char pad[];
+ *
+ *	// A ring of used descriptor heads with free-running index.
+ *	__virtio16 used_flags;
+ *	__virtio16 used_idx;
+ *	struct vring_used_elem used[num];
+ *	__virtio16 avail_event_idx;
+ * };
+ */
+/* We publish the used event index at the end of the available ring, and vice
+ * versa. They are at the end for backwards compatibility. */
+#define vring_used_event(vr) ((vr)->avail->ring[(vr)->num])
+#define vring_avail_event(vr) (*(__virtio16 *)&(vr)->used->ring[(vr)->num])
+
+static inline void vring_init(struct vring *vr, unsigned int num, void *p,
+			      unsigned long align)
+{
+	vr->num = num;
+	vr->desc = p;
+	vr->avail = (struct vring_avail *)((char *)p + num * sizeof(struct vring_desc));
+	vr->used = (void *)(((uintptr_t)&vr->avail->ring[num] + sizeof(__virtio16)
+		+ align-1) & ~(align - 1));
+}
+
+static inline unsigned vring_size(unsigned int num, unsigned long align)
+{
+	return ((sizeof(struct vring_desc) * num + sizeof(__virtio16) * (3 + num)
+		 + align - 1) & ~(align - 1))
+		+ sizeof(__virtio16) * 3 + sizeof(struct vring_used_elem) * num;
+}
+
+#endif /* VIRTIO_RING_NO_LEGACY */
+
+/* The following is used with USED_EVENT_IDX and AVAIL_EVENT_IDX */
+/* Assuming a given event_idx value from the other side, if
+ * we have just incremented index from old to new_idx,
+ * should we trigger an event? */
+static inline int vring_need_event(__u16 event_idx, __u16 new_idx, __u16 old)
+{
+	/* Note: Xen has similar logic for notification hold-off
+	 * in include/xen/interface/io/ring.h with req_event and req_prod
+	 * corresponding to event_idx + 1 and new_idx respectively.
+	 * Note also that req_event and req_prod in Xen start at 1,
+	 * event indexes in virtio start at 0. */
+	return (__u16)(new_idx - event_idx - 1) < (__u16)(new_idx - old);
+}
+
+struct vring_packed_desc_event {
+	/* Descriptor Ring Change Event Offset/Wrap Counter. */
+	__le16 off_wrap;
+	/* Descriptor Ring Change Event Flags. */
+	__le16 flags;
+};
+
+struct vring_packed_desc {
+	/* Buffer Address. */
+	__le64 addr;
+	/* Buffer Length. */
+	__le32 len;
+	/* Buffer ID. */
+	__le16 id;
+	/* The flags depending on descriptor type. */
+	__le16 flags;
+};
+
+#endif /* _UAPI_LINUX_VIRTIO_RING_H */
diff --git a/include/uapi/linux/virtio_rng.h b/include/uapi/linux/virtio_rng.h
new file mode 100644
index 000000000000..c4d5de896f0c
--- /dev/null
+++ b/include/uapi/linux/virtio_rng.h
@@ -0,0 +1,8 @@
+#ifndef _LINUX_VIRTIO_RNG_H
+#define _LINUX_VIRTIO_RNG_H
+/* This header is BSD licensed so anyone can use the definitions to implement
+ * compatible drivers/servers. */
+#include <linux/virtio_ids.h>
+#include <linux/virtio_config.h>
+
+#endif /* _LINUX_VIRTIO_RNG_H */
diff --git a/include/uapi/linux/virtio_types.h b/include/uapi/linux/virtio_types.h
new file mode 100644
index 000000000000..55c3b738722c
--- /dev/null
+++ b/include/uapi/linux/virtio_types.h
@@ -0,0 +1,46 @@
+#ifndef _UAPI_LINUX_VIRTIO_TYPES_H
+#define _UAPI_LINUX_VIRTIO_TYPES_H
+/* Type definitions for virtio implementations.
+ *
+ * This header is BSD licensed so anyone can use the definitions to implement
+ * compatible drivers/servers.
+ *
+ * Redistribution and use in source and binary forms, with or without
+ * modification, are permitted provided that the following conditions
+ * are met:
+ * 1. Redistributions of source code must retain the above copyright
+ *    notice, this list of conditions and the following disclaimer.
+ * 2. Redistributions in binary form must reproduce the above copyright
+ *    notice, this list of conditions and the following disclaimer in the
+ *    documentation and/or other materials provided with the distribution.
+ * 3. Neither the name of IBM nor the names of its contributors
+ *    may be used to endorse or promote products derived from this software
+ *    without specific prior written permission.
+ * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS ``AS IS'' AND
+ * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
+ * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
+ * ARE DISCLAIMED.  IN NO EVENT SHALL IBM OR CONTRIBUTORS BE LIABLE
+ * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
+ * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
+ * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
+ * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
+ * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
+ * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
+ * SUCH DAMAGE.
+ *
+ * Copyright (C) 2014 Red Hat, Inc.
+ * Author: Michael S. Tsirkin <mst@redhat.com>
+ */
+#include <linux/types.h>
+
+/*
+ * __virtio{16,32,64} have the following meaning:
+ * - __u{16,32,64} for virtio devices in legacy mode, accessed in native endian
+ * - __le{16,32,64} for standard-compliant virtio devices
+ */
+
+typedef __u16 __bitwise __virtio16;
+typedef __u32 __bitwise __virtio32;
+typedef __u64 __bitwise __virtio64;
+
+#endif /* _UAPI_LINUX_VIRTIO_TYPES_H */
-- 
2.30.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

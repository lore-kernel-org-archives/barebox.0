Delivery-date: Sun, 28 Feb 2021 20:10:44 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lGRSm-0003Ws-O6
	for lore@lore.pengutronix.de; Sun, 28 Feb 2021 20:10:44 +0100
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lGRSi-0001Mo-1F
	for lore@pengutronix.de; Sun, 28 Feb 2021 20:10:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zktJX24M/+gPl6ErK+a5LhjZ4L+fao826S6rPROKRjI=; b=mPmXBnf2wONxx37pWf6+oKegD
	dLwpw2hO+Zl6Zuwbf7pvgVo81tfnXq6YTr34uJB8tVyGM7OI4f2z1tOIdOEuf6yniOJ7iPLVUuGv6
	OuSqSzgmTv+92vz9orP7wSGN4R1Gz9JQ0o+CgMoKV0feG/tOTOzzGd2lUBbS0wocTtvEDp0QlT5Tt
	8dz2w7NaFdIqsKyXO/YK7WxrSy8O4xQbLll7kVrZ62Nuu7BdkywpXYOjzEqcHRhyqA1MBR0Y3obNC
	qzEn3TU+RMLACZTKj15SQFX8hLSATVRzlVxLgGSz5XwZ8AjJhgstVuU7fC6IsgEvo8x4sR2Bd6+DR
	KiO4voOoQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lGRRE-0006FD-1J; Sun, 28 Feb 2021 19:09:08 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lGRQt-000670-1R
 for barebox@lists.infradead.org; Sun, 28 Feb 2021 19:08:53 +0000
X-Originating-IP: 87.123.101.180
Received: from geraet.fritz.box (unknown [87.123.101.180])
 (Authenticated sender: ahmad@a3f.at)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 82BE560010;
 Sun, 28 Feb 2021 19:08:45 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Date: Sun, 28 Feb 2021 20:08:35 +0100
Message-Id: <20210228190836.1451663-8-ahmad@a3f.at>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210228190836.1451663-1-ahmad@a3f.at>
References: <20210228190836.1451663-1-ahmad@a3f.at>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210228_140847_393210_20630B17 
X-CRM114-Status: GOOD (  32.20  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Cc: Ahmad Fatoum <ahmad@a3f.at>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1231::1
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 8/9] virtio: support virtio-based device drivers over PCI
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This driver provides support for virtio based paravirtual device
drivers over PCI. This is useful with Qemu for boards that barebox
has PCI support for, e.g. MIPS Malta.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 Documentation/user/virtio.rst      |  30 ++-
 drivers/virtio/Kconfig             |  12 +-
 drivers/virtio/Makefile            |   2 +
 drivers/virtio/virtio_pci_common.c |  88 ++++++
 drivers/virtio/virtio_pci_common.h |  64 +++++
 drivers/virtio/virtio_pci_modern.c | 417 +++++++++++++++++++++++++++++
 include/uapi/linux/virtio_pci.h    | 208 ++++++++++++++
 7 files changed, 807 insertions(+), 14 deletions(-)
 create mode 100644 drivers/virtio/virtio_pci_common.c
 create mode 100644 drivers/virtio/virtio_pci_common.h
 create mode 100644 drivers/virtio/virtio_pci_modern.c
 create mode 100644 include/uapi/linux/virtio_pci.h

diff --git a/Documentation/user/virtio.rst b/Documentation/user/virtio.rst
index 5d2a8c8208d8..7e125c0ca839 100644
--- a/Documentation/user/virtio.rst
+++ b/Documentation/user/virtio.rst
@@ -20,7 +20,7 @@ just the guest's device driver "knows" it is running in a virtual environment,
 and cooperates with the hypervisor. This enables guests to get high performance
 network and disk operations, and gives most of the performance benefits of
 paravirtualization. In the barebox case, the guest is barebox itself, while the
-virtual environment will normally be QEMU_ targets like ARM, RISC-V and x86.
+virtual environment will normally be QEMU_ targets like ARM, MIPS, RISC-V or x86.
 
 Status
 ------
@@ -31,8 +31,8 @@ embedded devices models like ARM/RISC-V, which does not normally come with
 PCI support might use simple memory mapped device (MMIO) instead of the PCI
 device. The memory mapped virtio device behaviour is based on the PCI device
 specification. Therefore most operations including device initialization,
-queues configuration and buffer transfers are nearly identical. Only MMIO
-is currently supported in barebox.
+queues configuration and buffer transfers are nearly identical. Both MMIO
+and non-legacy PCI are supported in barebox.
 
 The VirtIO spec defines a lots of VirtIO device types, however at present only
 block, console and RNG devices are supported.
@@ -67,16 +67,20 @@ to pass barebox a fixed-up device tree describing the ``virtio-mmio``
 rings.
 
 Except for the console, multiple instances of a VirtIO device can be created
-by appending more '-device' parameters. For example to create one HWRNG
-and 2 block devices::
-
-  $ qemu-system-arm -m 256M -M virt -nographic                  \
-    	-kernel ./images/barebox-dt-2nd.img                     \
-  	-device virtio-rng-device                               \
-  	-drive if=none,file=/tmp/first.hdimg,format=raw,id=hd0  \
-  	-device virtio-blk-device,drive=hd0		        \
-  	-drive if=none,file=/tmp/second.hdimg,format=raw,id=hd1 \
-  	-device virtio-blk-device,drive=hd1
+by appending more '-device' parameters. For example to extend a MIPS
+malta VM with one HWRNG and 2 block VirtIO PCI devices::
+
+  $ qemu-system-mips -m 256M -M malta -serial stdio         \
+    	-bios ./images/barebox-qemu-malta.img -monitor null \
+  	-device virtio-rng-pci,disable-legacy=on            \
+  	-drive if=none,file=image1.hdimg,format=raw,id=hd0  \
+  	-device virtio-blk-pci,drive=hd0,disable-legacy=on  \
+  	-drive if=none,file=image2.hdimg,format=raw,id=hd1  \
+  	-device virtio-blk-pci,drive=hd1,disable-legacy=on
+
+Note the use of ``disable-legacy=on``. barebox doesn't support legacy
+or transitional VirtIO devices. Some versions of QEMU may need to
+have ``,disable-modern=off`` specfied as well.
 
 .. _VirtIO: http://docs.oasis-open.org/virtio/virtio/v1.0/virtio-v1.0.pdf
 .. _qemu: https://www.qemu.org
diff --git a/drivers/virtio/Kconfig b/drivers/virtio/Kconfig
index 59e3d3c3f54b..ecf66987b3ed 100644
--- a/drivers/virtio/Kconfig
+++ b/drivers/virtio/Kconfig
@@ -3,7 +3,7 @@ config VIRTIO
 	bool
 	help
 	  This option is selected by any driver which implements the virtio
-	  bus, such as CONFIG_VIRTIO_MMIO.
+	  bus, such as CONFIG_VIRTIO_MMIO, CONFIG_VIRTIO_PCI.
 
 config ARCH_HAS_RESTRICTED_VIRTIO_MEMORY_ACCESS
 	bool
@@ -25,4 +25,14 @@ config VIRTIO_MMIO
 	 This drivers provides support for memory mapped virtio
 	 platform device driver. This is usually used with Qemu.
 
+config VIRTIO_PCI
+	tristate "PCI driver for virtio devices"
+	depends on PCI && HAS_DMA
+	select VIRTIO
+	help
+	  This driver provides support for virtio based paravirtual device
+	  drivers over PCI. This requires that your VMM has appropriate PCI
+	  virtio backends.  Most QEMU based VMMs should support these devices
+	  (like KVM or Xen).
+
 endif # VIRTIO_MENU
diff --git a/drivers/virtio/Makefile b/drivers/virtio/Makefile
index 94ff1398fb3c..44d35a13340d 100644
--- a/drivers/virtio/Makefile
+++ b/drivers/virtio/Makefile
@@ -1,3 +1,5 @@
 # SPDX-License-Identifier: GPL-2.0
 obj-$(CONFIG_VIRTIO) += virtio.o virtio_ring.o
 obj-$(CONFIG_VIRTIO_MMIO) += virtio_mmio.o
+obj-$(CONFIG_VIRTIO_PCI) += virtio_pci.o
+virtio_pci-y := virtio_pci_modern.o virtio_pci_common.o
diff --git a/drivers/virtio/virtio_pci_common.c b/drivers/virtio/virtio_pci_common.c
new file mode 100644
index 000000000000..b0ac8befd49b
--- /dev/null
+++ b/drivers/virtio/virtio_pci_common.c
@@ -0,0 +1,88 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Virtio PCI driver - common functionality for all device versions
+ *
+ * This module allows virtio devices to be used over a virtual PCI device.
+ * This can be used with QEMU based VMMs like KVM or Xen.
+ *
+ * Copyright IBM Corp. 2007
+ * Copyright Red Hat, Inc. 2014
+ *
+ * Authors:
+ *  Anthony Liguori  <aliguori@us.ibm.com>
+ *  Rusty Russell <rusty@rustcorp.com.au>
+ *  Michael S. Tsirkin <mst@redhat.com>
+ */
+
+#include <common.h>
+#include <init.h>
+#include "virtio_pci_common.h"
+
+/* Qumranet donated their vendor ID for devices 0x1000 thru 0x10FF. */
+static const struct pci_device_id virtio_pci_id_table[] = {
+	{ PCI_DEVICE(PCI_VENDOR_ID_REDHAT_QUMRANET, PCI_ANY_ID) },
+	{ 0 }
+};
+
+static int virtio_pci_probe(struct pci_dev *pci_dev,
+			    const struct pci_device_id *id)
+{
+	struct virtio_pci_device *vp_dev;
+	int rc;
+
+	/* allocate our structure and fill it out */
+	vp_dev = kzalloc(sizeof(struct virtio_pci_device), GFP_KERNEL);
+	if (!vp_dev)
+		return -ENOMEM;
+
+	pci_dev->dev.priv = vp_dev;
+	vp_dev->vdev.dev.parent = &pci_dev->dev;
+	vp_dev->pci_dev = pci_dev;
+
+	/* enable the device */
+	rc = pci_enable_device(pci_dev);
+	if (rc)
+		goto err_enable_device;
+
+	rc = virtio_pci_modern_probe(vp_dev);
+	if (rc == -ENODEV)
+		dev_err(&pci_dev->dev, "Legacy and transitional devices unsupported\n");
+	if (rc)
+		goto err_enable_device;
+
+	pci_set_master(pci_dev);
+
+	rc = register_virtio_device(&vp_dev->vdev);
+	if (rc)
+		goto err_probe;
+
+	return 0;
+
+err_probe:
+	pci_clear_master(pci_dev);
+err_enable_device:
+	kfree(vp_dev);
+	return rc;
+}
+
+static void virtio_pci_remove(struct pci_dev *pci_dev)
+{
+	struct virtio_pci_device *vp_dev = pci_dev->dev.priv;
+
+	unregister_virtio_device(&vp_dev->vdev);
+
+	pci_clear_master(pci_dev);
+}
+
+static struct pci_driver virtio_pci_driver = {
+	.name		= "virtio-pci",
+	.id_table	= virtio_pci_id_table,
+	.probe		= virtio_pci_probe,
+	.remove		= virtio_pci_remove,
+};
+
+device_pci_driver(virtio_pci_driver);
+
+MODULE_AUTHOR("Anthony Liguori <aliguori@us.ibm.com>");
+MODULE_DESCRIPTION("virtio-pci");
+MODULE_LICENSE("GPL");
diff --git a/drivers/virtio/virtio_pci_common.h b/drivers/virtio/virtio_pci_common.h
new file mode 100644
index 000000000000..32f0f451ab49
--- /dev/null
+++ b/drivers/virtio/virtio_pci_common.h
@@ -0,0 +1,64 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+#ifndef _DRIVERS_VIRTIO_VIRTIO_PCI_COMMON_H
+#define _DRIVERS_VIRTIO_VIRTIO_PCI_COMMON_H
+/*
+ * Virtio PCI driver - APIs for common functionality for all device versions
+ *
+ * This module allows virtio devices to be used over a virtual PCI device.
+ * This can be used with QEMU based VMMs like KVM or Xen.
+ *
+ * Copyright IBM Corp. 2007
+ * Copyright Red Hat, Inc. 2014
+ *
+ * Authors:
+ *  Anthony Liguori  <aliguori@us.ibm.com>
+ *  Rusty Russell <rusty@rustcorp.com.au>
+ *  Michael S. Tsirkin <mst@redhat.com>
+ */
+
+#include <linux/list.h>
+#include <linux/list.h>
+#include <linux/pci.h>
+#include <linux/slab.h>
+#include <linux/virtio.h>
+#include <linux/virtio_config.h>
+#include <linux/virtio_ring.h>
+#include <linux/virtio_pci.h>
+
+struct virtio_pci_vq_info {
+	/* the actual virtqueue */
+	struct virtqueue *vq;
+
+	/* the list node for the virtqueues list */
+	struct list_head node;
+};
+
+/* Our device structure */
+struct virtio_pci_device {
+	struct virtio_device vdev;
+	struct pci_dev *pci_dev;
+
+	/* Modern only fields */
+	/* The IO mapping for the PCI config space (non-legacy mode) */
+	struct virtio_pci_common_cfg __iomem *common;
+	/* Device-specific data (non-legacy mode)  */
+	void __iomem *device;
+	/* Base of vq notifications (non-legacy mode). */
+	void __iomem *notify_base;
+
+	/* So we can sanity-check accesses. */
+	size_t device_len;
+
+	/* Multiply queue_notify_off by this value. (non-legacy mode). */
+	u32 notify_offset_multiplier;
+};
+
+/* Convert a generic virtio device to our structure */
+static inline struct virtio_pci_device *to_vp_device(struct virtio_device *vdev)
+{
+	return container_of(vdev, struct virtio_pci_device, vdev);
+}
+
+int virtio_pci_modern_probe(struct virtio_pci_device *);
+
+#endif
diff --git a/drivers/virtio/virtio_pci_modern.c b/drivers/virtio/virtio_pci_modern.c
new file mode 100644
index 000000000000..180c14771aad
--- /dev/null
+++ b/drivers/virtio/virtio_pci_modern.c
@@ -0,0 +1,417 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright (C) 2018, Bin Meng <bmeng.cn@gmail.com>
+ *
+ * VirtIO PCI bus transport driver
+ * Ported from Linux drivers/virtio/virtio_pci*.c
+ */
+
+#include <common.h>
+#include <linux/virtio_types.h>
+#include <linux/virtio.h>
+#include <linux/virtio_ring.h>
+#include <linux/bug.h>
+#include <linux/err.h>
+#include <linux/pci.h>
+#include <io.h>
+#include "virtio_pci_common.h"
+
+#define VIRTIO_PCI_DRV_NAME	"virtio-pci.m"
+
+static int virtio_pci_get_config(struct virtio_device *vdev, unsigned int offset,
+				 void *buf, unsigned int len)
+{
+	struct virtio_pci_device *vp_dev = to_vp_device(vdev);
+	u8 b;
+	__le16 w;
+	__le32 l;
+
+	BUG_ON(offset + len > vp_dev->device_len);
+
+	switch (len) {
+	case 1:
+		b = ioread8(vp_dev->device + offset);
+		memcpy(buf, &b, sizeof(b));
+		break;
+	case 2:
+		w = cpu_to_le16(ioread16(vp_dev->device + offset));
+		memcpy(buf, &w, sizeof(w));
+		break;
+	case 4:
+		l = cpu_to_le32(ioread32(vp_dev->device + offset));
+		memcpy(buf, &l, sizeof(l));
+		break;
+	case 8:
+		l = cpu_to_le32(ioread32(vp_dev->device + offset));
+		memcpy(buf, &l, sizeof(l));
+		l = cpu_to_le32(ioread32(vp_dev->device + offset + sizeof(l)));
+		memcpy(buf + sizeof(l), &l, sizeof(l));
+		break;
+	default:
+		WARN_ON(true);
+	}
+
+	return 0;
+}
+
+static int virtio_pci_set_config(struct virtio_device *vdev, unsigned int offset,
+				 const void *buf, unsigned int len)
+{
+	struct virtio_pci_device *vp_dev = to_vp_device(vdev);
+	u8 b;
+	__le16 w;
+	__le32 l;
+
+	WARN_ON(offset + len > vp_dev->device_len);
+
+	switch (len) {
+	case 1:
+		memcpy(&b, buf, sizeof(b));
+		iowrite8(b, vp_dev->device + offset);
+		break;
+	case 2:
+		memcpy(&w, buf, sizeof(w));
+		iowrite16(le16_to_cpu(w), vp_dev->device + offset);
+		break;
+	case 4:
+		memcpy(&l, buf, sizeof(l));
+		iowrite32(le32_to_cpu(l), vp_dev->device + offset);
+		break;
+	case 8:
+		memcpy(&l, buf, sizeof(l));
+		iowrite32(le32_to_cpu(l), vp_dev->device + offset);
+		memcpy(&l, buf + sizeof(l), sizeof(l));
+		iowrite32(le32_to_cpu(l), vp_dev->device + offset + sizeof(l));
+		break;
+	default:
+		WARN_ON(true);
+	}
+
+	return 0;
+}
+
+static u32 virtio_pci_generation(struct virtio_device *vdev)
+{
+	struct virtio_pci_device *vp_dev = to_vp_device(vdev);
+
+	return ioread8(&vp_dev->common->config_generation);
+}
+
+static int virtio_pci_get_status(struct virtio_device *vdev)
+{
+	struct virtio_pci_device *vp_dev = to_vp_device(vdev);
+
+	return ioread8(&vp_dev->common->device_status);
+}
+
+static int virtio_pci_set_status(struct virtio_device *vdev, u8 status)
+{
+	struct virtio_pci_device *vp_dev = to_vp_device(vdev);
+
+	/* We should never be setting status to 0 */
+	WARN_ON(status == 0);
+
+	iowrite8(status, &vp_dev->common->device_status);
+
+	return 0;
+}
+
+static int virtio_pci_reset(struct virtio_device *vdev)
+{
+	struct virtio_pci_device *vp_dev = to_vp_device(vdev);
+
+	/* 0 status means a reset */
+	iowrite8(0, &vp_dev->common->device_status);
+
+	/*
+	 * After writing 0 to device_status, the driver MUST wait for a read
+	 * of device_status to return 0 before reinitializing the device.
+	 * This will flush out the status write, and flush in device writes,
+	 * including MSI-X interrupts, if any.
+	 */
+	while (ioread8(&vp_dev->common->device_status))
+		udelay(1000);
+
+	return 0;
+}
+
+static u64 virtio_pci_get_features(struct virtio_device *vdev)
+{
+	struct virtio_pci_device *vp_dev = to_vp_device(vdev);
+	u64 features;
+
+	iowrite32(0, &vp_dev->common->device_feature_select);
+	features = ioread32(&vp_dev->common->device_feature);
+	iowrite32(1, &vp_dev->common->device_feature_select);
+	features |= ((u64)ioread32(&vp_dev->common->device_feature) << 32);
+
+	return features;
+}
+
+static int virtio_pci_set_features(struct virtio_device *vdev)
+{
+	struct virtio_pci_device *vp_dev = to_vp_device(vdev);
+
+	if (!__virtio_test_bit(vdev, VIRTIO_F_VERSION_1)) {
+		dev_dbg(&vdev->dev, "device uses modern interface but does not have VIRTIO_F_VERSION_1\n");
+		return -EINVAL;
+	}
+
+	iowrite32(0, &vp_dev->common->guest_feature_select);
+	iowrite32((u32)vdev->features, &vp_dev->common->guest_feature);
+	iowrite32(1, &vp_dev->common->guest_feature_select);
+	iowrite32(vdev->features >> 32, &vp_dev->common->guest_feature);
+
+	return 0;
+}
+
+static struct virtqueue *virtio_pci_setup_vq(struct virtio_device *vdev,
+					     unsigned int index)
+{
+	struct virtio_pci_device *vp_dev = to_vp_device(vdev);
+	struct virtio_pci_common_cfg __iomem *cfg = vp_dev->common;
+	struct virtqueue *vq;
+	u16 num;
+	u64 addr;
+	int err;
+
+	if (index >= ioread16(&cfg->num_queues))
+		return ERR_PTR(-ENOENT);
+
+	/* Select the queue we're interested in */
+	iowrite16(index, &cfg->queue_select);
+
+	/* Check if queue is either not available or already active */
+	num = ioread16(&cfg->queue_size);
+	if (!num || ioread16(&cfg->queue_enable))
+		return ERR_PTR(-ENOENT);
+
+	if (num & (num - 1)) {
+		dev_warn(&vdev->dev, "bad queue size %u", num);
+		return ERR_PTR(-EINVAL);
+	}
+
+	/* Create the vring */
+	vq = vring_create_virtqueue(index, num, VIRTIO_PCI_VRING_ALIGN, vdev);
+	if (!vq) {
+		err = -ENOMEM;
+		goto error_available;
+	}
+
+	/* Activate the queue */
+	iowrite16(virtqueue_get_vring_size(vq), &cfg->queue_size);
+
+	addr = virtqueue_get_desc_addr(vq);
+	iowrite32((u32)addr, &cfg->queue_desc_lo);
+	iowrite32(addr >> 32, &cfg->queue_desc_hi);
+
+	addr = virtqueue_get_avail_addr(vq);
+	iowrite32((u32)addr, &cfg->queue_avail_lo);
+	iowrite32(addr >> 32, &cfg->queue_avail_hi);
+
+	addr = virtqueue_get_used_addr(vq);
+	iowrite32((u32)addr, &cfg->queue_used_lo);
+	iowrite32(addr >> 32, &cfg->queue_used_hi);
+
+	iowrite16(1, &cfg->queue_enable);
+
+	return vq;
+
+error_available:
+	return ERR_PTR(err);
+}
+
+static void virtio_pci_del_vq(struct virtqueue *vq)
+{
+	struct virtio_pci_device *vp_dev = to_vp_device(vq->vdev);
+	unsigned int index = vq->index;
+
+	iowrite16(index, &vp_dev->common->queue_select);
+
+	/* Select and deactivate the queue */
+	iowrite16(0, &vp_dev->common->queue_enable);
+
+	vring_del_virtqueue(vq);
+}
+
+static int virtio_pci_del_vqs(struct virtio_device *vdev)
+{
+	struct virtqueue *vq, *n;
+
+	list_for_each_entry_safe(vq, n, &vdev->vqs, list)
+		virtio_pci_del_vq(vq);
+
+	return 0;
+}
+
+static int virtio_pci_find_vqs(struct virtio_device *vdev, unsigned int nvqs,
+			       struct virtqueue *vqs[])
+{
+	int i;
+
+	for (i = 0; i < nvqs; ++i) {
+		vqs[i] = virtio_pci_setup_vq(vdev, i);
+		if (IS_ERR(vqs[i])) {
+			virtio_pci_del_vqs(vdev);
+			return PTR_ERR(vqs[i]);
+		}
+	}
+
+	return 0;
+}
+
+static int virtio_pci_notify(struct virtio_device *vdev, struct virtqueue *vq)
+{
+	struct virtio_pci_device *vp_dev = to_vp_device(vdev);
+	u16 off;
+
+	/* Select the queue we're interested in */
+	iowrite16(vq->index, &vp_dev->common->queue_select);
+
+	/* get offset of notification word for this vq */
+	off = ioread16(&vp_dev->common->queue_notify_off);
+
+	/*
+	 * We write the queue's selector into the notification register
+	 * to signal the other end
+	 */
+	iowrite16(vq->index,
+		  vp_dev->notify_base + off * vp_dev->notify_offset_multiplier);
+
+	return 0;
+}
+
+/**
+ * virtio_pci_find_capability - walk capabilities to find device info
+ *
+ * @dev:	the PCI device
+ * @cfg_type:	the VIRTIO_PCI_CAP_* value we seek
+ *
+ * @return offset of the configuration structure
+ */
+static int virtio_pci_find_capability(struct pci_dev *dev, u8 cfg_type)
+{
+	int pos;
+	int offset;
+	u8 type, bar;
+
+	for (pos = pci_find_capability(dev, PCI_CAP_ID_VNDR);
+	     pos > 0;
+	     pos = pci_find_next_capability(dev, pos, PCI_CAP_ID_VNDR)) {
+		offset = pos + offsetof(struct virtio_pci_cap, cfg_type);
+		pci_read_config_byte(dev, offset, &type);
+		offset = pos + offsetof(struct virtio_pci_cap, bar);
+		pci_read_config_byte(dev, offset, &bar);
+
+		/* Ignore structures with reserved BAR values */
+		if (bar > 0x5)
+			continue;
+
+		if (type == cfg_type)
+			return pos;
+	}
+
+	return 0;
+}
+
+/**
+ * virtio_pci_map_capability - map base address of the capability
+ *
+ * @dev:	the PCI device
+ * @off:	offset of the configuration structure
+ *
+ * @return base address of the capability
+ */
+static void __iomem *virtio_pci_map_capability(struct pci_dev *dev, int off)
+{
+	u32 offset;
+	u8 bar;
+
+	if (!off)
+		return NULL;
+
+	offset = off + offsetof(struct virtio_pci_cap, bar);
+	pci_read_config_byte(dev, offset, &bar);
+	offset = off + offsetof(struct virtio_pci_cap, offset);
+	pci_read_config_dword(dev, offset, &offset);
+
+	/*
+	 * TODO: adding 64-bit BAR support
+	 *
+	 * Per spec, the BAR is permitted to be either 32-bit or 64-bit.
+	 * For simplicity, only read the BAR address as 32-bit.
+	 */
+
+        return pci_iomap(dev, bar) + offset;
+}
+
+static const struct virtio_config_ops virtio_pci_config_ops = {
+	.get_config	= virtio_pci_get_config,
+	.set_config	= virtio_pci_set_config,
+	.generation	= virtio_pci_generation,
+	.get_status	= virtio_pci_get_status,
+	.set_status	= virtio_pci_set_status,
+	.reset		= virtio_pci_reset,
+	.get_features	= virtio_pci_get_features,
+	.finalize_features	= virtio_pci_set_features,
+	.find_vqs	= virtio_pci_find_vqs,
+	.del_vqs	= virtio_pci_del_vqs,
+	.notify		= virtio_pci_notify,
+};
+
+int virtio_pci_modern_probe(struct virtio_pci_device *vp_dev)
+{
+	struct pci_dev *pci_dev = vp_dev->pci_dev;
+	struct device_d *dev = &pci_dev->dev;
+	int common, notify, device;
+	int offset;
+
+	/*
+	 * We only own devices >= 0x1000 and <= 0x107f. We don't support
+	 * transitional devices, so start at 0x1040 and leave the rest.
+	 */
+	if (pci_dev->device < 0x1040 || pci_dev->device > 0x107f)
+		return -ENODEV;
+
+	/* Modern devices: simply use PCI device id, but start from 0x1040. */
+	vp_dev->vdev.id.device = pci_dev->device - 0x1040;
+	vp_dev->vdev.id.vendor = pci_dev->subsystem_vendor;
+
+	/* Check for a common config: if not, driver could fall back to legacy mode (bar 0) */
+	common = virtio_pci_find_capability(pci_dev, VIRTIO_PCI_CAP_COMMON_CFG);
+	if (!common)
+		return -ENODEV;
+
+	/* If common is there, notify should be too */
+	notify = virtio_pci_find_capability(pci_dev, VIRTIO_PCI_CAP_NOTIFY_CFG);
+	if (!notify) {
+		dev_warn(dev, "missing capabilities %i/%i\n", common, notify);
+		return -EINVAL;
+	}
+
+	/*
+	 * Device capability is only mandatory for devices that have
+	 * device-specific configuration.
+	 */
+	device = virtio_pci_find_capability(pci_dev, VIRTIO_PCI_CAP_DEVICE_CFG);
+	if (device) {
+		offset = notify + offsetof(struct virtio_pci_cap, length);
+		pci_read_config_dword(pci_dev, offset, &vp_dev->device_len);
+	}
+
+	/* Map configuration structures */
+	vp_dev->common = virtio_pci_map_capability(pci_dev, common);
+	vp_dev->notify_base = virtio_pci_map_capability(pci_dev, notify);
+	vp_dev->device = virtio_pci_map_capability(pci_dev, device);
+	dev_dbg(dev, "common @ %p, notify base @ %p, device @ %p\n",
+		vp_dev->common, vp_dev->notify_base, vp_dev->device);
+
+	/* Read notify_off_multiplier from config space */
+	offset = notify + offsetof(struct virtio_pci_notify_cap,
+				   notify_off_multiplier);
+	pci_read_config_dword(pci_dev, offset, &vp_dev->notify_offset_multiplier);
+
+	vp_dev->vdev.config = &virtio_pci_config_ops;
+
+	return 0;
+}
diff --git a/include/uapi/linux/virtio_pci.h b/include/uapi/linux/virtio_pci.h
new file mode 100644
index 000000000000..3a86f36d7e3d
--- /dev/null
+++ b/include/uapi/linux/virtio_pci.h
@@ -0,0 +1,208 @@
+/*
+ * Virtio PCI driver
+ *
+ * This module allows virtio devices to be used over a virtual PCI device.
+ * This can be used with QEMU based VMMs like KVM or Xen.
+ *
+ * Copyright IBM Corp. 2007
+ *
+ * Authors:
+ *  Anthony Liguori  <aliguori@us.ibm.com>
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
+#ifndef _LINUX_VIRTIO_PCI_H
+#define _LINUX_VIRTIO_PCI_H
+
+#include <linux/types.h>
+
+#ifndef VIRTIO_PCI_NO_LEGACY
+
+/* A 32-bit r/o bitmask of the features supported by the host */
+#define VIRTIO_PCI_HOST_FEATURES	0
+
+/* A 32-bit r/w bitmask of features activated by the guest */
+#define VIRTIO_PCI_GUEST_FEATURES	4
+
+/* A 32-bit r/w PFN for the currently selected queue */
+#define VIRTIO_PCI_QUEUE_PFN		8
+
+/* A 16-bit r/o queue size for the currently selected queue */
+#define VIRTIO_PCI_QUEUE_NUM		12
+
+/* A 16-bit r/w queue selector */
+#define VIRTIO_PCI_QUEUE_SEL		14
+
+/* A 16-bit r/w queue notifier */
+#define VIRTIO_PCI_QUEUE_NOTIFY		16
+
+/* An 8-bit device status register.  */
+#define VIRTIO_PCI_STATUS		18
+
+/* An 8-bit r/o interrupt status register.  Reading the value will return the
+ * current contents of the ISR and will also clear it.  This is effectively
+ * a read-and-acknowledge. */
+#define VIRTIO_PCI_ISR			19
+
+/* MSI-X registers: only enabled if MSI-X is enabled. */
+/* A 16-bit vector for configuration changes. */
+#define VIRTIO_MSI_CONFIG_VECTOR        20
+/* A 16-bit vector for selected queue notifications. */
+#define VIRTIO_MSI_QUEUE_VECTOR         22
+
+/* The remaining space is defined by each driver as the per-driver
+ * configuration space */
+#define VIRTIO_PCI_CONFIG_OFF(msix_enabled)	((msix_enabled) ? 24 : 20)
+/* Deprecated: please use VIRTIO_PCI_CONFIG_OFF instead */
+#define VIRTIO_PCI_CONFIG(dev)	VIRTIO_PCI_CONFIG_OFF((dev)->msix_enabled)
+
+/* Virtio ABI version, this must match exactly */
+#define VIRTIO_PCI_ABI_VERSION		0
+
+/* How many bits to shift physical queue address written to QUEUE_PFN.
+ * 12 is historical, and due to x86 page size. */
+#define VIRTIO_PCI_QUEUE_ADDR_SHIFT	12
+
+/* The alignment to use between consumer and producer parts of vring.
+ * x86 pagesize again. */
+#define VIRTIO_PCI_VRING_ALIGN		4096
+
+#endif /* VIRTIO_PCI_NO_LEGACY */
+
+/* The bit of the ISR which indicates a device configuration change. */
+#define VIRTIO_PCI_ISR_CONFIG		0x2
+/* Vector value used to disable MSI for queue */
+#define VIRTIO_MSI_NO_VECTOR            0xffff
+
+#ifndef VIRTIO_PCI_NO_MODERN
+
+/* IDs for different capabilities.  Must all exist. */
+
+/* Common configuration */
+#define VIRTIO_PCI_CAP_COMMON_CFG	1
+/* Notifications */
+#define VIRTIO_PCI_CAP_NOTIFY_CFG	2
+/* ISR access */
+#define VIRTIO_PCI_CAP_ISR_CFG		3
+/* Device specific configuration */
+#define VIRTIO_PCI_CAP_DEVICE_CFG	4
+/* PCI configuration access */
+#define VIRTIO_PCI_CAP_PCI_CFG		5
+/* Additional shared memory capability */
+#define VIRTIO_PCI_CAP_SHARED_MEMORY_CFG 8
+
+/* This is the PCI capability header: */
+struct virtio_pci_cap {
+	__u8 cap_vndr;		/* Generic PCI field: PCI_CAP_ID_VNDR */
+	__u8 cap_next;		/* Generic PCI field: next ptr. */
+	__u8 cap_len;		/* Generic PCI field: capability length */
+	__u8 cfg_type;		/* Identifies the structure. */
+	__u8 bar;		/* Where to find it. */
+	__u8 id;		/* Multiple capabilities of the same type */
+	__u8 padding[2];	/* Pad to full dword. */
+	__le32 offset;		/* Offset within bar. */
+	__le32 length;		/* Length of the structure, in bytes. */
+};
+
+struct virtio_pci_cap64 {
+	struct virtio_pci_cap cap;
+	__le32 offset_hi;             /* Most sig 32 bits of offset */
+	__le32 length_hi;             /* Most sig 32 bits of length */
+};
+
+struct virtio_pci_notify_cap {
+	struct virtio_pci_cap cap;
+	__le32 notify_off_multiplier;	/* Multiplier for queue_notify_off. */
+};
+
+/* Fields in VIRTIO_PCI_CAP_COMMON_CFG: */
+struct virtio_pci_common_cfg {
+	/* About the whole device. */
+	__le32 device_feature_select;	/* read-write */
+	__le32 device_feature;		/* read-only */
+	__le32 guest_feature_select;	/* read-write */
+	__le32 guest_feature;		/* read-write */
+	__le16 msix_config;		/* read-write */
+	__le16 num_queues;		/* read-only */
+	__u8 device_status;		/* read-write */
+	__u8 config_generation;		/* read-only */
+
+	/* About a specific virtqueue. */
+	__le16 queue_select;		/* read-write */
+	__le16 queue_size;		/* read-write, power of 2. */
+	__le16 queue_msix_vector;	/* read-write */
+	__le16 queue_enable;		/* read-write */
+	__le16 queue_notify_off;	/* read-only */
+	__le32 queue_desc_lo;		/* read-write */
+	__le32 queue_desc_hi;		/* read-write */
+	__le32 queue_avail_lo;		/* read-write */
+	__le32 queue_avail_hi;		/* read-write */
+	__le32 queue_used_lo;		/* read-write */
+	__le32 queue_used_hi;		/* read-write */
+};
+
+/* Fields in VIRTIO_PCI_CAP_PCI_CFG: */
+struct virtio_pci_cfg_cap {
+	struct virtio_pci_cap cap;
+	__u8 pci_cfg_data[4]; /* Data for BAR access. */
+};
+
+/* Macro versions of offsets for the Old Timers! */
+#define VIRTIO_PCI_CAP_VNDR		0
+#define VIRTIO_PCI_CAP_NEXT		1
+#define VIRTIO_PCI_CAP_LEN		2
+#define VIRTIO_PCI_CAP_CFG_TYPE		3
+#define VIRTIO_PCI_CAP_BAR		4
+#define VIRTIO_PCI_CAP_OFFSET		8
+#define VIRTIO_PCI_CAP_LENGTH		12
+
+#define VIRTIO_PCI_NOTIFY_CAP_MULT	16
+
+#define VIRTIO_PCI_COMMON_DFSELECT	0
+#define VIRTIO_PCI_COMMON_DF		4
+#define VIRTIO_PCI_COMMON_GFSELECT	8
+#define VIRTIO_PCI_COMMON_GF		12
+#define VIRTIO_PCI_COMMON_MSIX		16
+#define VIRTIO_PCI_COMMON_NUMQ		18
+#define VIRTIO_PCI_COMMON_STATUS	20
+#define VIRTIO_PCI_COMMON_CFGGENERATION	21
+#define VIRTIO_PCI_COMMON_Q_SELECT	22
+#define VIRTIO_PCI_COMMON_Q_SIZE	24
+#define VIRTIO_PCI_COMMON_Q_MSIX	26
+#define VIRTIO_PCI_COMMON_Q_ENABLE	28
+#define VIRTIO_PCI_COMMON_Q_NOFF	30
+#define VIRTIO_PCI_COMMON_Q_DESCLO	32
+#define VIRTIO_PCI_COMMON_Q_DESCHI	36
+#define VIRTIO_PCI_COMMON_Q_AVAILLO	40
+#define VIRTIO_PCI_COMMON_Q_AVAILHI	44
+#define VIRTIO_PCI_COMMON_Q_USEDLO	48
+#define VIRTIO_PCI_COMMON_Q_USEDHI	52
+
+#endif /* VIRTIO_PCI_NO_MODERN */
+
+#endif
-- 
2.30.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


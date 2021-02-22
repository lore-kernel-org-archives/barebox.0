Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lE5IQ-0005Kd-2m
 for barebox@lists.infradead.org; Mon, 22 Feb 2021 07:06:19 +0000
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon, 22 Feb 2021 08:06:00 +0100
Message-Id: <20210222070605.589180-5-ahmad@a3f.at>
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
Subject: [PATCH 4/8] hw_random: add VirtIO RNG driver
To: barebox@lists.infradead.org
Cc: rcz@pengutronix.de

With this driver enabled, -device virtio-rng-device can now be passed
to Qemu for barebox to detect a VirtIO RNG device. If barebox is passed
as argument to the Qemu -kernel option, no device tree changes are
necessary.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 drivers/hw_random/Kconfig      |   7 ++
 drivers/hw_random/Makefile     |   1 +
 drivers/hw_random/virtio-rng.c | 120 +++++++++++++++++++++++++++++++++
 3 files changed, 128 insertions(+)
 create mode 100644 drivers/hw_random/virtio-rng.c

diff --git a/drivers/hw_random/Kconfig b/drivers/hw_random/Kconfig
index 1923c755dbba..a84c03efef90 100644
--- a/drivers/hw_random/Kconfig
+++ b/drivers/hw_random/Kconfig
@@ -29,4 +29,11 @@ config HWRNG_DEV_RANDOM
 	  This driver allows use of the host provided /dev/urandom
 	  as barebox HWRNGs.
 
+config HW_RANDOM_VIRTIO
+	tristate "VirtIO Random Number Generator support"
+	depends on VIRTIO
+	help
+	  This driver provides guest-side support for the virtual Random Number
+	  Generator hardware.
+
 endif
diff --git a/drivers/hw_random/Makefile b/drivers/hw_random/Makefile
index 2e318be738c5..4bab3967fc4d 100644
--- a/drivers/hw_random/Makefile
+++ b/drivers/hw_random/Makefile
@@ -2,3 +2,4 @@ obj-$(CONFIG_HWRNG)		+= core.o
 obj-$(CONFIG_HWRNG_MXC_RNGC) += mxc-rngc.o
 obj-$(CONFIG_HWRNG_STM32) += stm32-rng.o
 obj-$(CONFIG_HWRNG_DEV_RANDOM) += dev-random.o
+obj-$(CONFIG_HW_RANDOM_VIRTIO) += virtio-rng.o
diff --git a/drivers/hw_random/virtio-rng.c b/drivers/hw_random/virtio-rng.c
new file mode 100644
index 000000000000..fbf1a5715a33
--- /dev/null
+++ b/drivers/hw_random/virtio-rng.c
@@ -0,0 +1,120 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Randomness driver for virtio
+ *  Copyright (C) 2007, 2008 Rusty Russell IBM Corporation
+ */
+
+#include <common.h>
+#include <linux/err.h>
+#include <linux/hw_random.h>
+#include <linux/spinlock.h>
+#include <linux/virtio.h>
+#include <linux/virtio_rng.h>
+#include <linux/virtio_ring.h>
+#include <module.h>
+#include <linux/slab.h>
+
+#define BUFFER_SIZE		16UL
+
+struct virtrng_info {
+	struct hwrng hwrng;
+	char name[25];
+	struct virtqueue *rng_vq;
+	bool hwrng_register_done;
+};
+
+static inline struct virtrng_info *to_virtrng_info(struct hwrng *hwrng)
+{
+	return container_of(hwrng, struct virtrng_info, hwrng);
+}
+
+static int virtio_rng_read(struct hwrng *hwrng, void *data, size_t len, bool wait)
+{
+	int ret;
+	unsigned int rsize;
+	unsigned char buf[BUFFER_SIZE] __aligned(4);
+	unsigned char *ptr = data;
+	struct virtio_sg sg;
+	struct virtio_sg *sgs[1];
+	struct virtrng_info *vi = to_virtrng_info(hwrng);
+	size_t remaining = len;
+
+	while (remaining) {
+		sg.addr = buf;
+		sg.length = min(remaining, sizeof(buf));
+		sgs[0] = &sg;
+
+		ret = virtqueue_add(vi->rng_vq, sgs, 0, 1);
+		if (ret)
+			return ret;
+
+		virtqueue_kick(vi->rng_vq);
+
+		while (!virtqueue_get_buf(vi->rng_vq, &rsize))
+			;
+
+		memcpy(ptr, buf, rsize);
+		remaining -= rsize;
+		ptr += rsize;
+	}
+
+	return len;
+}
+
+static int probe_common(struct virtio_device *vdev)
+{
+	struct virtrng_info *vi;
+
+	vi = xzalloc(sizeof(*vi));
+
+	vi->hwrng.name = vdev->dev.name;
+	vi->hwrng.read = virtio_rng_read;
+
+	vdev->priv = vi;
+
+	/* We expect a single virtqueue. */
+	return virtio_find_vqs(vdev, 1, &vi->rng_vq);
+}
+
+static void remove_common(struct virtio_device *vdev)
+{
+	vdev->config->reset(vdev);
+	vdev->config->del_vqs(vdev);
+}
+
+static int virtrng_probe(struct virtio_device *vdev)
+{
+	return probe_common(vdev);
+}
+
+static void virtrng_remove(struct virtio_device *vdev)
+{
+	remove_common(vdev);
+}
+
+static void virtrng_scan(struct virtio_device *vdev)
+{
+	struct virtrng_info *vi = vdev->priv;
+	int err;
+
+	err = hwrng_register(&vdev->dev, &vi->hwrng);
+	if (!err)
+		vi->hwrng_register_done = true;
+}
+
+static const struct virtio_device_id id_table[] = {
+	{ VIRTIO_ID_RNG, VIRTIO_DEV_ANY_ID },
+	{ 0 },
+};
+
+static struct virtio_driver virtio_rng_driver = {
+	.driver.name =	"virtio-rng",
+	.id_table =	id_table,
+	.probe =	virtrng_probe,
+	.remove =	virtrng_remove,
+	.scan =		virtrng_scan,
+};
+
+module_virtio_driver(virtio_rng_driver);
+MODULE_DESCRIPTION("Virtio random number driver");
+MODULE_LICENSE("GPL");
-- 
2.30.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

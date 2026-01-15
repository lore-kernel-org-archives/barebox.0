Delivery-date: Thu, 15 Jan 2026 13:08:27 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgM9L-001aHX-2r
	for lore@lore.pengutronix.de;
	Thu, 15 Jan 2026 13:08:27 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgM9K-0002be-G4
	for lore@pengutronix.de; Thu, 15 Jan 2026 13:08:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XELL1Qm+QMR5g19NpyMq/AqNHmpftE4MNJbKX7elfTU=; b=BcNtGUIoQhYth4Uk2uO7RgPLWS
	ewwvwuLNPFapspnN2M9CzzBhk3V370FTReoiKQG8OlIfjfXIGVMJpr96bLvRCl9I0Dp8uc2lS0XH0
	10Y/DGxqrgfmJP2oItQapdjSHjCwfak6dOzPU6sUn7YPGW4uRIgURWuWxXmQB126TS3jau0z06MCG
	8Q0XOhoCpxpQUQrKv824DfoQO4dpi1/jZ4MMSYj0UGswrEf6qKGNJqK2b0FWYimMpBM14tch1lGlz
	KWAXwDuU0CC6R13EOtPQKcPcg1Eo9sjE+Tu/KZO8UDWKmR0sQEnyYPsOR2xDZnqP5nuTxPMq+JYxu
	s7apTH9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgM8q-0000000CIYC-3oys;
	Thu, 15 Jan 2026 12:07:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgM8m-0000000CITp-2lC2
	for barebox@lists.infradead.org;
	Thu, 15 Jan 2026 12:07:54 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vgM8l-0002HG-1O; Thu, 15 Jan 2026 13:07:51 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Thu, 15 Jan 2026 13:06:12 +0100
Message-ID: <20260115120748.3433463-5-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260115120748.3433463-1-a.fatoum@barebox.org>
References: <20260115120748.3433463-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260115_040752_858211_E7285365 
X-CRM114-Status: GOOD (  21.74  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 4/6] common: boards: qemu: process some standard fw_cfg keys
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

While we have FW_CFG support as file system, there is a number of keys
that precede the keys in the file system, which can be useful in some
scenarios.

Add support for QEMU -uuid, -kernel, -initrd, -append options as well as
a /boot/qemu_fw_cfg script that continues booting according to the latter
three options.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 common/boards/Kconfig                         |   8 +
 common/boards/Makefile                        |   1 +
 common/boards/qemu/Makefile                   |   4 +
 .../defaultenv-qemu_fw_cfg/boot/qemu_fw_cfg   |  12 +
 common/boards/qemu/fw_cfg.c                   | 208 ++++++++++++++++++
 drivers/firmware/Kconfig                      |   1 +
 6 files changed, 234 insertions(+)
 create mode 100644 common/boards/qemu/Makefile
 create mode 100755 common/boards/qemu/defaultenv-qemu_fw_cfg/boot/qemu_fw_cfg
 create mode 100644 common/boards/qemu/fw_cfg.c

diff --git a/common/boards/Kconfig b/common/boards/Kconfig
index 74947316954b..a9e1b75a7641 100644
--- a/common/boards/Kconfig
+++ b/common/boards/Kconfig
@@ -1,5 +1,13 @@
 # SPDX-License-Identifier: GPL-2.0-only
 
+config BOARD_QEMU
+	bool "Extra support for QEMU-emulated boards" if COMPILE_TEST
+
+config BOARD_QEMU_VIRT
+	bool
+	select OF_OVERLAY
+	select BOARD_QEMU
+
 config BOARD_QEMU_VIRT
 	bool
 	select OF_OVERLAY
diff --git a/common/boards/Makefile b/common/boards/Makefile
index 058733522411..86d07e04a2ad 100644
--- a/common/boards/Makefile
+++ b/common/boards/Makefile
@@ -1,5 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0-only
 
+obj-$(CONFIG_BOARD_QEMU)	+= qemu/
 obj-$(CONFIG_BOARD_QEMU_VIRT)	+= qemu-virt/
 obj-$(CONFIG_BOARD_PHYTEC_SOM_DETECTION) += phytec/
 obj-$(CONFIG_BOARD_TQ) += tq/
diff --git a/common/boards/qemu/Makefile b/common/boards/qemu/Makefile
new file mode 100644
index 000000000000..2ea91d194bfc
--- /dev/null
+++ b/common/boards/qemu/Makefile
@@ -0,0 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
+obj-$(CONFIG_QEMU_FW_CFG) += fw_cfg.o
+bbenv-$(CONFIG_QEMU_FW_CFG) += defaultenv-qemu_fw_cfg
diff --git a/common/boards/qemu/defaultenv-qemu_fw_cfg/boot/qemu_fw_cfg b/common/boards/qemu/defaultenv-qemu_fw_cfg/boot/qemu_fw_cfg
new file mode 100755
index 000000000000..a3c12df67ff5
--- /dev/null
+++ b/common/boards/qemu/defaultenv-qemu_fw_cfg/boot/qemu_fw_cfg
@@ -0,0 +1,12 @@
+#!/bin/sh
+
+global.bootm.image=/dev/fw_cfg.kernel
+
+if [ -s /dev/fw_cfg.initrd ]; then
+        global.bootm.initrd=/dev/fw_cfg.initrd
+fi
+
+if [ -s /dev/fw_cfg.cmdline ]; then
+        readf /dev/fw_cfg.initrd qemu_fw_cfg_cmdline
+        global linux.bootargs.dyn.qemu="${qemu_fw_cfg_cmdline}"
+fi
diff --git a/common/boards/qemu/fw_cfg.c b/common/boards/qemu/fw_cfg.c
new file mode 100644
index 000000000000..d0900b2ab7c3
--- /dev/null
+++ b/common/boards/qemu/fw_cfg.c
@@ -0,0 +1,208 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/* Common QEMU fw_cfg board code */
+
+#include <fs.h>
+#include <init.h>
+#include <driver.h>
+#include <xfuncs.h>
+#include <envfs.h>
+#include <machine_id.h>
+#include <barebox-info.h>
+#include <linux/uuid.h>
+#include <linux/qemu_fw_cfg.h>
+
+struct fw_cfg_cdev {
+	struct cdev cdev;
+	u16 size_selector;
+	u16 data_selector;
+	void *cache;
+	size_t cached_size;	/* How many bytes from start are cached */
+};
+
+static struct fw_cfg_cdev *to_fw_cfg_cdev(struct cdev *cdev)
+{
+	return container_of(cdev, struct fw_cfg_cdev, cdev);
+}
+
+static int qemu_fw_cfg_read(int fd, u16 selector, void *buf, size_t size)
+{
+	ssize_t ret;
+
+	ret = ioctl(fd, FW_CFG_SELECT, &selector);
+	if (ret || !buf)
+		return ret;
+
+	ret = pread(fd, buf, size, 0);
+	return ret < 0 ? ret : 0;
+}
+
+static ssize_t fw_cfg_cdev_read(struct cdev *cdev, void *buf, size_t count,
+				loff_t offset, ulong flags)
+{
+	struct fw_cfg_cdev *fcc = to_fw_cfg_cdev(cdev);
+	size_t end_pos = offset + count;
+	size_t to_read, to_copy;
+	int ret;
+
+	/* Bounds check */
+	if (offset >= cdev->size)
+		return 0;
+
+	if (end_pos > cdev->size)
+		end_pos = cdev->size;
+
+	count = end_pos - offset;
+
+	/* Allocate cache on first read */
+	if (!fcc->cache) {
+		fcc->cache = malloc(cdev->size);
+		if (!fcc->cache)
+			return -ENOMEM;
+		fcc->cached_size = 0;
+	}
+
+	/* Extend cache if needed */
+	if (end_pos > fcc->cached_size) {
+		int fd;
+
+		to_read = end_pos - fcc->cached_size;
+
+		fd = open("/dev/fw_cfg", O_RDWR);
+		if (fd < 0)
+			return fd;
+
+		ret = qemu_fw_cfg_read(fd, fcc->data_selector,
+				       fcc->cache + fcc->cached_size, to_read);
+
+		close(fd);
+
+		if (ret)
+			return ret;
+
+		fcc->cached_size = end_pos;
+	}
+
+	/* Copy from cache to user buffer */
+	to_copy = count;
+
+	if (buf)
+		memcpy(buf, fcc->cache + offset, to_copy);
+
+	return to_copy;
+}
+
+static int fw_cfg_cdev_mmap(struct cdev *cdev, void **map, int flags)
+{
+	struct fw_cfg_cdev *fcc = to_fw_cfg_cdev(cdev);
+	ssize_t ret;
+
+	if (flags & PROT_WRITE)
+		return -EACCES;
+
+	ret = fw_cfg_cdev_read(cdev, NULL, ~0, 0, 0);
+	if (ret == 0)
+		ret = -EINVAL;
+	if (ret < 0)
+		return ret;
+
+	*map = fcc->cache;
+
+	return PTR_ERR_OR_ZERO(*map);
+}
+
+static int fw_cfg_cdev_flush(struct cdev *cdev)
+{
+	struct fw_cfg_cdev *fcc = to_fw_cfg_cdev(cdev);
+
+	if (fcc->cache) {
+		free(fcc->cache);
+		fcc->cache = NULL;
+		fcc->cached_size = 0;
+	}
+
+	return 0;
+}
+
+static struct cdev_operations fw_cfg_cdev_ops = {
+	.read = fw_cfg_cdev_read,
+	.flush = fw_cfg_cdev_flush,
+	.memmap = fw_cfg_cdev_mmap,
+};
+
+static int fw_cfg_register_cdev(int fd, const char *name,
+				u16 size_selector, u16 data_selector)
+{
+	struct fw_cfg_cdev *fcc;
+	u32 size;
+	int ret;
+
+	/* Read size upfront */
+	ret = qemu_fw_cfg_read(fd, size_selector, &size, sizeof(size));
+	if (!ret && !size)
+		ret = -ENOENT;
+	if (ret < 0)
+		return ret;
+
+	fcc = xzalloc(sizeof(*fcc));
+	fcc->size_selector = size_selector;
+	fcc->data_selector = data_selector;
+	fcc->cache = xzalloc(size);
+	fcc->cached_size = size;
+
+	ret = qemu_fw_cfg_read(fd, data_selector,
+			       fcc->cache, fcc->cached_size);
+	if (ret)
+		return ret;
+
+	fcc->cdev.name = xstrdup(name);
+	fcc->cdev.size = size;
+	fcc->cdev.ops = &fw_cfg_cdev_ops;
+
+	ret = devfs_create(&fcc->cdev);
+	if (ret < 0) {
+		free(fcc->cdev.name);
+		free(fcc);
+		return ret;
+	}
+
+	return 0;
+}
+
+static int qemu_fw_cfg_boot_init(void)
+{
+	struct {
+		const char prefix[16];
+		uuid_t uuid;
+	} machine_hashable = { "qemubareboxuuid"};
+	__always_unused size_t size;
+	int fd, ret;
+
+	fd = open("/dev/fw_cfg", O_RDWR);
+	if (fd < 0)
+		return 0;
+
+	/* Specified by -uuid. Zero by default */
+	ret = qemu_fw_cfg_read(fd, FW_CFG_UUID, &machine_hashable.uuid,
+			       sizeof(machine_hashable.uuid));
+	if (!ret) {
+		barebox_set_product_uuid(&machine_hashable.uuid);
+		if (!machine_id_get_hashable(&size))
+			machine_id_set_hashable(&machine_hashable, sizeof(machine_hashable));
+	}
+
+	/* Register fw_cfg cdevs */
+	fw_cfg_register_cdev(fd, "fw_cfg.kernel", FW_CFG_KERNEL_SIZE, FW_CFG_KERNEL_DATA);
+	fw_cfg_register_cdev(fd, "fw_cfg.initrd", FW_CFG_INITRD_SIZE, FW_CFG_INITRD_DATA);
+	fw_cfg_register_cdev(fd, "fw_cfg.cmdline", FW_CFG_CMDLINE_SIZE, FW_CFG_CMDLINE_DATA);
+
+	defaultenv_append_directory(defaultenv_qemu_fw_cfg);
+
+	/* Reset cdev to beginning */
+	ret = qemu_fw_cfg_read(fd, FW_CFG_SIGNATURE, NULL, 0);
+	if (ret)
+		return ret;
+
+	close(fd);
+	return 0;
+}
+crypto_initcall(qemu_fw_cfg_boot_init);
diff --git a/drivers/firmware/Kconfig b/drivers/firmware/Kconfig
index 649b80ac289c..d7bf1d78937a 100644
--- a/drivers/firmware/Kconfig
+++ b/drivers/firmware/Kconfig
@@ -45,6 +45,7 @@ config FIRMWARE_ZYNQ7000_FPGA
 
 config QEMU_FW_CFG
 	bool "QEMU FW CFG interface"
+	select BOARD_QEMU
 	help
 	  This driver exposes the QEMU FW CFG conduit as a single
 	  character device.
-- 
2.47.3




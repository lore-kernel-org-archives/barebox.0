Delivery-date: Thu, 05 Jun 2025 13:39:12 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uN8wC-003zqf-0k
	for lore@lore.pengutronix.de;
	Thu, 05 Jun 2025 13:39:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uN8wA-0002dO-Gz
	for lore@pengutronix.de; Thu, 05 Jun 2025 13:39:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=By/92BiYTm0ATaxlAn+ndWtdwNp/p6VXIqUkOvSTkuQ=; b=QAyqlRWBx9e/qZpGlAd0nRDFa1
	1ANFWMTPP4vPqSOpgzudZkNEEEP9edL5AuTVfvnf48UUo8fa0altVTd+TI0rwiAnCigzT/iuOPwMu
	Mv1RpAp78cuqf1ky6pswELoNosWT8XfvKmUywkr5cvm+se6+NLRr22CG+AWTzcYe6seWVqHmdgLJ7
	nmOgILjTYx8Hyar535Z/Jrsozj+39B6Wc/fH0fI6YF5OAzyEJSFTIoNF9xwiW8O6dmHQ+Z9zOkKgh
	L+zVsEkz93+cvzD1c0H0tO5cw/ubtHVxwg4GPpcHffGocFwDVWDOKuou1qqJMbwQPfyX9kA94uMEY
	q2dqsv1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN8vc-0000000FOZf-2KL3;
	Thu, 05 Jun 2025 11:38:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN8vT-0000000FOOY-3Lf9
	for barebox@lists.infradead.org;
	Thu, 05 Jun 2025 11:38:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uN8vS-0001jL-Jb; Thu, 05 Jun 2025 13:38:26 +0200
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uN8vS-001x0r-1J;
	Thu, 05 Jun 2025 13:38:26 +0200
Received: from localhost ([::1] helo=dude06.red.stw.pengutronix.de)
	by dude06.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uN8sg-008mT4-0L;
	Thu, 05 Jun 2025 13:35:33 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  5 Jun 2025 13:35:24 +0200
Message-Id: <20250605113530.2076990-16-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250605113530.2076990-1-a.fatoum@pengutronix.de>
References: <20250605113530.2076990-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_043827_998964_855E405B 
X-CRM114-Status: GOOD (  18.83  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 15/21] block: add lightweight ramdisk support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The partitions code in barebox expects a block device to operate on and
not raw memory buffers. Add an abstraction that wraps a raw memory
buffer as block device in a very lightweight manner as not to impede
fuzzing speed.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/block/Kconfig   |   6 ++
 drivers/block/Makefile  |   1 +
 drivers/block/ramdisk.c | 178 ++++++++++++++++++++++++++++++++++++++++
 include/ramdisk.h       |  24 ++++++
 4 files changed, 209 insertions(+)
 create mode 100644 drivers/block/ramdisk.c
 create mode 100644 include/ramdisk.h

diff --git a/drivers/block/Kconfig b/drivers/block/Kconfig
index bf8dfdbd5c12..5b1b7789171c 100644
--- a/drivers/block/Kconfig
+++ b/drivers/block/Kconfig
@@ -26,3 +26,9 @@ config EFI_BLK_SEPARATE_USBDISK
 	  for your disk and checking against it with
 
 	    devlookup -v $bootguid /dev/disk$bootsource_instance guid
+
+config RAMDISK_BLK
+        bool
+        help
+	  This symbol is selected by testing code that requires lightweight
+	  creation of anonymous block devices backed fully by memory buffers.
diff --git a/drivers/block/Makefile b/drivers/block/Makefile
index a4e14a559cf7..6066b35c313e 100644
--- a/drivers/block/Makefile
+++ b/drivers/block/Makefile
@@ -1,3 +1,4 @@
 # SPDX-License-Identifier: GPL-2.0-only
 obj-$(CONFIG_EFI_BLK) += efi-block-io.o
 obj-$(CONFIG_VIRTIO_BLK) += virtio_blk.o
+obj-$(CONFIG_RAMDISK_BLK) += ramdisk.o
diff --git a/drivers/block/ramdisk.c b/drivers/block/ramdisk.c
new file mode 100644
index 000000000000..6f3c9348058a
--- /dev/null
+++ b/drivers/block/ramdisk.c
@@ -0,0 +1,178 @@
+// SPDX-License-Identifier: GPL-2.0-only
+// lightweight anonymous block device wrapper around memory buffers
+
+#include <ramdisk.h>
+#include <block.h>
+#include <driver.h>
+#include <fs.h>
+#include <string.h>
+#include <xfuncs.h>
+#include <linux/align.h>
+#include <linux/log2.h>
+
+struct ramdisk {
+	struct block_device blk;
+	struct device dev;
+	union {
+		void *base_rw;
+		const void *base_ro;
+	};
+	size_t size;
+	bool ro;
+};
+
+static int ramdisk_check_read(const struct ramdisk *ramdisk)
+{
+	return ramdisk->base_ro ? 1 : 0;
+}
+
+static ssize_t ramdisk_read(struct cdev *cdev, void *buf, size_t count,
+			    loff_t offset, unsigned long flags)
+{
+	struct ramdisk *ramdisk = cdev->priv;
+	size_t cpy_count, pad_count;
+	int ret;
+
+	ret = ramdisk_check_read(ramdisk);
+	if (ret < 1)
+		return ret;
+
+	if (size_add(offset, count) > ramdisk->size)
+		return -ENXIO;
+
+	cpy_count = min_t(size_t, count, ramdisk->size - offset);
+	buf = mempcpy(buf, ramdisk->base_ro + offset, cpy_count);
+
+	pad_count = min_t(size_t, count, cdev->size - offset) - cpy_count;
+
+	memset(buf, 0x00, pad_count);
+
+	pr_vdebug("read %zu bytes\n", cpy_count + pad_count);
+
+	return cpy_count + pad_count;
+}
+
+static int ramdisk_check_write(const struct ramdisk *ramdisk)
+{
+	if (!ramdisk->base_rw)
+		return -EPERM;
+	if (ramdisk->ro)
+		return -EACCES;
+	return 1;
+}
+
+static ssize_t ramdisk_write(struct cdev *cdev, const void *buf, size_t count,
+		  loff_t offset, unsigned long flags)
+{
+	struct ramdisk *ramdisk = cdev->priv;
+	int ret;
+
+	ret = ramdisk_check_write(ramdisk);
+	if (ret < 1)
+		return ret;
+	if (size_add(offset, count) > ramdisk->size)
+		return -ENXIO;
+
+	memcpy(ramdisk->base_rw + offset, buf,
+	       min_t(size_t, count, ramdisk->size - offset));
+
+	return count;
+}
+
+static int ramdisk_memmap(struct cdev *cdev, void **map, int flags)
+{
+	struct ramdisk *ramdisk = cdev->priv;
+	int ret;
+
+	ret = flags & PROT_WRITE ? ramdisk_check_write(ramdisk)
+			         : ramdisk_check_read(ramdisk);
+	if (ret < 1)
+		return ret;
+
+	*map = ramdisk->base_rw;
+	return 0;
+}
+
+static struct cdev_operations ramdisk_ops = {
+	.read  = ramdisk_read,
+	.write = ramdisk_write,
+	.memmap = ramdisk_memmap,
+};
+
+struct ramdisk *ramdisk_init(int sector_size)
+{
+	struct ramdisk *ramdisk;
+	struct block_device *blk;
+	int ret;
+
+	ramdisk = xzalloc(sizeof(*ramdisk));
+
+	dev_set_name(&ramdisk->dev, "ramdisk");
+	ramdisk->dev.id = DEVICE_ID_DYNAMIC;
+
+	ret = register_device(&ramdisk->dev);
+	if (ret)
+		return NULL;
+
+	blk = &ramdisk->blk;
+	blk->dev = &ramdisk->dev;
+	blk->type = BLK_TYPE_VIRTUAL;
+
+	blk->cdev.size = 0;
+	blk->cdev.name = xstrdup(dev_name(&ramdisk->dev));
+	blk->cdev.dev = blk->dev;
+	blk->cdev.ops = &ramdisk_ops;
+	blk->cdev.priv = ramdisk;
+	blk->cdev.flags |= DEVFS_IS_BLOCK_DEV;
+	blk->blockbits = ilog2(sector_size);
+
+	ret = devfs_create(&blk->cdev);
+	if (ret)
+		return NULL;
+
+	INIT_LIST_HEAD(&blk->buffered_blocks);
+	INIT_LIST_HEAD(&blk->idle_blocks);
+
+	return ramdisk;
+}
+
+struct block_device *ramdisk_get_block_device(struct ramdisk *ramdisk)
+{
+	return &ramdisk->blk;
+}
+
+void ramdisk_free(struct ramdisk *ramdisk)
+{
+	devfs_remove(&ramdisk->blk.cdev);
+	unregister_device(&ramdisk->dev);
+	free(ramdisk);
+}
+
+static void ramdisk_setup_size(struct ramdisk *ramdisk, size_t size)
+{
+	ramdisk->size = size;
+	ramdisk->blk.cdev.size = ALIGN(size, 1 << ramdisk->blk.blockbits);
+}
+
+void ramdisk_setup_ro(struct ramdisk *ramdisk, const void *data, size_t size)
+{
+	ramdisk->ro = true;
+	ramdisk->base_ro = data;
+	ramdisk_setup_size(ramdisk, size);
+}
+
+const void *ramdisk_mmap(struct ramdisk *ramdisk, loff_t offset,
+			 size_t size)
+{
+	if (size_add(offset, size) > ramdisk->size)
+		return NULL;
+
+	return ramdisk->base_ro + offset;
+}
+
+void ramdisk_setup_rw(struct ramdisk *ramdisk, void *data, size_t size)
+{
+	ramdisk->ro = false;
+	ramdisk->base_rw = data;
+	ramdisk_setup_size(ramdisk, size);
+}
diff --git a/include/ramdisk.h b/include/ramdisk.h
new file mode 100644
index 000000000000..b256a9c12ca7
--- /dev/null
+++ b/include/ramdisk.h
@@ -0,0 +1,24 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#ifndef __RAMDISK_H_
+#define __RAMDISK_H_
+
+#include <linux/types.h>
+
+struct ramdisk;
+struct block_device;
+
+struct ramdisk *ramdisk_init(int sector_size);
+void ramdisk_free(struct ramdisk *ramdisk);
+
+struct block_device *ramdisk_get_block_device(struct ramdisk *ramdisk);
+
+void ramdisk_setup_ro(struct ramdisk *ramdisk, const void *data, size_t size);
+void ramdisk_setup_rw(struct ramdisk *ramdisk, void *data, size_t size);
+
+const void *ramdisk_mmap(struct ramdisk *ramdisk, loff_t offset, size_t size);
+static inline void ramdisk_munmap(struct ramdisk *ramdisk,
+				  void *ptr, loff_t offset,
+				  size_t size) {}
+
+#endif
-- 
2.39.5




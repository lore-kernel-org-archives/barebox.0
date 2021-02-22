Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lE5IR-0005LK-ET
 for barebox@lists.infradead.org; Mon, 22 Feb 2021 07:06:24 +0000
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon, 22 Feb 2021 08:06:02 +0100
Message-Id: <20210222070605.589180-7-ahmad@a3f.at>
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
Subject: [PATCH 6/8] block: add VirtIO block device driver
To: barebox@lists.infradead.org
Cc: rcz@pengutronix.de

With this driver enabled, -device virtio-blk-device can now be passed
to Qemu for barebox to detect a VirtIO block device mapping a host
file or block device.

If barebox is passed as argument to the Qemu -kernel option, no device
tree changes are necessary.

Example:

  $ qemu-system-arm -m 256M -M virt -nographic                  \
  	-kernel build/images/barebox-dt-2nd.img                 \
  	-device virtio-rng-device                               \
  	-drive if=none,file=/tmp/first.hdimg,format=raw,id=hd0  \
  	-device virtio-blk-device,drive=hd0                     \
  	-drive if=none,file=/tmp/second.hdimg,format=raw,id=hd1 \
  	-device virtio-blk-device,drive=hd1

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 drivers/ata/Kconfig             |   2 +
 drivers/block/Kconfig           |   6 +
 drivers/block/Makefile          |   1 +
 drivers/block/virtio_blk.c      | 133 +++++++++++++++++++++
 include/uapi/linux/virtio_blk.h | 203 ++++++++++++++++++++++++++++++++
 5 files changed, 345 insertions(+)
 create mode 100644 drivers/block/Kconfig
 create mode 100644 drivers/block/virtio_blk.c
 create mode 100644 include/uapi/linux/virtio_blk.h

diff --git a/drivers/ata/Kconfig b/drivers/ata/Kconfig
index 040c5fd237fd..c0f0a3dbe3f3 100644
--- a/drivers/ata/Kconfig
+++ b/drivers/ata/Kconfig
@@ -16,6 +16,8 @@ config DISK_WRITE
 	select BLOCK_WRITE
 	bool "support writing to disk drives"
 
+source "drivers/block/Kconfig"
+
 comment "drive types"
 
 config DISK_BIOS
diff --git a/drivers/block/Kconfig b/drivers/block/Kconfig
new file mode 100644
index 000000000000..b42571eca5c6
--- /dev/null
+++ b/drivers/block/Kconfig
@@ -0,0 +1,6 @@
+config VIRTIO_BLK
+        bool "Virtio block driver"
+        depends on VIRTIO
+        help
+          This is the virtual block driver for virtio.  It can be used with
+          QEMU based VMMs (like KVM or Xen).
diff --git a/drivers/block/Makefile b/drivers/block/Makefile
index 8812c0faecb1..23d634f00676 100644
--- a/drivers/block/Makefile
+++ b/drivers/block/Makefile
@@ -1 +1,2 @@
 obj-$(CONFIG_EFI_BOOTUP) += efi-block-io.o
+obj-$(CONFIG_VIRTIO_BLK) += virtio_blk.o
diff --git a/drivers/block/virtio_blk.c b/drivers/block/virtio_blk.c
new file mode 100644
index 000000000000..b7a83cf686c1
--- /dev/null
+++ b/drivers/block/virtio_blk.c
@@ -0,0 +1,133 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright (C) 2018, Tuomas Tynkkynen <tuomas.tynkkynen@iki.fi>
+ * Copyright (C) 2018, Bin Meng <bmeng.cn@gmail.com>
+ */
+
+#include <common.h>
+#include <driver.h>
+#include <block.h>
+#include <disks.h>
+#include <linux/virtio_types.h>
+#include <linux/virtio.h>
+#include <linux/virtio_ring.h>
+#include <uapi/linux/virtio_blk.h>
+
+struct virtio_blk_priv {
+	struct virtqueue *vq;
+	struct virtio_device *vdev;
+	struct block_device blk;
+};
+
+static int virtio_blk_do_req(struct virtio_blk_priv *priv, void *buffer,
+			     sector_t sector, blkcnt_t blkcnt, u32 type)
+{
+	unsigned int num_out = 0, num_in = 0;
+	struct virtio_sg *sgs[3];
+	u8 status;
+	int ret;
+
+	struct virtio_blk_outhdr out_hdr = {
+		.type = cpu_to_virtio32(priv->vdev, type),
+		.sector = cpu_to_virtio64(priv->vdev, sector),
+	};
+	struct virtio_sg hdr_sg = { &out_hdr, sizeof(out_hdr) };
+	struct virtio_sg data_sg = { buffer, blkcnt * 512 };
+	struct virtio_sg status_sg = { &status, sizeof(status) };
+
+	sgs[num_out++] = &hdr_sg;
+
+	switch(type) {
+	case VIRTIO_BLK_T_OUT:
+		sgs[num_out++] = &data_sg;
+		break;
+	case VIRTIO_BLK_T_IN:
+		sgs[num_out + num_in++] = &data_sg;
+		break;
+	}
+
+	sgs[num_out + num_in++] = &status_sg;
+
+	ret = virtqueue_add(priv->vq, sgs, num_out, num_in);
+	if (ret)
+		return ret;
+
+	virtqueue_kick(priv->vq);
+
+	while (!virtqueue_get_buf(priv->vq, NULL))
+		;
+
+	return status == VIRTIO_BLK_S_OK ? 0 : -EIO;
+}
+
+static int virtio_blk_read(struct block_device *blk, void *buffer,
+			   sector_t start, blkcnt_t blkcnt)
+{
+	struct virtio_blk_priv *priv = container_of(blk, struct virtio_blk_priv, blk);
+	return virtio_blk_do_req(priv, buffer, start, blkcnt,
+				 VIRTIO_BLK_T_IN);
+}
+
+static int virtio_blk_write(struct block_device *blk, const void *buffer,
+			    sector_t start, blkcnt_t blkcnt)
+{
+	struct virtio_blk_priv *priv = container_of(blk, struct virtio_blk_priv, blk);
+	return virtio_blk_do_req(priv, (void *)buffer, start, blkcnt,
+				 VIRTIO_BLK_T_OUT);
+}
+
+static struct block_device_ops virtio_blk_ops = {
+	.read	= virtio_blk_read,
+	.write	= virtio_blk_write,
+};
+
+static int virtio_blk_probe(struct virtio_device *vdev)
+{
+	struct virtio_blk_priv *priv;
+	u64 cap;
+	int devnum;
+	int ret;
+
+	priv = xzalloc(sizeof(*priv));
+
+	ret = virtio_find_vqs(vdev, 1, &priv->vq);
+	if (ret)
+		return ret;
+
+	priv->vdev = vdev;
+
+	devnum = cdev_find_free_index("virtioblk");
+	priv->blk.cdev.name = xasprintf("virtioblk%d", devnum);
+	priv->blk.dev = &vdev->dev;
+	priv->blk.blockbits = SECTOR_SHIFT;
+	virtio_cread(vdev, struct virtio_blk_config, capacity, &cap);
+	priv->blk.num_blocks = cap;
+	priv->blk.ops = &virtio_blk_ops;
+
+	ret = blockdevice_register(&priv->blk);
+	if (ret)
+		return ret;
+
+	parse_partition_table(&priv->blk);
+
+	return 0;
+}
+
+static void virtio_blk_remove(struct virtio_device *vdev)
+{
+	vdev->config->reset(vdev);
+	vdev->config->del_vqs(vdev);
+}
+
+static const struct virtio_device_id id_table[] = {
+        { VIRTIO_ID_BLOCK, VIRTIO_DEV_ANY_ID },
+        { 0 },
+};
+
+static struct virtio_driver virtio_blk = {
+        .driver.name	= "virtio_blk",
+        .id_table	= id_table,
+        .probe		= virtio_blk_probe,
+	.remove		= virtio_blk_remove,
+};
+device_virtio_driver(virtio_blk);
diff --git a/include/uapi/linux/virtio_blk.h b/include/uapi/linux/virtio_blk.h
new file mode 100644
index 000000000000..d888f013d9ff
--- /dev/null
+++ b/include/uapi/linux/virtio_blk.h
@@ -0,0 +1,203 @@
+#ifndef _LINUX_VIRTIO_BLK_H
+#define _LINUX_VIRTIO_BLK_H
+/* This header is BSD licensed so anyone can use the definitions to implement
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
+#include <linux/types.h>
+#include <linux/virtio_ids.h>
+#include <linux/virtio_config.h>
+#include <linux/virtio_types.h>
+
+/* Feature bits */
+#define VIRTIO_BLK_F_SIZE_MAX	1	/* Indicates maximum segment size */
+#define VIRTIO_BLK_F_SEG_MAX	2	/* Indicates maximum # of segments */
+#define VIRTIO_BLK_F_GEOMETRY	4	/* Legacy geometry available  */
+#define VIRTIO_BLK_F_RO		5	/* Disk is read-only */
+#define VIRTIO_BLK_F_BLK_SIZE	6	/* Block size of disk is available*/
+#define VIRTIO_BLK_F_TOPOLOGY	10	/* Topology information is available */
+#define VIRTIO_BLK_F_MQ		12	/* support more than one vq */
+#define VIRTIO_BLK_F_DISCARD	13	/* DISCARD is supported */
+#define VIRTIO_BLK_F_WRITE_ZEROES	14	/* WRITE ZEROES is supported */
+
+/* Legacy feature bits */
+#ifndef VIRTIO_BLK_NO_LEGACY
+#define VIRTIO_BLK_F_BARRIER	0	/* Does host support barriers? */
+#define VIRTIO_BLK_F_SCSI	7	/* Supports scsi command passthru */
+#define VIRTIO_BLK_F_FLUSH	9	/* Flush command supported */
+#define VIRTIO_BLK_F_CONFIG_WCE	11	/* Writeback mode available in config */
+#ifndef __KERNEL__
+/* Old (deprecated) name for VIRTIO_BLK_F_FLUSH. */
+#define VIRTIO_BLK_F_WCE VIRTIO_BLK_F_FLUSH
+#endif
+#endif /* !VIRTIO_BLK_NO_LEGACY */
+
+#define VIRTIO_BLK_ID_BYTES	20	/* ID string length */
+
+struct virtio_blk_config {
+	/* The capacity (in 512-byte sectors). */
+	__virtio64 capacity;
+	/* The maximum segment size (if VIRTIO_BLK_F_SIZE_MAX) */
+	__virtio32 size_max;
+	/* The maximum number of segments (if VIRTIO_BLK_F_SEG_MAX) */
+	__virtio32 seg_max;
+	/* geometry of the device (if VIRTIO_BLK_F_GEOMETRY) */
+	struct virtio_blk_geometry {
+		__virtio16 cylinders;
+		__u8 heads;
+		__u8 sectors;
+	} geometry;
+
+	/* block size of device (if VIRTIO_BLK_F_BLK_SIZE) */
+	__virtio32 blk_size;
+
+	/* the next 4 entries are guarded by VIRTIO_BLK_F_TOPOLOGY  */
+	/* exponent for physical block per logical block. */
+	__u8 physical_block_exp;
+	/* alignment offset in logical blocks. */
+	__u8 alignment_offset;
+	/* minimum I/O size without performance penalty in logical blocks. */
+	__virtio16 min_io_size;
+	/* optimal sustained I/O size in logical blocks. */
+	__virtio32 opt_io_size;
+
+	/* writeback mode (if VIRTIO_BLK_F_CONFIG_WCE) */
+	__u8 wce;
+	__u8 unused;
+
+	/* number of vqs, only available when VIRTIO_BLK_F_MQ is set */
+	__virtio16 num_queues;
+
+	/* the next 3 entries are guarded by VIRTIO_BLK_F_DISCARD */
+	/*
+	 * The maximum discard sectors (in 512-byte sectors) for
+	 * one segment.
+	 */
+	__virtio32 max_discard_sectors;
+	/*
+	 * The maximum number of discard segments in a
+	 * discard command.
+	 */
+	__virtio32 max_discard_seg;
+	/* Discard commands must be aligned to this number of sectors. */
+	__virtio32 discard_sector_alignment;
+
+	/* the next 3 entries are guarded by VIRTIO_BLK_F_WRITE_ZEROES */
+	/*
+	 * The maximum number of write zeroes sectors (in 512-byte sectors) in
+	 * one segment.
+	 */
+	__virtio32 max_write_zeroes_sectors;
+	/*
+	 * The maximum number of segments in a write zeroes
+	 * command.
+	 */
+	__virtio32 max_write_zeroes_seg;
+	/*
+	 * Set if a VIRTIO_BLK_T_WRITE_ZEROES request may result in the
+	 * deallocation of one or more of the sectors.
+	 */
+	__u8 write_zeroes_may_unmap;
+
+	__u8 unused1[3];
+} __attribute__((packed));
+
+/*
+ * Command types
+ *
+ * Usage is a bit tricky as some bits are used as flags and some are not.
+ *
+ * Rules:
+ *   VIRTIO_BLK_T_OUT may be combined with VIRTIO_BLK_T_SCSI_CMD or
+ *   VIRTIO_BLK_T_BARRIER.  VIRTIO_BLK_T_FLUSH is a command of its own
+ *   and may not be combined with any of the other flags.
+ */
+
+/* These two define direction. */
+#define VIRTIO_BLK_T_IN		0
+#define VIRTIO_BLK_T_OUT	1
+
+#ifndef VIRTIO_BLK_NO_LEGACY
+/* This bit says it's a scsi command, not an actual read or write. */
+#define VIRTIO_BLK_T_SCSI_CMD	2
+#endif /* VIRTIO_BLK_NO_LEGACY */
+
+/* Cache flush command */
+#define VIRTIO_BLK_T_FLUSH	4
+
+/* Get device ID command */
+#define VIRTIO_BLK_T_GET_ID    8
+
+/* Discard command */
+#define VIRTIO_BLK_T_DISCARD	11
+
+/* Write zeroes command */
+#define VIRTIO_BLK_T_WRITE_ZEROES	13
+
+#ifndef VIRTIO_BLK_NO_LEGACY
+/* Barrier before this op. */
+#define VIRTIO_BLK_T_BARRIER	0x80000000
+#endif /* !VIRTIO_BLK_NO_LEGACY */
+
+/*
+ * This comes first in the read scatter-gather list.
+ * For legacy virtio, if VIRTIO_F_ANY_LAYOUT is not negotiated,
+ * this is the first element of the read scatter-gather list.
+ */
+struct virtio_blk_outhdr {
+	/* VIRTIO_BLK_T* */
+	__virtio32 type;
+	/* io priority. */
+	__virtio32 ioprio;
+	/* Sector (ie. 512 byte offset) */
+	__virtio64 sector;
+};
+
+/* Unmap this range (only valid for write zeroes command) */
+#define VIRTIO_BLK_WRITE_ZEROES_FLAG_UNMAP	0x00000001
+
+/* Discard/write zeroes range for each request. */
+struct virtio_blk_discard_write_zeroes {
+	/* discard/write zeroes start sector */
+	__le64 sector;
+	/* number of discard/write zeroes sectors */
+	__le32 num_sectors;
+	/* flags for this range */
+	__le32 flags;
+};
+
+#ifndef VIRTIO_BLK_NO_LEGACY
+struct virtio_scsi_inhdr {
+	__virtio32 errors;
+	__virtio32 data_len;
+	__virtio32 sense_len;
+	__virtio32 residual;
+};
+#endif /* !VIRTIO_BLK_NO_LEGACY */
+
+/* And this is the final byte of the write scatter-gather list. */
+#define VIRTIO_BLK_S_OK		0
+#define VIRTIO_BLK_S_IOERR	1
+#define VIRTIO_BLK_S_UNSUPP	2
+#endif /* _LINUX_VIRTIO_BLK_H */
-- 
2.30.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

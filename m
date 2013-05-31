Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UiMj9-0005wl-Uh
 for barebox@lists.infradead.org; Fri, 31 May 2013 10:38:34 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 31 May 2013 12:38:06 +0200
Message-Id: <1369996686-15900-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1369996686-15900-1-git-send-email-s.hauer@pengutronix.de>
References: <1369996686-15900-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/4] partition: DOS: Add parameter for the NT disk Signature
To: barebox@lists.infradead.org

The NT disk Signature is a unique 32-bit value in the MBR allowing
to identify a MSDOS partitioned disk. The signature can be used to
specify the Linux rootfs.
This patch adds support for the NT disk Signature in the form of a
device parameter which can both be read and written.
This is particularly useful when a board has multiple SD/MMC
devices and we want to boot from a particular one without depending
on the initialization order under Linux.

Given that the device is known under barebox as 'mmc1' and the
rootfs can be found on the second partition of that device the
Linux rootfs can then be specified with:

root=PARTUUID=${mmc1.nt_signature}-02

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/partitions/dos.c | 82 +++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 82 insertions(+)

diff --git a/common/partitions/dos.c b/common/partitions/dos.c
index 597f9ba..e7c98f5 100644
--- a/common/partitions/dos.c
+++ b/common/partitions/dos.c
@@ -16,6 +16,8 @@
 #include <disks.h>
 #include <init.h>
 #include <asm/unaligned.h>
+#include <dma.h>
+#include <linux/err.h>
 
 #include "parser.h"
 
@@ -40,6 +42,68 @@ static int disk_guess_size(struct device_d *dev, struct partition_entry *table)
 	return (int)size;
 }
 
+static void *read_mbr(struct block_device *blk)
+{
+	void *buf = dma_alloc(SECTOR_SIZE);
+	int ret;
+
+	ret = block_read(blk, buf, 0, 1);
+	if (ret) {
+		free(buf);
+		return NULL;
+	}
+
+	return buf;
+}
+
+static int write_mbr(struct block_device *blk, void *buf)
+{
+	return block_write(blk, buf, 0, 1);
+}
+
+struct disk_signature_priv {
+	uint32_t signature;
+	struct block_device *blk;
+};
+
+static int dos_set_disk_signature(struct param_d *p, void *_priv)
+{
+	struct disk_signature_priv *priv = _priv;
+	struct block_device *blk = priv->blk;
+	void *buf;
+	__le32 *disksigp;
+	int ret;
+
+	buf = read_mbr(blk);
+	if (!buf)
+		return -EIO;
+
+	disksigp = buf + 0x1b8;
+
+	*disksigp = cpu_to_le32(priv->signature);
+
+	ret = write_mbr(blk, buf);
+
+	free(buf);
+
+	return ret;
+}
+
+static int dos_get_disk_signature(struct param_d *p, void *_priv)
+{
+	struct disk_signature_priv *priv = _priv;
+	struct block_device *blk = priv->blk;
+	void *buf;
+
+	buf = read_mbr(blk);
+	if (!buf)
+		return -EIO;
+
+	priv->signature = le32_to_cpup((__le32 *)(buf + 0x1b8));
+
+	return 0;
+}
+
 /**
  * Check if a DOS like partition describes this block device
  * @param blk Block device to register to
@@ -55,6 +119,7 @@ static void dos_partition(void *buf, struct block_device *blk,
 	struct partition pentry;
 	uint8_t *buffer = buf;
 	int i;
+	struct disk_signature_priv *dsp;
 
 	table = (struct partition_entry *)&buffer[446];
 
@@ -74,6 +139,23 @@ static void dos_partition(void *buf, struct block_device *blk,
 			dev_dbg(blk->dev, "Skipping empty partition %d\n", i);
 		}
 	}
+
+	dsp = xzalloc(sizeof(*dsp));
+	dsp->blk = blk;
+
+	/*
+	 * This parameter contains the NT disk signature. This allows to
+	 * to specify the Linux rootfs using the following syntax:
+	 *
+	 *   root=PARTUUID=ssssssss-pp
+	 *
+	 * where ssssssss is a zero-filled hex representation of the 32-bit
+	 * signature and pp is a zero-filled hex representation of the 1-based
+	 * partition number.
+	 */
+	dev_add_param_int(blk->dev, "nt_signature",
+			dos_set_disk_signature, dos_get_disk_signature,
+			&dsp->signature, "%08x", dsp);
 }
 
 static struct partition_parser dos = {
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bw7zK-00011c-FY
 for barebox@lists.infradead.org; Mon, 17 Oct 2016 13:30:00 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps (TLS1.2:RSA_AES_256_CBC_SHA1:256)
 (Exim 4.80) (envelope-from <mgr@pengutronix.de>) id 1bw7yx-00048p-Ab
 for barebox@lists.infradead.org; Mon, 17 Oct 2016 15:29:35 +0200
Received: from mgr by dude.hi.pengutronix.de with local (Exim 4.87)
 (envelope-from <mgr@pengutronix.de>) id 1bw7yx-0001Vl-2Y
 for barebox@lists.infradead.org; Mon, 17 Oct 2016 15:29:35 +0200
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Mon, 17 Oct 2016 15:29:22 +0200
Message-Id: <20161017132923.31834-4-m.grzeschik@pengutronix.de>
In-Reply-To: <20161017132923.31834-1-m.grzeschik@pengutronix.de>
References: <20161017132923.31834-1-m.grzeschik@pengutronix.de>
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
Subject: [PATCH 3/4] partitions/dos: add function to write partition table
To: barebox@lists.infradead.org

The function can be used to write an partition layout to the block device
based on its cdev layout. Only cdevs with flag DEVFS_PARTITION_IN_PT set
get written. The function also adds an static offset of 0x200000 to
ensure the mbr and bootloader will not be overwritten.

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
 common/partitions/dos.c | 71 +++++++++++++++++++++++++++++++++++++++++++++++++
 include/disks.h         |  1 +
 2 files changed, 72 insertions(+)

diff --git a/common/partitions/dos.c b/common/partitions/dos.c
index 5f08e25..d7fa538 100644
--- a/common/partitions/dos.c
+++ b/common/partitions/dos.c
@@ -256,6 +256,77 @@ static void dos_partition(void *buf, struct block_device *blk,
 			&dsp->signature, "%08x", dsp);
 }
 
+static inline void hdimage_setup_chs(unsigned int lba, unsigned char *chs)
+{
+	const unsigned int hpc = 255;
+	const unsigned int spt = 63;
+	unsigned int s, c;
+
+	chs[0] = (lba/spt)%hpc;
+	c = (lba/(spt * hpc));
+	s = (lba > 0) ?(lba%spt + 1) : 0;
+	chs[1] = ((c & 0x300) >> 2) | (s & 0xff);
+	chs[2] = (c & 0xff);
+}
+
+int write_dos_partition_table(struct block_device *blk, struct list_head *cdevs)
+{
+	char part_table[6+4*sizeof(struct partition_entry)+2];
+	struct cdev *cdev, *ct;
+	void *buf;
+	int ret;
+	int n = 0;
+	char *ptr;
+
+	/* prepare partition table entry */
+	ptr = part_table;
+	memset(ptr, 0, sizeof(part_table));
+
+	/* skip disk signature */
+	ptr += 6;
+	list_for_each_entry_safe(cdev, ct, cdevs, devices_list) {
+		if ((cdev->flags & DEVFS_IS_PARTITION) &&
+			(cdev->flags & DEVFS_PARTITION_IN_PT)) {
+			struct partition_entry *entry;
+			entry = (struct partition_entry *)
+				(ptr + n * sizeof(struct partition_entry));
+
+			/* add static offset to skip the mbr and bootloader */
+			cdev->offset += 4096 * SECTOR_SIZE;
+
+			entry->type = 0x83;
+			entry->partition_start = cdev->offset / SECTOR_SIZE;
+			entry->partition_size = cdev->size / SECTOR_SIZE;
+
+			hdimage_setup_chs(entry->partition_start,
+						entry->chs_begin);
+			hdimage_setup_chs(entry->partition_start +
+						entry->partition_size - 1,
+						entry->chs_end);
+			n++;
+		}
+		if (n == 4)
+			break;
+	}
+
+	ptr += 4 * sizeof(struct partition_entry);
+	ptr[0] = 0x55;
+	ptr[1] = 0xaa;
+
+	buf = read_mbr(blk);
+	if (!buf)
+		return -EIO;
+
+	/* manipulate block with prepared partition table */
+	memcpy(buf + 440, part_table, sizeof(part_table));
+
+	ret = write_mbr(blk, buf);
+
+	free(buf);
+
+	return ret;
+}
+
 static struct partition_parser dos = {
 	.parse = dos_partition,
 	.type = filetype_mbr,
diff --git a/include/disks.h b/include/disks.h
index 9932750..432fb23 100644
--- a/include/disks.h
+++ b/include/disks.h
@@ -37,5 +37,6 @@ struct partition_entry {
 } __attribute__ ((packed));
 
 extern int parse_partition_table(struct block_device*);
+extern int write_dos_partition_table(struct block_device *blk, struct list_head *cdevs);
 
 #endif /* DISKS_H */
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

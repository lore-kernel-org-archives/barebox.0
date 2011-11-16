Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RQbjc-0005nT-Er
 for barebox@lists.infradead.org; Wed, 16 Nov 2011 09:24:49 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1RQbjM-00034x-Mp
 for barebox@lists.infradead.org; Wed, 16 Nov 2011 10:24:32 +0100
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <jbe@pengutronix.de>) id 1RQbjM-0006Xy-Hu
 for barebox@lists.infradead.org; Wed, 16 Nov 2011 10:24:32 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Wed, 16 Nov 2011 10:24:22 +0100
Message-Id: <1321435467-19148-9-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1321435467-19148-1-git-send-email-jbe@pengutronix.de>
References: <1321435467-19148-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 08/13] DISK: Add common partition handling for disk like media
To: barebox@lists.infradead.org

This covers disk like media like SD card, CF cards, regular hard disks and also
USB mass storage devices. Most common used partition table is still of DOS type.
This implementation is prepared to support more partition types in the future.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 common/Kconfig      |   18 ++++
 common/Makefile     |    2 +
 common/partitions.c |  229 +++++++++++++++++++++++++++++++++++++++++++++++++++
 include/disks.h     |    2 +
 4 files changed, 251 insertions(+), 0 deletions(-)
 create mode 100644 common/partitions.c

diff --git a/common/Kconfig b/common/Kconfig
index 8e96920..1318e7d 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -406,6 +406,24 @@ config PARTITION
 	bool
 	prompt "Enable Partitions"
 
+if PARTITION
+
+config PARTITION_DISK
+	bool "DISK partition support"
+	help
+	  Add support for handling common partition tables on all kind of disk
+	  like devices (harddisks, CF cards, SD cards and so on)
+
+if PARTITION_DISK
+
+config PARTITION_DISK_DOS
+	bool "DOS partition support"
+	help
+	  Add support to handle partitions in DOS style.
+
+endif
+endif
+
 config DEFAULT_ENVIRONMENT
 	bool
 	default y
diff --git a/common/Makefile b/common/Makefile
index 7bb8ea4..3edf38f 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -7,6 +7,8 @@ obj-$(CONFIG_ENV_HANDLING)	+= environment.o
 obj-$(CONFIG_AUTO_COMPLETE)	+= complete.o
 obj-$(CONFIG_POLLER)		+= poller.o
 obj-$(CONFIG_BLOCK)		+= block.o
+obj-$(CONFIG_PARTITION_DISK)	+= partitions.o
+
 obj-$(CONFIG_CMD_LOADS)		+= s_record.o
 obj-$(CONFIG_OFTREE)		+= oftree.o
 
diff --git a/common/partitions.c b/common/partitions.c
new file mode 100644
index 0000000..f3e0f6f
--- /dev/null
+++ b/common/partitions.c
@@ -0,0 +1,229 @@
+/*
+ * Copyright (C) 2009...2011 Juergen Beisert, Pengutronix
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ *
+ */
+
+/**
+ * @file
+ * @brief Generic support for partition tables on disk like media
+ *
+ * @todo Support for disks larger than 4 GiB
+ * @todo Reliable size detection for BIOS based disks (on x86 only)
+ */
+#include <common.h>
+#include <malloc.h>
+#include <errno.h>
+#include <block.h>
+#include <asm/unaligned.h>
+#include <disks.h>
+
+struct partition {
+	uint64_t first_sec;
+	uint64_t size;
+};
+
+struct partition_desc {
+	int used_entries;
+	struct partition parts[8];
+};
+
+static struct partition_desc pdesc;
+
+static void add_one_partition_entry(struct partition *p)
+{
+	if (pdesc.used_entries >= 8)
+		return;	/* ignore */
+	pdesc.parts[pdesc.used_entries] = *p;
+	pdesc.used_entries++;
+}
+
+/**
+ * Reject values which cannot be used in Barebox
+ * @param val Value to be check
+ * @return 0 if value can be used in Barebox, -EINVAL if not
+ *
+ * @note this routine can be removes when Barebox uses file offsets larger
+ * than 32 bit
+ */
+static int check_offset_value(uint64_t val)
+{
+#if 1	/* until Barebox can handle 64 bit offsets */
+	if (val > 0x7fffff)
+		return -EINVAL;
+#endif
+	return 0;
+}
+
+/**
+ * Guess the size of the disk, based on the partition table entries
+ * @param dev device to create partitions for
+ * @param table partition table
+ * @return size in sectors
+ */
+static uint64_t disk_guess_size(struct device_d *dev, struct partition_entry *table)
+{
+	int part_order[4] = {0, 1, 2, 3};
+	uint64_t size = 0;
+	int i;
+
+	for (i = 0; i < 4; i++) {
+		if (table[part_order[i]].partition_start != 0) {
+			size += table[part_order[i]].partition_start - size;
+			size += table[part_order[i]].partition_size;
+		}
+	}
+	/* limit disk sector counts we can't handle due to 32 bit limits */
+	if (check_offset_value(size) > 0x7fffffff) {
+		dev_warn(dev, "Warning: Sector count limited due to 31 bit"
+				"contraints\n");
+		size = 0x7fffffff;
+	}
+
+	return size;
+}
+
+/**
+ * Read and check a DOS partition table
+ * @param blk Info about the whole disk
+ * @param sector_buf Buffer for at least one sector
+ * @return 0 on success
+ */
+static int read_dos_partition_table(struct block_device *blk, uint8_t *sector_buf)
+{
+	int rc;
+
+	/* read in the MBR to get the partition table */
+	rc = blk->ops->read(blk, sector_buf, 0, 1);
+	if (rc != 0) {
+		dev_err(blk->dev, "Cannot read MBR/partition table\n");
+		return -ENODEV;
+	}
+
+	if ((sector_buf[510] != 0x55) || (sector_buf[511] != 0xAA)) {
+		dev_info(blk->dev, "No partition table found\n");
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+/**
+ * Check if a DOS like partition describes this block device
+ * @param blk Block device to register to
+ * @return 0 on success, -EINVAL if no partition table was found
+ *
+ * It seems at least on ARM this routine canot use temp. stack space for the
+ * sector. So, keep the malloc/free.
+ */
+static int __maybe_unused try_dos_partition(struct block_device *blk)
+{
+	int part_order[4] = {0, 1, 2, 3};
+	uint8_t *buffer;
+	struct partition_entry *table;
+	struct partition pentry;
+	int i, rc;
+
+	buffer = xmalloc(SECTOR_SIZE);
+
+	rc = read_dos_partition_table(blk, (uint8_t*)buffer);
+	if (rc != 0)
+		goto on_error;
+
+	table = (struct partition_entry *)&buffer[446];
+
+	/* valid for x86 BIOS based disks only */
+	if (blk->num_blocks == 0)
+		disk_guess_size(blk->dev, table);
+
+	for (i = 0; i < 4; i++) {
+		pentry.first_sec =
+			get_unaligned(&table[part_order[i]].partition_start);
+		pentry.size =
+			get_unaligned(&table[part_order[i]].partition_size);
+
+		/* do we have to ignore this partition due to limitations? */
+		if (check_offset_value(pentry.first_sec) != 0)
+			continue;
+		if (check_offset_value(pentry.size) != 0)
+			continue;
+
+		if (pentry.first_sec != 0)
+			add_one_partition_entry(&pentry);
+		else {
+			dev_dbg(blk->dev, "Skipping empty partition %d\n", i);
+		}
+	}
+
+on_error:
+	free(buffer);
+	return rc;
+}
+
+/**
+ * Register one partition on the given block device
+ * @param blk Block device to register to
+ * @param part Partition description
+ * @param no Partition number
+ * @return 0 on success
+ */
+static int register_one_partition(struct block_device *blk,
+					struct partition *part, int no)
+{
+	char partition_name[19];
+
+	sprintf(partition_name, "%s.%d", blk->cdev.name, no);
+	dev_dbg(blk->dev, "Registering partition %s on drive %s\n",
+				partition_name, blk->cdev.name);
+	return devfs_add_partition(blk->cdev.name,
+				part->first_sec * SECTOR_SIZE,
+				part->size * SECTOR_SIZE,
+				DEVFS_PARTITION_FIXED, partition_name);
+}
+
+/**
+ * Try to collect partition information on the given block device
+ * @param blk Block device to examine
+ * @return 0 most of the time, negative value else
+ *
+ * It is not a failure if no partition information is found
+ */
+int parse_partition_table(struct block_device *blk)
+{
+	int i;
+	int rc = 0;
+
+#ifdef CONFIG_PARTITION_DISK_DOS
+	if (pdesc.used_entries == 0)
+		try_dos_partition(blk);
+#endif
+
+	if (pdesc.used_entries != 0) {
+		/* at least one partition description found */
+		for (i = 0; i < pdesc.used_entries; i++) {
+			rc = register_one_partition(blk, &pdesc.parts[i], i);
+			if (rc != 0)
+				dev_err(blk->dev,
+					"Failed to register partition %d on %s (%d)\n",
+					i, blk->cdev.name, rc);
+			if (rc != -ENODEV)
+				rc = 0;
+		}
+	}
+
+	return rc;
+}
diff --git a/include/disks.h b/include/disks.h
index ec136d4..9932750 100644
--- a/include/disks.h
+++ b/include/disks.h
@@ -36,4 +36,6 @@ struct partition_entry {
 	uint32_t partition_size; /*! Start of the partition in LBA notation */
 } __attribute__ ((packed));
 
+extern int parse_partition_table(struct block_device*);
+
 #endif /* DISKS_H */
-- 
1.7.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

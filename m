Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NUdrz-0007Gs-74
	for barebox@lists.infradead.org; Tue, 12 Jan 2010 10:21:06 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.69)
	(envelope-from <jbe@pengutronix.de>) id 1NUdrr-0006WE-P7
	for barebox@lists.infradead.org; Tue, 12 Jan 2010 11:20:55 +0100
Received: from jbe by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <jbe@pengutronix.de>) id 1NUdrr-000720-Lj
	for barebox@lists.infradead.org; Tue, 12 Jan 2010 11:20:55 +0100
Message-Id: <20100112102055.560775020@pengutronix.de>
References: <20100112101534.868276907@pengutronix.de>
Date: Tue, 12 Jan 2010 11:15:45 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Content-Disposition: inline; filename=add_ata_disk.diff
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
Subject: [PATCHv2 11/14] Add the main disk driver
To: barebox@lists.infradead.org

This is the generic disk driver. It does not know how to access the drives.
Other low level drivers are required for this.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>

---
 drivers/ata/Kconfig      |    5 
 drivers/ata/Makefile     |    2 
 drivers/ata/disk_drive.c |  346 +++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 353 insertions(+)

Index: barebox-2009.12.0/drivers/ata/Kconfig
===================================================================
--- barebox-2009.12.0.orig/drivers/ata/Kconfig
+++ barebox-2009.12.0/drivers/ata/Kconfig
@@ -7,6 +7,11 @@ if ATA
 
 comment "drive types"
 
+config ATA_DISK
+	bool "disk drives"
+	help
+	  Add support for regular disk drives
+
 comment "interface types"
 
 endif
Index: barebox-2009.12.0/drivers/ata/Makefile
===================================================================
--- barebox-2009.12.0.orig/drivers/ata/Makefile
+++ barebox-2009.12.0/drivers/ata/Makefile
@@ -1,3 +1,5 @@
 # drive types
 
+obj-$(CONFIG_ATA_DISK) += disk_drive.o
+
 # interface types
Index: barebox-2009.12.0/drivers/ata/disk_drive.c
===================================================================
--- /dev/null
+++ barebox-2009.12.0/drivers/ata/disk_drive.c
@@ -0,0 +1,346 @@
+/*
+ * Copyright (C) 2009 Juergen Beisert, Pengutronix
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
+ * @brief Generic disk drive support
+ *
+ * @todo Support for disks larger than 4 GiB
+ */
+
+#include <stdio.h>
+#include <init.h>
+#include <driver.h>
+#include <types.h>
+#include <ata.h>
+#include <xfuncs.h>
+#include <errno.h>
+#include <string.h>
+#include <linux/kernel.h>
+
+/**
+ * Description of one partition table entry (D*S type)
+ */
+struct partition_entry {
+	uint8_t boot_indicator;
+	uint8_t chs_begin[3];
+	uint8_t type;
+	uint8_t chs_end[3];
+	uint32_t partition_start;
+	uint32_t partition_size;
+} __attribute__ ((packed));
+
+/** one for all */
+#define SECTOR_SIZE 512
+
+/**
+ * Guess the size of the disk, based on the partition table entries
+ * @param dev device to create partitions for
+ * @param table partition table
+ * @return size in sectors
+ */
+static unsigned long disk_guess_size(struct device_d *dev, struct partition_entry *table)
+{
+	int part_order[4] = {0, 1, 2, 3};
+	unsigned long size = 0;
+	int i;
+
+	/* TODO order the partitions */
+
+	for (i = 0; i < 4; i++) {
+		if (table[part_order[i]].partition_start != 0) {
+			size += table[part_order[i]].partition_start - size; /* the gap */
+			size += table[part_order[i]].partition_size;
+		}
+	}
+#if 1
+/* limit disk sizes we can't handle due to 32 bit limits */
+	if (size > 0x7fffff) {
+		dev_warn(dev, "Warning: Size limited due to 32 bit contraints\n");
+		size = 0x7fffff;
+	}
+#endif
+	return size;
+}
+
+/**
+ * Register partitions found on the drive
+ * @param dev device to create partitions for
+ * @param table partition table
+ * @return 0 on success
+ */
+static int disk_register_partitions(struct device_d *dev, struct partition_entry *table)
+{
+	int part_order[4] = {0, 1, 2, 3};
+	int i, rc;
+	char drive_name[16], partition_name[19];
+
+	/* TODO order the partitions */
+
+	for (i = 0; i < 4; i++) {
+		sprintf(drive_name, "%s%d", dev->name, dev->id);
+		sprintf(partition_name, "%s%d.%d", dev->name, dev->id, i);
+		if (table[part_order[i]].partition_start != 0) {
+#if 1
+/* ignore partitions we can't handle due to 32 bit limits */
+			if (table[part_order[i]].partition_start > 0x7fffff)
+				continue;
+			if (table[part_order[i]].partition_size > 0x7fffff)
+				continue;
+#endif
+			dev_info(dev, "Registering partition %s to drive %s\n", partition_name, drive_name);
+			rc = devfs_add_partition(drive_name,
+				table[part_order[i]].partition_start * SECTOR_SIZE,
+				table[part_order[i]].partition_size * SECTOR_SIZE,
+				DEVFS_PARTITION_FIXED, partition_name);
+			if (rc != 0)
+				dev_err(dev, "Failed to register partition %s (%d)\n", partition_name, rc);
+		}
+	}
+
+	return 0;
+}
+
+/**
+ * Write some data to a disk
+ * @param cdev the device to write to
+ * @param _buf source of data
+ * @param count byte count to write
+ * @param offset where to write to disk
+ * @param flags Ignored
+ * @return Written bytes or negative value in case of failure
+ */
+static ssize_t disk_write(struct cdev *cdev, const void *_buf, size_t count, ulong offset, ulong flags)
+{
+	struct device_d *dev = cdev->dev;
+	struct ata_interface *intf = dev->platform_data;
+	int rc;
+	unsigned sep_count = offset & (SECTOR_SIZE - 1);
+	ssize_t written = 0;
+
+	/* starting at no sector boundary? */
+	if (sep_count != 0) {
+		uint8_t tmp_buf[SECTOR_SIZE];
+		unsigned to_write = min(SECTOR_SIZE - sep_count, count);
+
+		rc = intf->read(dev, offset / SECTOR_SIZE, 1, tmp_buf);
+		if (rc != 0) {
+			dev_err(dev, "Cannot read data\n");
+			return -1;
+		}
+		memcpy(&tmp_buf[sep_count], _buf, to_write);
+		rc = intf->write(dev, offset / SECTOR_SIZE, 1, tmp_buf);
+		if (rc != 0) {
+			dev_err(dev, "Cannot write data\n");
+			return -1;
+		}
+
+		_buf += to_write;
+		offset += to_write;
+		count -= to_write;
+		written += to_write;
+	}
+
+	/* full sector part */
+	sep_count = count / SECTOR_SIZE;
+	if (sep_count) {
+		rc = intf->write(dev, offset / SECTOR_SIZE, sep_count, _buf);
+		if (rc != 0) {
+			dev_err(dev, "Cannot write data\n");
+			return -1;
+		}
+		_buf += sep_count * SECTOR_SIZE;
+		offset += sep_count * SECTOR_SIZE;
+		count -= sep_count * SECTOR_SIZE;
+		written += sep_count * SECTOR_SIZE;
+	}
+
+	/* ending at no sector boundary? */
+	if (count) {
+		uint8_t tmp_buf[SECTOR_SIZE];
+
+		rc = intf->read(dev, offset / SECTOR_SIZE, 1, tmp_buf);
+		if (rc != 0) {
+			dev_err(dev, "Cannot read data\n");
+			return -1;
+		}
+		memcpy(tmp_buf, _buf, count);
+		rc = intf->write(dev, offset / SECTOR_SIZE, 1, tmp_buf);
+		if (rc != 0) {
+			dev_err(dev, "Cannot write data\n");
+			return -1;
+		}
+		written += count;
+	}
+
+	return written;
+}
+
+/**
+ * Read some data from a disk
+ * @param cdev the device to read from
+ * @param _buf destination of the data
+ * @param count byte count to read
+ * @param offset where to read from
+ * @param flags Ignored
+ * @return Read bytes or negative value in case of failure
+ */
+static ssize_t disk_read(struct cdev *cdev, void *_buf, size_t count, ulong offset, ulong flags)
+{
+	struct device_d *dev = cdev->dev;
+	struct ata_interface *intf = dev->platform_data;
+	int rc;
+	unsigned sep_count = offset & (SECTOR_SIZE - 1);
+	ssize_t read = 0;
+
+	/* starting at no sector boundary? */
+	if (sep_count != 0) {
+		uint8_t tmp_buf[SECTOR_SIZE];
+		unsigned to_read = min(SECTOR_SIZE - sep_count, count);
+
+		rc = intf->read(dev, offset / SECTOR_SIZE, 1, tmp_buf);
+		if (rc != 0) {
+			dev_err(dev, "Cannot read data\n");
+			return -1;
+		}
+		memcpy(_buf, &tmp_buf[sep_count], to_read);
+		_buf += to_read;
+		offset += to_read;
+		count -= to_read;
+		read += to_read;
+	}
+
+	/* full sector part */
+	sep_count = count / SECTOR_SIZE;
+	if (sep_count) {
+		rc = intf->read(dev, offset / SECTOR_SIZE, sep_count, _buf);
+		if (rc != 0) {
+			dev_err(dev, "Cannot read data\n");
+			return -1;
+		}
+		_buf += sep_count * SECTOR_SIZE;
+		offset += sep_count * SECTOR_SIZE;
+		count -= sep_count * SECTOR_SIZE;
+		read += sep_count * SECTOR_SIZE;
+	}
+
+	/* ending at no sector boundary? */
+	if (count) {
+		uint8_t tmp_buf[SECTOR_SIZE];
+
+		rc = intf->read(dev, offset / SECTOR_SIZE, 1, tmp_buf);
+		if (rc != 0) {
+			dev_err(dev, "Cannot read data\n");
+			return -1;
+		}
+		memcpy(_buf, tmp_buf, count);
+		read += count;
+	}
+
+	return read;
+}
+
+static struct file_operations disk_ops = {
+	.read  = disk_read,
+	.write = disk_write,
+	.lseek = dev_lseek_default,
+};
+
+/**
+ * Probe the connected disk drive
+ */
+static int disk_probe(struct device_d *dev)
+{
+	uint8_t sector[512];
+	int rc;
+	struct ata_interface *intf = dev->platform_data;
+	struct cdev *disk_cdev;
+
+	rc = intf->read(dev, 0, 1, sector);
+	if (rc != 0) {
+		dev_err(dev, "Cannot read MBR of this device\n");
+		return -1;
+	}
+
+	/* It seems a valuable disk. Register it */
+	disk_cdev = xzalloc(sizeof(struct cdev));
+	if (disk_cdev == NULL) {
+		dev_err(dev, "Out of memory\n");
+		return -ENOMEM;
+	}
+
+	/*
+	 * BIOS based disks needs special handling. Not the driver can
+	 * enumerate the hardware, the BIOS did it already. To show the user
+	 * the drive ordering must not correspond to the Linux drive order,
+	 * use the 'biosdisk' name instead.
+	 */
+#ifdef CONFIG_ATA_BIOS
+	if (strcmp(dev->driver->name, "biosdisk") == 0)
+		disk_cdev->name = asprintf("biosdisk%d", dev->id);
+	else
+#endif
+		disk_cdev->name = asprintf("disk%d", dev->id);
+	/**
+	 * @todo we need the size of the drive, else its nearly impossible
+	 * to do anything with it (at least with the generic routines)
+	 */
+	disk_cdev->size = 32;	/* FIXME */
+	disk_cdev->ops = &disk_ops;
+	disk_cdev->dev = dev;
+	devfs_create(disk_cdev);
+
+	if ((sector[510] != 0x55) || (sector[511] != 0xAA)) {
+		dev_info(dev, "No partition table found\n");
+		return 0;
+	}
+
+	/* guess the size of this drive */
+	dev->size = disk_guess_size(dev, (struct partition_entry*)&sector[446]) * SECTOR_SIZE;
+	dev_info(dev, "Drive size guessed to %u kiB\n", dev->size / 1024);
+	disk_cdev->size = dev->size;
+
+	disk_register_partitions(dev, (struct partition_entry*)&sector[446]);
+
+	return 0;
+}
+
+#ifdef CONFIG_ATA_BIOS
+static struct driver_d biosdisk_driver = {
+        .name   = "biosdisk",
+        .probe  = disk_probe,
+};
+#endif
+
+static struct driver_d disk_driver = {
+        .name   = "disk",
+        .probe  = disk_probe,
+};
+
+static int disk_init(void)
+{
+#ifdef CONFIG_ATA_BIOS
+	register_driver(&biosdisk_driver);
+#endif
+	register_driver(&disk_driver);
+	return 0;
+}
+
+device_initcall(disk_init);

-- 

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

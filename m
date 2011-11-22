Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RSljn-00053O-Bk
 for barebox@lists.infradead.org; Tue, 22 Nov 2011 08:29:57 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1RSljQ-0007UJ-DL
 for barebox@lists.infradead.org; Tue, 22 Nov 2011 09:29:32 +0100
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <jbe@pengutronix.de>) id 1RSljQ-0003T2-8V
 for barebox@lists.infradead.org; Tue, 22 Nov 2011 09:29:32 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Tue, 22 Nov 2011 09:29:24 +0100
Message-Id: <1321950567-13261-11-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1321950567-13261-1-git-send-email-jbe@pengutronix.de>
References: <1321950567-13261-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 10/13] Remove 'disk_drive.c' as it is now replaced by generic
 partition handling
To: barebox@lists.infradead.org

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 drivers/ata/Kconfig      |    8 --
 drivers/ata/Makefile     |    1 -
 drivers/ata/disk_drive.c |  247 ----------------------------------------------
 3 files changed, 0 insertions(+), 256 deletions(-)
 delete mode 100644 drivers/ata/disk_drive.c

diff --git a/drivers/ata/Kconfig b/drivers/ata/Kconfig
index a85958c..86b5673 100644
--- a/drivers/ata/Kconfig
+++ b/drivers/ata/Kconfig
@@ -15,16 +15,8 @@ config DISK_WRITE
 
 comment "drive types"
 
-config DISK_DRIVE
-	bool "Generic disk drives"
-	help
-	  Add support for generic disk drives. Common behaviour for this kind
-	  of devices is using a partition table in the first sector. Say Y here
-	  if you intend to work with disk drives (also CF cards and SD cards).
-
 config DISK_BIOS
 	bool "BIOS based"
-	select DISK_DRIVE
 	depends on X86_BIOS_BRINGUP
 	help
 	  Gain disk drive access via int13 calls to the standard PC-BIOS.
diff --git a/drivers/ata/Makefile b/drivers/ata/Makefile
index 10f3957..e2b41b7 100644
--- a/drivers/ata/Makefile
+++ b/drivers/ata/Makefile
@@ -1,6 +1,5 @@
 # drive types
 
-obj-$(CONFIG_DISK_DRIVE) += disk_drive.o
 obj-$(CONFIG_DISK_BIOS) += disk_bios_drive.o
 
 # interface types
diff --git a/drivers/ata/disk_drive.c b/drivers/ata/disk_drive.c
deleted file mode 100644
index c5c1ee9..0000000
--- a/drivers/ata/disk_drive.c
+++ /dev/null
@@ -1,247 +0,0 @@
-/*
- * Copyright (C) 2009 Juergen Beisert, Pengutronix
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
- * MA 02111-1307 USA
- *
- */
-
-/**
- * @file
- * @brief Generic disk drive support
- *
- * @todo Support for disks larger than 4 GiB
- * @todo Reliable size detection for BIOS based disks (on x86 only)
- */
-
-#include <stdio.h>
-#include <init.h>
-#include <driver.h>
-#include <types.h>
-#include <ata.h>
-#include <xfuncs.h>
-#include <errno.h>
-#include <string.h>
-#include <linux/kernel.h>
-#include <malloc.h>
-#include <common.h>
-#include <block.h>
-#include <asm/unaligned.h>
-
-/**
- * Description of one partition table entry (D*S type)
- */
-struct partition_entry {
-	uint8_t boot_indicator;
-	uint8_t chs_begin[3];
-	uint8_t type;
-	uint8_t chs_end[3];
-	uint32_t partition_start;
-	uint32_t partition_size;
-} __attribute__ ((packed));
-
-/** one for all */
-#define SECTOR_SIZE 512
-
-/**
- * Guess the size of the disk, based on the partition table entries
- * @param dev device to create partitions for
- * @param table partition table
- * @return size in sectors
- */
-#ifdef CONFIG_DISK_BIOS
-static unsigned long disk_guess_size(struct device_d *dev, struct partition_entry *table)
-{
-	int part_order[4] = {0, 1, 2, 3};
-	unsigned long size = 0;
-	int i;
-
-	/* TODO order the partitions */
-
-	for (i = 0; i < 4; i++) {
-		if (table[part_order[i]].partition_start != 0) {
-			size += table[part_order[i]].partition_start - size; /* the gap */
-			size += table[part_order[i]].partition_size;
-		}
-	}
-#if 1
-/* limit disk sizes we can't handle due to 32 bit limits */
-	if (size > 0x7fffff) {
-		dev_warn(dev, "Warning: Size limited due to 32 bit contraints\n");
-		size = 0x7fffff;
-	}
-#endif
-	return size;
-}
-#endif
-
-/**
- * Register partitions found on the drive
- * @param dev device to create partitions for
- * @param table partition table
- * @return 0 on success
- */
-static int disk_register_partitions(struct device_d *dev, struct partition_entry *table)
-{
-	int part_order[4] = {0, 1, 2, 3};
-	int i, rc;
-	char drive_name[16], partition_name[19];
-	u32 partition_start, partition_size;
-
-	/* TODO order the partitions */
-
-	for (i = 0; i < 4; i++) {
-		partition_start = get_unaligned(&table[part_order[i]].partition_start);
-		partition_size  = get_unaligned(&table[part_order[i]].partition_size);
-
-		sprintf(drive_name, "%s%d", dev->name, dev->id);
-		sprintf(partition_name, "%s%d.%d", dev->name, dev->id, i);
-		if (partition_start != 0) {
-#if 1
-/* ignore partitions we can't handle due to 32 bit limits */
-			if (partition_start > 0x7fffff)
-				continue;
-			if (partition_size > 0x7fffff)
-				continue;
-#endif
-			dev_dbg(dev, "Registering partition %s to drive %s\n",
-				partition_name, drive_name);
-			rc = devfs_add_partition(drive_name,
-				partition_start * SECTOR_SIZE,
-				partition_size * SECTOR_SIZE,
-				DEVFS_PARTITION_FIXED, partition_name);
-			if (rc != 0)
-				dev_err(dev, "Failed to register partition %s (%d)\n", partition_name, rc);
-		}
-	}
-
-	return 0;
-}
-
-struct ata_block_device {
-	struct block_device blk;
-	struct device_d *dev;
-	struct ata_interface *intf;
-};
-
-static int atablk_read(struct block_device *blk, void *buf, int block,
-		int num_blocks)
-{
-	struct ata_block_device *atablk = container_of(blk, struct ata_block_device, blk);
-
-	return atablk->intf->read(atablk->dev, block, num_blocks, buf);
-}
-
-#ifdef CONFIG_DISK_WRITE
-static int atablk_write(struct block_device *blk, const void *buf, int block,
-		int num_blocks)
-{
-	struct ata_block_device *atablk = container_of(blk, struct ata_block_device, blk);
-
-	return atablk->intf->write(atablk->dev, block, num_blocks, buf);
-}
-#endif
-
-static struct block_device_ops ataops = {
-	.read = atablk_read,
-#ifdef CONFIG_DISK_WRITE
-	.write = atablk_write,
-#endif
-};
-
-/**
- * Probe the connected disk drive
- */
-static int disk_probe(struct device_d *dev)
-{
-	uint8_t *sector;
-	int rc;
-	struct ata_interface *intf = dev->platform_data;
-	struct ata_block_device *atablk = xzalloc(sizeof(*atablk));
-
-	sector = xmalloc(SECTOR_SIZE);
-
-	rc = intf->read(dev, 0, 1, sector);
-	if (rc != 0) {
-		dev_err(dev, "Cannot read MBR of this device\n");
-		rc = -ENODEV;
-		goto on_error;
-	}
-
-	/*
-	 * BIOS based disks needs special handling. Not the driver can
-	 * enumerate the hardware, the BIOS did it already. To show the user
-	 * the drive ordering must not correspond to the Linux drive order,
-	 * use the 'biosdisk' name instead.
-	 */
-#ifdef CONFIG_DISK_BIOS
-	if (strcmp(dev->driver->name, "biosdisk") == 0)
-		atablk->blk.cdev.name = asprintf("biosdisk%d", dev->id);
-	else
-#endif
-		atablk->blk.cdev.name = asprintf("disk%d", dev->id);
-
-#ifdef CONFIG_DISK_BIOS
-	/* On x86, BIOS based disks are coming without a valid .size field */
-	if (dev->resource[0].size == 0) {
-		/* guess the size of this drive if not otherwise given */
-		dev->resource[0].size = disk_guess_size(dev,
-			(struct partition_entry*)&sector[446]) * SECTOR_SIZE;
-		dev_info(dev, "Drive size guessed to %u kiB\n", dev->resource[0].size / 1024);
-	}
-#endif
-	atablk->blk.num_blocks = dev->resource[0].size / SECTOR_SIZE;
-	atablk->blk.ops = &ataops;
-	atablk->blk.blockbits = 9;
-	atablk->dev = dev;
-	atablk->intf = intf;
-	blockdevice_register(&atablk->blk);
-
-	if ((sector[510] != 0x55) || (sector[511] != 0xAA)) {
-		dev_info(dev, "No partition table found\n");
-		rc = 0;
-		goto on_error;
-	}
-
-
-	rc = disk_register_partitions(dev, (struct partition_entry*)&sector[446]);
-
-on_error:
-	free(sector);
-	return rc;
-}
-
-#ifdef CONFIG_DISK_BIOS
-static struct driver_d biosdisk_driver = {
-        .name   = "biosdisk",
-        .probe  = disk_probe,
-};
-#endif
-
-static struct driver_d disk_driver = {
-        .name   = "disk",
-        .probe  = disk_probe,
-};
-
-static int disk_init(void)
-{
-#ifdef CONFIG_DISK_BIOS
-	register_driver(&biosdisk_driver);
-#endif
-	register_driver(&disk_driver);
-	return 0;
-}
-
-device_initcall(disk_init);
-- 
1.7.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

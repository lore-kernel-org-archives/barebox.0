Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RSljw-0002BC-7s
 for barebox@lists.infradead.org; Tue, 22 Nov 2011 08:30:06 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1RSljQ-0007UH-CZ
 for barebox@lists.infradead.org; Tue, 22 Nov 2011 09:29:32 +0100
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <jbe@pengutronix.de>) id 1RSljQ-0003Sz-7b
 for barebox@lists.infradead.org; Tue, 22 Nov 2011 09:29:32 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Tue, 22 Nov 2011 09:29:23 +0100
Message-Id: <1321950567-13261-10-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 09/13] Use generic block layer to access the drives and do
 partition parsing
To: barebox@lists.infradead.org

Change all relevant blockdevice users to the simplified interface.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 drivers/ata/Kconfig           |    2 +
 drivers/ata/disk_bios_drive.c |   97 +++++++++++++++++------------
 drivers/mci/Kconfig           |    1 -
 drivers/mci/mci-core.c        |  135 ++++++++++++++++++++++++-----------------
 drivers/usb/storage/Kconfig   |    1 +
 drivers/usb/storage/usb.c     |  124 ++++++++++++++++++++++----------------
 drivers/usb/storage/usb.h     |    8 +--
 include/mci.h                 |    3 +-
 8 files changed, 216 insertions(+), 155 deletions(-)

diff --git a/drivers/ata/Kconfig b/drivers/ata/Kconfig
index f3b2939..a85958c 100644
--- a/drivers/ata/Kconfig
+++ b/drivers/ata/Kconfig
@@ -1,5 +1,7 @@
 menuconfig DISK
 	select BLOCK
+	select PARTITION
+	select PARTITION_DISK
 	bool "Disk support                  "
 	help
 	  Add support for disk like drives like harddisks, CDROMs, SD cards and
diff --git a/drivers/ata/disk_bios_drive.c b/drivers/ata/disk_bios_drive.c
index 6e2377c..28154dc 100644
--- a/drivers/ata/disk_bios_drive.c
+++ b/drivers/ata/disk_bios_drive.c
@@ -1,5 +1,5 @@
 /*
- * Copyright (C) 2009 Juergen Beisert, Pengutronix
+ * Copyright (C) 2009...2011 Juergen Beisert, Pengutronix
  *
  * Mostly stolen from the GRUB2 project
  *  Copyright (C) 1999,2000,2001,2002,2003,2004,2005,2006,2007,2008  Free Software Foundation, Inc.
@@ -43,15 +43,13 @@
  * Note: This driver does only support LBA addressing. Currently no CHS!
  */
 
-#include <stdio.h>
-#include <linux/types.h>
+#include <common.h>
 #include <init.h>
-#include <driver.h>
-#include <string.h>
-#include <xfuncs.h>
 #include <asm/syslib.h>
-#include <ata.h>
 #include <errno.h>
+#include <block.h>
+#include <disks.h>
+#include <malloc.h>
 
 /**
  * Sector count handled in one count
@@ -61,9 +59,6 @@
  */
 #define SECTORS_AT_ONCE 64
 
-/** Size of one sector in bytes */
-#define SECTOR_SIZE 512
-
 /** Command to read sectors from media */
 #define BIOS_READ_CMD 0
 
@@ -89,10 +84,13 @@ struct DAPS
  * Collection of data we need to know about the connected drive
  */
 struct media_access {
+	struct block_device blk; /**< the main device */
 	int drive_no;	/**< drive number used by the BIOS */
 	int is_cdrom;	/**< drive is a CDROM e.g. no write support */
 };
 
+#define to_media_access(x) container_of((x), struct media_access, blk)
+
 /**
  * Scratch memory for BIOS communication to handle data in chunks of 32 kiB
  *
@@ -146,19 +144,23 @@ static int biosdisk_bios_call(struct media_access *media, int cmd, uint64_t sect
 
 /**
  * Read a chunk of sectors from media
- * @param dev our data we need to do the access
- * @param sector_start Sector's LBA number to start read from
- * @param sector_count Sectors to read
+ * @param blk All info about the block device we need
  * @param buffer Buffer to read into
+ * @param block Sector's LBA number to start read from
+ * @param num_blocks Sector count to read
  * @return 0 on success, anything else on failure
  *
  * This routine expects the buffer has the correct size to store all data!
+ *
+ * @note Due to 'block' is of type 'int' only small disks can be handled!
  */
-static int biosdisk_read(struct device_d *dev, uint64_t sector_start, unsigned sector_count, void *buffer)
+static int biosdisk_read(struct block_device *blk, void *buffer, int block,
+				int num_blocks)
 {
 	int rc;
-	struct ata_interface *intf = dev->platform_data;
-	struct media_access *media = intf->priv;
+	uint64_t sector_start = block;
+	unsigned sector_count = num_blocks;
+	struct media_access *media = to_media_access(blk);
 
 	while (sector_count >= SECTORS_AT_ONCE) {
 		rc = biosdisk_bios_call(media, BIOS_READ_CMD, sector_start, SECTORS_AT_ONCE, scratch_buffer);
@@ -182,19 +184,23 @@ static int biosdisk_read(struct device_d *dev, uint64_t sector_start, unsigned s
 
 /**
  * Write a chunk of sectors to media
- * @param dev our data we need to do the access
- * @param sector_start Sector's LBA number to start write to
- * @param sector_count Sectors to write
+ * @param blk All info about the block device we need
  * @param buffer Buffer to write from
+ * @param block Sector's LBA number to start write to
+ * @param num_blocks Sector count to write
  * @return 0 on success, anything else on failure
  *
  * This routine expects the buffer has the correct size to read all data!
+ *
+ * @note Due to 'block' is of type 'int' only small disks can be handled!
  */
-static int biosdisk_write(struct device_d *dev, uint64_t sector_start, unsigned sector_count, const void *buffer)
+static int __maybe_unused biosdisk_write(struct block_device *blk,
+				const void *buffer, int block, int num_blocks)
 {
 	int rc;
-	struct ata_interface *intf = dev->platform_data;
-	struct media_access *media = intf->priv;
+	uint64_t sector_start = block;
+	unsigned sector_count = num_blocks;
+	struct media_access *media = to_media_access(blk);
 
 	while (sector_count >= SECTORS_AT_ONCE) {
 		__builtin_memcpy(scratch_buffer, buffer, sizeof(scratch_buffer));
@@ -216,6 +222,13 @@ static int biosdisk_write(struct device_d *dev, uint64_t sector_start, unsigned
 	return rc;
 }
 
+static struct block_device_ops bios_ata = {
+	.read = biosdisk_read,
+#ifdef CONFIG_BLOCK_WRITE
+	.write = biosdisk_write,
+#endif
+};
+
 /**
  * Probe for connected drives and register them
  *
@@ -228,8 +241,6 @@ static int biosdisk_probe(struct device_d *dev)
 {
 	int drive, rc;
 	struct media_access media, *m;
-	struct device_d *drive_dev;
-	struct ata_interface *p;
 
 	for (drive = 0x80; drive < 0x90; drive++) {
 		media.drive_no = drive;
@@ -240,27 +251,31 @@ static int biosdisk_probe(struct device_d *dev)
 
 		printf("BIOSdrive %d seems valid. Registering...\n", media.drive_no);
 
-		drive_dev = xzalloc(sizeof(struct device_d) + sizeof(struct media_access) + sizeof(struct ata_interface));
-		if (drive_dev == NULL) {
-			dev_err(dev, "Out of memory\n");
-			return -1;
-		}
-		m = (struct media_access*)&drive_dev[1];
-		p = (struct ata_interface*)&m[1];
+		m = xzalloc(sizeof(struct media_access));
 
-		m->drive_no = drive;
-		m->is_cdrom = 0;
+		m->blk.dev = dev;
+		m->blk.ops = &bios_ata;
+		m->is_cdrom = 0;	/* don't know yet */
+		m->blk.num_blocks = 0;	/* we don't know the size of this disk! */
 
-		p->write = biosdisk_write;
-		p->read = biosdisk_read;
-		p->priv = m;
+		rc = cdev_find_free_number("disk");
+		if (rc == -1)
+			pr_err("Cannot find a free number for the disk node\n");
+		m->blk.cdev.name = asprintf("disk%d", rc);
+		m->blk.blockbits = SECTOR_SHIFT;
 
-		strcpy(drive_dev->name, "biosdisk");
-		drive_dev->id = drive - 0x80;
-		drive_dev->resource[0].start = 0;
-		drive_dev->platform_data = p;
+		rc = blockdevice_register(&m->blk);
+		if (rc != 0) {
+			dev_err(dev, "Cannot register BIOSdrive %d\n",
+						media.drive_no);
+			free(m);
+			return rc;
+		}
 
-		register_device(drive_dev);
+		/* create partitions on demand */
+		rc = parse_partition_table(&m->blk);
+		if (rc != 0)
+			dev_warn(dev, "No partition table found\n");
 	}
 
 	return 0;
diff --git a/drivers/mci/Kconfig b/drivers/mci/Kconfig
index d24e606..6ec4527 100644
--- a/drivers/mci/Kconfig
+++ b/drivers/mci/Kconfig
@@ -1,7 +1,6 @@
 menuconfig MCI
 	bool "MCI drivers                   "
 	select DISK
-	select DISK_DRIVE
 	help
 	  Add support for MCI drivers, used to handle MMC and SD cards
 
diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 138efcc..3347456 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -36,7 +36,8 @@
 #include <errno.h>
 #include <asm-generic/div64.h>
 #include <asm/byteorder.h>
-#include <ata.h>
+#include <block.h>
+#include <disks.h>
 
 #define MAX_BUFFER_NUMBER 0xffffffff
 
@@ -104,10 +105,10 @@ static void *sector_buf;
  * @param mci_dev MCI instance
  * @param src Where to read from to write to the card
  * @param blocknum Block number to write
+ * @param blocks Block count to write
  * @return Transaction status (0 on success)
  */
-#ifdef CONFIG_MCI_WRITE
-static int mci_block_write(struct device_d *mci_dev, const void *src, unsigned blocknum,
+static int mci_block_write(struct device_d *mci_dev, const void *src, int blocknum,
 	int blocks)
 {
 	struct mci *mci = GET_MCI_DATA(mci_dev);
@@ -154,7 +155,6 @@ static int mci_block_write(struct device_d *mci_dev, const void *src, unsigned b
 
 	return ret;
 }
-#endif
 
 /**
  * Read one block of data from the card
@@ -163,7 +163,7 @@ static int mci_block_write(struct device_d *mci_dev, const void *src, unsigned b
  * @param blocknum Block number to read
  * @param blocks number of blocks to read
  */
-static int mci_read_block(struct device_d *mci_dev, void *dst, unsigned blocknum,
+static int mci_read_block(struct device_d *mci_dev, void *dst, int blocknum,
 		int blocks)
 {
 	struct mci *mci = GET_MCI_DATA(mci_dev);
@@ -821,14 +821,14 @@ static int mci_startup(struct device_d *mci_dev)
 	mci_extract_card_capacity_from_csd(mci_dev);
 
 	/* sanitiy? */
-	if (mci->read_bl_len > 512) {
-		mci->read_bl_len = 512;
+	if (mci->read_bl_len > SECTOR_SIZE) {
+		mci->read_bl_len = SECTOR_SIZE;
 		pr_debug("Limiting max. read block size down to %u\n",
 				mci->read_bl_len);
 	}
 
-	if (mci->write_bl_len > 512) {
-		mci->write_bl_len = 512;
+	if (mci->write_bl_len > SECTOR_SIZE) {
+		mci->write_bl_len = SECTOR_SIZE;
 		pr_debug("Limiting max. write block size down to %u\n",
 				mci->read_bl_len);
 	}
@@ -957,73 +957,68 @@ static int sd_send_if_cond(struct device_d *mci_dev)
 	return 0;
 }
 
-/* ------------------ attach to the ATA API --------------------------- */
+/* ------------------ attach to the blocklayer --------------------------- */
 
 /**
  * Write a chunk of sectors to media
- * @param disk_dev Disk device instance
- * @param sector_start Sector's number to start write to
- * @param sector_count Sectors to write
+ * @param blk All info about the block device we need
  * @param buffer Buffer to write from
+ * @param block Sector's number to start write to
+ * @param num_blocks Sector count to write
  * @return 0 on success, anything else on failure
  *
  * This routine expects the buffer has the correct size to read all data!
  */
-#ifdef CONFIG_MCI_WRITE
-static int mci_sd_write(struct device_d *disk_dev, uint64_t sector_start,
-			unsigned sector_count, const void *buffer)
+static int __maybe_unused mci_sd_write(struct block_device *blk,
+				const void *buffer, int block, int num_blocks)
 {
-	struct ata_interface *intf = disk_dev->platform_data;
-	struct device_d *mci_dev = intf->priv;
+	struct device_d *mci_dev = blk->dev;
 	struct mci *mci = GET_MCI_DATA(mci_dev);
 	int rc;
 
-	pr_debug("%s: Write %u block(s), starting at %u\n",
-		__func__, sector_count, (unsigned)sector_start);
+	pr_debug("%s: Write %d block(s), starting at %d\n",
+		__func__, num_blocks, block);
 
-	if (mci->write_bl_len != 512) {
-		pr_debug("MMC/SD block size is not 512 bytes (its %u bytes instead)\n",
-				mci->read_bl_len);
+	if (mci->write_bl_len != SECTOR_SIZE) {
+		pr_debug("MMC/SD block size is not %d bytes (its %u bytes instead)\n",
+				SECTOR_SIZE, mci->read_bl_len);
 		return -EINVAL;
 	}
 
 	/* size of the block number field in the MMC/SD command is 32 bit only */
-	if (sector_start > MAX_BUFFER_NUMBER) {
-		pr_debug("Cannot handle block number %llu. Too large!\n",
-			sector_start);
+	if (block > MAX_BUFFER_NUMBER) {
+		pr_debug("Cannot handle block number %d. Too large!\n", block);
 		return -EINVAL;
 	}
 
-	rc = mci_block_write(mci_dev, buffer, sector_start, sector_count);
+	rc = mci_block_write(mci_dev, buffer, block, num_blocks);
 	if (rc != 0) {
-		pr_debug("Writing block %u failed with %d\n", (unsigned)sector_start, rc);
+		pr_debug("Writing block %d failed with %d\n", block, rc);
 		return rc;
 	}
 
 	return 0;
 }
-#endif
 
 /**
- * Read a chunk of sectors from media
- * @param disk_dev Disk device instance
- * @param sector_start Sector's number to start read from
- * @param sector_count Sectors to read
+ * Read a chunk of sectors from the drive
+ * @param blk All info about the block device we need
  * @param buffer Buffer to read into
+ * @param block Sector's LBA number to start read from
+ * @param num_blocks Sector count to read
  * @return 0 on success, anything else on failure
  *
  * This routine expects the buffer has the correct size to store all data!
  */
-static int mci_sd_read(struct device_d *disk_dev, uint64_t sector_start,
-			unsigned sector_count, void *buffer)
+static int mci_sd_read(struct block_device *blk, void *buffer, int block,
+				int num_blocks)
 {
-	struct ata_interface *intf = disk_dev->platform_data;
-	struct device_d *mci_dev = intf->priv;
+	struct device_d *mci_dev = blk->dev;
 	struct mci *mci = GET_MCI_DATA(mci_dev);
 	int rc;
 
-	pr_debug("%s: Read %u block(s), starting at %u\n",
-		__func__, sector_count, (unsigned)sector_start);
+	pr_debug("%s: Read %d block(s), starting at %d\n",
+		__func__, num_blocks, block);
 
 	if (mci->read_bl_len != 512) {
 		pr_debug("MMC/SD block size is not 512 bytes (its %u bytes instead)\n",
@@ -1031,15 +1026,14 @@ static int mci_sd_read(struct device_d *disk_dev, uint64_t sector_start,
 		return -EINVAL;
 	}
 
-	if (sector_start > MAX_BUFFER_NUMBER) {
-		pr_err("Cannot handle block number %u. Too large!\n",
-			(unsigned)sector_start);
+	if (block > MAX_BUFFER_NUMBER) {
+		pr_err("Cannot handle block number %d. Too large!\n", block);
 		return -EINVAL;
 	}
 
-	rc = mci_read_block(mci_dev, buffer, (unsigned)sector_start, sector_count);
+	rc = mci_read_block(mci_dev, buffer, block, num_blocks);
 	if (rc != 0) {
-		pr_debug("Reading block %u failed with %d\n", (unsigned)sector_start, rc);
+		pr_debug("Reading block %d failed with %d\n", block, rc);
 		return rc;
 	}
 
@@ -1178,6 +1172,25 @@ static int mci_check_if_already_initialized(struct device_d *mci_dev)
 	return 0;
 }
 
+static int mci_calc_blk_cnt(uint64_t cap, unsigned shift)
+{
+	unsigned ret = cap >> shift;
+
+	if (ret > 0x7fffffff) {
+		pr_warn("Limiting card size due to 31 bit contraints\n");
+		return 0x7fffffff;
+	}
+
+	return (int)ret;
+}
+
+static struct block_device_ops mci_ops = {
+	.read = mci_sd_read,
+#ifdef CONFIG_BLOCK_WRITE
+	.write = mci_sd_write,
+#endif
+};
+
 /**
  * Probe an MCI card at the given host interface
  * @param mci_dev MCI device instance
@@ -1187,9 +1200,7 @@ static int mci_card_probe(struct device_d *mci_dev)
 {
 	struct mci *mci = GET_MCI_DATA(mci_dev);
 	struct mci_host *host = GET_MCI_PDATA(mci_dev);
-	struct ata_interface *p;
 	int rc;
-	struct device_d *dev;
 
 	/* start with a host interface reset */
 	rc = (host->init)(host, mci_dev);
@@ -1233,16 +1244,29 @@ static int mci_card_probe(struct device_d *mci_dev)
 	 * An MMC/SD card acts like an ordinary disk.
 	 * So, re-use the disk driver to gain access to this media
 	 */
-	p = xzalloc(sizeof(struct ata_interface));
+	mci->blk.dev = mci_dev;
+	mci->blk.ops = &mci_ops;
 
-#ifdef CONFIG_MCI_WRITE
-	p->write = mci_sd_write;
-#endif
-	p->read = mci_sd_read;
-	p->priv = mci_dev;
+	rc = cdev_find_free_number("disk");
+	if (rc == -1)
+		pr_err("Cannot find a free number for the disk node\n");
+
+	mci->blk.cdev.name = asprintf("disk%d", rc);
+	mci->blk.blockbits = SECTOR_SHIFT;
+	mci->blk.num_blocks = mci_calc_blk_cnt(mci->capacity, mci->blk.blockbits);
+
+	rc = blockdevice_register(&mci->blk);
+	if (rc != 0) {
+		dev_err(mci_dev, "Failed to register MCI/SD blockdevice\n");
+		goto on_error;
+	}
 
-	dev = add_generic_device("disk", -1, NULL, 0, mci->capacity, IORESOURCE_MEM, p);
-	dev_add_child(&host->dev, dev);
+	/* create partitions on demand */
+	rc = parse_partition_table(&mci->blk);
+	if (rc != 0) {
+		dev_warn(mci_dev, "No partition table found\n");
+		rc = 0; /* it's not a failure */
+	}
 
 	pr_debug("SD Card successfully added\n");
 
@@ -1373,8 +1397,9 @@ device_initcall(mci_init);
  */
 int mci_register(struct mci_host *host)
 {
-	struct device_d *mci_dev = &host->dev;
+	struct device_d *mci_dev = xzalloc(sizeof(struct device_d));
 
+	mci_dev->id = -1;
 	strcpy(mci_dev->name, mci_driver.name);
 	mci_dev->platform_data = (void*)host;
 	dev_add_child(host->hw_dev, mci_dev);
diff --git a/drivers/usb/storage/Kconfig b/drivers/usb/storage/Kconfig
index f6c8c06..b80c039 100644
--- a/drivers/usb/storage/Kconfig
+++ b/drivers/usb/storage/Kconfig
@@ -1,2 +1,3 @@
 config USB_STORAGE
 	tristate "USB Mass Storage support"
+	select DISK
diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
index 6dba8cc..b201b2b 100644
--- a/drivers/usb/storage/usb.c
+++ b/drivers/usb/storage/usb.c
@@ -195,33 +195,32 @@ static int usb_stor_write_10(ccb *srb, struct us_data *us,
 
 #define US_MAX_IO_BLK 32
 
+#define to_usb_mass_storage(x) container_of((x), struct us_blk_dev, blk)
+
 enum { io_rd, io_wr };
 
 /* Read / write a chunk of sectors on media */
-static int usb_stor_blk_io(int io_op, struct device_d *disk_dev,
-                           uint64_t sector_start, unsigned sector_count,
-                           void *buffer)
+static int usb_stor_blk_io(int io_op, struct block_device *disk_dev,
+			int sector_start, int sector_count, void *buffer)
 {
-	struct ata_interface *pata_if = disk_dev->platform_data;
-	struct us_blk_dev *pblk_dev = (struct us_blk_dev *)pata_if->priv;
+	struct us_blk_dev *pblk_dev = to_usb_mass_storage(disk_dev);
 	struct us_data *us = pblk_dev->us;
 	ccb us_ccb;
-	ushort const sector_size = 512;
 	unsigned sectors_done;
 
 	if (sector_count == 0)
 		return 0;
 
 	/* check for unsupported block size */
-	if (pblk_dev->blksz != sector_size) {
-		US_DEBUGP("%s: unsupported block size %lu\n",
-		          __func__, pblk_dev->blksz);
+	if (pblk_dev->blk.blockbits != SECTOR_SHIFT) {
+		US_DEBUGP("%s: unsupported block shift %d\n",
+		          __func__, pblk_dev->blk.blockbits);
 		return -EINVAL;
 	}
 
 	/* check for invalid sector_start */
-	if (sector_start >= pblk_dev->blknum || sector_start > (ulong)-1) {
-		US_DEBUGP("%s: start sector %llu too large\n",
+	if (sector_start >= pblk_dev->blk.num_blocks || sector_start > (ulong)-1) {
+		US_DEBUGP("%s: start sector %d too large\n",
 		          __func__, sector_start);
 		return -EINVAL;
 	}
@@ -242,21 +241,21 @@ static int usb_stor_blk_io(int io_op, struct device_d *disk_dev,
 		sector_count = INT_MAX;
 		US_DEBUGP("Restricting I/O to %u blocks\n", sector_count);
 	}
-	if (sector_start + sector_count > pblk_dev->blknum) {
-		sector_count = pblk_dev->blknum - sector_start;
+	if (sector_start + sector_count > pblk_dev->blk.num_blocks) {
+		sector_count = pblk_dev->blk.num_blocks - sector_start;
 		US_DEBUGP("Restricting I/O to %u blocks\n", sector_count);
 	}
 
 	/* read / write the requested data */
-	US_DEBUGP("%s %u block(s), starting from %llu\n",
+	US_DEBUGP("%s %u block(s), starting from %d\n",
 	          ((io_op == io_rd) ? "Read" : "Write"),
 	          sector_count, sector_start);
 	sectors_done = 0;
 	while (sector_count > 0) {
 		int result;
-		ushort n = (ushort)min(sector_count, US_MAX_IO_BLK);
-		us_ccb.pdata = buffer + sectors_done * sector_size;
-		us_ccb.datalen = n * (ulong)sector_size;
+		unsigned n = min(sector_count, US_MAX_IO_BLK);
+		us_ccb.pdata = buffer + (sectors_done * SECTOR_SIZE);
+		us_ccb.datalen = n * SECTOR_SIZE;
 		if (io_op == io_rd)
 			result = usb_stor_read_10(&us_ccb, us,
 			                          (ulong)sector_start, n);
@@ -264,7 +263,7 @@ static int usb_stor_blk_io(int io_op, struct device_d *disk_dev,
 			result = usb_stor_write_10(&us_ccb, us,
 			                           (ulong)sector_start, n);
 		if (result != 0) {
-			US_DEBUGP("I/O error at sector %llu\n", sector_start);
+			US_DEBUGP("I/O error at sector %d\n", sector_start);
 			break;
 		}
 		sector_start += n;
@@ -274,27 +273,31 @@ static int usb_stor_blk_io(int io_op, struct device_d *disk_dev,
 
 	usb_disable_asynch(0);
 
-	US_DEBUGP("Successful I/O of %u blocks\n", sectors_done);
+	US_DEBUGP("Successful I/O of %d blocks\n", sectors_done);
 
 	return (sector_count != 0) ? -EIO : 0;
 }
 
 /* Write a chunk of sectors to media */
-static int usb_stor_blk_write(struct device_d *disk_dev, uint64_t sector_start,
-                              unsigned sector_count, const void *buffer)
+static int __maybe_unused usb_stor_blk_write(struct block_device *blk,
+				const void *buffer, int block, int num_blocks)
 {
-	return usb_stor_blk_io(io_wr, disk_dev, sector_start, sector_count,
-	                       (void *)buffer);
+	return usb_stor_blk_io(io_wr, blk, block, num_blocks, (void *)buffer);
 }
 
 /* Read a chunk of sectors from media */
-static int usb_stor_blk_read(struct device_d *disk_dev, uint64_t sector_start,
-                             unsigned sector_count, void *buffer)
+static int usb_stor_blk_read(struct block_device *blk, void *buffer, int block,
+				int num_blocks)
 {
-	return usb_stor_blk_io(io_rd, disk_dev, sector_start, sector_count,
-	                       buffer);
+	return usb_stor_blk_io(io_rd, blk, block, num_blocks, buffer);
 }
 
+static struct block_device_ops usb_mass_storage_ops = {
+	.read = usb_stor_blk_read,
+#ifdef CONFIG_BLOCK_WRITE
+	.write = usb_stor_blk_write,
+#endif
+};
 
 /***********************************************************************
  * Block device routines
@@ -302,6 +305,16 @@ static int usb_stor_blk_read(struct device_d *disk_dev, uint64_t sector_start,
 
 static unsigned char us_io_buf[512];
 
+static int usb_limit_blk_cnt(unsigned cnt)
+{
+	if (cnt > 0x7fffffff) {
+		pr_warn("Limiting device size due to 31 bit contraints\n");
+		return 0x7fffffff;
+	}
+
+	return (int)cnt;
+}
+
 /* Prepare a disk device */
 static int usb_stor_init_blkdev(struct us_blk_dev *pblk_dev)
 {
@@ -313,7 +326,7 @@ static int usb_stor_init_blkdev(struct us_blk_dev *pblk_dev)
 	us_ccb.pdata = us_io_buf;
 	us_ccb.lun = pblk_dev->lun;
 
-	pblk_dev->blknum = 0;
+	pblk_dev->blk.num_blocks = 0;
 	usb_disable_asynch(1);
 
 	/* get device info */
@@ -350,11 +363,12 @@ static int usb_stor_init_blkdev(struct us_blk_dev *pblk_dev)
 	}
 	pcap = (unsigned long *)us_ccb.pdata;
 	US_DEBUGP("Read Capacity returns: 0x%lx, 0x%lx\n", pcap[0], pcap[1]);
-	pblk_dev->blknum = be32_to_cpu(pcap[0]);
-	pblk_dev->blksz = be32_to_cpu(pcap[1]);
-	pblk_dev->blknum++;
-	US_DEBUGP("Capacity = 0x%llx, blocksz = 0x%lx\n",
-	          pblk_dev->blknum, pblk_dev->blksz);
+	pblk_dev->blk.num_blocks = usb_limit_blk_cnt(be32_to_cpu(pcap[0]) + 1);
+	if (be32_to_cpu(pcap[1]) != SECTOR_SIZE)
+		pr_warn("Support only %d bytes sectors\n", SECTOR_SIZE);
+	pblk_dev->blk.blockbits = SECTOR_SHIFT;
+	US_DEBUGP("Capacity = 0x%x, blockshift = 0x%x\n",
+	          pblk_dev->blk.num_blocks, pblk_dev->blk.blockbits);
 
 Exit:
 	usb_disable_asynch(0);
@@ -362,39 +376,45 @@ Exit:
 }
 
 /* Create and register a disk device for the specified LUN */
-static int usb_stor_add_blkdev(struct us_data *us, unsigned char lun)
+static int usb_stor_add_blkdev(struct us_data *us, struct device_d *dev,
+							unsigned char lun)
 {
 	struct us_blk_dev *pblk_dev;
-	struct device_d *pdev;
-	struct ata_interface *pata_if;
 	int result;
 
-	/* allocate blk dev data */
-	pblk_dev = (struct us_blk_dev *)malloc(sizeof(struct us_blk_dev));
-	if (!pblk_dev)
-		return -ENOMEM;
-	memset(pblk_dev, 0, sizeof(struct us_blk_dev));
+	/* allocate a new USB block device */
+	pblk_dev = xzalloc(sizeof(struct us_blk_dev));
 
 	/* initialize blk dev data */
+	pblk_dev->blk.dev = dev;
+	pblk_dev->blk.ops = &usb_mass_storage_ops;
 	pblk_dev->us = us;
 	pblk_dev->lun = lun;
-	pata_if = &pblk_dev->ata_if;
-	pata_if->read = &usb_stor_blk_read;
-	pata_if->write = &usb_stor_blk_write;
-	pata_if->priv = pblk_dev;
-	pdev = &pblk_dev->dev;
-	strcpy(pdev->name, "disk");
-	pdev->platform_data = pata_if;
 
 	/* read some info and get the unit ready */
 	result = usb_stor_init_blkdev(pblk_dev);
 	if (result < 0)
 		goto BadDevice;
 
-	/* register disk device */
-	result = register_device(pdev);
-	if (result < 0)
+	result = cdev_find_free_number("disk");
+	if (result == -1)
+		pr_err("Cannot find a free number for the disk node\n");
+	pr_info("Using index %d for the new disk\n", result);
+
+	pblk_dev->blk.cdev.name = asprintf("disk%d", result);
+	pblk_dev->blk.blockbits = SECTOR_SHIFT;
+
+	result = blockdevice_register(&pblk_dev->blk);
+	if (result != 0) {
+		dev_err(dev, "Failed to register blockdevice\n");
 		goto BadDevice;
+	}
+
+	/* create partitions on demand */
+	result = parse_partition_table(&pblk_dev->blk);
+	if (result != 0)
+		dev_warn(dev, "No partition table found\n");
+
 	list_add_tail(&pblk_dev->list, &us_blkdev_list);
 	US_DEBUGP("USB disk device successfully added\n");
 
@@ -485,7 +505,7 @@ static int usb_stor_scan(struct usb_device *usbdev, struct us_data *us)
 
 	/* register a disk device for each active LUN */
 	for (lun=0; lun<=us->max_lun; lun++) {
-		if (usb_stor_add_blkdev(us, lun) == 0)
+		if (usb_stor_add_blkdev(us, &usbdev->dev, lun) == 0)
 			num_devs++;
 	}
 
diff --git a/drivers/usb/storage/usb.h b/drivers/usb/storage/usb.h
index 17a1e12..5942393 100644
--- a/drivers/usb/storage/usb.h
+++ b/drivers/usb/storage/usb.h
@@ -26,7 +26,8 @@
 #define _STORAGE_USB_H_
 
 #include <usb/usb.h>
-#include <ata.h>
+#include <block.h>
+#include <disks.h>
 #include <scsi.h>
 #include <linux/list.h>
 
@@ -85,10 +86,7 @@ struct us_data {
 /* one us_blk_dev object allocated per LUN */
 struct us_blk_dev {
 	struct us_data		*us;		/* LUN's enclosing dev */
-	struct device_d		dev;		/* intf to generic driver */
-	struct ata_interface	ata_if;		/* intf to "disk" driver */
-	uint64_t		blknum;		/* capacity */
-	unsigned long		blksz;		/* block size */
+	struct block_device	blk;		/* the blockdevice for the dev */
 	unsigned char 		lun;		/* the LUN of this blk dev */
 	struct list_head	list;		/* siblings */
 };
diff --git a/include/mci.h b/include/mci.h
index 69cffe8..2375581 100644
--- a/include/mci.h
+++ b/include/mci.h
@@ -31,6 +31,7 @@
 #define _MCI_H_
 
 #include <linux/list.h>
+#include <block.h>
 
 /* Firmware revisions for SD cards */
 #define SD_VERSION_SD		0x20000
@@ -194,7 +195,6 @@ struct mci_data {
 /** host information */
 struct mci_host {
 	struct device_d *hw_dev;	/**< the host MCI hardware device */
-	struct device_d dev;		/**< our device */
 	unsigned voltages;
 	unsigned host_caps;	/**< Host's interface capabilities, refer MMC_VDD_* */
 	unsigned f_min;		/**< host interface lower limit */
@@ -212,6 +212,7 @@ struct mci_host {
 
 /** MMC/SD and interface instance information */
 struct mci {
+	struct block_device blk;	/**< the blockdevice for the card */
 	unsigned version;
 	/** != 0 when a high capacity card is connected (OCR -> OCR_HCS) */
 	int high_capacity;
-- 
1.7.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

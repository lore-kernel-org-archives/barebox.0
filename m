Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q8CzH-00014Z-Ld
	for barebox@lists.infradead.org; Fri, 08 Apr 2011 14:48:42 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  8 Apr 2011 16:48:34 +0200
Message-Id: <1302274116-9215-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1302274116-9215-1-git-send-email-s.hauer@pengutronix.de>
References: <1302274116-9215-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/4] ata: use block support
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/ata/Kconfig      |    1 +
 drivers/ata/disk_drive.c |  192 ++++++++-------------------------------------
 2 files changed, 35 insertions(+), 158 deletions(-)

diff --git a/drivers/ata/Kconfig b/drivers/ata/Kconfig
index b43c975..05cba70 100644
--- a/drivers/ata/Kconfig
+++ b/drivers/ata/Kconfig
@@ -1,4 +1,5 @@
 menuconfig ATA
+	select BLOCK
 	bool "ATA                           "
 	help
 	  Add support for ATA types of drives like harddisks and CDROMs.
diff --git a/drivers/ata/disk_drive.c b/drivers/ata/disk_drive.c
index a54429a..4ad5a7a 100644
--- a/drivers/ata/disk_drive.c
+++ b/drivers/ata/disk_drive.c
@@ -36,6 +36,8 @@
 #include <string.h>
 #include <linux/kernel.h>
 #include <malloc.h>
+#include <common.h>
+#include <block.h>
 
 /**
  * Description of one partition table entry (D*S type)
@@ -121,149 +123,31 @@ static int disk_register_partitions(struct device_d *dev, struct partition_entry
 	return 0;
 }
 
-/**
- * Write some data to a disk
- * @param cdev the device to write to
- * @param _buf source of data
- * @param count byte count to write
- * @param offset where to write to disk
- * @param flags Ignored
- * @return Written bytes or negative value in case of failure
- */
-static ssize_t disk_write(struct cdev *cdev, const void *_buf, size_t count, ulong offset, ulong flags)
-{
-	struct device_d *dev = cdev->dev;
-	struct ata_interface *intf = dev->platform_data;
-	int rc;
-	unsigned sep_count = offset & (SECTOR_SIZE - 1);
-	ssize_t written = 0;
-
-	/* starting at no sector boundary? */
-	if (sep_count != 0) {
-		uint8_t tmp_buf[SECTOR_SIZE];
-		unsigned to_write = min(SECTOR_SIZE - sep_count, count);
-
-		rc = intf->read(dev, offset / SECTOR_SIZE, 1, tmp_buf);
-		if (rc != 0) {
-			dev_err(dev, "Cannot read data\n");
-			return -1;
-		}
-		memcpy(&tmp_buf[sep_count], _buf, to_write);
-		rc = intf->write(dev, offset / SECTOR_SIZE, 1, tmp_buf);
-		if (rc != 0) {
-			dev_err(dev, "Cannot write data\n");
-			return -1;
-		}
-
-		_buf += to_write;
-		offset += to_write;
-		count -= to_write;
-		written += to_write;
-	}
-
-	/* full sector part */
-	sep_count = count / SECTOR_SIZE;
-	if (sep_count) {
-		rc = intf->write(dev, offset / SECTOR_SIZE, sep_count, _buf);
-		if (rc != 0) {
-			dev_err(dev, "Cannot write data\n");
-			return -1;
-		}
-		_buf += sep_count * SECTOR_SIZE;
-		offset += sep_count * SECTOR_SIZE;
-		count -= sep_count * SECTOR_SIZE;
-		written += sep_count * SECTOR_SIZE;
-	}
-
-	/* ending at no sector boundary? */
-	if (count) {
-		uint8_t tmp_buf[SECTOR_SIZE];
+struct ata_block_device {
+	struct block_device blk;
+	struct device_d *dev;
+	struct ata_interface *intf;
+};
 
-		rc = intf->read(dev, offset / SECTOR_SIZE, 1, tmp_buf);
-		if (rc != 0) {
-			dev_err(dev, "Cannot read data\n");
-			return -1;
-		}
-		memcpy(tmp_buf, _buf, count);
-		rc = intf->write(dev, offset / SECTOR_SIZE, 1, tmp_buf);
-		if (rc != 0) {
-			dev_err(dev, "Cannot write data\n");
-			return -1;
-		}
-		written += count;
-	}
+static int atablk_read(struct block_device *blk, void *buf, int block,
+		int num_blocks)
+{
+	struct ata_block_device *atablk = container_of(blk, struct ata_block_device, blk);
 
-	return written;
+	return atablk->intf->read(atablk->dev, block, num_blocks, buf);
 }
 
-/**
- * Read some data from a disk
- * @param cdev the device to read from
- * @param _buf destination of the data
- * @param count byte count to read
- * @param offset where to read from
- * @param flags Ignored
- * @return Read bytes or negative value in case of failure
- */
-static ssize_t disk_read(struct cdev *cdev, void *_buf, size_t count, ulong offset, ulong flags)
+static int atablk_write(struct block_device *blk, const void *buf, int block,
+		int num_blocks)
 {
-	struct device_d *dev = cdev->dev;
-	struct ata_interface *intf = dev->platform_data;
-	int rc;
-	unsigned sep_count = offset & (SECTOR_SIZE - 1);
-	ssize_t read = 0;
+	struct ata_block_device *atablk = container_of(blk, struct ata_block_device, blk);
 
-	/* starting at no sector boundary? */
-	if (sep_count != 0) {
-		uint8_t tmp_buf[SECTOR_SIZE];
-		unsigned to_read = min(SECTOR_SIZE - sep_count, count);
-
-		rc = intf->read(dev, offset / SECTOR_SIZE, 1, tmp_buf);
-		if (rc != 0) {
-			dev_err(dev, "Cannot read data\n");
-			return -1;
-		}
-		memcpy(_buf, &tmp_buf[sep_count], to_read);
-		_buf += to_read;
-		offset += to_read;
-		count -= to_read;
-		read += to_read;
-	}
-
-	/* full sector part */
-	sep_count = count / SECTOR_SIZE;
-	if (sep_count) {
-		rc = intf->read(dev, offset / SECTOR_SIZE, sep_count, _buf);
-		if (rc != 0) {
-			dev_err(dev, "Cannot read data\n");
-			return -1;
-		}
-		_buf += sep_count * SECTOR_SIZE;
-		offset += sep_count * SECTOR_SIZE;
-		count -= sep_count * SECTOR_SIZE;
-		read += sep_count * SECTOR_SIZE;
-	}
-
-	/* ending at no sector boundary? */
-	if (count) {
-		uint8_t tmp_buf[SECTOR_SIZE];
-
-		rc = intf->read(dev, offset / SECTOR_SIZE, 1, tmp_buf);
-		if (rc != 0) {
-			dev_err(dev, "Cannot read data\n");
-			return -1;
-		}
-		memcpy(_buf, tmp_buf, count);
-		read += count;
-	}
-
-	return read;
+	return atablk->intf->write(atablk->dev, block, num_blocks, buf);
 }
 
-static struct file_operations disk_ops = {
-	.read  = disk_read,
-	.write = disk_write,
-	.lseek = dev_lseek_default,
+static struct block_device_ops ataops = {
+	.read = atablk_read,
+	.write = atablk_write,
 };
 
 /**
@@ -274,7 +158,7 @@ static int disk_probe(struct device_d *dev)
 	uint8_t *sector;
 	int rc;
 	struct ata_interface *intf = dev->platform_data;
-	struct cdev *disk_cdev;
+	struct ata_block_device *atablk = xzalloc(sizeof(*atablk));
 
 	sector = xmalloc(SECTOR_SIZE);
 
@@ -285,9 +169,6 @@ static int disk_probe(struct device_d *dev)
 		goto on_error;
 	}
 
-	/* It seems a valuable disk. Register it */
-	disk_cdev = xzalloc(sizeof(struct cdev));
-
 	/*
 	 * BIOS based disks needs special handling. Not the driver can
 	 * enumerate the hardware, the BIOS did it already. To show the user
@@ -296,23 +177,25 @@ static int disk_probe(struct device_d *dev)
 	 */
 #ifdef CONFIG_ATA_BIOS
 	if (strcmp(dev->driver->name, "biosdisk") == 0)
-		disk_cdev->name = asprintf("biosdisk%d", dev->id);
+		atablk->blk.cdev.name = asprintf("biosdisk%d", dev->id);
 	else
 #endif
-		disk_cdev->name = asprintf("disk%d", dev->id);
+		atablk->blk.cdev.name = asprintf("disk%d", dev->id);
 
 	/* On x86, BIOS based disks are coming without a valid .size field */
 	if (dev->size == 0) {
-		/*
-		 * We need always the size of the drive, else its nearly impossible
-		 * to do anything with it (at least with the generic routines)
-		 */
-		disk_cdev->size = 32;
-	} else
-		disk_cdev->size = dev->size;
-	disk_cdev->ops = &disk_ops;
-	disk_cdev->dev = dev;
-	devfs_create(disk_cdev);
+		/* guess the size of this drive if not otherwise given */
+		dev->size = disk_guess_size(dev,
+			(struct partition_entry*)&sector[446]) * SECTOR_SIZE;
+		dev_info(dev, "Drive size guessed to %u kiB\n", dev->size / 1024);
+	}
+
+	atablk->blk.num_blocks = dev->size / SECTOR_SIZE;
+	atablk->blk.ops = &ataops;
+	atablk->blk.blockbits = 9;
+	atablk->dev = dev;
+	atablk->intf = intf;
+	blockdevice_register(&atablk->blk);
 
 	if ((sector[510] != 0x55) || (sector[511] != 0xAA)) {
 		dev_info(dev, "No partition table found\n");
@@ -320,13 +203,6 @@ static int disk_probe(struct device_d *dev)
 		goto on_error;
 	}
 
-	if (dev->size == 0) {
-		/* guess the size of this drive if not otherwise given */
-		dev->size = disk_guess_size(dev,
-			(struct partition_entry*)&sector[446]) * SECTOR_SIZE;
-		dev_info(dev, "Drive size guessed to %u kiB\n", dev->size / 1024);
-		disk_cdev->size = dev->size;
-	}
 
 	rc = disk_register_partitions(dev, (struct partition_entry*)&sector[446]);
 
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

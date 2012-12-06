Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tgbay-00081N-Tg
 for barebox@lists.infradead.org; Thu, 06 Dec 2012 13:34:45 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  6 Dec 2012 14:34:24 +0100
Message-Id: <1354800870-28385-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1354800870-28385-1-git-send-email-s.hauer@pengutronix.de>
References: <1354800870-28385-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/9] ata: split ide sff suport to separate file
To: barebox@lists.infradead.org

Currently we only support oldschool IDE SFF devices. This is done
by registering a register layout struct and everything else is done
by the generic IDE SFF driver. Since modern ATA devices still use
ATA, but not the SFF interface anymore, split out the IDE SFF support
to a separate file to allow for other types of ata interfaces.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/ata/Kconfig             |    6 +-
 drivers/ata/Makefile            |    1 +
 drivers/ata/disk_ata_drive.c    |  342 ++++----------------------------------
 drivers/ata/ide-sff.c           |  343 +++++++++++++++++++++++++++++++++++++++
 drivers/ata/intf_platform_ide.c |    2 +-
 drivers/ata/pata-imx.c          |    2 +-
 include/ata_drive.h             |   42 ++++-
 7 files changed, 424 insertions(+), 314 deletions(-)
 create mode 100644 drivers/ata/ide-sff.c

diff --git a/drivers/ata/Kconfig b/drivers/ata/Kconfig
index 459fac3..c66f13d 100644
--- a/drivers/ata/Kconfig
+++ b/drivers/ata/Kconfig
@@ -9,6 +9,9 @@ menuconfig DISK
 
 if DISK
 
+config DISK_IDE_SFF
+	bool
+
 config DISK_WRITE
 	select BLOCK_WRITE
 	bool "support writing to disk drives"
@@ -35,6 +38,7 @@ comment "interface types"
 config DISK_INTF_PLATFORM_IDE
 	bool "Platform IDE"
 	select DISK_ATA
+	select DISK_IDE_SFF
 	help
 	  Generic platform driver for simple IDE like interfaces to a connected
 	  ATA device.
@@ -42,7 +46,7 @@ config DISK_INTF_PLATFORM_IDE
 config DISK_PATA_IMX
 	bool "i.MX PATA driver"
 	depends on ARCH_IMX
-	select DISK_ATA
+	depends on DISK_INTF_PLATFORM_IDE
 	help
 	  select this to enable support for the i.MX PATA driver
 
diff --git a/drivers/ata/Makefile b/drivers/ata/Makefile
index eaeddae..e27299e 100644
--- a/drivers/ata/Makefile
+++ b/drivers/ata/Makefile
@@ -1,6 +1,7 @@
 # drive types
 
 obj-$(CONFIG_DISK_BIOS) += disk_bios_drive.o
+obj-$(CONFIG_DISK_IDE_SFF) += ide-sff.o
 obj-$(CONFIG_DISK_ATA) += disk_ata_drive.o
 
 # interface types
diff --git a/drivers/ata/disk_ata_drive.c b/drivers/ata/disk_ata_drive.c
index b65a660..a1df4bd 100644
--- a/drivers/ata/disk_ata_drive.c
+++ b/drivers/ata/disk_ata_drive.c
@@ -25,28 +25,6 @@
 #include <ata_drive.h>
 #include <disks.h>
 
-#define ATA_CMD_ID_DEVICE 0xEC
-#define ATA_CMD_RD_CONF 0x40
-#define ATA_CMD_RD	0x20
-#define ATA_CMD_WR	0x30
-
-#define DISK_MASTER 0
-#define DISK_SLAVE 1
-
-/* max timeout for a rotating disk in [ms] */
-#define MAX_TIMEOUT 5000
-
-/**
- * Collection of data we need to know about this drive
- */
-struct ata_drive_access {
-	struct block_device blk; /**< the main device */
-	struct ata_ioports *io;	/**< register file */
-	uint16_t id[(SECTOR_SIZE / sizeof(uint16_t))];
-};
-
-#define to_ata_drive_access(x) container_of((x), struct ata_drive_access, blk)
-
 #define ata_id_u32(id,n)        \
         (((uint32_t) (id)[(n) + 1] << 16) | ((uint32_t) (id)[(n)]))
 #define ata_id_u64(id,n)        \
@@ -57,20 +35,6 @@ struct ata_drive_access {
 
 #define ata_id_has_lba(id)               ((id)[49] & (1 << 9))
 
-/* drive's status flags */
-#define ATA_STATUS_BUSY (1 << 7)
-#define ATA_STATUS_READY (1 << 6)
-#define ATA_STATUS_WR_FLT (1 << 5)
-#define ATA_STATUS_DSC (1 << 4)
-#define ATA_STATUS_DRQ (1 << 3)
-#define ATA_STATUS_CORR (1 << 2)
-#define ATA_STATUS_IDX (1 << 1)
-#define ATA_STATUS_ERROR (1 << 0)
-/* command flags */
-#define LBA_FLAG (1 << 6)
-#define ATA_DEVCTL_SOFT_RESET (1 << 2)
-#define ATA_DEVCTL_INTR_DISABLE (1 << 1)
-
 enum {
 	ATA_ID_SERNO		= 10,
 #define ATA_ID_SERNO_LEN 20
@@ -242,225 +206,6 @@ static void ata_fix_endianess(uint16_t *buf, unsigned wds)
 }
 
 /**
- * Read the status register of the ATA drive
- * @param io Register file
- * @return Register's content
- */
-static uint8_t ata_rd_status(struct ata_ioports *io)
-{
-	return readb(io->status_addr);
-}
-
-/**
- * Wait until the disk is busy or time out
- * @param io Register file
- * @param timeout Timeout in [ms]
- * @return 0 on success, -ETIMEDOUT else
- */
-static int ata_wait_busy(struct ata_ioports *io, unsigned timeout)
-{
-	uint8_t status;
-	uint64_t start = get_time_ns();
-	uint64_t toffs = timeout * 1000 * 1000;
-
-	do {
-		status = ata_rd_status(io);
-		if (status & ATA_STATUS_BUSY)
-			return 0;
-	} while (!is_timeout(start, toffs));
-
-	return -ETIMEDOUT;
-}
-
-/**
- * Wait until the disk is ready again or time out
- * @param io Register file
- * @param timeout Timeout in [ms]
- * @return 0 on success, -ETIMEDOUT else
- *
- * This function is useful to check if the disk has accepted a command.
- */
-static int ata_wait_ready(struct ata_ioports *io, unsigned timeout)
-{
-	uint8_t status;
-	uint64_t start = get_time_ns();
-	uint64_t toffs = timeout * 1000 * 1000;
-
-	do {
-		status = ata_rd_status(io);
-		if (!(status & ATA_STATUS_BUSY)) {
-			if (status & ATA_STATUS_READY)
-				return 0;
-		}
-	} while (!is_timeout(start, toffs));
-
-	return -ETIMEDOUT;
-}
-
-/**
- * Setup the sector number in LBA notation (LBA28)
- * @param io Register file
- * @param drive 0 master drive, 1 slave drive
- * @param num Sector number
- *
- * @todo LBA48 support
- */
-static int ata_set_lba_sector(struct ata_ioports *io, unsigned drive, uint64_t num)
-{
-	if (num > 0x0FFFFFFF || drive > 1)
-		return -EINVAL;
-
-	writeb(0xA0 | LBA_FLAG | drive << 4 | num >> 24, io->device_addr);
-	writeb(0x00, io->error_addr);
-	writeb(0x01, io->nsect_addr);
-	writeb(num, io->lbal_addr);	/* 0 ... 7 */
-	writeb(num >> 8, io->lbam_addr); /* 8 ... 15 */
-	writeb(num >> 16, io->lbah_addr); /* 16 ... 23 */
-
-	return 0;
-}
-
-/**
- * Write an ATA command into the disk
- * @param io Register file
- * @param cmd Command to write
- * @return 0 on success
- */
-static int ata_wr_cmd(struct ata_ioports *io, uint8_t cmd)
-{
-	int rc;
-
-	rc = ata_wait_ready(io, MAX_TIMEOUT);
-	if (rc != 0)
-		return rc;
-
-	writeb(cmd, io->command_addr);
-	return 0;
-}
-
-/**
- * Write a new value into the "device control register"
- * @param io Register file
- * @param val Value to write
- */
-static void ata_wr_dev_ctrl(struct ata_ioports *io, uint8_t val)
-{
-	writeb(val, io->ctl_addr);
-}
-
-/**
- * Read one sector from the drive (always SECTOR_SIZE bytes at once)
- * @param io Register file
- * @param buf Buffer to read the data into
- */
-static void ata_rd_sector(struct ata_ioports *io, void *buf)
-{
-	unsigned u = SECTOR_SIZE / sizeof(uint16_t);
-	uint16_t *b = buf;
-
-	if (io->dataif_be) {
-		for (; u > 0; u--)
-			*b++ = be16_to_cpu(readw(io->data_addr));
-	} else {
-		for (; u > 0; u--)
-			*b++ = le16_to_cpu(readw(io->data_addr));
-	}
-}
-
-/**
- * Write one sector into the drive
- * @param io Register file
- * @param buf Buffer to read the data from
- */
-static void ata_wr_sector(struct ata_ioports *io, const void *buf)
-{
-	unsigned u = SECTOR_SIZE / sizeof(uint16_t);
-	const uint16_t *b = buf;
-
-	if (io->dataif_be) {
-		for (; u > 0; u--)
-			writew(cpu_to_be16(*b++), io->data_addr);
-	} else {
-		for (; u > 0; u--)
-			writew(cpu_to_le16(*b++), io->data_addr);
-	}
-}
-
-/**
- * Read the ATA disk's description info
- * @param d All we need to know about the disk
- * @return 0 on success
- */
-static int ata_get_id(struct ata_drive_access *d)
-{
-	int rc;
-
-	writeb(0xA0, d->io->device_addr);	/* FIXME drive */
-	writeb(0x00, d->io->lbal_addr);
-	writeb(0x00, d->io->lbam_addr);
-	writeb(0x00, d->io->lbah_addr);
-
-	rc = ata_wr_cmd(d->io, ATA_CMD_ID_DEVICE);
-	if (rc != 0)
-		return rc;
-
-	rc = ata_wait_ready(d->io, MAX_TIMEOUT);
-	if (rc != 0)
-		return rc;
-
-	ata_rd_sector(d->io, &d->id);
-
-	ata_fix_endianess(d->id, SECTOR_SIZE / sizeof(uint16_t));
-
-	return ata_id_is_valid(d->id);
-}
-
-static int ata_reset(struct ata_ioports *io)
-{
-	int rc;
-	uint8_t reg;
-
-	/* try a hard reset first (if available) */
-	if (io->reset != NULL) {
-		pr_debug("%s: Resetting drive...\n", __func__);
-		io->reset(1);
-		rc = ata_wait_busy(io, 500);
-		io->reset(0);
-		if (rc == 0) {
-			rc = ata_wait_ready(io, MAX_TIMEOUT);
-			if (rc != 0)
-				return rc;
-		} else {
-			pr_debug("%s: Drive does not respond to RESET line. Ignored\n",
-					__func__);
-		}
-	}
-
-	/* try a soft reset */
-	ata_wr_dev_ctrl(io, ATA_DEVCTL_SOFT_RESET | ATA_DEVCTL_INTR_DISABLE);
-	rc = ata_wait_busy(io, MAX_TIMEOUT);	/* does the drive accept the command? */
-	if (rc != 0) {
-		pr_debug("%s: Drive fails on soft reset\n", __func__);
-		return rc;
-	}
-	ata_wr_dev_ctrl(io, ATA_DEVCTL_INTR_DISABLE);
-	rc = ata_wait_ready(io, MAX_TIMEOUT);
-	if (rc != 0) {
-		pr_debug("%s: Drive fails after soft reset\n", __func__);
-		return rc;
-	}
-
-	reg = ata_rd_status(io) & 0xf;
-
-	if (reg == 0xf) {
-		pr_debug("%s: Seems no drive connected!\n", __func__);
-		return -ENODEV;
-	}
-
-	return 0;
-}
-
-/**
  * Read a chunk of sectors from the drive
  * @param blk All info about the block device we need
  * @param buffer Buffer to read into
@@ -476,27 +221,9 @@ static int ata_reset(struct ata_ioports *io)
 static int ata_read(struct block_device *blk, void *buffer, int block,
 				int num_blocks)
 {
-	int rc;
-	uint64_t sector = block;
-	struct ata_drive_access *drv = to_ata_drive_access(blk);
-
-	while (num_blocks) {
-		rc = ata_set_lba_sector(drv->io, DISK_MASTER, sector);
-		if (rc != 0)
-			return rc;
-		rc = ata_wr_cmd(drv->io, ATA_CMD_RD);
-		if (rc != 0)
-			return rc;
-		rc = ata_wait_ready(drv->io, MAX_TIMEOUT);
-		if (rc != 0)
-			return rc;
-		ata_rd_sector(drv->io, buffer);
-		num_blocks--;
-		sector++;
-		buffer += SECTOR_SIZE;
-	}
+	struct ata_port *port = container_of(blk, struct ata_port, blk);
 
-	return 0;
+	return port->ops->read(port, buffer, block, num_blocks);
 }
 
 /**
@@ -515,24 +242,9 @@ static int ata_read(struct block_device *blk, void *buffer, int block,
 static int __maybe_unused ata_write(struct block_device *blk,
 				const void *buffer, int block, int num_blocks)
 {
-	int rc;
-	uint64_t sector = block;
-	struct ata_drive_access *drv = to_ata_drive_access(blk);
-
-	while (num_blocks) {
-		rc = ata_set_lba_sector(drv->io, DISK_MASTER, sector);
-		if (rc != 0)
-			return rc;
-		rc = ata_wr_cmd(drv->io, ATA_CMD_WR);
-		if (rc != 0)
-			return rc;
-		ata_wr_sector(drv->io, buffer);
-		num_blocks--;
-		sector++;
-		buffer += SECTOR_SIZE;
-	}
+	struct ata_port *port = container_of(blk, struct ata_port, blk);
 
-	return 0;
+	return port->ops->write(port, buffer, block, num_blocks);
 }
 
 static struct block_device_ops ata_ops = {
@@ -548,41 +260,52 @@ static struct block_device_ops ata_ops = {
  * @param io ATA register file description
  * @return 0 on success
  */
-int register_ata_drive(struct device_d *dev, struct ata_ioports *io)
+int ata_port_register(struct ata_port *port)
 {
 	int rc;
-	struct ata_drive_access *drive;
+	struct ata_port_operations *ops = port->ops;
+	struct device_d *dev = port->dev;
 
-	drive = xzalloc(sizeof(struct ata_drive_access));
+	port->id = xzalloc(SECTOR_SIZE);
 
-	drive->io = io;
-	drive->blk.dev = dev;
-	drive->blk.ops = &ata_ops;
+	port->blk.dev = dev;
+	port->blk.ops = &ata_ops;
 
-	rc = ata_reset(io);
-	if (rc) {
-		dev_dbg(dev, "Resetting failed\n");
-		goto on_error;
+	if (ops->reset) {
+		rc = ops->reset(port);
+		if (rc) {
+			dev_dbg(dev, "Resetting failed\n");
+			goto on_error;
+		}
 	}
 
-	rc = ata_get_id(drive);
+	rc = ops->read_id(port, port->id);
 	if (rc != 0) {
 		dev_dbg(dev, "Reading ID failed\n");
 		goto on_error;
 	}
 
+	ata_fix_endianess(port->id, SECTOR_SIZE / sizeof(uint16_t));
+
+	rc = ata_id_is_valid(port->id);
+	if (rc) {
+		dev_err(dev, "ata id invalid\n");
+		free(port->id);
+		return rc;
+	}
+
 #ifdef DEBUG
-	ata_dump_id(drive->id);
+	ata_dump_id(port->id);
 #endif
 	rc = cdev_find_free_index("ata");
 	if (rc == -1)
 		pr_err("Cannot find a free index for the disk node\n");
 
-	drive->blk.num_blocks = ata_id_n_sectors(drive->id);
-	drive->blk.cdev.name = asprintf("ata%d", rc);
-	drive->blk.blockbits = SECTOR_SHIFT;
+	port->blk.num_blocks = ata_id_n_sectors(port->id);
+	port->blk.cdev.name = asprintf("ata%d", rc);
+	port->blk.blockbits = SECTOR_SHIFT;
 
-	rc = blockdevice_register(&drive->blk);
+	rc = blockdevice_register(&port->blk);
 	if (rc != 0) {
 		dev_err(dev, "Failed to register blockdevice\n");
 		goto on_error;
@@ -591,14 +314,13 @@ int register_ata_drive(struct device_d *dev, struct ata_ioports *io)
 	dev_info(dev, "registered /dev/%s\n", port->blk.cdev.name);
 
 	/* create partitions on demand */
-	rc = parse_partition_table(&drive->blk);
+	rc = parse_partition_table(&port->blk);
 	if (rc != 0)
 		dev_warn(dev, "No partition table found\n");
 
 	return 0;
 
 on_error:
-	free(drive);
 	return rc;
 }
 
diff --git a/drivers/ata/ide-sff.c b/drivers/ata/ide-sff.c
new file mode 100644
index 0000000..6a452d6
--- /dev/null
+++ b/drivers/ata/ide-sff.c
@@ -0,0 +1,343 @@
+#include <common.h>
+#include <ata_drive.h>
+#include <io.h>
+#include <clock.h>
+#include <disks.h>
+#include <malloc.h>
+
+/* max timeout for a rotating disk in [ms] */
+#define MAX_TIMEOUT 5000
+
+/**
+ * Collection of data we need to know about this drive
+ */
+struct ide_port {
+	struct ata_ioports *io;	/**< register file */
+	struct ata_port port;
+};
+
+#define to_ata_drive_access(x) container_of((x), struct ide_port, port)
+
+#define DISK_MASTER 0
+#define DISK_SLAVE 1
+
+/**
+ * Read the status register of the ATA drive
+ * @param io Register file
+ * @return Register's content
+ */
+static uint8_t ata_rd_status(struct ide_port *ide)
+{
+	return readb(ide->io->status_addr);
+}
+
+/**
+ * Wait until the disk is busy or time out
+ * @param io Register file
+ * @param timeout Timeout in [ms]
+ * @return 0 on success, -ETIMEDOUT else
+ */
+static int ata_wait_busy(struct ide_port *ide, unsigned timeout)
+{
+	uint8_t status;
+	uint64_t start = get_time_ns();
+	uint64_t toffs = timeout * 1000 * 1000;
+
+	do {
+		status = ata_rd_status(ide);
+		if (status & ATA_STATUS_BUSY)
+			return 0;
+	} while (!is_timeout(start, toffs));
+
+	return -ETIMEDOUT;
+}
+
+/**
+ * Wait until the disk is ready again or time out
+ * @param io Register file
+ * @param timeout Timeout in [ms]
+ * @return 0 on success, -ETIMEDOUT else
+ *
+ * This function is useful to check if the disk has accepted a command.
+ */
+static int ata_wait_ready(struct ide_port *ide, unsigned timeout)
+{
+	uint8_t status;
+	uint64_t start = get_time_ns();
+	uint64_t toffs = timeout * 1000 * 1000;
+
+	do {
+		status = ata_rd_status(ide);
+		if (!(status & ATA_STATUS_BUSY)) {
+			if (status & ATA_STATUS_READY)
+				return 0;
+		}
+	} while (!is_timeout(start, toffs));
+
+	return -ETIMEDOUT;
+}
+
+/**
+ * Setup the sector number in LBA notation (LBA28)
+ * @param io Register file
+ * @param drive 0 master drive, 1 slave drive
+ * @param num Sector number
+ *
+ * @todo LBA48 support
+ */
+static int ata_set_lba_sector(struct ide_port *ide, unsigned drive, uint64_t num)
+{
+	if (num > 0x0FFFFFFF || drive > 1)
+		return -EINVAL;
+
+	writeb(0xA0 | LBA_FLAG | drive << 4 | num >> 24, ide->io->device_addr);
+	writeb(0x00, ide->io->error_addr);
+	writeb(0x01, ide->io->nsect_addr);
+	writeb(num, ide->io->lbal_addr);	/* 0 ... 7 */
+	writeb(num >> 8, ide->io->lbam_addr); /* 8 ... 15 */
+	writeb(num >> 16, ide->io->lbah_addr); /* 16 ... 23 */
+
+	return 0;
+}
+
+/**
+ * Write an ATA command into the disk
+ * @param io Register file
+ * @param cmd Command to write
+ * @return 0 on success
+ */
+static int ata_wr_cmd(struct ide_port *ide, uint8_t cmd)
+{
+	int rc;
+
+	rc = ata_wait_ready(ide, MAX_TIMEOUT);
+	if (rc != 0)
+		return rc;
+
+	writeb(cmd, ide->io->command_addr);
+	return 0;
+}
+
+/**
+ * Write a new value into the "device control register"
+ * @param io Register file
+ * @param val Value to write
+ */
+static void ata_wr_dev_ctrl(struct ide_port *ide, uint8_t val)
+{
+	writeb(val, ide->io->ctl_addr);
+}
+
+/**
+ * Read one sector from the drive (always SECTOR_SIZE bytes at once)
+ * @param io Register file
+ * @param buf Buffer to read the data into
+ */
+static void ata_rd_sector(struct ide_port *ide, void *buf)
+{
+	unsigned u = SECTOR_SIZE / sizeof(uint16_t);
+	uint16_t *b = buf;
+
+	if (ide->io->dataif_be) {
+		for (; u > 0; u--)
+			*b++ = be16_to_cpu(readw(ide->io->data_addr));
+	} else {
+		for (; u > 0; u--)
+			*b++ = le16_to_cpu(readw(ide->io->data_addr));
+	}
+}
+
+/**
+ * Write one sector into the drive
+ * @param io Register file
+ * @param buf Buffer to read the data from
+ */
+static void ata_wr_sector(struct ide_port *ide, const void *buf)
+{
+	unsigned u = SECTOR_SIZE / sizeof(uint16_t);
+	const uint16_t *b = buf;
+
+	if (ide->io->dataif_be) {
+		for (; u > 0; u--)
+			writew(cpu_to_be16(*b++), ide->io->data_addr);
+	} else {
+		for (; u > 0; u--)
+			writew(cpu_to_le16(*b++), ide->io->data_addr);
+	}
+}
+
+/**
+ * Read the ATA disk's description info
+ * @param d All we need to know about the disk
+ * @return 0 on success
+ */
+static int ide_read_id(struct ata_port *port, void *buf)
+{
+	struct ide_port *ide = to_ata_drive_access(port);
+	int rc;
+
+	writeb(0xA0, ide->io->device_addr);	/* FIXME drive */
+	writeb(0x00, ide->io->lbal_addr);
+	writeb(0x00, ide->io->lbam_addr);
+	writeb(0x00, ide->io->lbah_addr);
+
+	rc = ata_wr_cmd(ide, ATA_CMD_ID_DEVICE);
+	if (rc != 0)
+		return rc;
+
+	rc = ata_wait_ready(ide, MAX_TIMEOUT);
+	if (rc != 0)
+		return rc;
+
+	ata_rd_sector(ide, buf);
+
+	return 0;
+}
+
+static int ide_reset(struct ata_port *port)
+{
+	struct ide_port *ide = to_ata_drive_access(port);
+	int rc;
+	uint8_t reg;
+
+	/* try a hard reset first (if available) */
+	if (ide->io->reset != NULL) {
+		pr_debug("%s: Resetting drive...\n", __func__);
+		ide->io->reset(1);
+		rc = ata_wait_busy(ide, 500);
+		ide->io->reset(0);
+		if (rc == 0) {
+			rc = ata_wait_ready(ide, MAX_TIMEOUT);
+			if (rc != 0)
+				return rc;
+		} else {
+			pr_debug("%s: Drive does not respond to RESET line. Ignored\n",
+					__func__);
+		}
+	}
+
+	/* try a soft reset */
+	ata_wr_dev_ctrl(ide, ATA_DEVCTL_SOFT_RESET | ATA_DEVCTL_INTR_DISABLE);
+	rc = ata_wait_busy(ide, MAX_TIMEOUT);	/* does the drive accept the command? */
+	if (rc != 0) {
+		pr_debug("%s: Drive fails on soft reset\n", __func__);
+		return rc;
+	}
+	ata_wr_dev_ctrl(ide, ATA_DEVCTL_INTR_DISABLE);
+	rc = ata_wait_ready(ide, MAX_TIMEOUT);
+	if (rc != 0) {
+		pr_debug("%s: Drive fails after soft reset\n", __func__);
+		return rc;
+	}
+
+	reg = ata_rd_status(ide) & 0xf;
+
+	if (reg == 0xf) {
+		pr_debug("%s: Seems no drive connected!\n", __func__);
+		return -ENODEV;
+	}
+
+	return 0;
+}
+
+/**
+ * Read a chunk of sectors from the drive
+ * @param blk All info about the block device we need
+ * @param buffer Buffer to read into
+ * @param block Sector's LBA number to start read from
+ * @param num_blocks Sector count to read
+ * @return 0 on success, anything else on failure
+ *
+ * This routine expects the buffer has the correct size to store all data!
+ *
+ * @note Due to 'block' is of type 'int' only small disks can be handled!
+ * @todo Optimize the read loop
+ */
+static int ide_read(struct ata_port *port, void *buffer, unsigned int block,
+				int num_blocks)
+{
+	int rc;
+	uint64_t sector = block;
+	struct ide_port *ide = to_ata_drive_access(port);
+
+	while (num_blocks) {
+		rc = ata_set_lba_sector(ide, DISK_MASTER, sector);
+		if (rc != 0)
+			return rc;
+		rc = ata_wr_cmd(ide, ATA_CMD_RD);
+		if (rc != 0)
+			return rc;
+		rc = ata_wait_ready(ide, MAX_TIMEOUT);
+		if (rc != 0)
+			return rc;
+		ata_rd_sector(ide, buffer);
+		num_blocks--;
+		sector++;
+		buffer += SECTOR_SIZE;
+	}
+
+	return 0;
+}
+
+/**
+ * Write a chunk of sectors into the drive
+ * @param blk All info about the block device we need
+ * @param buffer Buffer to write from
+ * @param block Sector's number to start write to
+ * @param num_blocks Sector count to write
+ * @return 0 on success, anything else on failure
+ *
+ * This routine expects the buffer has the correct size to read all data!
+ *
+ * @note Due to 'block' is of type 'int' only small disks can be handled!
+ * @todo Optimize the write loop
+ */
+static int __maybe_unused ide_write(struct ata_port *port,
+				const void *buffer, unsigned int block, int num_blocks)
+{
+	int rc;
+	uint64_t sector = block;
+	struct ide_port *ide = to_ata_drive_access(port);
+
+	while (num_blocks) {
+		rc = ata_set_lba_sector(ide, DISK_MASTER, sector);
+		if (rc != 0)
+			return rc;
+		rc = ata_wr_cmd(ide, ATA_CMD_WR);
+		if (rc != 0)
+			return rc;
+		ata_wr_sector(ide, buffer);
+		num_blocks--;
+		sector++;
+		buffer += SECTOR_SIZE;
+	}
+
+	return 0;
+}
+
+static struct ata_port_operations ide_ops = {
+	.read_id = ide_read_id,
+	.read = ide_read,
+#ifdef CONFIG_BLOCK_WRITE
+	.write = ide_write,
+#endif
+	.reset = ide_reset,
+};
+
+int ide_port_register(struct device_d *dev, struct ata_ioports *io)
+{
+	struct ide_port *ide;
+	int ret;
+
+	ide = xzalloc(sizeof(*ide));
+
+	ide->io = io;
+	ide->port.ops = &ide_ops;
+
+	ret = ata_port_register(&ide->port);
+
+	if (ret)
+		free(ide);
+
+	return ret;
+}
diff --git a/drivers/ata/intf_platform_ide.c b/drivers/ata/intf_platform_ide.c
index a1840f7..6473b38 100644
--- a/drivers/ata/intf_platform_ide.c
+++ b/drivers/ata/intf_platform_ide.c
@@ -95,7 +95,7 @@ static int platform_ide_probe(struct device_d *dev)
 	io->reset = pdata->reset;
 	io->dataif_be = pdata->dataif_be;
 
-	rc = register_ata_drive(dev, io);
+	rc = ide_port_register(dev, io);
 	if (rc != 0) {
 		dev_err(dev, "Cannot register IDE interface\n");
 		free(io);
diff --git a/drivers/ata/pata-imx.c b/drivers/ata/pata-imx.c
index 29531cb..202f537 100644
--- a/drivers/ata/pata-imx.c
+++ b/drivers/ata/pata-imx.c
@@ -172,7 +172,7 @@ static int imx_pata_probe(struct device_d *dev)
 
 	pata_imx_set_bus_timing(base, clk_get_rate(clk), 4);
 
-	ret= register_ata_drive(dev, io);
+	ret= ide_port_register(dev, io);
 	if (ret) {
 		dev_err(dev, "Cannot register IDE interface: %s\n",
 				strerror(-ret));
diff --git a/include/ata_drive.h b/include/ata_drive.h
index cdd8049..10edd51 100644
--- a/include/ata_drive.h
+++ b/include/ata_drive.h
@@ -16,6 +16,8 @@
 #ifndef ATA_DISK_H
 # define ATA_DISK
 
+#include <block.h>
+
 /* IDE register file */
 #define IDE_REG_DATA 0x00
 #define IDE_REG_ERR 0x01
@@ -33,6 +35,25 @@
 #define IDE_REG_DEV_CTL 0x00
 #define IDE_REG_DRV_ADDR 0x01
 
+#define ATA_CMD_ID_DEVICE 0xEC
+#define ATA_CMD_RD_CONF 0x40
+#define ATA_CMD_RD	0x20
+#define ATA_CMD_WR	0x30
+
+/* drive's status flags */
+#define ATA_STATUS_BUSY		(1 << 7)
+#define ATA_STATUS_READY	(1 << 6)
+#define ATA_STATUS_WR_FLT	(1 << 5)
+#define ATA_STATUS_DSC		(1 << 4)
+#define ATA_STATUS_DRQ		(1 << 3)
+#define ATA_STATUS_CORR		(1 << 2)
+#define ATA_STATUS_IDX		(1 << 1)
+#define ATA_STATUS_ERROR	(1 << 0)
+/* command flags */
+#define LBA_FLAG		(1 << 6)
+#define ATA_DEVCTL_SOFT_RESET	(1 << 2)
+#define ATA_DEVCTL_INTR_DISABLE	(1 << 1)
+
 /** addresses of each individual IDE drive register */
 struct ata_ioports {
 	void __iomem *cmd_addr;
@@ -55,8 +76,27 @@ struct ata_ioports {
 	int dataif_be;	/* true if 16 bit data register is big endian */
 };
 
+struct ata_port;
+
+struct ata_port_operations {
+	int (*read)(struct ata_port *port, void *buf, unsigned int block, int num_blocks);
+	int (*write)(struct ata_port *port, const void *buf, unsigned int block, int num_blocks);
+	int (*read_id)(struct ata_port *port, void *buf);
+	int (*reset)(struct ata_port *port);
+};
+
+struct ata_port {
+	struct ata_port_operations *ops;
+	struct device_d *dev;
+	void *drvdata;
+	struct block_device blk;
+	uint16_t *id;
+};
+
+int ide_port_register(struct device_d *, struct ata_ioports *);
+int ata_port_register(struct ata_port *port);
+
 struct device_d;
-extern int register_ata_drive(struct device_d*, struct ata_ioports*);
 
 /**
  * @file
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

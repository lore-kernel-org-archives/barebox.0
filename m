Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RQbjp-00019Z-ED
 for barebox@lists.infradead.org; Wed, 16 Nov 2011 09:25:07 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1RQbjM-000358-Pz
 for barebox@lists.infradead.org; Wed, 16 Nov 2011 10:24:32 +0100
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <jbe@pengutronix.de>) id 1RQbjM-0006YA-KV
 for barebox@lists.infradead.org; Wed, 16 Nov 2011 10:24:32 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Wed, 16 Nov 2011 10:24:26 +0100
Message-Id: <1321435467-19148-13-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 12/13] ATA Disk Support: Add support for native ATA type drives
To: barebox@lists.infradead.org

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 drivers/ata/Kconfig          |   12 +
 drivers/ata/Makefile         |    1 +
 drivers/ata/disk_ata_drive.c |  631 ++++++++++++++++++++++++++++++++++++++++++
 include/ata_drive.h          |  194 +++++++++++++
 4 files changed, 838 insertions(+), 0 deletions(-)
 create mode 100644 drivers/ata/disk_ata_drive.c
 create mode 100644 include/ata_drive.h

diff --git a/drivers/ata/Kconfig b/drivers/ata/Kconfig
index 86b5673..0a15863 100644
--- a/drivers/ata/Kconfig
+++ b/drivers/ata/Kconfig
@@ -24,6 +24,18 @@ config DISK_BIOS
 	  media to work on. Disadvantage is: Due to its 16 bit nature it is
 	  slow.
 
+config DISK_ATA
+	bool "ATA type drives"
+	select DISK_DRIVE
+	help
+	  Support for native ATA/IDE drives
+
+config DISK_LE_ATTACHED
+	bool "little endianess attachment"
+	depends on DISK_ATA
+	help
+	  How the drive's data port (16 bit) is connected to the CPU: LE or BE
+
 comment "interface types"
 
 endif
diff --git a/drivers/ata/Makefile b/drivers/ata/Makefile
index e2b41b7..cdbcbe7 100644
--- a/drivers/ata/Makefile
+++ b/drivers/ata/Makefile
@@ -1,6 +1,7 @@
 # drive types
 
 obj-$(CONFIG_DISK_BIOS) += disk_bios_drive.o
+obj-$(CONFIG_DISK_ATA) += disk_ata_drive.o
 
 # interface types
 
diff --git a/drivers/ata/disk_ata_drive.c b/drivers/ata/disk_ata_drive.c
new file mode 100644
index 0000000..cd0dabe
--- /dev/null
+++ b/drivers/ata/disk_ata_drive.c
@@ -0,0 +1,631 @@
+/*
+ * Copyright (C) 2011 Juergen Beisert, Pengutronix
+ *
+ * Inspired from various soures like http://wiki.osdev.org/ATA_PIO_Mode,
+ * u-boot and the linux kernel
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
+ */
+
+#include <common.h>
+#include <xfuncs.h>
+#include <io.h>
+#include <malloc.h>
+#include <errno.h>
+#include <block.h>
+#include <ata_drive.h>
+#include <disks.h>
+
+#define ATA_CMD_ID_DEVICE 0xEC
+#define ATA_CMD_RD_CONF 0x40
+#define ATA_CMD_RD	0x20
+#define ATA_CMD_WR	0x30
+
+#define DISK_MASTER 0
+#define DISK_SLAVE 1
+
+#define MAX_TIMEOUT 30000
+
+/**
+ * Collection of data we need to know about this drive
+ */
+struct ata_drive_access {
+	struct block_device blk; /**< the main device */
+	struct ata_ioports *io;	/**< register file */
+	uint16_t id[(SECTOR_SIZE / sizeof(uint16_t))];
+};
+
+#define to_ata_drive_access(x) container_of((x), struct ata_drive_access, blk)
+
+#define ata_id_u32(id,n)        \
+        (((uint32_t) (id)[(n) + 1] << 16) | ((uint32_t) (id)[(n)]))
+#define ata_id_u64(id,n)        \
+        ( ((uint64_t) (id)[(n) + 3] << 48) | \
+          ((uint64_t) (id)[(n) + 2] << 32) | \
+          ((uint64_t) (id)[(n) + 1] << 16) | \
+          ((uint64_t) (id)[(n) + 0]) )
+
+#define ata_id_has_lba(id)               ((id)[49] & (1 << 9))
+
+#define ATA_ID_LBA48_SECTORS 100
+#define ATA_ID_LBA_SECTORS 60
+
+static uint16_t ata_rd_word(struct ata_ioports *io)
+{
+#ifdef CONFIG_DISK_LE_ATTACHED
+	return le16_to_cpu(readw(io->data_addr));
+#else
+	return be16_to_cpu(readw(io->data_addr));
+#endif
+}
+static void ata_wr_word(struct ata_ioports *io, uint16_t w)
+{
+#ifdef CONFIG_DISK_LE_ATTACHED
+	writew(cpu_to_le16(w), io->data_addr);
+#else
+	writew(cpu_to_be16(w), io->data_addr);
+#endif
+}
+
+static inline int ata_id_has_lba48(const uint16_t *id)
+{
+	if ((id[83] & 0xC000) != 0x4000)
+		return 0;
+	if (!ata_id_u64(id, 100))
+		return 0;
+	return id[83] & (1 << 10);
+}
+
+static uint64_t ata_id_n_sectors(uint16_t *id)
+{
+	if (ata_id_has_lba(id)) {
+		if (ata_id_has_lba48(id))
+			return ata_id_u64(id, ATA_ID_LBA48_SECTORS);
+		else
+			return ata_id_u32(id, ATA_ID_LBA_SECTORS);
+	}
+
+	return 0;
+}
+
+static void ata_id_string(const uint16_t *id, unsigned char *s,
+				unsigned ofs, unsigned len)
+{
+	unsigned c;
+
+	while (len > 0) {
+		c = id[ofs] >> 8;
+		*s = c;
+		s++;
+
+		c = id[ofs] & 0xff;
+		*s = c;
+		s++;
+
+		ofs++;
+		len -= 2;
+	}
+}
+
+static void ata_id_c_string(const uint16_t *id, unsigned char *s,
+				unsigned ofs, unsigned len)
+{
+	unsigned char *p;
+
+	ata_id_string(id, s, ofs, len - 1);
+
+	p = s + strnlen((char *)s, len - 1);
+	while (p > s && p[-1] == ' ')
+		p--;
+	*p = '\0';
+}
+
+#define ATA_ID_SERNO 10
+#define ATA_ID_SERNO_LEN 20
+#define ATA_ID_FW_REV 23
+#define ATA_ID_FW_REV_LEN 8
+#define ATA_ID_PROD 27
+#define ATA_ID_PROD_LEN 40
+
+static void __maybe_unused ata_dump_id(uint16_t *id)
+{
+	unsigned char serial[ATA_ID_SERNO_LEN + 1];
+	unsigned char firmware[ATA_ID_FW_REV_LEN + 1];
+	unsigned char product[ATA_ID_PROD_LEN + 1];
+	uint64_t n_sectors;
+
+	/* Serial number */
+	ata_id_c_string(id, serial, ATA_ID_SERNO, sizeof(serial));
+	printf("S/N: %s\n\r", serial);
+
+	/* Firmware version */
+	ata_id_c_string(id, firmware, ATA_ID_FW_REV, sizeof(firmware));
+	printf("Firmware version: %s\n\r", firmware);
+
+	/* Product model */
+	ata_id_c_string(id, product, ATA_ID_PROD, sizeof(product));
+	printf("Product model number: %s\n\r", product);
+
+	/* Total sectors of device  */
+	n_sectors = ata_id_n_sectors(id);
+	printf("Capablity: %lld sectors\n\r", n_sectors);
+
+	printf ("id[49]: capabilities = 0x%04x\n"
+		"id[53]: field valid = 0x%04x\n"
+		"id[63]: mwdma = 0x%04x\n"
+		"id[64]: pio = 0x%04x\n"
+		"id[75]: queue depth = 0x%04x\n",
+		id[49],
+		id[53],
+		id[63],
+		id[64],
+		id[75]);
+
+	printf ("id[76]: sata capablity = 0x%04x\n"
+		"id[78]: sata features supported = 0x%04x\n"
+		"id[79]: sata features enable = 0x%04x\n",
+		id[76],
+		id[78],
+		id[79]);
+
+	printf ("id[80]: major version = 0x%04x\n"
+		"id[81]: minor version = 0x%04x\n"
+		"id[82]: command set supported 1 = 0x%04x\n"
+		"id[83]: command set supported 2 = 0x%04x\n"
+		"id[84]: command set extension = 0x%04x\n",
+		id[80],
+		id[81],
+		id[82],
+		id[83],
+		id[84]);
+	printf ("id[85]: command set enable 1 = 0x%04x\n"
+		"id[86]: command set enable 2 = 0x%04x\n"
+		"id[87]: command set default = 0x%04x\n"
+		"id[88]: udma = 0x%04x\n"
+		"id[93]: hardware reset result = 0x%04x\n",
+		id[85],
+		id[86],
+		id[87],
+		id[88],
+		id[93]);
+}
+
+/**
+ * Swap little endian data on demand
+ * @param buf Buffer with little endian word data
+ * @param wds 16 bit word count
+ *
+ * ATA disks report their ID data in little endian notation on a 16 bit word
+ * base. So swap the buffer content if the running CPU differs in their
+ * endiaeness.
+ */
+static void ata_fix_endianess(uint16_t *buf, unsigned wds)
+{
+#if __BYTE_ORDER == __BIG_ENDIAN
+	unsigned u;
+
+	for (u = 0; u < wds; u++)
+		buf[u] = le16_to_cpu(buf[u]);
+#endif
+}
+
+/**
+ * Read the status register of the ATA drive
+ * @param io Register file
+ * @return Register's content
+ */
+static uint8_t ata_rd_status(struct ata_ioports *io)
+{
+	return readb(io->status_addr);
+}
+
+#define ATA_STATUS_BUSY (1 << 7)
+#define ATA_STATUS_READY (1 << 6)
+#define ATA_STATUS_WR_FLT (1 << 5)
+#define ATA_STATUS_DRQ (1 << 4)
+#define ATA_STATUS_CORR (1 << 3)
+#define ATA_STATUS_ERROR (1 << 1)
+
+/**
+ * Wait until the disk is busy or time out
+ * @param io Register file
+ * @param timeout Timeout in [ms]
+ * @return 0 on success, -ETIMEDOUT else
+ */
+static int ata_wait_busy(struct ata_ioports *io, unsigned timeout)
+{
+	uint8_t status;
+
+	timeout *= 100;
+
+	while (timeout) {
+		status = ata_rd_status(io);
+		if (status & ATA_STATUS_BUSY)
+			break;
+		udelay(10);
+		timeout -= 10;
+	};
+
+	if (timeout) {
+		pr_debug("%s: Finished with %u us remaining\n", __func__, timeout);
+		return 0;
+	}
+
+	pr_debug("%s: Waiting timed out!\n", __func__);
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
+static int ata_wait_ready(struct ata_ioports *io, unsigned timeout)
+{
+	uint8_t status;
+
+	timeout *= 100;
+
+	while (timeout) {
+		status = ata_rd_status(io);
+		if (!(status & ATA_STATUS_BUSY)) {
+			if (status & ATA_STATUS_READY)
+				break;
+		}
+		udelay(10);
+		timeout -= 10;
+	};
+
+	if (timeout) {
+		pr_debug("%s: Finished with %u us remaining\n", __func__, timeout);
+		return 0;
+	}
+
+	pr_debug("%s: Waiting timed out!\n", __func__);
+	return -ETIMEDOUT;
+}
+
+#define LBA_FLAG (1 << 6)
+
+/**
+ * Setup the sector number in LBA notation (LBA28)
+ * @param io Register file
+ * @param drive 0 master drive, 1 slave drive
+ * @param num Sector number
+ *
+ * @todo LBA48 support
+ */
+static int ata_set_lba_sector(struct ata_ioports *io, unsigned drive, uint64_t num)
+{
+	pr_debug("%s: Drive: %d, Sector: %llu\n", __func__, drive, num);
+
+	if (num > 0x0FFFFFFF || drive > 1)
+		return -EINVAL;
+
+	writeb(0xA0 | LBA_FLAG | drive << 4 | num >> 24, io->device_addr);
+	writeb(0x00, io->error_addr);
+	writeb(0x01, io->nsect_addr);
+	writeb(num, io->lbal_addr);	/* 0 ... 7 */
+	writeb(num >> 8, io->lbam_addr); /* 8 ... 15 */
+	writeb(num >> 16, io->lbah_addr); /* 16 ... 23 */
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
+static int ata_wr_cmd(struct ata_ioports *io, uint8_t cmd)
+{
+	int rc;
+
+	rc = ata_wait_ready(io, MAX_TIMEOUT);
+	if (rc != 0)
+		return rc;
+
+	writeb(cmd, io->command_addr);
+	return 0;
+}
+
+#define ATA_DEVCTL_SOFT_RESET (1 << 2)
+#define ATA_DEVCTL_INTR_DISABLE (1 << 1)
+
+/**
+ * Write a new value into the "device control register"
+ * @param io Register file
+ * @param val Value to write
+ */
+static void ata_wr_dev_ctrl(struct ata_ioports *io, uint8_t val)
+{
+	writeb(val, io->ctl_addr);
+}
+
+/**
+ * Read one sector from the drive (always SECTOR_SIZE bytes at once)
+ * @param io Register file
+ * @param buf Buffer to read the data into
+ */
+static void ata_rd_sector(struct ata_ioports *io, void *buf)
+{
+	unsigned u = SECTOR_SIZE / sizeof(uint16_t);
+	uint16_t *b = buf;
+
+	for (; u > 0; u--)
+		*b++ = ata_rd_word(io);
+}
+
+/**
+ * Write one sector into the drive
+ * @param io Register file
+ * @param buf Buffer to read the data from
+ */
+static void ata_wr_sector(struct ata_ioports *io, const void *buf)
+{
+	unsigned u = SECTOR_SIZE / sizeof(uint16_t);
+	const uint16_t *b = buf;
+
+	for (; u > 0; u--)
+		ata_wr_word(io, *b++);
+}
+
+/**
+ * Read the capacity of the attached drive
+ * @param l Result of the ATA_CMD_ID command
+ * @return Sector count
+ */
+static uint64_t ata_rd_capacity(struct ata_id_layout *l)
+{
+#if __BYTE_ORDER == __BIG_ENDIAN
+	return l->lba_capacity << 16 | l->lba_capacity >> 16;
+#else
+	return l->lba_capacity;
+#endif
+}
+
+/**
+ * Read the ATA disk's description info
+ * @param d All we need to know about the disk
+ * @return 0 on success
+ */
+static int ata_get_id(struct ata_drive_access *d)
+{
+	int rc;
+	struct ata_id_layout *l;
+
+	writeb(0xA0, d->io->device_addr);	/* FIXME drive */
+	writeb(0x00, d->io->lbal_addr);
+	writeb(0x00, d->io->lbam_addr);
+	writeb(0x00, d->io->lbah_addr);
+
+	rc = ata_wr_cmd(d->io, ATA_CMD_ID_DEVICE);
+	if (rc != 0)
+		return rc;
+
+	rc = ata_wait_ready(d->io, MAX_TIMEOUT);
+	if (rc != 0)
+		return rc;
+
+	ata_rd_sector(d->io, &d->id);
+	l = (struct ata_id_layout *)&d->id;
+
+	ata_fix_endianess(d->id, SECTOR_SIZE / sizeof(uint16_t));
+
+	if ((l->field_valid & 1) == 0) {
+		pr_debug("Drive's ID seems invalid\n");
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+static int ata_reset(struct ata_ioports *io)
+{
+	int rc;
+	uint8_t reg;
+
+	/* try a hard reset first (if available) */
+	if (io->reset != NULL) {
+		pr_debug("%s: Resetting drive...\n", __func__);
+		io->reset(1);
+		rc = ata_wait_busy(io, 500);
+		io->reset(0);
+		if (rc == 0) {
+			rc = ata_wait_ready(io, MAX_TIMEOUT);
+			if (rc != 0)
+				return rc;
+		} else {
+			pr_debug("%s: Drive does not respond to RESET line. Ignored\n",
+					__func__);
+		}
+	}
+
+	/* try a soft reset */
+	ata_wr_dev_ctrl(io, ATA_DEVCTL_SOFT_RESET | ATA_DEVCTL_INTR_DISABLE);
+	rc = ata_wait_busy(io, MAX_TIMEOUT);	/* does the drive accept the command? */
+	if (rc != 0) {
+		pr_debug("%s: Drive fails on soft reset\n", __func__);
+		return rc;
+	}
+	ata_wr_dev_ctrl(io, ATA_DEVCTL_INTR_DISABLE);
+	rc = ata_wait_ready(io, MAX_TIMEOUT);
+	if (rc != 0) {
+		pr_debug("%s: Drive fails after soft reset\n", __func__);
+		return rc;
+	}
+
+	reg = ata_rd_status(io) & 0xf;
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
+static int ata_read(struct block_device *blk, void *buffer, int block,
+				int num_blocks)
+{
+	int rc;
+	uint64_t sector = block;
+	struct ata_drive_access *drv = to_ata_drive_access(blk);
+
+	while (num_blocks) {
+		rc = ata_set_lba_sector(drv->io, DISK_MASTER, sector);
+		if (rc != 0)
+			return rc;
+		rc = ata_wr_cmd(drv->io, ATA_CMD_RD);
+		if (rc != 0)
+			return rc;
+		rc = ata_wait_ready(drv->io, MAX_TIMEOUT);
+		if (rc != 0)
+			return rc;
+		ata_rd_sector(drv->io, buffer);
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
+static int __maybe_unused ata_write(struct block_device *blk,
+				const void *buffer, int block, int num_blocks)
+{
+	int rc;
+	uint64_t sector = block;
+	struct ata_drive_access *drv = to_ata_drive_access(blk);
+
+	while (num_blocks) {
+		rc = ata_set_lba_sector(drv->io, DISK_MASTER, sector);
+		if (rc != 0)
+			return rc;
+		rc = ata_wr_cmd(drv->io, ATA_CMD_WR);
+		if (rc != 0)
+			return rc;
+		ata_wr_sector(drv->io, buffer);
+		num_blocks--;
+		sector++;
+		buffer += SECTOR_SIZE;
+	}
+
+	return 0;
+}
+
+static struct block_device_ops ata_ops = {
+	.read = ata_read,
+#ifdef CONFIG_BLOCK_WRITE
+	.write = ata_write,
+#endif
+};
+
+/**
+ * Register an ATA drive behind an IDE like interface
+ * @param dev The interface device
+ * @param io ATA register file description
+ * @return 0 on success
+ */
+int register_ata_drive(struct device_d *dev, struct ata_ioports *io)
+{
+	int rc;
+	struct ata_id_layout *l;
+	struct ata_drive_access *drive;
+
+	drive = xzalloc(sizeof(struct ata_drive_access));
+
+	drive->io = io;
+	drive->blk.dev = dev;
+	drive->blk.ops = &ata_ops;
+	l = (struct ata_id_layout *)&drive->id;
+
+	rc = ata_reset(io);
+	if (rc) {
+		dev_dbg(dev, "Resetting failed\n");
+		goto on_error;
+	}
+
+	rc = ata_get_id(drive);
+	if (rc != 0) {
+		dev_dbg(dev, "Reading ID failed\n");
+		goto on_error;
+	}
+
+#ifdef DEBUG
+	ata_dump_id(drive->id);
+#endif
+	rc = cdev_find_free_number("disk");
+	if (rc == -1)
+		pr_err("Cannot find a free number for the disk node\n");
+
+	drive->blk.num_blocks = ata_rd_capacity(l);
+	drive->blk.cdev.name = asprintf("disk%d", rc);
+	drive->blk.blockbits = SECTOR_SHIFT;
+
+	rc = blockdevice_register(&drive->blk);
+	if (rc != 0) {
+		dev_err(dev, "Failed to register blockdevice\n");
+		goto on_error;
+	}
+
+	/* create partitions on demand */
+	rc = parse_partition_table(&drive->blk);
+	if (rc != 0)
+		dev_warn(dev, "No partition table found\n");
+
+	return 0;
+
+on_error:
+	free(drive);
+	return rc;
+}
+
+/**
+ * @file
+ * @brief Generic ATA disk drive support
+ *
+ * Please be aware: This driver covers only a subset of the available ATA drives
+ *
+ * @todo Support for disks larger than 4 GiB
+ * @todo LBA48
+ * @todo CHS
+ */
diff --git a/include/ata_drive.h b/include/ata_drive.h
new file mode 100644
index 0000000..9710614
--- /dev/null
+++ b/include/ata_drive.h
@@ -0,0 +1,194 @@
+/*
+ * See file CREDITS for list of people who contributed to this
+ * project.
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
+ */
+
+#ifndef ATA_DISK_H
+# define ATA_DISK
+
+/* IDE register file */
+#define IDE_REG_DATA 0x00
+#define IDE_REG_ERR 0x01
+#define IDE_REG_NSECT 0x02
+#define IDE_REG_LBAL 0x03
+#define IDE_REG_LBAM 0x04
+#define IDE_REG_LBAH 0x05
+#define IDE_REG_DEVICE 0x06
+#define IDE_REG_STATUS 0x07
+
+#define IDE_REG_FEATURE IDE_REG_ERR /* and their aliases */
+#define IDE_REG_CMD IDE_REG_STATUS
+
+#define IDE_REG_ALT_STATUS 0x00
+#define IDE_REG_DEV_CTL 0x00
+#define IDE_REG_DRV_ADDR 0x01
+
+/** addresses of each individual IDE drive register */
+struct ata_ioports {
+	void __iomem *cmd_addr;
+	void __iomem *data_addr;
+	void __iomem *error_addr;
+	void __iomem *feature_addr;
+	void __iomem *nsect_addr;
+	void __iomem *lbal_addr;
+	void __iomem *lbam_addr;
+	void __iomem *lbah_addr;
+	void __iomem *device_addr;
+	void __iomem *status_addr;
+	void __iomem *command_addr;
+	void __iomem *altstatus_addr;
+	void __iomem *ctl_addr;
+	void __iomem *alt_dev_addr;
+
+	/* hard reset line handling */
+	void (*reset)(int);	/* true: assert reset, false: de-assert reset */
+};
+
+/** data layout of the ATA identify command
+ * @note all multibyte values are in little endian (on a 16 word base)
+ */
+struct ata_id_layout {
+	uint16_t config;	/**< lots of obsolete bit flags */
+	uint16_t cyls;		/**< "physical" cyls */
+	uint16_t reserved2;	/**< reserved (word 2) */
+	uint16_t heads;		/**< "physical" heads */
+	uint16_t track_bytes;	/**< unformatted bytes per track */
+	uint16_t sector_bytes;	/**< unformatted bytes per sector */
+	uint16_t sectors;	/**< "physical" sectors per track */
+	uint16_t vendor0;	/**< vendor unique */
+	uint16_t vendor1;	/**< vendor unique */
+	uint16_t vendor2;	/**< vendor unique */
+	uint8_t serial_no[20];	/**< 0 = not_specified */
+	uint16_t buf_type;
+	uint16_t buf_size;	/**< 512 byte increments; 0 = not_specified */
+	uint16_t ecc_bytes;	/**< for r/w long cmds; 0 = not_specified */
+	uint8_t fw_rev[8];	/**< 0 = not_specified */
+	uint8_t model[40];	/**< 0 = not_specified */
+	uint8_t max_multsect;	/**< 0=not_implemented */
+	uint8_t vendor3;	/**< vendor unique */
+	uint16_t dword_io;	/**< 0=not_implemented; 1=implemented */
+	uint8_t vendor4;	/**< vendor unique */
+	uint8_t capability;	/**< bits 0:DMA 1:LBA 2:IORDYsw 3:IORDYsup*/
+	uint16_t reserved50;	/**< reserved (word 50) */
+	uint8_t vendor5;	/**< vendor unique */
+	uint8_t tPIO;		/**< 0=slow, 1=medium, 2=fast */
+	uint8_t vendor6;	/**< vendor unique */
+	uint8_t tDMA;		/**< 0=slow, 1=medium, 2=fast */
+	uint16_t field_valid;	/**< bits 0:cur_ok 1:eide_ok */
+	uint16_t cur_cyls;	/**< logical cylinders */
+	uint16_t cur_heads;	/**< logical heads */
+	uint16_t cur_sectors;	/**< logical sectors per track */
+	uint16_t cur_capacity0;	/**< logical total sectors on drive */
+	uint16_t cur_capacity1;	/**< (2 words, misaligned int) */
+	uint8_t multsect;	/**< current multiple sector count */
+	uint8_t multsect_valid;	/**< when (bit0==1) multsect is ok */
+	uint32_t lba_capacity;	/**< total number of sectors */
+	uint16_t dma_1word;	/**< single-word dma info */
+	uint16_t dma_mword;	/**< multiple-word dma info */
+	uint16_t eide_pio_modes; /**< bits 0:mode3 1:mode4 */
+	uint16_t eide_dma_min;	/**< min mword dma cycle time (ns) */
+	uint16_t eide_dma_time;	/**< recommended mword dma cycle time (ns) */
+	uint16_t eide_pio;	/**< min cycle time (ns), no IORDY  */
+	uint16_t eide_pio_iordy; /**< min cycle time (ns), with IORDY */
+	uint16_t words69_70[2];	/**< reserved words 69-70 */
+	uint16_t words71_74[4];	/**< reserved words 71-74 */
+	uint16_t queue_depth;
+	uint16_t words76_79[4];	/**< reserved words 76-79 */
+	uint16_t major_rev_num;
+	uint16_t minor_rev_num;
+	uint16_t command_set_1;	/**< bits 0:Smart 1:Security 2:Removable 3:PM */
+	uint16_t command_set_2;	/**< bits 14:Smart Enabled 13:0 zero 10:lba48 support*/
+	uint16_t cfsse;		/**< command set-feature supported extensions */
+	uint16_t cfs_enable_1;	/**< command set-feature enabled */
+	uint16_t cfs_enable_2;	/**<*< command set-feature enabled */
+	uint16_t csf_default;	/**< command set-feature default */
+	uint16_t dma_ultra;
+	uint16_t word89;	/**< reserved (word 89) */
+	uint16_t word90;	/**< reserved (word 90) */
+	uint16_t CurAPMvalues;	/**< current APM values */
+	uint16_t word92;	/**< reserved (word 92) */
+	uint16_t hw_config;	/**< hardware config */
+	uint16_t words94_99[6];	/**< reserved words 94-99 */
+	uint16_t lba48_capacity[4]; /**< 4 16bit values containing lba 48 total number of sectors */
+	uint16_t words104_125[22]; /**< reserved words 104-125 */
+	uint16_t last_lun;	/**< reserved (word 126) */
+	uint16_t word127;	/**< reserved (word 127) */
+	uint16_t dlf;		/**< device lock function
+				 * 15:9	reserved
+				 * 8	security level 1:max 0:high
+				 * 7:6	reserved
+				 * 5	enhanced erase
+				 * 4	expire
+				 * 3	frozen
+				 * 2	locked
+				 * 1	en/disabled
+				 * 0	capability
+				 */
+	uint16_t csfo;		/**< current set features options
+				 * 15:4	reserved
+				 * 3	auto reassign
+				 * 2	reverting
+				 * 1	read-look-ahead
+				 * 0	write cache
+				 */
+	uint16_t words130_155[26]; /**< reserved vendor words 130-155 */
+	uint16_t word156;
+	uint16_t words157_159[3]; /**< reserved vendor words 157-159 */
+	uint16_t words160_162[3]; /**< reserved words 160-162 */
+	uint16_t cf_advanced_caps;
+	uint16_t words164_255[92]; /**< reserved words 164-255 */
+};
+
+struct device_d;
+extern int register_ata_drive(struct device_d*, struct ata_ioports*);
+
+/**
+ * @file
+ * @brief Register file examples of generic types of ATA devices
+ *
+ * PC IDE:
+ *
+ *        Offset       Read      Write           Note
+ *-----------------------------------------------------------
+ *        0x1f0        data      data        16 bit register
+ *        0x1f1        error    feature
+ *        0x1f2       sec cnt   set cnt
+ *        0x1f3       sec no    sec no
+ *        0x1f4       cyl low   cyl low
+ *        0x1f5       cyl high  cyl high
+ *        0x1f6        head      head
+ *        0x1f7       status    command
+ *        0x3f6     alt status  dev cntrl
+ *        0x3f7       drv addr
+ *
+ * PCMCIA memory mapped:
+ *
+ *        Offset       Read      Write           Note
+ *-----------------------------------------------------------
+ *        0x0          data      data        16 bit register
+ *        0x1          error    feature
+ *        0x2         sec cnt   set cnt
+ *        0x3         sec no    sec no
+ *        0x4         cyl low   cyl low
+ *        0x5         cyl high  cyl high
+ *        0x6          head      head
+ *        0x7         status    command
+ *        0x8          data      data       16 bit or 8 bit register (even byte)
+ *        0x9          data      data       8 bit register (odd byte)
+ *        0xd          error    feature     dup of offset 1
+ *        0xe       alt status  dev cntrl
+ *        0xf        drv addr
+ *       0x400         data      data       16 bit area with 1 kiB in size
+ */
+
+#endif /* ATA_DISK */
-- 
1.7.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

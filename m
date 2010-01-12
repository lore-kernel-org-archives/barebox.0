Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NUdrz-0007Gt-81
	for barebox@lists.infradead.org; Tue, 12 Jan 2010 10:21:05 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.69)
	(envelope-from <jbe@pengutronix.de>) id 1NUdrr-0006WH-Ts
	for barebox@lists.infradead.org; Tue, 12 Jan 2010 11:20:55 +0100
Received: from jbe by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <jbe@pengutronix.de>) id 1NUdrr-00072R-RT
	for barebox@lists.infradead.org; Tue, 12 Jan 2010 11:20:55 +0100
Message-Id: <20100112102055.772999146@pengutronix.de>
References: <20100112101534.868276907@pengutronix.de>
Date: Tue, 12 Jan 2010 11:15:46 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Content-Disposition: inline; filename=add_bios_disk-driver.diff
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
Subject: [PATCHv2 12/14] Add a low level disk drive access driver
To: barebox@lists.infradead.org

This is a low level disk drive communication driver. It uses the real mode
BIOS found on most x86 platforms, to read and write sectors. Used by the
generic disk driver.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>

---
 arch/x86/lib/Makefile    |    1 
 arch/x86/lib/bios_disk.S |   77 ++++++++++++
 drivers/ata/Kconfig      |    9 +
 drivers/ata/Makefile     |    2 
 drivers/ata/bios.c       |  291 +++++++++++++++++++++++++++++++++++++++++++++++
 5 files changed, 380 insertions(+)

Index: barebox-2009.12.0/drivers/ata/Kconfig
===================================================================
--- barebox-2009.12.0.orig/drivers/ata/Kconfig
+++ barebox-2009.12.0/drivers/ata/Kconfig
@@ -14,4 +14,13 @@ config ATA_DISK
 
 comment "interface types"
 
+config ATA_BIOS
+	bool "BIOS based"
+	depends on X86_BIOS_BRINGUP
+	help
+	  Gain disk drive access via int13 calls to the standard PC-BIOS.
+	  The advantage of this driver is, it still uses user's defined boot
+	  media to work on. Disadvantage is: Due to its 16 bit nature it is
+	  slow.
+
 endif
Index: barebox-2009.12.0/drivers/ata/Makefile
===================================================================
--- barebox-2009.12.0.orig/drivers/ata/Makefile
+++ barebox-2009.12.0/drivers/ata/Makefile
@@ -3,3 +3,5 @@
 obj-$(CONFIG_ATA_DISK) += disk_drive.o
 
 # interface types
+
+obj-$(CONFIG_ATA_BIOS) += bios.o
Index: barebox-2009.12.0/drivers/ata/bios.c
===================================================================
--- /dev/null
+++ barebox-2009.12.0/drivers/ata/bios.c
@@ -0,0 +1,291 @@
+/*
+ * Copyright (C) 2009 Juergen Beisert, Pengutronix
+ *
+ * Mostly stolen from the GRUB2 project
+ *  Copyright (C) 1999,2000,2001,2002,2003,2004,2005,2006,2007,2008  Free Software Foundation, Inc.
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
+ * @brief Media communication layer through the standard 16 bit PC-BIOS
+ *
+ * This communication driver does all accesses to the boot medium via 16 bit
+ * real mode calls into the standard BIOS. Due to this method, its possible
+ * to use all the medias to boot from that are supported by the BIOS. This
+ * also includes emulated only medias.
+ *
+ * To be able to call the real mode BIOS, this driver must switch back to
+ * real mode for each access. This will slow down the access a little bit, but
+ * we are a boot loader here, not an operating system...
+ *
+ * Note: We need scratch memory for the BIOS communication, because the BIOS
+ * can only handle memory below 0xA0000. So we must copy all data between
+ * the flat mode buffers and realmode buffers.
+ *
+ * Note: This driver makes no sense on other architectures than x86.
+ *
+ * Note: This driver does only support LBA addressing. Currently no CHS!
+ */
+
+#include <stdio.h>
+#include <linux/types.h>
+#include <init.h>
+#include <driver.h>
+#include <string.h>
+#include <xfuncs.h>
+#include <asm/syslib.h>
+#include <ata.h>
+#include <errno.h>
+
+/**
+ * Sector count handled in one count
+ *
+ * @todo 127 are always possible, some BIOS manufacturer supports up to 255.
+ * Is it's worth to detect Phoenic's restriction?
+ */
+#define SECTORS_AT_ONCE 64
+
+/** Size of one sector in bytes */
+#define SECTOR_SIZE 512
+
+/** Command to read sectors from media */
+#define BIOS_READ_CMD 0
+
+/** Command to write sectors to media */
+#define BIOS_WRT_CMD 1
+
+/**
+ * "Disk Address Packet Structure" to be used when calling
+ * BIOS's int13, function 0x42/0x43
+ */
+struct DAPS
+{
+	uint8_t size;		/**< always '16' */
+	uint8_t res1;		/**< always '0' */
+	int8_t count;		/**< number of sectors 0...127 */
+	uint8_t res2;		/**< always '0' */
+	uint16_t offset;	/**< buffer address: offset */
+	uint16_t segment;	/**< buffer address: segment */
+	uint64_t lba;		/**< LBA of the start sector */
+} __attribute__ ((packed));
+
+/**
+ * Collection of data we need to know about the connected drive
+ */
+struct media_access {
+	int drive_no;	/**< drive number used by the BIOS */
+	int is_cdrom;	/**< drive is a CDROM e.g. no write support */
+};
+
+/**
+ * Scratch memory for BIOS communication to handle data in chunks of 32 kiB
+ *
+ * Note: This variable is located in the .bss segment, assuming it is located
+ * below 0xA0000. If not, the BIOS is not able to read or store any data
+ * from/to it. The variable must also aligned to a 16 byte boundary to easify
+ * linear to segment:offset address conversion.
+ */
+static uint8_t scratch_buffer[SECTORS_AT_ONCE * SECTOR_SIZE] __attribute__((aligned(16)));
+
+/**
+ * Communication buffer for the 16 bit int13 BIOS call
+ *
+ * Note: This variable is located in the .bss segment, assuming it is located
+ * below 0xA0000. If not, the BIOS is not able to read or store any data
+ * from/to it. The variable must also aligned to a 16 byte boundary to easify
+ * linear to segment:offset conversion.
+ */
+static struct DAPS bios_daps __attribute__((aligned(16)));
+
+/**
+ * @param media our data we need to do the access
+ * @param cmd Command to forward to the BIOS
+ * @param sector_start LBA of the start sector
+ * @param sector_count Sector count
+ * @param buffer Buffer to read from or write to (in the low memory area)
+ * @return 0 on success, anything else on failure
+ */
+static int biosdisk_bios_call(struct media_access *media, int cmd, uint64_t sector_start, unsigned sector_count, void *buffer)
+{
+	int rc;
+
+	/* prepare the DAPS for the int13 call */
+	bios_daps.size = sizeof(struct DAPS);
+	bios_daps.res1 = 0;
+	bios_daps.count = sector_count;	/* always less than 128! */
+	bios_daps.res2 = 0;
+	bios_daps.segment = (unsigned long)buffer >> 4;
+	bios_daps.offset = (unsigned long)buffer - (unsigned long)(bios_daps.segment << 4);
+	bios_daps.lba = sector_start;
+
+	if (cmd == BIOS_READ_CMD)
+		rc = bios_disk_rw_int13_extensions(0x42, media->drive_no, &bios_daps);
+	else if (cmd == BIOS_WRT_CMD)
+		rc = bios_disk_rw_int13_extensions(0x43, media->drive_no, &bios_daps);
+	else
+		return -1;
+
+	return rc;
+}
+
+/**
+ * Read a chunk of sectors from media
+ * @param dev our data we need to do the access
+ * @param sector_start Sector's LBA number to start read from
+ * @param sector_count Sectors to read
+ * @param buffer Buffer to read into
+ * @return 0 on success, anything else on failure
+ *
+ * This routine expects the buffer has the correct size to store all data!
+ */
+static int biosdisk_read(struct device_d *dev, uint64_t sector_start, unsigned sector_count, void *buffer)
+{
+	int rc;
+	struct ata_interface *intf = dev->platform_data;
+	struct media_access *media = intf->priv;
+
+	while (sector_count >= SECTORS_AT_ONCE) {
+		rc = biosdisk_bios_call(media, BIOS_READ_CMD, sector_start, SECTORS_AT_ONCE, scratch_buffer);
+		if (rc != 0)
+			return rc;
+		__builtin_memcpy(buffer, scratch_buffer, sizeof(scratch_buffer));
+		buffer += sizeof(scratch_buffer);
+		sector_start += SECTORS_AT_ONCE;
+		sector_count -= SECTORS_AT_ONCE;
+	};
+
+	/* Are sectors still remaining? */
+	if (sector_count) {
+		rc = biosdisk_bios_call(media, BIOS_READ_CMD, sector_start, sector_count, scratch_buffer);
+		__builtin_memcpy(buffer, scratch_buffer, sector_count * SECTOR_SIZE);
+	} else
+		rc = 0;
+
+	return rc;
+}
+
+/**
+ * Write a chunk of sectors to media
+ * @param dev our data we need to do the access
+ * @param sector_start Sector's LBA number to start write to
+ * @param sector_count Sectors to write
+ * @param buffer Buffer to write from
+ * @return 0 on success, anything else on failure
+ *
+ * This routine expects the buffer has the correct size to read all data!
+ */
+static int biosdisk_write(struct device_d *dev, uint64_t sector_start, unsigned sector_count, const void *buffer)
+{
+	int rc;
+	struct ata_interface *intf = dev->platform_data;
+	struct media_access *media = intf->priv;
+
+	while (sector_count >= SECTORS_AT_ONCE) {
+		__builtin_memcpy(scratch_buffer, buffer, sizeof(scratch_buffer));
+		rc = biosdisk_bios_call(media, BIOS_WRT_CMD, sector_start, SECTORS_AT_ONCE, scratch_buffer);
+		if (rc != 0)
+			return rc;
+		buffer += sizeof(scratch_buffer);
+		sector_start += SECTORS_AT_ONCE;
+		sector_count -= SECTORS_AT_ONCE;
+	};
+
+	/* Are sectors still remaining? */
+	if (sector_count) {
+		__builtin_memcpy(scratch_buffer, buffer, sector_count * SECTOR_SIZE);
+		rc = biosdisk_bios_call(media, BIOS_WRT_CMD, sector_start, sector_count, scratch_buffer);
+	} else
+		rc = 0;
+
+	return rc;
+}
+
+/**
+ * Probe for connected drives and register them
+ *
+ * Detecting if a drive is present is done by simply reading its MBR.
+ *
+ * FIXME: Relation between BIOS disk numbering scheme and our representation
+ * here in barebox (and later on in the linux kernel)
+ */
+static int biosdisk_probe(struct device_d *dev)
+{
+	int drive, rc;
+	struct media_access media, *m;
+	struct device_d *drive_dev;
+	struct ata_interface *p;
+
+	for (drive = 0x80; drive < 0x90; drive++) {
+		media.drive_no = drive;
+		media.is_cdrom = 0;	/* don't know yet */
+		rc = biosdisk_bios_call(&media, BIOS_READ_CMD, 0, 1, scratch_buffer);
+		if (rc != 0)
+			continue;
+
+		printf("BIOSdrive %d seems valid. Registering...\n", media.drive_no);
+
+		drive_dev = xzalloc(sizeof(struct device_d) + sizeof(struct media_access) + sizeof(struct ata_interface));
+		if (drive_dev == NULL) {
+			dev_err(dev, "Out of memory\n");
+			return -1;
+		}
+		m = (struct media_access*)&drive_dev[1];
+		p = (struct ata_interface*)&m[1];
+
+		m->drive_no = drive;
+		m->is_cdrom = 0;
+
+		p->write = biosdisk_write;
+		p->read = biosdisk_read;
+		p->priv = m;
+
+		strcpy(drive_dev->name, "biosdisk");
+		drive_dev->id = drive - 0x80;
+		drive_dev->size = 1;
+		drive_dev->map_base = 0;
+		drive_dev->platform_data = p;
+
+		register_device(drive_dev);
+	}
+
+	return 0;
+}
+
+static struct driver_d biosdisk_driver = {
+        .name   = "biosdrive",
+        .probe  = biosdisk_probe,
+};
+
+static int biosdisk_init(void)
+{
+	/* sanity */
+	if (scratch_buffer > (uint8_t*)0x9FFFF) {
+		printf("BIOS driver: Scratch memory not in real mode area. Cannot continue!\n");
+		return -EIO;
+	}
+	if (&bios_daps > (struct DAPS*)0x9FFFF) {
+		printf("BIOS driver: DAPS memory not in real mode area. Cannot continue!\n");
+		return -EIO;
+	}
+
+	register_driver(&biosdisk_driver);
+	return 0;
+}
+
+device_initcall(biosdisk_init);
Index: barebox-2009.12.0/arch/x86/lib/Makefile
===================================================================
--- barebox-2009.12.0.orig/arch/x86/lib/Makefile
+++ barebox-2009.12.0/arch/x86/lib/Makefile
@@ -5,3 +5,4 @@ obj-y += gdt.o
 # needed, when running via a 16 bit BIOS
 obj-$(CONFIG_X86_BIOS_BRINGUP) += memory16.o
 obj-$(CONFIG_X86_BIOS_BRINGUP) += traveler.o
+obj-$(CONFIG_X86_BIOS_BRINGUP) += bios_disk.o
Index: barebox-2009.12.0/arch/x86/lib/bios_disk.S
===================================================================
--- /dev/null
+++ barebox-2009.12.0/arch/x86/lib/bios_disk.S
@@ -0,0 +1,77 @@
+/*
+ * Copyright (C) 2009 Juergen Beisert, Pengutronix
+ *
+ * Mostly stolen from the GRUB2 project
+ *  Copyright (C) 1999,2000,2001,2002,2003,2004,2005,2006,2007,2008  Free Software Foundation, Inc.
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
+ * @brief Do BIOS calls to load or save data from disks
+ *
+ * @note These functions are running in flat and real mode. Due to some
+ * other restrictions these routines must running from an address
+ * space below 0x10000
+ */
+
+#ifndef DOXYGEN_SHOULD_SKIP_THIS
+/*
+ *   int bios_disk_rw_int13_extensions (int ah, int drive, void *dap)
+ *
+ *   Call IBM/MS INT13 Extensions (int 13 %ah=AH) for DRIVE. DAP
+ *   is passed for disk address packet. If an error occurs, return
+ *   non-zero, otherwise zero.
+ */
+	.section .boot.text.bios_disk_rw_int13_extensions, "ax"
+	.code32
+	.globl bios_disk_rw_int13_extensions
+	.type bios_disk_rw_int13_extensions, @function
+
+	.extern prot_to_real
+	.extern real_to_prot
+
+bios_disk_rw_int13_extensions:
+	pushl %ebp
+	pushl %esi
+
+	/* compute the address of disk_address_packet */
+	movw %cx, %si
+	xorw %cx, %cx
+	shrl $4, %ecx	/* save the segment to cx */
+
+	movb %al, %dh
+	call prot_to_real	/* enter real mode right now */
+
+	.code16
+	movb %dh, %ah
+	movw %cx, %ds
+	int $0x13		/* do the operation */
+	movb %ah, %dl		/* save return value */
+	/* back to protected mode */
+	DATA32 call real_to_prot
+
+	.code32
+	movb %dl, %al	/* return value in %eax */
+
+	popl %esi
+	popl %ebp
+
+	ret
+
+#endif

-- 

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

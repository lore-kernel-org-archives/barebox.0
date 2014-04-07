Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.reverze.net ([82.161.88.7] helo=fsm.reverze.net)
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WX6NC-0001ww-Sy
 for barebox@lists.infradead.org; Mon, 07 Apr 2014 10:01:55 +0000
From: michel@reverze.net
Date: Mon,  7 Apr 2014 12:01:21 +0200
Message-Id: <1396864882-5152-2-git-send-email-michel@reverze.net>
In-Reply-To: <1396864882-5152-1-git-send-email-michel@reverze.net>
References: <1396864882-5152-1-git-send-email-michel@reverze.net>
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
Subject: [PATCHv4 2/3] x86: Add support for IDE on the legacy I/O ports
To: barebox@lists.infradead.org

From: Michel Stam <m.stam@fugro.nl>

Signed-off-by: Michel Stam <michel@reverze.net>
---
 arch/x86/boards/x86_generic/Makefile            |    3 +
 arch/x86/boards/x86_generic/disk_bios_drive.c   |   46 +++++++++++
 arch/x86/boards/x86_generic/envsector.h         |   36 ++++++++
 arch/x86/boards/x86_generic/generic_pc.c        |   53 +------------
 arch/x86/boards/x86_generic/intf_platform_ide.c |   93 +++++++++++++++++++++
 arch/x86/boards/x86_generic/serial_ns16550.c    |   47 +++++++++++
 drivers/ata/ide-sff.c                           |   98 +++++++++++++++++++----
 drivers/ata/intf_platform_ide.c                 |   37 ++++++++-
 include/ata_drive.h                             |    1 +
 9 files changed, 341 insertions(+), 73 deletions(-)
 create mode 100644 arch/x86/boards/x86_generic/disk_bios_drive.c
 create mode 100644 arch/x86/boards/x86_generic/envsector.h
 create mode 100644 arch/x86/boards/x86_generic/intf_platform_ide.c
 create mode 100644 arch/x86/boards/x86_generic/serial_ns16550.c

diff --git a/arch/x86/boards/x86_generic/Makefile b/arch/x86/boards/x86_generic/Makefile
index 248240d..fca707d 100644
--- a/arch/x86/boards/x86_generic/Makefile
+++ b/arch/x86/boards/x86_generic/Makefile
@@ -1 +1,4 @@
 obj-y += generic_pc.o
+obj-$(CONFIG_DISK_INTF_PLATFORM_IDE) += intf_platform_ide.o
+obj-$(CONFIG_DISK_BIOS) += disk_bios_drive.o
+obj-$(CONFIG_DRIVER_SERIAL_NS16550) += serial_ns16550.o
diff --git a/arch/x86/boards/x86_generic/disk_bios_drive.c b/arch/x86/boards/x86_generic/disk_bios_drive.c
new file mode 100644
index 0000000..f33f48c
--- /dev/null
+++ b/arch/x86/boards/x86_generic/disk_bios_drive.c
@@ -0,0 +1,46 @@
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
+ *
+ */
+
+/**
+ * @file
+ * @brief Generic PC support for the BIOS disk interface
+ */
+
+#include <common.h>
+#include <driver.h>
+#include <init.h>
+#include <linux/err.h>
+#include "envsector.h"
+
+static int bios_disk_init(void)
+{
+	struct cdev *cdev;
+
+	add_generic_device("biosdrive", DEVICE_ID_DYNAMIC, NULL, 0, 0,
+			   IORESOURCE_MEM, NULL);
+
+	if (pers_env_size != PATCH_AREA_PERS_SIZE_UNUSED) {
+		cdev = devfs_add_partition("biosdisk0",
+				pers_env_storage * 512,
+				(unsigned)pers_env_size * 512,
+				DEVFS_PARTITION_FIXED, "env0");
+		printf("Partition: %ld\n", IS_ERR(cdev) ? PTR_ERR(cdev) : 0);
+	} else
+		printf("No persistent storage defined\n");
+
+	return 0;
+}
+device_initcall(bios_disk_init);
diff --git a/arch/x86/boards/x86_generic/envsector.h b/arch/x86/boards/x86_generic/envsector.h
new file mode 100644
index 0000000..86511c8
--- /dev/null
+++ b/arch/x86/boards/x86_generic/envsector.h
@@ -0,0 +1,36 @@
+/*
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
+ *
+ */
+
+/**
+ * @file
+ * @brief x86 Generic PC common definitions
+ */
+#ifndef __X86_ENVSECTOR_H
+#define __ENVSECTOR_H
+
+/*
+ * These datas are from the MBR, created by the linker and filled by the
+ * setup tool while installing barebox on the disk drive
+ */
+extern uint64_t pers_env_storage;
+extern uint16_t pers_env_size;
+extern uint8_t pers_env_drive;
+
+/**
+ * Persistent environment "not used" marker.
+ * Note: Must be in accordance to the value the tool "setup_mbr" writes.
+ */
+#define PATCH_AREA_PERS_SIZE_UNUSED 0x000
+
+#endif
diff --git a/arch/x86/boards/x86_generic/generic_pc.c b/arch/x86/boards/x86_generic/generic_pc.c
index 74a7224..5560efc 100644
--- a/arch/x86/boards/x86_generic/generic_pc.c
+++ b/arch/x86/boards/x86_generic/generic_pc.c
@@ -24,67 +24,16 @@
 #include <driver.h>
 #include <init.h>
 #include <asm/syslib.h>
-#include <ns16550.h>
 #include <linux/err.h>
 
-/*
- * These datas are from the MBR, created by the linker and filled by the
- * setup tool while installing barebox on the disk drive
- */
-extern uint64_t pers_env_storage;
-extern uint16_t pers_env_size;
-extern uint8_t pers_env_drive;
-
-/**
- * Persistent environment "not used" marker.
- * Note: Must be in accordance to the value the tool "setup_mbr" writes.
- */
-#define PATCH_AREA_PERS_SIZE_UNUSED 0x000
-
 static int devices_init(void)
 {
-	struct cdev *cdev;
-
 	/* extended memory only */
 	add_mem_device("ram0", 0x0, bios_get_memsize() << 10,
 		       IORESOURCE_MEM_WRITEABLE);
-	add_generic_device("biosdrive", DEVICE_ID_DYNAMIC, NULL, 0, 0, IORESOURCE_MEM,
-			NULL);
-
-	if (pers_env_size != PATCH_AREA_PERS_SIZE_UNUSED) {
-		cdev = devfs_add_partition("biosdisk0",
-				pers_env_storage * 512,
-				(unsigned)pers_env_size * 512,
-				DEVFS_PARTITION_FIXED, "env0");
-		printf("Partition: %ld\n", IS_ERR(cdev) ? PTR_ERR(cdev) : 0);
-	} else
-		printf("No persistent storage defined\n");
-
-        return 0;
-}
-device_initcall(devices_init);
-
-#ifdef CONFIG_DRIVER_SERIAL_NS16550
-
-static struct NS16550_plat serial_plat = {
-       .clock = 1843200,
-       .reg_read = x86_uart_read,
-       .reg_write = x86_uart_write,
-};
-
-static int pc_console_init(void)
-{
-	barebox_set_model("X86 generic barebox");
-	barebox_set_hostname("x86");
-
-	/* Register the serial port */
-	add_ns16550_device(DEVICE_ID_DYNAMIC, 0x3f8, 8, 0, &serial_plat);
-
 	return 0;
 }
-console_initcall(pc_console_init);
-
-#endif
+device_initcall(devices_init);
 
 /** @page generic_pc Generic PC based bootloader
 
diff --git a/arch/x86/boards/x86_generic/intf_platform_ide.c b/arch/x86/boards/x86_generic/intf_platform_ide.c
new file mode 100644
index 0000000..18a2620
--- /dev/null
+++ b/arch/x86/boards/x86_generic/intf_platform_ide.c
@@ -0,0 +1,93 @@
+/*
+ * Copyright (C) 2014 Juergen Beisert, Pengutronix, Michel Stam,
+ * Fugro Intersite
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
+ *
+ */
+
+/**
+ * @file
+ * @brief Generic PC support for the IDE platform driver
+ */
+
+#include <common.h>
+#include <driver.h>
+#include <init.h>
+#include <linux/err.h>
+#include <platform_ide.h>
+#include "envsector.h"
+
+static struct ide_port_info ide_plat = {
+	.ioport_shift = 0,
+	.dataif_be = 0,
+};
+
+static struct resource primary_ide_resources[] = {
+	{
+		.name = "base",
+		.start = 0x1f0,
+		.end =  0x1f7,
+		.flags = IORESOURCE_IO
+	},
+	{
+		.name = "alt",
+		.start = 0x3f6,
+		.end =  0x3f7,
+		.flags = IORESOURCE_IO
+	}
+};
+
+static struct resource secondary_ide_resources[] = {
+	{
+		.name = "base",
+		.start = 0x170,
+		.end =  0x177,
+		.flags = IORESOURCE_IO
+	},
+};
+
+static struct device_d primary_ide_device = {
+	.name = "ide_intf",
+	.id = 0,
+	.platform_data = &ide_plat,
+	.resource = primary_ide_resources,
+	.num_resources = ARRAY_SIZE(primary_ide_resources),
+};
+
+static struct device_d secondary_ide_device = {
+	.name = "ide_intf",
+	.id = 1,
+	.platform_data = &ide_plat,
+	.resource = secondary_ide_resources,
+	.num_resources = ARRAY_SIZE(secondary_ide_resources),
+};
+
+static int platform_ide_init(void)
+{
+	struct cdev *cdev;
+
+	platform_device_register(&primary_ide_device);
+	platform_device_register(&secondary_ide_device);
+
+	if (pers_env_size != PATCH_AREA_PERS_SIZE_UNUSED) {
+		cdev = devfs_add_partition("ata0",
+				pers_env_storage * 512,
+				(unsigned)pers_env_size * 512,
+				DEVFS_PARTITION_FIXED, "env0");
+		printf("Partition: %ld\n", IS_ERR(cdev) ? PTR_ERR(cdev) : 0);
+	} else
+		printf("No persistent storage defined\n");
+
+	return 0;
+}
+device_initcall(platform_ide_init);
diff --git a/arch/x86/boards/x86_generic/serial_ns16550.c b/arch/x86/boards/x86_generic/serial_ns16550.c
new file mode 100644
index 0000000..cae61df
--- /dev/null
+++ b/arch/x86/boards/x86_generic/serial_ns16550.c
@@ -0,0 +1,47 @@
+/*
+ * Copyright (C) 2009 Juergen Beisert, Pengutronix, Michel Stam,
+ * Fugro Intersite
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
+ *
+ */
+
+/**
+ * @file
+ * @brief Generic PC support to let barebox acting as a boot loader
+ */
+
+#include <common.h>
+#include <types.h>
+#include <driver.h>
+#include <init.h>
+#include <asm/syslib.h>
+#include <ns16550.h>
+#include <linux/err.h>
+
+static struct NS16550_plat serial_plat = {
+	.clock = 1843200,
+	.reg_read = x86_uart_read,
+	.reg_write = x86_uart_write,
+};
+
+static int pc_console_init(void)
+{
+	barebox_set_model("X86 generic barebox");
+	barebox_set_hostname("x86");
+
+	/* Register the serial port */
+	add_ns16550_device(DEVICE_ID_DYNAMIC, 0x3f8, 8, 0, &serial_plat);
+
+	return 0;
+}
+console_initcall(pc_console_init);
diff --git a/drivers/ata/ide-sff.c b/drivers/ata/ide-sff.c
index 3d5932e..a8f2b26 100644
--- a/drivers/ata/ide-sff.c
+++ b/drivers/ata/ide-sff.c
@@ -15,13 +15,74 @@
 #define DISK_SLAVE 1
 
 /**
+ * Read a byte from the ATA controller
+ * @param ide IDE port structure
+ * @param addr Register adress
+ * @return Register's content
+ */
+static inline uint8_t ata_rd_byte(struct ide_port *ide, void __iomem *addr)
+{
+	if (ide->io.mmio)
+		return readb(addr);
+	else
+		return (uint8_t) inb((int) addr);
+}
+
+/**
+ * Write a byte to the ATA controller
+ * @param ide IDE port structure
+ * @param value Value to write
+ * @param addr Register adress
+ * @return Register's content
+ */
+static inline void ata_wr_byte(struct ide_port *ide, uint8_t value,
+			       void __iomem *addr)
+{
+	if (ide->io.mmio)
+		writeb(value, addr);
+	else
+		outb(value, (int) addr);
+}
+
+/**
+ * Read a word from the ATA controller
+ * @param ide IDE port structure
+ * @param addr Register adress
+ * @return Register's content
+ */
+static inline uint16_t ata_rd_word(struct ide_port *ide,
+				   void __iomem *addr)
+{
+	if (ide->io.mmio)
+		return readw(addr);
+	else
+		return (uint16_t) inw((int) addr);
+}
+
+/**
+ * Write a word to the ATA controller
+ * @param ide IDE port structure
+ * @param value Value to write
+ * @param addr Register adress
+ * @return Register's content
+ */
+static inline void ata_wr_word(struct ide_port *ide, uint16_t value,
+			       void __iomem *addr)
+{
+	if (ide->io.mmio)
+		writew(value, addr);
+	else
+		outw(value, (int) addr);
+}
+
+/**
  * Read the status register of the ATA drive
  * @param io Register file
  * @return Register's content
  */
 static uint8_t ata_rd_status(struct ide_port *ide)
 {
-	return readb(ide->io.status_addr);
+	return ata_rd_byte(ide, ide->io.status_addr);
 }
 
 /**
@@ -83,12 +144,13 @@ static int ata_set_lba_sector(struct ide_port *ide, unsigned drive, uint64_t num
 	if (num > 0x0FFFFFFF || drive > 1)
 		return -EINVAL;
 
-	writeb(0xA0 | LBA_FLAG | drive << 4 | num >> 24, ide->io.device_addr);
-	writeb(0x00, ide->io.error_addr);
-	writeb(0x01, ide->io.nsect_addr);
-	writeb(num, ide->io.lbal_addr);	/* 0 ... 7 */
-	writeb(num >> 8, ide->io.lbam_addr); /* 8 ... 15 */
-	writeb(num >> 16, ide->io.lbah_addr); /* 16 ... 23 */
+	ata_wr_byte(ide, 0xA0 | LBA_FLAG | drive << 4 | num >> 24,
+		    ide->io.device_addr);
+	ata_wr_byte(ide, 0x00, ide->io.error_addr);
+	ata_wr_byte(ide, 0x01, ide->io.nsect_addr);
+	ata_wr_byte(ide, num, ide->io.lbal_addr);	/* 0 ... 7 */
+	ata_wr_byte(ide, num >> 8, ide->io.lbam_addr); /* 8 ... 15 */
+	ata_wr_byte(ide, num >> 16, ide->io.lbah_addr); /* 16 ... 23 */
 
 	return 0;
 }
@@ -107,7 +169,7 @@ static int ata_wr_cmd(struct ide_port *ide, uint8_t cmd)
 	if (rc != 0)
 		return rc;
 
-	writeb(cmd, ide->io.command_addr);
+	ata_wr_byte(ide, cmd, ide->io.command_addr);
 	return 0;
 }
 
@@ -118,7 +180,7 @@ static int ata_wr_cmd(struct ide_port *ide, uint8_t cmd)
  */
 static void ata_wr_dev_ctrl(struct ide_port *ide, uint8_t val)
 {
-	writeb(val, ide->io.ctl_addr);
+	ata_wr_byte(ide, val, ide->io.ctl_addr);
 }
 
 /**
@@ -133,10 +195,10 @@ static void ata_rd_sector(struct ide_port *ide, void *buf)
 
 	if (ide->io.dataif_be) {
 		for (; u > 0; u--)
-			*b++ = be16_to_cpu(readw(ide->io.data_addr));
+			*b++ = be16_to_cpu(ata_rd_word(ide, ide->io.data_addr));
 	} else {
 		for (; u > 0; u--)
-			*b++ = le16_to_cpu(readw(ide->io.data_addr));
+			*b++ = le16_to_cpu(ata_rd_word(ide, ide->io.data_addr));
 	}
 }
 
@@ -152,10 +214,10 @@ static void ata_wr_sector(struct ide_port *ide, const void *buf)
 
 	if (ide->io.dataif_be) {
 		for (; u > 0; u--)
-			writew(cpu_to_be16(*b++), ide->io.data_addr);
+			ata_wr_word(ide, cpu_to_be16(*b++), ide->io.data_addr);
 	} else {
 		for (; u > 0; u--)
-			writew(cpu_to_le16(*b++), ide->io.data_addr);
+			ata_wr_word(ide, cpu_to_le16(*b++), ide->io.data_addr);
 	}
 }
 
@@ -169,10 +231,10 @@ static int ide_read_id(struct ata_port *port, void *buf)
 	struct ide_port *ide = to_ata_drive_access(port);
 	int rc;
 
-	writeb(0xA0, ide->io.device_addr);	/* FIXME drive */
-	writeb(0x00, ide->io.lbal_addr);
-	writeb(0x00, ide->io.lbam_addr);
-	writeb(0x00, ide->io.lbah_addr);
+	ata_wr_byte(ide, 0xA0, ide->io.device_addr);	/* FIXME drive */
+	ata_wr_byte(ide, 0x00, ide->io.lbal_addr);
+	ata_wr_byte(ide, 0x00, ide->io.lbam_addr);
+	ata_wr_byte(ide, 0x00, ide->io.lbah_addr);
 
 	rc = ata_wr_cmd(ide, ATA_CMD_ID_ATA);
 	if (rc != 0)
@@ -327,6 +389,8 @@ int ide_port_register(struct ide_port *ide)
 	ide->port.ops = &ide_ops;
 
 	ret = ata_port_register(&ide->port);
+	if (!ret)
+		ata_port_detect(&ide->port);
 
 	if (ret)
 		free(ide);
diff --git a/drivers/ata/intf_platform_ide.c b/drivers/ata/intf_platform_ide.c
index 8ae0f05..ecc2546 100644
--- a/drivers/ata/intf_platform_ide.c
+++ b/drivers/ata/intf_platform_ide.c
@@ -82,15 +82,46 @@ static int platform_ide_probe(struct device_d *dev)
 	struct ide_port_info *pdata = dev->platform_data;
 	struct ide_port *ide;
 	void *reg_base, *alt_base;
+	struct resource *reg, *alt;
+	int mmio;
 
 	if (pdata == NULL) {
 		dev_err(dev, "No platform data. Cannot continue\n");
 		return -EINVAL;
 	}
 
+	alt = NULL;
+	reg = dev_get_resource(dev, IORESOURCE_MEM, 0);
+	mmio = (reg != NULL);
+	if (reg != NULL) {
+		reg = request_iomem_region(dev_name(dev), reg->start,
+					   reg->end);
+		alt = dev_get_resource(dev, IORESOURCE_MEM, 1);
+		if (alt != NULL)
+			alt = request_iomem_region(dev_name(dev), alt->start,
+						   alt->end);
+	} else {
+		reg = dev_get_resource(dev, IORESOURCE_IO, 0);
+		if (reg != NULL) {
+			reg = request_ioport_region(dev_name(dev), reg->start,
+						    reg->end);
+			alt = dev_get_resource(dev, IORESOURCE_IO, 1);
+			if (alt != NULL)
+				alt = request_ioport_region(dev_name(dev),
+							    alt->start,
+							    alt->end);
+		}
+	}
+
+	reg_base = (reg != NULL ? (void __force __iomem *) reg->start : NULL);
+	alt_base = (alt != NULL ? (void __force __iomem *) alt->start : NULL);
+
+	if (!reg_base)
+		return -ENODEV;
+
 	ide = xzalloc(sizeof(*ide));
-	reg_base = dev_request_mem_region(dev, 0);
-	alt_base = dev_request_mem_region(dev, 1);
+	ide->io.mmio = mmio;
+
 	platform_ide_setup_port(reg_base, alt_base, &ide->io, pdata->ioport_shift);
 	ide->io.reset = pdata->reset;
 	ide->io.dataif_be = pdata->dataif_be;
@@ -125,6 +156,4 @@ device_platform_driver(platform_ide_driver);
  *
  * This driver does not change any access timings due to the fact it has no idea
  * how to do so. So, do not expect an impressive data throughput.
- *
- * @todo Support also the IO port access method, the x86 architecture is using
  */
diff --git a/include/ata_drive.h b/include/ata_drive.h
index 6d6cca4..44073cb 100644
--- a/include/ata_drive.h
+++ b/include/ata_drive.h
@@ -119,6 +119,7 @@ struct ata_ioports {
 	/* hard reset line handling */
 	void (*reset)(int);	/* true: assert reset, false: de-assert reset */
 	int dataif_be;	/* true if 16 bit data register is big endian */
+	int mmio; /* true if memory-mapped io */
 };
 
 struct ata_port;
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RQbjh-0005ny-NL
 for barebox@lists.infradead.org; Wed, 16 Nov 2011 09:24:54 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1RQbjM-000359-QK
 for barebox@lists.infradead.org; Wed, 16 Nov 2011 10:24:32 +0100
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <jbe@pengutronix.de>) id 1RQbjM-0006YD-L5
 for barebox@lists.infradead.org; Wed, 16 Nov 2011 10:24:32 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Wed, 16 Nov 2011 10:24:27 +0100
Message-Id: <1321435467-19148-14-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 13/13] Add driver for IDE like interfaces
To: barebox@lists.infradead.org

This simple driver enables a generic driver for ATA type of devices to get
access to the so called 'register file' of an ATA drive.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 drivers/ata/Kconfig             |    7 ++
 drivers/ata/Makefile            |    1 +
 drivers/ata/intf_platform_ide.c |  129 +++++++++++++++++++++++++++++++++++++++
 include/platform_ide.h          |   31 +++++++++
 4 files changed, 168 insertions(+), 0 deletions(-)
 create mode 100644 drivers/ata/intf_platform_ide.c
 create mode 100644 include/platform_ide.h

diff --git a/drivers/ata/Kconfig b/drivers/ata/Kconfig
index 0a15863..153882d 100644
--- a/drivers/ata/Kconfig
+++ b/drivers/ata/Kconfig
@@ -38,4 +38,11 @@ config DISK_LE_ATTACHED
 
 comment "interface types"
 
+config DISK_INTF_PLATFORM_IDE
+	bool "Platform IDE"
+	select DISK_ATA
+	help
+	  Generic platform driver for simple IDE like interfaces to a connected
+	  ATA device.
+
 endif
diff --git a/drivers/ata/Makefile b/drivers/ata/Makefile
index cdbcbe7..2560076 100644
--- a/drivers/ata/Makefile
+++ b/drivers/ata/Makefile
@@ -5,3 +5,4 @@ obj-$(CONFIG_DISK_ATA) += disk_ata_drive.o
 
 # interface types
 
+obj-$(CONFIG_DISK_INTF_PLATFORM_IDE) += intf_platform_ide.o
diff --git a/drivers/ata/intf_platform_ide.c b/drivers/ata/intf_platform_ide.c
new file mode 100644
index 0000000..f499ea0
--- /dev/null
+++ b/drivers/ata/intf_platform_ide.c
@@ -0,0 +1,129 @@
+/*
+ * Copyright (C) 2011 Juergen Beisert, Pengutronix
+ *
+ * Derived from the Linux kernel: Generic platform device PATA driver
+ *  Copyright (C) 2006 - 2007  Paul Mundt
+ *  Based on pata_pcmcia:
+ *  Copyright 2005-2006 Red Hat Inc, all rights reserved.
+ *
+ * This file is subject to the terms and conditions of the GNU General Public
+ * License.  See the file "COPYING" in the main directory of this archive
+ * for more details.
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
+#include <init.h>
+#include <xfuncs.h>
+#include <malloc.h>
+#include <errno.h>
+#include <ata_drive.h>
+#include <platform_ide.h>
+
+/**
+ * Setup the register specific addresses for an ATA like divice
+ * @param reg_base Base address of the standard ATA like registers
+ * @param alt_base Base address of the alternate ATA like registers
+ * @param ioaddr Register file structure to setup
+ * @param shift Shift offset between registers
+ *
+ * Some of the registers have different names but use the same offset. This is
+ * due to the fact read or write access at the same offset reaches different
+ * registers.
+ */
+static void platform_ide_setup_port(void *reg_base, void *alt_base,
+			struct ata_ioports *ioaddr, unsigned shift)
+{
+	/* standard registers (0 ... 7) */
+	ioaddr->cmd_addr = reg_base;
+
+	ioaddr->data_addr = reg_base + (IDE_REG_DATA << shift);
+
+	ioaddr->error_addr = reg_base + (IDE_REG_ERR << shift);
+	ioaddr->feature_addr = reg_base + (IDE_REG_FEATURE << shift);
+
+	ioaddr->nsect_addr = reg_base + (IDE_REG_NSECT << shift);
+
+	ioaddr->lbal_addr = reg_base + (IDE_REG_LBAL << shift);
+
+	ioaddr->lbam_addr = reg_base + (IDE_REG_LBAM << shift);
+
+	ioaddr->lbah_addr = reg_base + (IDE_REG_LBAH << shift);
+
+	ioaddr->device_addr = reg_base + (IDE_REG_DEVICE << shift);
+
+	ioaddr->status_addr = reg_base + (IDE_REG_STATUS << shift);
+	ioaddr->command_addr = reg_base + (IDE_REG_CMD << shift);
+
+	ioaddr->altstatus_addr = alt_base + (IDE_REG_ALT_STATUS << shift);
+	ioaddr->ctl_addr = alt_base + (IDE_REG_DEV_CTL << shift);
+
+	ioaddr->alt_dev_addr = alt_base + (IDE_REG_DRV_ADDR << shift);
+}
+
+static int platform_ide_probe(struct device_d *dev)
+{
+	int rc;
+	struct ide_port_info *pdata = dev->platform_data;
+	struct ata_ioports *io;
+	void *reg_base, *alt_base;
+
+	if (pdata == NULL) {
+		dev_err(dev, "No platform data. Cannot continue\n");
+		return -EINVAL;
+	}
+
+	io = xzalloc(sizeof(struct ata_ioports));
+	reg_base = dev_request_mem_region(dev, 0);
+	alt_base = dev_request_mem_region(dev, 1);
+	platform_ide_setup_port(reg_base, alt_base, io, pdata->ioport_shift);
+	io->reset = pdata->reset;
+
+	rc = register_ata_drive(dev, io);
+	if (rc != 0) {
+		dev_err(dev, "Cannot register IDE interface\n");
+		free(io);
+	}
+
+	return rc;
+}
+
+static struct driver_d platform_ide_driver = {
+	.name   = "ide_intf",
+	.probe  = platform_ide_probe,
+};
+
+static int platform_ide_init(void)
+{
+	return register_driver(&platform_ide_driver);
+}
+
+device_initcall(platform_ide_init);
+
+/**
+ * @file
+ * @brief Interface driver for an ATA drive behind an IDE like interface
+ *
+ * This communication driver does all accesses to the drive via memory IO
+ * instructions.
+ *
+ * This kind of interface is also useable for regular bus like access, when
+ * there is no dedicated IDE available.
+ *
+ * "IDE like" means the platform data defines addresses to the register file
+ * of the attached ATA drive.
+ *
+ * This driver does not change any access timings due to the fact it has no idea
+ * how to do so. So, do not expect an impressive data throughput.
+ *
+ * @todo Support also the IO port access method, the x86 architecture is using
+ */
diff --git a/include/platform_ide.h b/include/platform_ide.h
new file mode 100644
index 0000000..4f14b5f
--- /dev/null
+++ b/include/platform_ide.h
@@ -0,0 +1,31 @@
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
+#ifndef __PLATFORM_IDE_H
+#define __PLATFORM_IDE_H
+
+struct ide_port_info {
+	/*
+	 * I/O port shift, for platforms with ports that are
+	 * constantly spaced and need larger than the 1-byte
+	 * spacing
+	 */
+	unsigned ioport_shift;
+
+	/* handle hard reset of this port */
+	void (*reset)(int);	/* true: assert reset, false: de-assert reset */
+};
+
+#endif /* __PLATFORM_IDE_H */
-- 
1.7.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NUds3-0007Gr-3r
	for barebox@lists.infradead.org; Tue, 12 Jan 2010 10:21:07 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.69)
	(envelope-from <jbe@pengutronix.de>) id 1NUdrr-0006WB-IZ
	for barebox@lists.infradead.org; Tue, 12 Jan 2010 11:20:55 +0100
Received: from jbe by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <jbe@pengutronix.de>) id 1NUdrr-00071Z-Gh
	for barebox@lists.infradead.org; Tue, 12 Jan 2010 11:20:55 +0100
Message-Id: <20100112102055.391035883@pengutronix.de>
References: <20100112101534.868276907@pengutronix.de>
Date: Tue, 12 Jan 2010 11:15:44 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Content-Disposition: inline; filename=ata_devices.diff
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
Subject: [PATCHv2 10/14] Start to add ATA support to barebox
To: barebox@lists.infradead.org

Add the basic files, declarations and folders to bring in ATA support.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>

---
 drivers/Kconfig      |    1 +
 drivers/Makefile     |    1 +
 drivers/ata/Kconfig  |   12 ++++++++++++
 drivers/ata/Makefile |    3 +++
 include/ata.h        |   39 +++++++++++++++++++++++++++++++++++++++
 5 files changed, 56 insertions(+)

Index: u-boot-2.0.0-rc10/drivers/ata/Kconfig
===================================================================
--- /dev/null
+++ u-boot-2.0.0-rc10/drivers/ata/Kconfig
@@ -0,0 +1,12 @@
+menuconfig ATA
+	bool "ATA                           "
+	help
+	  Add support for ATA types of drives like harddisks and CDROMs.
+
+if ATA
+
+comment "drive types"
+
+comment "interface types"
+
+endif
Index: u-boot-2.0.0-rc10/drivers/ata/Makefile
===================================================================
--- /dev/null
+++ u-boot-2.0.0-rc10/drivers/ata/Makefile
@@ -0,0 +1,3 @@
+# drive types
+
+# interface types
Index: u-boot-2.0.0-rc10/include/ata.h
===================================================================
--- /dev/null
+++ u-boot-2.0.0-rc10/include/ata.h
@@ -0,0 +1,39 @@
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
+ * @brief Declarations to communicate with ATA types of drives
+ */
+
+#include <types.h>
+#include <driver.h>
+
+/**
+ * Access functions from drives through the specified interface
+ */
+struct ata_interface {
+	/** write a count of sectors from a buffer to the drive */
+	int (*write)(struct device_d*, uint64_t, unsigned, const void*);
+	/** read a count of sectors from the drive into the buffer */
+	int (*read)(struct device_d*, uint64_t, unsigned, void*);
+	/** private interface data */
+	void *priv;
+};
Index: u-boot-2.0.0-rc10/drivers/Kconfig
===================================================================
--- u-boot-2.0.0-rc10.orig/drivers/Kconfig
+++ u-boot-2.0.0-rc10/drivers/Kconfig
@@ -6,6 +6,7 @@ source "drivers/spi/Kconfig"
 source "drivers/i2c/Kconfig"
 source "drivers/nor/Kconfig"
 source "drivers/nand/Kconfig"
+source "drivers/ata/Kconfig"
 source "drivers/usb/Kconfig"
 source "drivers/video/Kconfig"
 
Index: u-boot-2.0.0-rc10/drivers/Makefile
===================================================================
--- u-boot-2.0.0-rc10.orig/drivers/Makefile
+++ u-boot-2.0.0-rc10/drivers/Makefile
@@ -3,6 +3,7 @@ obj-y	+= serial/
 obj-y	+= nand/
 obj-y	+= nor/
 obj-y	+= usb/
+obj-$(CONFIG_ATA) += ata/
 obj-$(CONFIG_SPI) += spi/
 obj-$(CONFIG_I2C) += i2c/
 obj-$(CONFIG_VIDEO) += video/

-- 

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

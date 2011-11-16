Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RQbjW-0005mg-QF
 for barebox@lists.infradead.org; Wed, 16 Nov 2011 09:24:43 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1RQbjM-00034t-I3
 for barebox@lists.infradead.org; Wed, 16 Nov 2011 10:24:32 +0100
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <jbe@pengutronix.de>) id 1RQbjM-0006Xp-GL
 for barebox@lists.infradead.org; Wed, 16 Nov 2011 10:24:32 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Wed, 16 Nov 2011 10:24:19 +0100
Message-Id: <1321435467-19148-6-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 05/13] ATA/DISK: Reorganize file structure and names for
 future updates
To: barebox@lists.infradead.org

'ATA' means more an interface than a disk drive. Change the names to reflect
their real meaning.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 drivers/Makefile         |    2 +-
 drivers/ata/Kconfig      |   23 +++++++++++++----------
 drivers/ata/Makefile     |    2 +-
 drivers/ata/disk_drive.c |    4 ++--
 drivers/mci/Kconfig      |    4 ++--
 5 files changed, 19 insertions(+), 16 deletions(-)

diff --git a/drivers/Makefile b/drivers/Makefile
index 16b3bb1..592c39e 100644
--- a/drivers/Makefile
+++ b/drivers/Makefile
@@ -4,7 +4,7 @@ obj-y	+= serial/
 obj-y	+= mtd/
 obj-y	+= nor/
 obj-y	+= usb/
-obj-$(CONFIG_ATA) += ata/
+obj-$(CONFIG_DISK) += ata/
 obj-$(CONFIG_SPI) += spi/
 obj-$(CONFIG_I2C) += i2c/
 obj-$(CONFIG_MCI) += mci/
diff --git a/drivers/ata/Kconfig b/drivers/ata/Kconfig
index 5be1805..025ff94 100644
--- a/drivers/ata/Kconfig
+++ b/drivers/ata/Kconfig
@@ -1,27 +1,30 @@
-menuconfig ATA
+menuconfig DISK
 	select BLOCK
-	bool "ATA                           "
+	bool "Disk support                  "
 	help
-	  Add support for ATA types of drives like harddisks and CDROMs.
+	  Add support for disk like drives like harddisks, CDROMs, SD cards and
+	  CF cards.
 
-if ATA
+if DISK
 
-config ATA_WRITE
+config DISK_WRITE
 	select BLOCK_WRITE
-	bool "support writing to ATA drives"
+	bool "support writing to disk drives"
 
 comment "drive types"
 
-config ATA_DISK
-	bool "disk drives"
+config DISK_DRIVE
+	bool "Generic disk drives"
 	help
-	  Add support for regular disk drives
+	  Add support for generic disk drives. Common behaviour for this kind
+	  of devices is using a partition table in the first sector. Say Y here
+	  if you intend to work with disk drives (also CF cards and SD cards).
 
 comment "interface types"
 
 config ATA_BIOS
 	bool "BIOS based"
-	select ATA_DISK
+	select DISK_DRIVE
 	depends on X86_BIOS_BRINGUP
 	help
 	  Gain disk drive access via int13 calls to the standard PC-BIOS.
diff --git a/drivers/ata/Makefile b/drivers/ata/Makefile
index 30d15cc..c3260d7 100644
--- a/drivers/ata/Makefile
+++ b/drivers/ata/Makefile
@@ -1,6 +1,6 @@
 # drive types
 
-obj-$(CONFIG_ATA_DISK) += disk_drive.o
+obj-$(CONFIG_DISK_DRIVE) += disk_drive.o
 
 # interface types
 
diff --git a/drivers/ata/disk_drive.c b/drivers/ata/disk_drive.c
index 6a5dc87..c2a6a51 100644
--- a/drivers/ata/disk_drive.c
+++ b/drivers/ata/disk_drive.c
@@ -144,7 +144,7 @@ static int atablk_read(struct block_device *blk, void *buf, int block,
 	return atablk->intf->read(atablk->dev, block, num_blocks, buf);
 }
 
-#ifdef CONFIG_ATA_WRITE
+#ifdef CONFIG_DISK_WRITE
 static int atablk_write(struct block_device *blk, const void *buf, int block,
 		int num_blocks)
 {
@@ -156,7 +156,7 @@ static int atablk_write(struct block_device *blk, const void *buf, int block,
 
 static struct block_device_ops ataops = {
 	.read = atablk_read,
-#ifdef CONFIG_ATA_WRITE
+#ifdef CONFIG_DISK_WRITE
 	.write = atablk_write,
 #endif
 };
diff --git a/drivers/mci/Kconfig b/drivers/mci/Kconfig
index 0d5a0e0..d24e606 100644
--- a/drivers/mci/Kconfig
+++ b/drivers/mci/Kconfig
@@ -1,7 +1,7 @@
 menuconfig MCI
 	bool "MCI drivers                   "
-	select ATA
-	select ATA_DISK
+	select DISK
+	select DISK_DRIVE
 	help
 	  Add support for MCI drivers, used to handle MMC and SD cards
 
-- 
1.7.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

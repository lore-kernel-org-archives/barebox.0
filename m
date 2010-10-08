Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P4Fr4-0005cd-Lm
	for barebox@lists.infradead.org; Fri, 08 Oct 2010 16:31:35 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Fri,  8 Oct 2010 18:30:52 +0200
Message-Id: <1286555458-20125-5-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1286555458-20125-1-git-send-email-jbe@pengutronix.de>
References: <1286555458-20125-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 04/10] Don't try to guess the size of a disk if its size value
	is already given
To: barebox@lists.infradead.org

Guessing the size of an attached harddisk (access via x86 BIOS) was needed
due to the fact, barebox can't query this information from the BIOS easily.

But with the SD/MMC cards, there will be a second user of the generic disk
handling routines. And with this media it is very easy to know its size.

This patch provides a workaround to keep the guessing feature if the size of
the registered disk is 0. If it is not 0, the given value will be used instead.

Note: This is in preparation to add MCI card support, which can be handled
like a disk drive.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 arch/x86/boards/x86_generic/generic_pc.c |    2 +-
 drivers/ata/disk_drive.c                 |   27 ++++++++++++++++++---------
 2 files changed, 19 insertions(+), 10 deletions(-)

diff --git a/arch/x86/boards/x86_generic/generic_pc.c b/arch/x86/boards/x86_generic/generic_pc.c
index a6cd7e0..b9c31aa 100644
--- a/arch/x86/boards/x86_generic/generic_pc.c
+++ b/arch/x86/boards/x86_generic/generic_pc.c
@@ -46,7 +46,7 @@ static struct device_d sdram_dev = {
 static struct device_d bios_disk_dev = {
 	.id		= -1,
 	.name		= "biosdrive",
-	.size		= 1,
+	.size		= 0,	/* auto guess */
 };
 
 /*
diff --git a/drivers/ata/disk_drive.c b/drivers/ata/disk_drive.c
index 15ef5f4..a54429a 100644
--- a/drivers/ata/disk_drive.c
+++ b/drivers/ata/disk_drive.c
@@ -23,6 +23,7 @@
  * @brief Generic disk drive support
  *
  * @todo Support for disks larger than 4 GiB
+ * @todo Reliable size detection for BIOS based disks (on x86 only)
  */
 
 #include <stdio.h>
@@ -299,11 +300,16 @@ static int disk_probe(struct device_d *dev)
 	else
 #endif
 		disk_cdev->name = asprintf("disk%d", dev->id);
-	/**
-	 * @todo we need the size of the drive, else its nearly impossible
-	 * to do anything with it (at least with the generic routines)
-	 */
-	disk_cdev->size = 32;	/* FIXME */
+
+	/* On x86, BIOS based disks are coming without a valid .size field */
+	if (dev->size == 0) {
+		/*
+		 * We need always the size of the drive, else its nearly impossible
+		 * to do anything with it (at least with the generic routines)
+		 */
+		disk_cdev->size = 32;
+	} else
+		disk_cdev->size = dev->size;
 	disk_cdev->ops = &disk_ops;
 	disk_cdev->dev = dev;
 	devfs_create(disk_cdev);
@@ -314,10 +320,13 @@ static int disk_probe(struct device_d *dev)
 		goto on_error;
 	}
 
-	/* guess the size of this drive */
-	dev->size = disk_guess_size(dev, (struct partition_entry*)&sector[446]) * SECTOR_SIZE;
-	dev_info(dev, "Drive size guessed to %u kiB\n", dev->size / 1024);
-	disk_cdev->size = dev->size;
+	if (dev->size == 0) {
+		/* guess the size of this drive if not otherwise given */
+		dev->size = disk_guess_size(dev,
+			(struct partition_entry*)&sector[446]) * SECTOR_SIZE;
+		dev_info(dev, "Drive size guessed to %u kiB\n", dev->size / 1024);
+		disk_cdev->size = dev->size;
+	}
 
 	rc = disk_register_partitions(dev, (struct partition_entry*)&sector[446]);
 
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

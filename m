Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P4Fr2-0005cL-Ij
	for barebox@lists.infradead.org; Fri, 08 Oct 2010 16:31:33 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Fri,  8 Oct 2010 18:30:51 +0200
Message-Id: <1286555458-20125-4-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 03/10] Don't use a sector buffer on stack
To: barebox@lists.infradead.org

Using a temp. buffer for a disk sector on the stack, seems not work. Doing so
lets the system run crazy (the stack seems to be destroyd). Don't know the
correct stack handling on ARM, but (IMHO) I also can exclude any writing across
the buffer boundaries.

Using a temp. buffer via malloc() runs also on ARM.

Note: This patch was required to add MCI card support, which can be handled
like a disk drive.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 drivers/ata/disk_drive.c |   17 ++++++++++++-----
 1 files changed, 12 insertions(+), 5 deletions(-)

diff --git a/drivers/ata/disk_drive.c b/drivers/ata/disk_drive.c
index 5b22e49..15ef5f4 100644
--- a/drivers/ata/disk_drive.c
+++ b/drivers/ata/disk_drive.c
@@ -34,6 +34,7 @@
 #include <errno.h>
 #include <string.h>
 #include <linux/kernel.h>
+#include <malloc.h>
 
 /**
  * Description of one partition table entry (D*S type)
@@ -269,15 +270,18 @@ static struct file_operations disk_ops = {
  */
 static int disk_probe(struct device_d *dev)
 {
-	uint8_t sector[512];
+	uint8_t *sector;
 	int rc;
 	struct ata_interface *intf = dev->platform_data;
 	struct cdev *disk_cdev;
 
+	sector = xmalloc(SECTOR_SIZE);
+
 	rc = intf->read(dev, 0, 1, sector);
 	if (rc != 0) {
 		dev_err(dev, "Cannot read MBR of this device\n");
-		return -1;
+		rc = -ENODEV;
+		goto on_error;
 	}
 
 	/* It seems a valuable disk. Register it */
@@ -306,7 +310,8 @@ static int disk_probe(struct device_d *dev)
 
 	if ((sector[510] != 0x55) || (sector[511] != 0xAA)) {
 		dev_info(dev, "No partition table found\n");
-		return 0;
+		rc = 0;
+		goto on_error;
 	}
 
 	/* guess the size of this drive */
@@ -314,9 +319,11 @@ static int disk_probe(struct device_d *dev)
 	dev_info(dev, "Drive size guessed to %u kiB\n", dev->size / 1024);
 	disk_cdev->size = dev->size;
 
-	disk_register_partitions(dev, (struct partition_entry*)&sector[446]);
+	rc = disk_register_partitions(dev, (struct partition_entry*)&sector[446]);
 
-	return 0;
+on_error:
+	free(sector);
+	return rc;
 }
 
 #ifdef CONFIG_ATA_BIOS
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

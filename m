Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VX6yI-0006Fo-Lu
 for barebox@lists.infradead.org; Fri, 18 Oct 2013 10:07:55 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 18 Oct 2013 12:07:31 +0200
Message-Id: <1382090851-7993-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] USB: storage: register disks as usbdiskx
To: barebox@lists.infradead.org

To better identify them as USB storage devices. Also make the
info message look nicer.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/storage/usb.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
index e4b08b9..fbf458f 100644
--- a/drivers/usb/storage/usb.c
+++ b/drivers/usb/storage/usb.c
@@ -392,12 +392,11 @@ static int usb_stor_add_blkdev(struct us_data *us, struct device_d *dev,
 	if (result < 0)
 		goto BadDevice;
 
-	result = cdev_find_free_index("disk");
+	result = cdev_find_free_index("usbdisk");
 	if (result == -1)
 		pr_err("Cannot find a free number for the disk node\n");
-	pr_info("Using index %d for the new disk\n", result);
 
-	pblk_dev->blk.cdev.name = asprintf("disk%d", result);
+	pblk_dev->blk.cdev.name = asprintf("usbdisk%d", result);
 	pblk_dev->blk.blockbits = SECTOR_SHIFT;
 
 	result = blockdevice_register(&pblk_dev->blk);
@@ -406,6 +405,8 @@ static int usb_stor_add_blkdev(struct us_data *us, struct device_d *dev,
 		goto BadDevice;
 	}
 
+	dev_info(dev, "registered /dev/%s\n", pblk_dev->blk.cdev.name);
+
 	/* create partitions on demand */
 	result = parse_partition_table(&pblk_dev->blk);
 	if (result != 0)
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RxZqc-00052g-V5
 for barebox@lists.infradead.org; Wed, 15 Feb 2012 08:04:19 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 15 Feb 2012 09:04:04 +0100
Message-Id: <1329293044-9967-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1329293044-9967-1-git-send-email-s.hauer@pengutronix.de>
References: <1329293044-9967-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 6/6] USB storage: fix disconnect
To: barebox@lists.infradead.org

USB storage support missed disconnect support. Implement this.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/storage/usb.c |   23 ++++++-----------------
 drivers/usb/storage/usb.h |    1 +
 2 files changed, 7 insertions(+), 17 deletions(-)

diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
index 865ba8e..5f15464 100644
--- a/drivers/usb/storage/usb.c
+++ b/drivers/usb/storage/usb.c
@@ -415,7 +415,7 @@ static int usb_stor_add_blkdev(struct us_data *us, struct device_d *dev,
 	if (result != 0)
 		dev_warn(dev, "No partition table found\n");
 
-	list_add_tail(&pblk_dev->list, &us_blkdev_list);
+	list_add_tail(&pblk_dev->list, &us->blk_dev_list);
 	US_DEBUGP("USB disk device successfully added\n");
 
 	return 0;
@@ -556,6 +556,7 @@ static int usb_stor_probe(struct usb_device *usbdev,
 	us->ifnum = intf->bInterfaceNumber;
 	us->subclass = intf->bInterfaceSubClass;
 	us->protocol = intf->bInterfaceProtocol;
+	INIT_LIST_HEAD(&us->blk_dev_list);
 
 	/* get standard transport and protocol settings */
 	get_transport(us);
@@ -582,30 +583,18 @@ BadDevice:
 /* Handle a USB mass-storage disconnect */
 static void usb_stor_disconnect(struct usb_device *usbdev)
 {
-#if 0
 	struct us_data *us = (struct us_data *)usbdev->drv_data;
 	struct us_blk_dev *bdev, *bdev_tmp;
 
-	US_DEBUGP("Disconnecting USB Mass Storage device %s\n",
-	          usbdev->dev.name);
-
-	/* release all block devices of this mass storage device */
-	list_for_each_entry_safe(bdev, bdev_tmp, &us_blkdev_list, list) {
-		if (bdev->us == us) {
-			US_DEBUGP("Releasing %s\n", bdev->dev.name);
-			list_del(&bdev->list);
-			unregister_device(&bdev->dev);
-			free(bdev);
-		}
+	list_for_each_entry_safe(bdev, bdev_tmp, &us->blk_dev_list, list) {
+		list_del(&bdev->list);
+		blockdevice_unregister(&bdev->blk);
+		free(bdev);
 	}
 
 	/* release device's private data */
 	usbdev->drv_data = 0;
 	free(us);
-#else
-	dev_err(&usbdev->dev, "Disk/partition removal not yet implemented "
-	                      "in the ATA disk driver.");
-#endif
 }
 
 #define USUAL_DEV(use_proto, use_trans, drv_info) \
diff --git a/drivers/usb/storage/usb.h b/drivers/usb/storage/usb.h
index 5942393..1b73b00 100644
--- a/drivers/usb/storage/usb.h
+++ b/drivers/usb/storage/usb.h
@@ -81,6 +81,7 @@ struct us_data {
 
 	/* SCSI interfaces */
 	ccb			*srb;		/* current srb */
+	struct list_head	blk_dev_list;
 };
 
 /* one us_blk_dev object allocated per LUN */
-- 
1.7.9


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

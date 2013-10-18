Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 19.mo4.mail-out.ovh.net ([87.98.179.66]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VXCxy-0001C2-Ip
 for barebox@lists.infradead.org; Fri, 18 Oct 2013 16:31:59 +0000
Received: from mail629.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 82B4FFFAB21
 for <barebox@lists.infradead.org>; Fri, 18 Oct 2013 18:32:05 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 18 Oct 2013 18:33:12 +0200
Message-Id: <1382113992-9082-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1382113992-9082-1-git-send-email-plagnioj@jcrosoft.com>
References: <20131018163147.GZ32444@ns203013.ovh.net>
 <1382113992-9082-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 3/3] USB: storage: register disks as usbdiskx symlink
To: barebox@lists.infradead.org

From: Sascha Hauer <s.hauer@pengutronix.de>

To better identify them as USB storage devices. Also make the
info message look nicer.

We keep the old disk%d to do not brake backword compatibility for env.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/usb/storage/usb.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
index e4b08b9..6833983 100644
--- a/drivers/usb/storage/usb.c
+++ b/drivers/usb/storage/usb.c
@@ -25,6 +25,7 @@
 #include <scsi.h>
 #include <usb/usb.h>
 #include <usb/usb_defs.h>
+#include <linux/err.h>
 
 #undef USB_STOR_DEBUG
 
@@ -376,6 +377,7 @@ static int usb_stor_add_blkdev(struct us_data *us, struct device_d *dev,
 							unsigned char lun)
 {
 	struct us_blk_dev *pblk_dev;
+	struct cdev *cdev;
 	int result;
 
 	/* allocate a new USB block device */
@@ -406,6 +408,12 @@ static int usb_stor_add_blkdev(struct us_data *us, struct device_d *dev,
 		goto BadDevice;
 	}
 
+	cdev = devfs_add_symlink_index("usbdisk", &pblk_dev->blk.cdev);
+	if (IS_ERR(cdev))
+		dev_warn(dev, "Cannot create symlink usbdisk\n");
+	else
+		dev_info(dev, "registered /dev/%s\n", cdev->name);
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

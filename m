Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h1nxQ-0002uf-Gl
 for barebox@lists.infradead.org; Thu, 07 Mar 2019 08:00:50 +0000
Received: by mail-pg1-x544.google.com with SMTP id e17so10645111pgd.2
 for <barebox@lists.infradead.org>; Thu, 07 Mar 2019 00:00:48 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu,  7 Mar 2019 00:00:16 -0800
Message-Id: <20190307080036.28028-7-andrew.smirnov@gmail.com>
In-Reply-To: <20190307080036.28028-1-andrew.smirnov@gmail.com>
References: <20190307080036.28028-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 06/26] usb: storage: Make usb_stor_test_unit_ready() a
 standalone function
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Move special preparation steps done before the call to
usb_stor_test_unit_ready() inside the function itself for clarity and
to allow futher code improvements. No functional change intended.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/usb/storage/usb.c | 28 ++++++++++++++++------------
 1 file changed, 16 insertions(+), 12 deletions(-)

diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
index 05a3a03c4..52d4e24de 100644
--- a/drivers/usb/storage/usb.c
+++ b/drivers/usb/storage/usb.c
@@ -98,27 +98,31 @@ static int usb_stor_request_sense(ccb *srb, struct us_data *us)
 	return 0;
 }
 
-static int usb_stor_test_unit_ready(ccb *srb, struct us_data *us)
+static int usb_stor_test_unit_ready(struct us_blk_dev *usb_blkdev)
 {
+	struct us_data *us = usb_blkdev->us;
 	struct device_d *dev = &us->pusb_dev->dev;
 	int retries, result;
+	ccb srb;
+
+	srb.lun = usb_blkdev->lun;
 
 	retries = 10;
 	do {
 		dev_dbg(dev, "SCSI_TST_U_RDY\n");
-		memset(&srb->cmd[0], 0, 12);
-		srb->cmdlen = 12;
-		srb->cmd[0] = SCSI_TST_U_RDY;
-		srb->datalen = 0;
-		result = us->transport(srb, us);
+		memset(&srb.cmd[0], 0, 12);
+		srb.cmdlen = 12;
+		srb.cmd[0] = SCSI_TST_U_RDY;
+		srb.datalen = 0;
+		result = us->transport(&srb, us);
 		dev_dbg(dev, "SCSI_TST_U_RDY returns %d\n", result);
 		if (result == USB_STOR_TRANSPORT_GOOD)
 			return 0;
-		usb_stor_request_sense(srb, us);
+		usb_stor_request_sense(&srb, us);
 		mdelay(100);
 	} while (retries--);
 
-	return -1;
+	return -ENODEV;
 }
 
 static int usb_stor_read_capacity(struct us_blk_dev *usb_blkdev,
@@ -255,7 +259,7 @@ static int usb_stor_blk_io(int io_op, struct block_device *disk_dev,
 
 	/* ensure unit ready */
 	dev_dbg(dev, "Testing for unit ready\n");
-	if (usb_stor_test_unit_ready(&us_ccb, us)) {
+	if (usb_stor_test_unit_ready(pblk_dev)) {
 		dev_dbg(dev, "Device NOT ready\n");
 		usb_disable_asynch(0);
 		return -EIO;
@@ -366,10 +370,10 @@ static int usb_stor_init_blkdev(struct us_blk_dev *pblk_dev)
 
 	/* ensure unit ready */
 	dev_dbg(dev, "Testing for unit ready\n");
-	us_ccb.datalen = 0;
-	if (usb_stor_test_unit_ready(&us_ccb, us)) {
+
+	result = usb_stor_test_unit_ready(pblk_dev);
+	if (result) {
 		dev_dbg(dev, "Device NOT ready\n");
-		result = -ENODEV;
 		goto Exit;
 	}
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

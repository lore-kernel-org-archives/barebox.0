Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h1nxP-0002sk-BD
 for barebox@lists.infradead.org; Thu, 07 Mar 2019 08:00:53 +0000
Received: by mail-pg1-x544.google.com with SMTP id r124so10640914pgr.3
 for <barebox@lists.infradead.org>; Thu, 07 Mar 2019 00:00:47 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu,  7 Mar 2019 00:00:15 -0800
Message-Id: <20190307080036.28028-6-andrew.smirnov@gmail.com>
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
Subject: [PATCH 05/26] usb: storage: Make usb_stor_inquiry() a standalone
 function
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Move special preparation steps done before and after call to
usb_stor_inquiry() inside the function itself for clarity and to allow
futher code improvements. No functional change intended.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/usb/storage/usb.c | 52 ++++++++++++++++++++++-----------------
 1 file changed, 30 insertions(+), 22 deletions(-)

diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
index f439cd825..05a3a03c4 100644
--- a/drivers/usb/storage/usb.c
+++ b/drivers/usb/storage/usb.c
@@ -37,30 +37,43 @@ static LIST_HEAD(us_blkdev_list);
  * USB Storage routines
  ***********************************************************************/
 
-static int usb_stor_inquiry(ccb *srb, struct us_data *us)
+static int usb_stor_inquiry(struct us_blk_dev *usb_blkdev)
 {
+	struct us_data *us = usb_blkdev->us;
 	struct device_d *dev = &us->pusb_dev->dev;
 	int retries, result;
+	ccb srb;
+	u8 *data = xzalloc(36);
 
-	srb->datalen = min(128UL, srb->datalen);
-	if (srb->datalen < 5) {
-		dev_dbg(dev, "SCSI_INQUIRY: invalid data buffer size\n");
-		return -EINVAL;
-	}
+	srb.lun = usb_blkdev->lun;
+	srb.pdata = data;
+	srb.datalen = 36;
 
 	retries = 3;
 	do {
 		dev_dbg(dev, "SCSI_INQUIRY\n");
-		memset(&srb->cmd[0], 0, 6);
-		srb->cmdlen = 6;
-		srb->cmd[0] = SCSI_INQUIRY;
-		srb->cmd[3] = (u8)(srb->datalen >> 8);
-		srb->cmd[4] = (u8)(srb->datalen >> 0);
-		result = us->transport(srb, us);
+		memset(&srb.cmd[0], 0, 6);
+		srb.cmdlen = 6;
+		srb.cmd[0] = SCSI_INQUIRY;
+		srb.cmd[3] = (u8)(srb.datalen >> 8);
+		srb.cmd[4] = (u8)(srb.datalen >> 0);
+		result = us->transport(&srb, us);
 		dev_dbg(dev, "SCSI_INQUIRY returns %d\n", result);
-	} while ((result != USB_STOR_TRANSPORT_GOOD) && retries--);
+		if (result == USB_STOR_TRANSPORT_GOOD) {
+			dev_dbg(dev, "Peripheral type: %x, removable: %x\n",
+				data[0], (data[1] >> 7));
+			dev_dbg(dev, "ISO ver: %x, resp format: %x\n",
+				data[2], data[3]);
+			dev_dbg(dev, "Vendor/product/rev: %28s\n",
+				&data[8]);
+			// TODO:  process and store device info
+			break;
+		}
+	} while (retries--);
 
-	return (result != USB_STOR_TRANSPORT_GOOD) ? -EIO : 0;
+	free(data);
+
+	return result ? -ENODEV : 0;
 }
 
 static int usb_stor_request_sense(ccb *srb, struct us_data *us)
@@ -344,17 +357,12 @@ static int usb_stor_init_blkdev(struct us_blk_dev *pblk_dev)
 
 	/* get device info */
 	dev_dbg(dev, "Reading device info\n");
-	us_ccb.datalen = 36;
-	if (usb_stor_inquiry(&us_ccb, us)) {
+
+	result = usb_stor_inquiry(pblk_dev);
+	if (result) {
 		dev_dbg(dev, "Cannot read device info\n");
-		result = -ENODEV;
 		goto Exit;
 	}
-	dev_dbg(dev, "Peripheral type: %x, removable: %x\n",
-	          us_io_buf[0], (us_io_buf[1] >> 7));
-	dev_dbg(dev, "ISO ver: %x, resp format: %x\n", us_io_buf[2], us_io_buf[3]);
-	dev_dbg(dev, "Vendor/product/rev: %28s\n", &us_io_buf[8]);
-	// TODO:  process and store device info
 
 	/* ensure unit ready */
 	dev_dbg(dev, "Testing for unit ready\n");
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

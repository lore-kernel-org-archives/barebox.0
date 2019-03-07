Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h1nxW-00032r-KI
 for barebox@lists.infradead.org; Thu, 07 Mar 2019 08:01:00 +0000
Received: by mail-pg1-x542.google.com with SMTP id u9so10632441pgo.7
 for <barebox@lists.infradead.org>; Thu, 07 Mar 2019 00:00:54 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu,  7 Mar 2019 00:00:21 -0800
Message-Id: <20190307080036.28028-12-andrew.smirnov@gmail.com>
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
Subject: [PATCH 11/26] usb: storage: Make usb_stor_request_sense() a
 standalone function
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Don't try to re-use caller's "ccb" and instead convert
usb_stor_request_sense() to use its own for clarity and to allow
futher code improvements. No functional change intended.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/usb/storage/usb.c | 33 ++++++++++++++++++---------------
 1 file changed, 18 insertions(+), 15 deletions(-)

diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
index e63cc40a6..64142048c 100644
--- a/drivers/usb/storage/usb.c
+++ b/drivers/usb/storage/usb.c
@@ -76,24 +76,27 @@ static int usb_stor_inquiry(struct us_blk_dev *usb_blkdev)
 	return result ? -ENODEV : 0;
 }
 
-static int usb_stor_request_sense(ccb *srb, struct us_data *us)
+static int usb_stor_request_sense(struct us_blk_dev *usb_blkdev)
 {
+	struct us_data *us = usb_blkdev->us;
 	struct device_d *dev = &us->pusb_dev->dev;
-	unsigned char *pdata = srb->pdata;
-	unsigned long datalen = srb->datalen;
+	ccb srb;
+	u8 *data = xzalloc(18);
+
+	srb.lun = usb_blkdev->lun;
 
 	dev_dbg(dev, "SCSI_REQ_SENSE\n");
-	srb->pdata = &srb->sense_buf[0];
-	srb->datalen = 18;
-	memset(&srb->cmd[0], 0, 6);
-	srb->cmdlen = 6;
-	srb->cmd[0] = SCSI_REQ_SENSE;
-	srb->cmd[4] = (u8)(srb->datalen >> 0);
-	us->transport(srb, us);
+	srb.pdata = data;
+	srb.datalen = 18;
+	memset(&srb.cmd[0], 0, 6);
+	srb.cmdlen = 6;
+	srb.cmd[0] = SCSI_REQ_SENSE;
+	srb.cmd[4] = (u8)(srb.datalen >> 0);
+	us->transport(&srb, us);
 	dev_dbg(dev, "Request Sense returned %02X %02X %02X\n",
-		 srb->sense_buf[2], srb->sense_buf[12], srb->sense_buf[13]);
-	srb->pdata = pdata;
-	srb->datalen = datalen;
+		data[2], data[12], data[13]);
+
+	free(data);
 
 	return 0;
 }
@@ -118,7 +121,7 @@ static int usb_stor_test_unit_ready(struct us_blk_dev *usb_blkdev)
 		dev_dbg(dev, "SCSI_TST_U_RDY returns %d\n", result);
 		if (result == USB_STOR_TRANSPORT_GOOD)
 			return 0;
-		usb_stor_request_sense(&srb, us);
+		usb_stor_request_sense(usb_blkdev);
 		mdelay(100);
 	} while (retries--);
 
@@ -186,7 +189,7 @@ static int usb_stor_io_10(struct us_blk_dev *usb_blkdev, u8 cmd,
 		result = us->transport(&srb, us);
 		if (result == USB_STOR_TRANSPORT_GOOD)
 			return 0;
-		usb_stor_request_sense(&srb, us);
+		usb_stor_request_sense(usb_blkdev);
 	} while (retries--);
 
 	return -EIO;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

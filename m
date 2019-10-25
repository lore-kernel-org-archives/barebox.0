Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO1wh-0004l9-EJ
 for barebox@lists.infradead.org; Fri, 25 Oct 2019 15:56:15 +0000
From: Robert Karszniewicz <r.karszniewicz@phytec.de>
Date: Fri, 25 Oct 2019 17:56:08 +0200
Message-Id: <1572018968-343065-1-git-send-email-r.karszniewicz@phytec.de>
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
Subject: [PATCH] usb: storage: Increase retries for usb_stor_transport()
To: barebox@lists.infradead.org

This should make writing and reading more reliable.

Also:
- change loop condition to make "retries" semantically correct
- add a debug message in case of fatal failure
---
We've had problems writing (and even reading) a 10 MiB file from barebox
to multiple USB flash drives.
The 10 MiB file copy failed with "write: I/O error" almost every time.
Increasing the retry count made 100 MiB file copies succeed every time.

 drivers/usb/storage/usb.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
index 63d624e..e0ef4f5 100644
--- a/drivers/usb/storage/usb.c
+++ b/drivers/usb/storage/usb.c
@@ -87,8 +87,7 @@ static int usb_stor_transport(struct us_blk_dev *usb_blkdev,
 	struct device_d *dev = &us->pusb_dev->dev;
 	int i, ret;
 
-
-	for (i = 0; i < retries; i++) {
+	for (i = 0; i <= retries; i++) {
 		dev_dbg(dev, "%s\n", usb_stor_opcode_name(cmd[0]));
 		ret = us->transport(usb_blkdev, cmd, cmdlen, data, datalen);
 		dev_dbg(dev, "%s returns %d\n", usb_stor_opcode_name(cmd[0]),
@@ -105,6 +104,8 @@ static int usb_stor_transport(struct us_blk_dev *usb_blkdev,
 			mdelay(request_sense_delay_ms);
 	}
 
+	dev_dbg(dev, "Retried %s %d times, and failed.\n", usb_stor_opcode_name(cmd[0]), retries);
+
 	return -EIO;
 }
 
@@ -194,7 +195,7 @@ static int usb_stor_io_10(struct us_blk_dev *usb_blkdev, u8 opcode,
 	put_unaligned_be16(blocks, &cmd[7]);
 
 	return usb_stor_transport(usb_blkdev, cmd, sizeof(cmd), data,
-				  blocks * SECTOR_SIZE, 2, 0);
+				  blocks * SECTOR_SIZE, 10, 0);
 }
 
 /***********************************************************************
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

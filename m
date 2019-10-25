Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO27W-0000CO-OB
 for barebox@lists.infradead.org; Fri, 25 Oct 2019 16:07:24 +0000
From: Robert Karszniewicz <r.karszniewicz@phytec.de>
Date: Fri, 25 Oct 2019 18:07:19 +0200
Message-Id: <1572019639-343291-1-git-send-email-r.karszniewicz@phytec.de>
In-Reply-To: <1572018968-343065-1-git-send-email-r.karszniewicz@phytec.de>
References: <1572018968-343065-1-git-send-email-r.karszniewicz@phytec.de>
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
Subject: [PATCH] test: usb: storage: Increase retries for usb_stor_transport()
To: barebox@lists.infradead.org

This should make writing and reading more reliable.

Also:
- change loop condition to make "retries" semantically correct
- add a debug message in case of fatal failure
---
And here is the test for how many retries were required at maximum. In case
anyone wants to try for themselves.

barebox:/ usb && mkdir /mnt/usb && mount /dev/disk0.0 /mnt/usb && echo 'generating 100MiB file' && memcpy -s /dev/prng -d testfile 0x0 0x0 104857600 && echo 'writing file to drive' && cp testfile /mnt/usb/testfile && md5sum testfile /mnt/usb/testfile; ls -l testfile /mnt/usb/testfile

The highest max_retries for our three drives was 4. So 10 should be high enough.

 drivers/usb/storage/usb.c | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
index 63d624e..90e4492 100644
--- a/drivers/usb/storage/usb.c
+++ b/drivers/usb/storage/usb.c
@@ -86,9 +86,13 @@ static int usb_stor_transport(struct us_blk_dev *usb_blkdev,
 	struct us_data *us = usb_blkdev->us;
 	struct device_d *dev = &us->pusb_dev->dev;
 	int i, ret;
+	static int max_retries = 0;
 
-
-	for (i = 0; i < retries; i++) {
+	for (i = 0; i <= retries; i++) {
+		if (cmd[0] == SCSI_WRITE10 && i > max_retries) {
+			max_retries = i;
+			printf("max_retries = %d\n", max_retries);
+		}
 		dev_dbg(dev, "%s\n", usb_stor_opcode_name(cmd[0]));
 		ret = us->transport(usb_blkdev, cmd, cmdlen, data, datalen);
 		dev_dbg(dev, "%s returns %d\n", usb_stor_opcode_name(cmd[0]),
@@ -105,6 +109,8 @@ static int usb_stor_transport(struct us_blk_dev *usb_blkdev,
 			mdelay(request_sense_delay_ms);
 	}
 
+	dev_dbg(dev, "Retried %s %d times, and failed.\n", usb_stor_opcode_name(cmd[0]), retries);
+
 	return -EIO;
 }
 
@@ -194,7 +200,7 @@ static int usb_stor_io_10(struct us_blk_dev *usb_blkdev, u8 opcode,
 	put_unaligned_be16(blocks, &cmd[7]);
 
 	return usb_stor_transport(usb_blkdev, cmd, sizeof(cmd), data,
-				  blocks * SECTOR_SIZE, 2, 0);
+				  blocks * SECTOR_SIZE, 100, 0);
 }
 
 /***********************************************************************
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

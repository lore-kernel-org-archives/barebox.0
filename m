Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h1nxe-0003En-OI
 for barebox@lists.infradead.org; Thu, 07 Mar 2019 08:01:16 +0000
Received: by mail-pf1-x441.google.com with SMTP id n74so10823376pfi.9
 for <barebox@lists.infradead.org>; Thu, 07 Mar 2019 00:01:02 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu,  7 Mar 2019 00:00:28 -0800
Message-Id: <20190307080036.28028-19-andrew.smirnov@gmail.com>
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
Subject: [PATCH 18/26] usb: storage: Introduce usb_stor_transport()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Move retry logic found in all of the low-level usb_stor_* functions
into a standalone subroutine and convert the rest of the code to use
it.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/usb/storage/usb.c | 213 +++++++++++++++++++++-----------------
 1 file changed, 117 insertions(+), 96 deletions(-)

diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
index faf9ec2b4..5a5d075ec 100644
--- a/drivers/usb/storage/usb.c
+++ b/drivers/usb/storage/usb.c
@@ -34,41 +34,7 @@
  * USB Storage routines
  ***********************************************************************/
 
-static int usb_stor_inquiry(struct us_blk_dev *usb_blkdev)
-{
-	struct us_data *us = usb_blkdev->us;
-	struct device_d *dev = &us->pusb_dev->dev;
-	int retries, result;
-	u8 cmd[6];
-	const u32 datalen = 36;
-	u8 *data = xzalloc(datalen);
-
-	retries = 3;
-	do {
-		dev_dbg(dev, "SCSI_INQUIRY\n");
-		memset(cmd, 0, sizeof(cmd));
-		cmd[0] = SCSI_INQUIRY;
-		cmd[3] = (u8)(datalen >> 8);
-		cmd[4] = (u8)(datalen >> 0);
-		result = us->transport(usb_blkdev, cmd, sizeof(cmd),
-				       data, datalen);
-		dev_dbg(dev, "SCSI_INQUIRY returns %d\n", result);
-		if (result == USB_STOR_TRANSPORT_GOOD) {
-			dev_dbg(dev, "Peripheral type: %x, removable: %x\n",
-				data[0], (data[1] >> 7));
-			dev_dbg(dev, "ISO ver: %x, resp format: %x\n",
-				data[2], data[3]);
-			dev_dbg(dev, "Vendor/product/rev: %28s\n",
-				&data[8]);
-			// TODO:  process and store device info
-			break;
-		}
-	} while (retries--);
-
-	free(data);
-
-	return result ? -ENODEV : 0;
-}
+#define USB_STOR_NO_REQUEST_SENSE	-1
 
 static int usb_stor_request_sense(struct us_blk_dev *usb_blkdev)
 {
@@ -92,92 +58,147 @@ static int usb_stor_request_sense(struct us_blk_dev *usb_blkdev)
 	return 0;
 }
 
-static int usb_stor_test_unit_ready(struct us_blk_dev *usb_blkdev)
+static const char *usb_stor_opcode_name(u8 opcode)
+{
+	switch (opcode) {
+	case SCSI_INQUIRY:
+		return "SCSI_INQUIRY";
+	case SCSI_TST_U_RDY:
+		return "SCSI_TST_U_RDY";
+	case SCSI_RD_CAPAC:
+		return "SCSI_RD_CAPAC";
+	case SCSI_READ10:
+		return "SCSI_READ10";
+	case SCSI_WRITE10:
+		return "SCSI_WRITE10";
+	};
+
+	return "UNKNOWN";
+}
+
+static int usb_stor_transport(struct us_blk_dev *usb_blkdev,
+			      const u8 *cmd, u8 cmdlen,
+			      void *data, u32 datalen,
+			      int retries, int request_sense_delay_ms)
 {
 	struct us_data *us = usb_blkdev->us;
 	struct device_d *dev = &us->pusb_dev->dev;
-	u8 cmd[12];
-	int retries, result;
-
-	retries = 10;
-	do {
-		dev_dbg(dev, "SCSI_TST_U_RDY\n");
-		memset(cmd, 0, sizeof(cmd));
-		cmd[0] = SCSI_TST_U_RDY;
-		result = us->transport(usb_blkdev, cmd, sizeof(cmd),
-				       NULL, 0);
-		dev_dbg(dev, "SCSI_TST_U_RDY returns %d\n", result);
-		if (result == USB_STOR_TRANSPORT_GOOD)
+	int i, ret;
+
+
+	for (i = 0; i < retries; i++) {
+		dev_dbg(dev, "%s\n", usb_stor_opcode_name(cmd[0]));
+		ret = us->transport(usb_blkdev, cmd, cmdlen, data, datalen);
+		dev_dbg(dev, "%s returns %d\n", usb_stor_opcode_name(cmd[0]),
+			ret);
+		if (ret == USB_STOR_TRANSPORT_GOOD)
 			return 0;
+
+		if (request_sense_delay_ms == USB_STOR_NO_REQUEST_SENSE)
+			continue;
+
 		usb_stor_request_sense(usb_blkdev);
-		mdelay(100);
-	} while (retries--);
 
-	return -ENODEV;
+		if (request_sense_delay_ms)
+			mdelay(request_sense_delay_ms);
+	}
+
+	return -EIO;
+}
+
+static int usb_stor_inquiry(struct us_blk_dev *usb_blkdev)
+{
+	struct device_d *dev = &usb_blkdev->us->pusb_dev->dev;
+	int ret;
+	u8 cmd[6];
+	const u32 datalen = 36;
+	u8 *data = xzalloc(datalen);
+
+	memset(cmd, 0, sizeof(cmd));
+	cmd[0] = SCSI_INQUIRY;
+	cmd[3] = (u8)(datalen >> 8);
+	cmd[4] = (u8)(datalen >> 0);
+
+	ret = usb_stor_transport(usb_blkdev, cmd, sizeof(cmd), data, datalen,
+				 3, USB_STOR_NO_REQUEST_SENSE);
+	if (ret < 0) {
+		ret = -ENODEV;
+		goto exit;
+	}
+
+	dev_dbg(dev, "Peripheral type: %x, removable: %x\n",
+		data[0], (data[1] >> 7));
+	dev_dbg(dev, "ISO ver: %x, resp format: %x\n",
+		data[2], data[3]);
+	dev_dbg(dev, "Vendor/product/rev: %28s\n",
+		&data[8]);
+	// TODO:  process and store device info
+
+exit:
+	free(data);
+	return ret;
+}
+
+static int usb_stor_test_unit_ready(struct us_blk_dev *usb_blkdev)
+{
+	u8 cmd[12];
+	int ret;
+
+	memset(cmd, 0, sizeof(cmd));
+	cmd[0] = SCSI_TST_U_RDY;
+
+	ret = usb_stor_transport(usb_blkdev, cmd, sizeof(cmd), NULL, 0,
+				 10, 100);
+	if (ret < 0)
+		return -ENODEV;
+
+	return 0;
 }
 
 static int usb_stor_read_capacity(struct us_blk_dev *usb_blkdev,
 				  u32 *last_lba, u32 *block_length)
 {
-	struct us_data *us = usb_blkdev->us;
-	struct device_d *dev = &us->pusb_dev->dev;
-	int retries, result;
+	struct device_d *dev = &usb_blkdev->us->pusb_dev->dev;
 	const u32 datalen = 8;
 	u32 *data = xzalloc(datalen);
 	u8 cmd[10];
+	int ret;
 
-	retries = 3;
-	do {
-		dev_dbg(dev, "SCSI_RD_CAPAC\n");
-		memset(cmd, 0, sizeof(cmd));
-		cmd[0] = SCSI_RD_CAPAC;
-
-		result = us->transport(usb_blkdev, cmd, sizeof(cmd), data,
-				       datalen);
-		dev_dbg(dev, "SCSI_RD_CAPAC returns %d\n", result);
-
-		if (result == USB_STOR_TRANSPORT_GOOD) {
-			dev_dbg(dev, "Read Capacity returns: 0x%x, 0x%x\n",
-				data[0], data[1]);
-			*last_lba = be32_to_cpu(data[0]);
-			*block_length = be32_to_cpu(data[1]);
-			break;
-		}
-	} while (retries--);
+	memset(cmd, 0, sizeof(cmd));
+	cmd[0] = SCSI_RD_CAPAC;
 
-	free(data);
+	ret = usb_stor_transport(usb_blkdev, cmd, sizeof(cmd), data, datalen,
+				 3, USB_STOR_NO_REQUEST_SENSE);
+	if (ret < 0)
+		goto exit;
+
+	dev_dbg(dev, "Read Capacity returns: 0x%x, 0x%x\n",
+		data[0], data[1]);
+	*last_lba = be32_to_cpu(data[0]);
+	*block_length = be32_to_cpu(data[1]);
 
-	return result ? -EIO : 0;
+exit:
+	free(data);
+	return ret;
 }
 
 static int usb_stor_io_10(struct us_blk_dev *usb_blkdev, u8 opcode,
 			  unsigned long start, u8 *data,
 			  unsigned short blocks)
 {
-	struct us_data *us = usb_blkdev->us;
-	int retries, result;
-	const u32 datalen = blocks * SECTOR_SIZE;
 	u8 cmd[10];
 
-	retries = 2;
-	do {
-		memset(cmd, 0, sizeof(cmd));
-
-		cmd[0] = opcode;
-		cmd[2] = (u8)(start >> 24);
-		cmd[3] = (u8)(start >> 16);
-		cmd[4] = (u8)(start >> 8);
-		cmd[5] = (u8)(start >> 0);
-		cmd[7] = (u8)(blocks >> 8);
-		cmd[8] = (u8)(blocks >> 0);
-		result = us->transport(usb_blkdev, cmd, sizeof(cmd),
-				       data, datalen);
-		if (result == USB_STOR_TRANSPORT_GOOD)
-			return 0;
-		usb_stor_request_sense(usb_blkdev);
-	} while (retries--);
-
-	return -EIO;
+	memset(cmd, 0, sizeof(cmd));
+	cmd[0] = opcode;
+	cmd[2] = (u8)(start >> 24);
+	cmd[3] = (u8)(start >> 16);
+	cmd[4] = (u8)(start >> 8);
+	cmd[5] = (u8)(start >> 0);
+	cmd[7] = (u8)(blocks >> 8);
+	cmd[8] = (u8)(blocks >> 0);
+
+	return usb_stor_transport(usb_blkdev, cmd, sizeof(cmd), data,
+				  blocks * SECTOR_SIZE, 2, 0);
 }
 
 /***********************************************************************
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

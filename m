Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h1nxM-0002pk-Ao
 for barebox@lists.infradead.org; Thu, 07 Mar 2019 08:00:47 +0000
Received: by mail-pf1-x441.google.com with SMTP id q17so10820569pfh.10
 for <barebox@lists.infradead.org>; Thu, 07 Mar 2019 00:00:44 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu,  7 Mar 2019 00:00:12 -0800
Message-Id: <20190307080036.28028-3-andrew.smirnov@gmail.com>
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
Subject: [PATCH 02/26] usb: storage: Replace custom debug tracing with dev_dbg
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Replace custom debug tracing macros with a call to dev_dbg to simplify
code and add device info into degug output.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/usb/storage/transport.c |  59 ++++++++--------
 drivers/usb/storage/usb.c       | 118 +++++++++++++++++---------------
 drivers/usb/storage/usb.h       |   7 --
 3 files changed, 94 insertions(+), 90 deletions(-)

diff --git a/drivers/usb/storage/transport.c b/drivers/usb/storage/transport.c
index 414099134..cd66d2bfe 100644
--- a/drivers/usb/storage/transport.c
+++ b/drivers/usb/storage/transport.c
@@ -24,8 +24,6 @@
 #include <errno.h>
 #include <dma.h>
 
-#undef USB_STOR_DEBUG
-
 #include "usb.h"
 #include "transport.h"
 
@@ -62,6 +60,7 @@ static int usb_stor_Bulk_clear_endpt_stall(struct us_data *us, unsigned int pipe
 /* Determine what the maximum LUN supported is */
 int usb_stor_Bulk_max_lun(struct us_data *us)
 {
+	struct device_d *dev = &us->pusb_dev->dev;
 	int len, ret = 0;
 	unsigned char *iobuf = dma_alloc(1);
 
@@ -73,8 +72,8 @@ int usb_stor_Bulk_max_lun(struct us_data *us)
 	                      USB_DIR_IN | USB_TYPE_CLASS | USB_RECIP_INTERFACE,
 	                      0, us->ifnum, iobuf, 1, USB_CNTL_TIMEOUT);
 
-	US_DEBUGP("GetMaxLUN command result is %d, data is %d\n",
-	          len, (int)iobuf[0]);
+	dev_dbg(dev, "GetMaxLUN command result is %d, data is %d\n",
+		len, (int)iobuf[0]);
 
 	/* if we have a successful request, return the result */
 	if (len > 0)
@@ -94,6 +93,7 @@ int usb_stor_Bulk_max_lun(struct us_data *us)
 
 int usb_stor_Bulk_transport(ccb *srb, struct us_data *us)
 {
+	struct device_d *dev = &us->pusb_dev->dev;
 	struct bulk_cb_wrap cbw;
 	struct bulk_cs_wrap csw;
 	int actlen, data_actlen;
@@ -117,14 +117,14 @@ int usb_stor_Bulk_transport(ccb *srb, struct us_data *us)
 	memcpy(cbw.CDB, srb->cmd, cbw.Length);
 
 	/* send it to out endpoint */
-	US_DEBUGP("Bulk Command S 0x%x T 0x%x L %d F %d Trg %d LUN %d CL %d\n",
-	                le32_to_cpu(cbw.Signature), cbw.Tag,
-	                le32_to_cpu(cbw.DataTransferLength), cbw.Flags,
-	                (cbw.Lun >> 4), (cbw.Lun & 0x0F),
-	                cbw.Length);
+	dev_dbg(dev, "Bulk Command S 0x%x T 0x%x L %d F %d Trg %d LUN %d CL %d\n",
+		le32_to_cpu(cbw.Signature), cbw.Tag,
+		le32_to_cpu(cbw.DataTransferLength), cbw.Flags,
+		(cbw.Lun >> 4), (cbw.Lun & 0x0F),
+		cbw.Length);
 	result = usb_bulk_msg(us->pusb_dev, pipeout, &cbw, US_BULK_CB_WRAP_LEN,
 			      &actlen, USB_BULK_TO);
-	US_DEBUGP("Bulk command transfer result=%d\n", result);
+	dev_dbg(dev, "Bulk command transfer result=%d\n", result);
 	if (result < 0) {
 		usb_stor_Bulk_reset(us);
 		return USB_STOR_TRANSPORT_FAILED;
@@ -140,32 +140,32 @@ int usb_stor_Bulk_transport(ccb *srb, struct us_data *us)
 		unsigned int pipe = dir_in ? pipein : pipeout;
 		result = usb_bulk_msg(us->pusb_dev, pipe, srb->pdata,
 		                      srb->datalen, &data_actlen, USB_BULK_TO);
-		US_DEBUGP("Bulk data transfer result 0x%x\n", result);
+		dev_dbg(dev, "Bulk data transfer result 0x%x\n", result);
 		/* special handling of STALL in DATA phase */
 		if ((result < 0) && (us->pusb_dev->status & USB_ST_STALLED)) {
-			US_DEBUGP("DATA: stall\n");
+			dev_dbg(dev, "DATA: stall\n");
 			/* clear the STALL on the endpoint */
 			result = usb_stor_Bulk_clear_endpt_stall(us, pipe);
 		}
 		if (result < 0) {
-			US_DEBUGP("Device status: %lx\n", us->pusb_dev->status);
+			dev_dbg(dev, "Device status: %lx\n", us->pusb_dev->status);
 			usb_stor_Bulk_reset(us);
 			return USB_STOR_TRANSPORT_FAILED;
 		}
 	}
 
 	/* STATUS phase + error handling */
-	US_DEBUGP("Attempting to get CSW...\n");
+	dev_dbg(dev, "Attempting to get CSW...\n");
 	result = usb_bulk_msg(us->pusb_dev, pipein, &csw, US_BULK_CS_WRAP_LEN,
 	                      &actlen, USB_BULK_TO);
 
 	/* did the endpoint stall? */
 	if ((result < 0) && (us->pusb_dev->status & USB_ST_STALLED)) {
-		US_DEBUGP("STATUS: stall\n");
+		dev_dbg(dev, "STATUS: stall\n");
 		/* clear the STALL on the endpoint */
 		result = usb_stor_Bulk_clear_endpt_stall(us, pipein);
 		if (result >= 0) {
-			US_DEBUGP("Attempting to get CSW...\n");
+			dev_dbg(dev, "Attempting to get CSW...\n");
 			result = usb_bulk_msg(us->pusb_dev, pipein,
 			                      &csw, US_BULK_CS_WRAP_LEN,
 			                      &actlen, USB_BULK_TO);
@@ -173,33 +173,33 @@ int usb_stor_Bulk_transport(ccb *srb, struct us_data *us)
 	}
 
 	if (result < 0) {
-		US_DEBUGP("Device status: %lx\n", us->pusb_dev->status);
+		dev_dbg(dev, "Device status: %lx\n", us->pusb_dev->status);
 		usb_stor_Bulk_reset(us);
 		return USB_STOR_TRANSPORT_FAILED;
 	}
 
 	/* check bulk status */
 	residue = le32_to_cpu(csw.Residue);
-	US_DEBUGP("Bulk Status S 0x%x T 0x%x R %u Stat 0x%x\n",
-	          le32_to_cpu(csw.Signature), csw.Tag, residue, csw.Status);
+	dev_dbg(dev, "Bulk Status S 0x%x T 0x%x R %u Stat 0x%x\n",
+		le32_to_cpu(csw.Signature), csw.Tag, residue, csw.Status);
 	if (csw.Signature != cpu_to_le32(US_BULK_CS_SIGN)) {
-		US_DEBUGP("Bad CSW signature\n");
+		dev_dbg(dev, "Bad CSW signature\n");
 		usb_stor_Bulk_reset(us);
 		return USB_STOR_TRANSPORT_FAILED;
 	} else if (csw.Tag != cbw_tag) {
-		US_DEBUGP("Mismatching tag\n");
+		dev_dbg(dev, "Mismatching tag\n");
 		usb_stor_Bulk_reset(us);
 		return USB_STOR_TRANSPORT_FAILED;
 	} else if (csw.Status >= US_BULK_STAT_PHASE) {
-		US_DEBUGP("Status >= phase\n");
+		dev_dbg(dev, "Status >= phase\n");
 		usb_stor_Bulk_reset(us);
 		return USB_STOR_TRANSPORT_ERROR;
 	} else if (residue > srb->datalen) {
-		US_DEBUGP("residue (%uB) > req data (%luB)\n",
+		dev_dbg(dev, "residue (%uB) > req data (%luB)\n",
 		          residue, srb->datalen);
 		return USB_STOR_TRANSPORT_FAILED;
 	} else if (csw.Status == US_BULK_STAT_FAIL) {
-		US_DEBUGP("FAILED\n");
+		dev_dbg(dev, "FAILED\n");
 		return USB_STOR_TRANSPORT_FAILED;
 	}
 	srb->trans_bytes = min(srb->datalen - residue, (ulong)data_actlen);
@@ -213,11 +213,12 @@ int usb_stor_Bulk_transport(ccb *srb, struct us_data *us)
  */
 int usb_stor_Bulk_reset(struct us_data *us)
 {
+	struct device_d *dev = &us->pusb_dev->dev;
 	int result;
 	int result2;
 	unsigned int pipe;
 
-	US_DEBUGP("%s called\n", __func__);
+	dev_dbg(dev, "%s called\n", __func__);
 
 	/* issue the command */
 	result = usb_control_msg(us->pusb_dev,
@@ -226,24 +227,24 @@ int usb_stor_Bulk_reset(struct us_data *us)
 	                         USB_TYPE_CLASS | USB_RECIP_INTERFACE,
 	                         0, us->ifnum, 0, 0, USB_CNTL_TIMEOUT);
 	if ((result < 0) && (us->pusb_dev->status & USB_ST_STALLED)) {
-		US_DEBUGP("Soft reset stalled: %d\n", result);
+		dev_dbg(dev, "Soft reset stalled: %d\n", result);
 		return result;
 	}
 	mdelay(150);
 
 	/* clear the bulk endpoints halt */
-	US_DEBUGP("Soft reset: clearing %s endpoint halt\n", "bulk-in");
+	dev_dbg(dev, "Soft reset: clearing %s endpoint halt\n", "bulk-in");
 	pipe = usb_rcvbulkpipe(us->pusb_dev, us->recv_bulk_ep);
 	result = usb_clear_halt(us->pusb_dev, pipe);
 	mdelay(150);
-	US_DEBUGP("Soft reset: clearing %s endpoint halt\n", "bulk-out");
+	dev_dbg(dev, "Soft reset: clearing %s endpoint halt\n", "bulk-out");
 	pipe = usb_sndbulkpipe(us->pusb_dev, us->send_bulk_ep);
 	result2 = usb_clear_halt(us->pusb_dev, pipe);
 	mdelay(150);
 
 	if (result >= 0)
 		result = result2;
-	US_DEBUGP("Soft reset %s\n", ((result < 0) ? "failed" : "done"));
+	dev_dbg(dev, "Soft reset %s\n", ((result < 0) ? "failed" : "done"));
 
 	return result;
 }
diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
index d25e19473..89a80c483 100644
--- a/drivers/usb/storage/usb.c
+++ b/drivers/usb/storage/usb.c
@@ -26,8 +26,6 @@
 #include <usb/usb.h>
 #include <usb/usb_defs.h>
 
-#undef USB_STOR_DEBUG
-
 #include "usb.h"
 #include "transport.h"
 
@@ -41,24 +39,25 @@ static LIST_HEAD(us_blkdev_list);
 
 static int usb_stor_inquiry(ccb *srb, struct us_data *us)
 {
+	struct device_d *dev = &us->pusb_dev->dev;
 	int retries, result;
 
 	srb->datalen = min(128UL, srb->datalen);
 	if (srb->datalen < 5) {
-		US_DEBUGP("SCSI_INQUIRY: invalid data buffer size\n");
+		dev_dbg(dev, "SCSI_INQUIRY: invalid data buffer size\n");
 		return -EINVAL;
 	}
 
 	retries = 3;
 	do {
-		US_DEBUGP("SCSI_INQUIRY\n");
+		dev_dbg(dev, "SCSI_INQUIRY\n");
 		memset(&srb->cmd[0], 0, 6);
 		srb->cmdlen = 6;
 		srb->cmd[0] = SCSI_INQUIRY;
 		srb->cmd[3] = (u8)(srb->datalen >> 8);
 		srb->cmd[4] = (u8)(srb->datalen >> 0);
 		result = us->transport(srb, us);
-		US_DEBUGP("SCSI_INQUIRY returns %d\n", result);
+		dev_dbg(dev, "SCSI_INQUIRY returns %d\n", result);
 	} while ((result != USB_STOR_TRANSPORT_GOOD) && retries--);
 
 	return (result != USB_STOR_TRANSPORT_GOOD) ? -EIO : 0;
@@ -66,10 +65,11 @@ static int usb_stor_inquiry(ccb *srb, struct us_data *us)
 
 static int usb_stor_request_sense(ccb *srb, struct us_data *us)
 {
+	struct device_d *dev = &us->pusb_dev->dev;
 	unsigned char *pdata = srb->pdata;
 	unsigned long datalen = srb->datalen;
 
-	US_DEBUGP("SCSI_REQ_SENSE\n");
+	dev_dbg(dev, "SCSI_REQ_SENSE\n");
 	srb->pdata = &srb->sense_buf[0];
 	srb->datalen = 18;
 	memset(&srb->cmd[0], 0, 6);
@@ -77,8 +77,8 @@ static int usb_stor_request_sense(ccb *srb, struct us_data *us)
 	srb->cmd[0] = SCSI_REQ_SENSE;
 	srb->cmd[4] = (u8)(srb->datalen >> 0);
 	us->transport(srb, us);
-	US_DEBUGP("Request Sense returned %02X %02X %02X\n",
-	          srb->sense_buf[2], srb->sense_buf[12], srb->sense_buf[13]);
+	dev_dbg(dev, "Request Sense returned %02X %02X %02X\n",
+		 srb->sense_buf[2], srb->sense_buf[12], srb->sense_buf[13]);
 	srb->pdata = pdata;
 	srb->datalen = datalen;
 
@@ -87,17 +87,18 @@ static int usb_stor_request_sense(ccb *srb, struct us_data *us)
 
 static int usb_stor_test_unit_ready(ccb *srb, struct us_data *us)
 {
+	struct device_d *dev = &us->pusb_dev->dev;
 	int retries, result;
 
 	retries = 10;
 	do {
-		US_DEBUGP("SCSI_TST_U_RDY\n");
+		dev_dbg(dev, "SCSI_TST_U_RDY\n");
 		memset(&srb->cmd[0], 0, 12);
 		srb->cmdlen = 12;
 		srb->cmd[0] = SCSI_TST_U_RDY;
 		srb->datalen = 0;
 		result = us->transport(srb, us);
-		US_DEBUGP("SCSI_TST_U_RDY returns %d\n", result);
+		dev_dbg(dev, "SCSI_TST_U_RDY returns %d\n", result);
 		if (result == USB_STOR_TRANSPORT_GOOD)
 			return 0;
 		usb_stor_request_sense(srb, us);
@@ -109,22 +110,23 @@ static int usb_stor_test_unit_ready(ccb *srb, struct us_data *us)
 
 static int usb_stor_read_capacity(ccb *srb, struct us_data *us)
 {
+	struct device_d *dev = &us->pusb_dev->dev;
 	int retries, result;
 
 	if (srb->datalen < 8) {
-		US_DEBUGP("SCSI_RD_CAPAC: invalid data buffer size\n");
+		dev_dbg(dev, "SCSI_RD_CAPAC: invalid data buffer size\n");
 		return -EINVAL;
 	}
 
 	retries = 3;
 	do {
-		US_DEBUGP("SCSI_RD_CAPAC\n");
+		dev_dbg(dev, "SCSI_RD_CAPAC\n");
 		memset(&srb->cmd[0], 0, 10);
 		srb->cmdlen = 10;
 		srb->cmd[0] = SCSI_RD_CAPAC;
 		srb->datalen = 8;
 		result = us->transport(srb, us);
-		US_DEBUGP("SCSI_RD_CAPAC returns %d\n", result);
+		dev_dbg(dev, "SCSI_RD_CAPAC returns %d\n", result);
 	} while ((result != USB_STOR_TRANSPORT_GOOD) && retries--);
 
 	return (result != USB_STOR_TRANSPORT_GOOD) ? -EIO : 0;
@@ -133,11 +135,12 @@ static int usb_stor_read_capacity(ccb *srb, struct us_data *us)
 static int usb_stor_read_10(ccb *srb, struct us_data *us,
                             unsigned long start, unsigned short blocks)
 {
+	struct device_d *dev = &us->pusb_dev->dev;
 	int retries, result;
 
 	retries = 2;
 	do {
-		US_DEBUGP("SCSI_READ10: start %lx blocks %x\n", start, blocks);
+		dev_dbg(dev, "SCSI_READ10: start %lx blocks %x\n", start, blocks);
 		memset(&srb->cmd[0], 0, 10);
 		srb->cmdlen = 10;
 		srb->cmd[0] = SCSI_READ10;
@@ -148,7 +151,7 @@ static int usb_stor_read_10(ccb *srb, struct us_data *us,
 		srb->cmd[7] = (u8)(blocks >> 8);
 		srb->cmd[8] = (u8)(blocks >> 0);
 		result = us->transport(srb, us);
-		US_DEBUGP("SCSI_READ10 returns %d\n", result);
+		dev_dbg(dev, "SCSI_READ10 returns %d\n", result);
 		if (result == USB_STOR_TRANSPORT_GOOD)
 			return 0;
 		usb_stor_request_sense(srb, us);
@@ -160,11 +163,12 @@ static int usb_stor_read_10(ccb *srb, struct us_data *us,
 static int usb_stor_write_10(ccb *srb, struct us_data *us,
                              unsigned long start, unsigned short blocks)
 {
+	struct device_d *dev = &us->pusb_dev->dev;
 	int retries, result;
 
 	retries = 2;
 	do {
-		US_DEBUGP("SCSI_WRITE10: start %lx blocks %x\n", start, blocks);
+		dev_dbg(dev, "SCSI_WRITE10: start %lx blocks %x\n", start, blocks);
 		memset(&srb->cmd[0], 0, 10);
 		srb->cmdlen = 10;
 		srb->cmd[0] = SCSI_WRITE10;
@@ -175,7 +179,7 @@ static int usb_stor_write_10(ccb *srb, struct us_data *us,
 		srb->cmd[7] = (u8)(blocks >> 8);
 		srb->cmd[8] = (u8)(blocks >> 0);
 		result = us->transport(srb, us);
-		US_DEBUGP("SCSI_WRITE10 returns %d\n", result);
+		dev_dbg(dev, "SCSI_WRITE10 returns %d\n", result);
 		if (result == USB_STOR_TRANSPORT_GOOD)
 			return 0;
 		usb_stor_request_sense(srb, us);
@@ -201,6 +205,7 @@ static int usb_stor_blk_io(int io_op, struct block_device *disk_dev,
 {
 	struct us_blk_dev *pblk_dev = to_usb_mass_storage(disk_dev);
 	struct us_data *us = pblk_dev->us;
+	struct device_d *dev = &us->pusb_dev->dev;
 	ccb us_ccb;
 	unsigned sectors_done;
 
@@ -209,15 +214,15 @@ static int usb_stor_blk_io(int io_op, struct block_device *disk_dev,
 
 	/* check for unsupported block size */
 	if (pblk_dev->blk.blockbits != SECTOR_SHIFT) {
-		US_DEBUGP("%s: unsupported block shift %d\n",
-		          __func__, pblk_dev->blk.blockbits);
+		dev_dbg(dev, "%s: unsupported block shift %d\n",
+			 __func__, pblk_dev->blk.blockbits);
 		return -EINVAL;
 	}
 
 	/* check for invalid sector_start */
 	if (sector_start >= pblk_dev->blk.num_blocks || sector_start > (ulong)-1) {
-		US_DEBUGP("%s: start sector %d too large\n",
-		          __func__, sector_start);
+		dev_dbg(dev, "%s: start sector %d too large\n",
+			 __func__, sector_start);
 		return -EINVAL;
 	}
 
@@ -225,9 +230,9 @@ static int usb_stor_blk_io(int io_op, struct block_device *disk_dev,
 	usb_disable_asynch(1);
 
 	/* ensure unit ready */
-	US_DEBUGP("Testing for unit ready\n");
+	dev_dbg(dev, "Testing for unit ready\n");
 	if (usb_stor_test_unit_ready(&us_ccb, us)) {
-		US_DEBUGP("Device NOT ready\n");
+		dev_dbg(dev, "Device NOT ready\n");
 		usb_disable_asynch(0);
 		return -EIO;
 	}
@@ -235,17 +240,17 @@ static int usb_stor_blk_io(int io_op, struct block_device *disk_dev,
 	/* possibly limit the amount of I/O data */
 	if (sector_count > INT_MAX) {
 		sector_count = INT_MAX;
-		US_DEBUGP("Restricting I/O to %u blocks\n", sector_count);
+		dev_dbg(dev, "Restricting I/O to %u blocks\n", sector_count);
 	}
 	if (sector_start + sector_count > pblk_dev->blk.num_blocks) {
 		sector_count = pblk_dev->blk.num_blocks - sector_start;
-		US_DEBUGP("Restricting I/O to %u blocks\n", sector_count);
+		dev_dbg(dev, "Restricting I/O to %u blocks\n", sector_count);
 	}
 
 	/* read / write the requested data */
-	US_DEBUGP("%s %u block(s), starting from %d\n",
-	          ((io_op == io_rd) ? "Read" : "Write"),
-	          sector_count, sector_start);
+	dev_dbg(dev, "%s %u block(s), starting from %d\n",
+		 (io_op == io_rd) ? "Read" : "Write",
+		 sector_count, sector_start);
 	sectors_done = 0;
 	while (sector_count > 0) {
 		int result;
@@ -259,7 +264,7 @@ static int usb_stor_blk_io(int io_op, struct block_device *disk_dev,
 			result = usb_stor_write_10(&us_ccb, us,
 			                           (ulong)sector_start, n);
 		if (result != 0) {
-			US_DEBUGP("I/O error at sector %d\n", sector_start);
+			dev_dbg(dev, "I/O error at sector %d\n", sector_start);
 			break;
 		}
 		sector_start += n;
@@ -269,7 +274,7 @@ static int usb_stor_blk_io(int io_op, struct block_device *disk_dev,
 
 	usb_disable_asynch(0);
 
-	US_DEBUGP("Successful I/O of %d blocks\n", sectors_done);
+	dev_dbg(dev, "Successful I/O of %d blocks\n", sectors_done);
 
 	return (sector_count != 0) ? -EIO : 0;
 }
@@ -315,6 +320,7 @@ static int usb_limit_blk_cnt(unsigned cnt)
 static int usb_stor_init_blkdev(struct us_blk_dev *pblk_dev)
 {
 	struct us_data *us = pblk_dev->us;
+	struct device_d *dev = &us->pusb_dev->dev;
 	ccb us_ccb;
 	unsigned long *pcap;
 	int result = 0;
@@ -326,45 +332,45 @@ static int usb_stor_init_blkdev(struct us_blk_dev *pblk_dev)
 	usb_disable_asynch(1);
 
 	/* get device info */
-	US_DEBUGP("Reading device info\n");
+	dev_dbg(dev, "Reading device info\n");
 	us_ccb.datalen = 36;
 	if (usb_stor_inquiry(&us_ccb, us)) {
-		US_DEBUGP("Cannot read device info\n");
+		dev_dbg(dev, "Cannot read device info\n");
 		result = -ENODEV;
 		goto Exit;
 	}
-	US_DEBUGP("Peripheral type: %x, removable: %x\n",
+	dev_dbg(dev, "Peripheral type: %x, removable: %x\n",
 	          us_io_buf[0], (us_io_buf[1] >> 7));
-	US_DEBUGP("ISO ver: %x, resp format: %x\n", us_io_buf[2], us_io_buf[3]);
-	US_DEBUGP("Vendor/product/rev: %28s\n", &us_io_buf[8]);
+	dev_dbg(dev, "ISO ver: %x, resp format: %x\n", us_io_buf[2], us_io_buf[3]);
+	dev_dbg(dev, "Vendor/product/rev: %28s\n", &us_io_buf[8]);
 	// TODO:  process and store device info
 
 	/* ensure unit ready */
-	US_DEBUGP("Testing for unit ready\n");
+	dev_dbg(dev, "Testing for unit ready\n");
 	us_ccb.datalen = 0;
 	if (usb_stor_test_unit_ready(&us_ccb, us)) {
-		US_DEBUGP("Device NOT ready\n");
+		dev_dbg(dev, "Device NOT ready\n");
 		result = -ENODEV;
 		goto Exit;
 	}
 
 	/* read capacity */
-	US_DEBUGP("Reading capacity\n");
+	dev_dbg(dev, "Reading capacity\n");
 	memset(us_ccb.pdata, 0, 8);
 	us_ccb.datalen = sizeof(us_io_buf);
 	if (usb_stor_read_capacity(&us_ccb, us) != 0) {
-		US_DEBUGP("Cannot read device capacity\n");
+		dev_dbg(dev, "Cannot read device capacity\n");
 		result = -EIO;
 		goto Exit;
 	}
 	pcap = (unsigned long *)us_ccb.pdata;
-	US_DEBUGP("Read Capacity returns: 0x%lx, 0x%lx\n", pcap[0], pcap[1]);
+	dev_dbg(dev, "Read Capacity returns: 0x%lx, 0x%lx\n", pcap[0], pcap[1]);
 	pblk_dev->blk.num_blocks = usb_limit_blk_cnt(be32_to_cpu(pcap[0]) + 1);
 	if (be32_to_cpu(pcap[1]) != SECTOR_SIZE)
 		pr_warn("Support only %d bytes sectors\n", SECTOR_SIZE);
 	pblk_dev->blk.blockbits = SECTOR_SHIFT;
-	US_DEBUGP("Capacity = 0x%x, blockshift = 0x%x\n",
-	          pblk_dev->blk.num_blocks, pblk_dev->blk.blockbits);
+	dev_dbg(dev, "Capacity = 0x%x, blockshift = 0x%x\n",
+		 pblk_dev->blk.num_blocks, pblk_dev->blk.blockbits);
 
 Exit:
 	usb_disable_asynch(0);
@@ -372,9 +378,9 @@ Exit:
 }
 
 /* Create and register a disk device for the specified LUN */
-static int usb_stor_add_blkdev(struct us_data *us, struct device_d *dev,
-							unsigned char lun)
+static int usb_stor_add_blkdev(struct us_data *us, unsigned char lun)
 {
+	struct device_d *dev = &us->pusb_dev->dev;
 	struct us_blk_dev *pblk_dev;
 	int result;
 
@@ -412,12 +418,12 @@ static int usb_stor_add_blkdev(struct us_data *us, struct device_d *dev,
 		dev_warn(dev, "No partition table found\n");
 
 	list_add_tail(&pblk_dev->list, &us->blk_dev_list);
-	US_DEBUGP("USB disk device successfully added\n");
+	dev_dbg(dev, "USB disk device successfully added\n");
 
 	return 0;
 
 BadDevice:
-	US_DEBUGP("%s failed with %d\n", __func__, result);
+	dev_dbg(dev, "%s failed with %d\n", __func__, result);
 	free(pblk_dev);
 	return result;
 }
@@ -429,6 +435,7 @@ BadDevice:
 /* Get the transport settings */
 static void get_transport(struct us_data *us)
 {
+	struct device_d *dev = &us->pusb_dev->dev;
 	switch (us->protocol) {
 	case US_PR_BULK:
 		us->transport_name = "Bulk";
@@ -437,12 +444,13 @@ static void get_transport(struct us_data *us)
 		break;
 	}
 
-	US_DEBUGP("Transport: %s\n", us->transport_name);
+	dev_dbg(dev, "Transport: %s\n", us->transport_name);
 }
 
 /* Get the endpoint settings */
 static int get_pipes(struct us_data *us, struct usb_interface *intf)
 {
+	struct device_d *dev = &us->pusb_dev->dev;
 	unsigned int i;
 	struct usb_endpoint_descriptor *ep;
 	struct usb_endpoint_descriptor *ep_in = NULL;
@@ -474,7 +482,7 @@ static int get_pipes(struct us_data *us, struct usb_interface *intf)
 		}
 	}
 	if (!ep_in || !ep_out || (us->protocol == US_PR_CBI && !ep_int)) {
-		US_DEBUGP("Endpoint sanity check failed! Rejecting dev.\n");
+		dev_dbg(dev, "Endpoint sanity check failed! Rejecting dev.\n");
 		return -EIO;
 	}
 
@@ -491,21 +499,22 @@ static int get_pipes(struct us_data *us, struct usb_interface *intf)
 /* Scan device's LUNs, registering a disk device for each LUN */
 static int usb_stor_scan(struct usb_device *usbdev, struct us_data *us)
 {
+	struct device_d *dev = &usbdev->dev;
 	unsigned char lun;
 	int num_devs = 0;
 
 	/* obtain the max LUN */
-	us->max_lun = 0;
+	us->max_lun = 1;
 	if (us->protocol == US_PR_BULK)
 		us->max_lun = usb_stor_Bulk_max_lun(us);
 
 	/* register a disk device for each active LUN */
 	for (lun=0; lun<=us->max_lun; lun++) {
-		if (usb_stor_add_blkdev(us, &usbdev->dev, lun) == 0)
+		if (usb_stor_add_blkdev(us, lun) == 0)
 			num_devs++;
 	}
 
-	US_DEBUGP("Found %d block devices on %s\n", num_devs, usbdev->dev.name);
+	dev_dbg(dev, "Found %d block devices on %s\n", num_devs, usbdev->dev.name);
 
 	return  num_devs ? 0 : -ENODEV;
 }
@@ -514,12 +523,13 @@ static int usb_stor_scan(struct usb_device *usbdev, struct us_data *us)
 static int usb_stor_probe(struct usb_device *usbdev,
 			 const struct usb_device_id *id)
 {
+	struct device_d *dev = &usbdev->dev;
 	struct us_data *us;
 	int result;
 	int ifno;
 	struct usb_interface *intf;
 
-	US_DEBUGP("Supported USB Mass Storage device detected\n");
+	dev_dbg(dev, "Supported USB Mass Storage device detected\n");
 
 	/* scan usbdev interfaces again to find one that we can handle */
 	for (ifno=0; ifno<usbdev->config.no_of_if; ifno++) {
@@ -538,7 +548,7 @@ static int usb_stor_probe(struct usb_device *usbdev,
 	if (result)
 		return result;
 
-	US_DEBUGP("Selected interface %d\n", (int)intf->desc.bInterfaceNumber);
+	dev_dbg(dev, "Selected interface %d\n", (int)intf->desc.bInterfaceNumber);
 
 	/* allocate us_data structure */
 	us = xzalloc(sizeof(*us));
@@ -568,7 +578,7 @@ static int usb_stor_probe(struct usb_device *usbdev,
 	return 0;
 
 BadDevice:
-	US_DEBUGP("%s failed with %d\n", __func__, result);
+	dev_dbg(dev, "%s failed with %d\n", __func__, result);
 	free(us);
 	return result;
 }
diff --git a/drivers/usb/storage/usb.h b/drivers/usb/storage/usb.h
index e649d5336..544537089 100644
--- a/drivers/usb/storage/usb.h
+++ b/drivers/usb/storage/usb.h
@@ -28,13 +28,6 @@
 #include <linux/list.h>
 
 
-#ifdef  USB_STOR_DEBUG
-#define US_DEBUGP(fmt, args...)    printf(fmt , ##args)
-#else
-#define US_DEBUGP(fmt, args...)
-#endif
-
-
 /* some defines, similar to ch9.h */
 #define USB_EP_NUM(epd) \
 	((epd)->bEndpointAddress & USB_ENDPOINT_NUMBER_MASK)
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

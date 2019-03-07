Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h1nxZ-00036Z-6t
 for barebox@lists.infradead.org; Thu, 07 Mar 2019 08:01:07 +0000
Received: by mail-pf1-x444.google.com with SMTP id n74so10823202pfi.9
 for <barebox@lists.infradead.org>; Thu, 07 Mar 2019 00:00:57 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu,  7 Mar 2019 00:00:23 -0800
Message-Id: <20190307080036.28028-14-andrew.smirnov@gmail.com>
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
Subject: [PATCH 13/26] usb: storage: Drop struct SCSI_cmd_block
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

All the info we need to pass to transport function can be captured in
a struct us_blk_dev and two byte arrays, so having a dedicated struct
with many unused fields doesn't really buy us anything. Drop the
struct and convert the rest of the code to pass needed data
explicitly.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/usb/storage/transport.c |  30 +++++-----
 drivers/usb/storage/transport.h |   2 +-
 drivers/usb/storage/usb.c       | 100 ++++++++++++++------------------
 drivers/usb/storage/usb.h       |   8 ++-
 include/scsi.h                  |  22 -------
 5 files changed, 65 insertions(+), 97 deletions(-)

diff --git a/drivers/usb/storage/transport.c b/drivers/usb/storage/transport.c
index cd66d2bfe..48ccee207 100644
--- a/drivers/usb/storage/transport.c
+++ b/drivers/usb/storage/transport.c
@@ -91,8 +91,11 @@ int usb_stor_Bulk_max_lun(struct us_data *us)
 	return ret;
 }
 
-int usb_stor_Bulk_transport(ccb *srb, struct us_data *us)
+int usb_stor_Bulk_transport(struct us_blk_dev *usb_blkdev,
+			    const u8 *cmd, u8 cmdlen,
+			    void *data, u32 datalen)
 {
+	struct us_data *us = usb_blkdev->us;
 	struct device_d *dev = &us->pusb_dev->dev;
 	struct bulk_cb_wrap cbw;
 	struct bulk_cs_wrap csw;
@@ -101,20 +104,18 @@ int usb_stor_Bulk_transport(ccb *srb, struct us_data *us)
 	unsigned int residue;
 	unsigned int pipein = usb_rcvbulkpipe(us->pusb_dev, us->recv_bulk_ep);
 	unsigned int pipeout = usb_sndbulkpipe(us->pusb_dev, us->send_bulk_ep);
-	int dir_in = US_DIRECTION(srb->cmd[0]);
-
-	srb->trans_bytes = 0;
+	int dir_in = US_DIRECTION(cmd[0]);
 
 	/* set up the command wrapper */
 	cbw.Signature = cpu_to_le32(US_BULK_CB_SIGN);
-	cbw.DataTransferLength = cpu_to_le32(srb->datalen);
+	cbw.DataTransferLength = cpu_to_le32(datalen);
 	cbw.Flags = (dir_in ? US_BULK_FLAG_IN : US_BULK_FLAG_OUT);
 	cbw.Tag = ++cbw_tag;
-	cbw.Lun = srb->lun;
-	cbw.Length = srb->cmdlen;
+	cbw.Lun = usb_blkdev->lun;
+	cbw.Length = cmdlen;
 
 	/* copy the command payload */
-	memcpy(cbw.CDB, srb->cmd, cbw.Length);
+	memcpy(cbw.CDB, cmd, cbw.Length);
 
 	/* send it to out endpoint */
 	dev_dbg(dev, "Bulk Command S 0x%x T 0x%x L %d F %d Trg %d LUN %d CL %d\n",
@@ -136,10 +137,10 @@ int usb_stor_Bulk_transport(ccb *srb, struct us_data *us)
 	mdelay(1);
 
 	data_actlen = 0;
-	if (srb->datalen) {
+	if (datalen) {
 		unsigned int pipe = dir_in ? pipein : pipeout;
-		result = usb_bulk_msg(us->pusb_dev, pipe, srb->pdata,
-		                      srb->datalen, &data_actlen, USB_BULK_TO);
+		result = usb_bulk_msg(us->pusb_dev, pipe, data,
+		                      datalen, &data_actlen, USB_BULK_TO);
 		dev_dbg(dev, "Bulk data transfer result 0x%x\n", result);
 		/* special handling of STALL in DATA phase */
 		if ((result < 0) && (us->pusb_dev->status & USB_ST_STALLED)) {
@@ -194,15 +195,14 @@ int usb_stor_Bulk_transport(ccb *srb, struct us_data *us)
 		dev_dbg(dev, "Status >= phase\n");
 		usb_stor_Bulk_reset(us);
 		return USB_STOR_TRANSPORT_ERROR;
-	} else if (residue > srb->datalen) {
-		dev_dbg(dev, "residue (%uB) > req data (%luB)\n",
-		          residue, srb->datalen);
+	} else if (residue > datalen) {
+		dev_dbg(dev, "residue (%uB) > req data (%uB)\n",
+		          residue, datalen);
 		return USB_STOR_TRANSPORT_FAILED;
 	} else if (csw.Status == US_BULK_STAT_FAIL) {
 		dev_dbg(dev, "FAILED\n");
 		return USB_STOR_TRANSPORT_FAILED;
 	}
-	srb->trans_bytes = min(srb->datalen - residue, (ulong)data_actlen);
 
 	return 0;
 }
diff --git a/drivers/usb/storage/transport.h b/drivers/usb/storage/transport.h
index bc8a7693f..22d7dea3f 100644
--- a/drivers/usb/storage/transport.h
+++ b/drivers/usb/storage/transport.h
@@ -84,7 +84,7 @@ struct bulk_cs_wrap {
 
 struct us_data;
 
-extern int usb_stor_Bulk_transport(ccb *, struct us_data *);
+extern trans_cmnd usb_stor_Bulk_transport;
 extern int usb_stor_Bulk_max_lun(struct us_data *);
 extern int usb_stor_Bulk_reset(struct us_data *);
 
diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
index 69de9ebf3..849bce510 100644
--- a/drivers/usb/storage/usb.c
+++ b/drivers/usb/storage/usb.c
@@ -42,22 +42,19 @@ static int usb_stor_inquiry(struct us_blk_dev *usb_blkdev)
 	struct us_data *us = usb_blkdev->us;
 	struct device_d *dev = &us->pusb_dev->dev;
 	int retries, result;
-	ccb srb;
-	u8 *data = xzalloc(36);
-
-	srb.lun = usb_blkdev->lun;
-	srb.pdata = data;
-	srb.datalen = 36;
+	u8 cmd[6];
+	const u32 datalen = 36;
+	u8 *data = xzalloc(datalen);
 
 	retries = 3;
 	do {
 		dev_dbg(dev, "SCSI_INQUIRY\n");
-		memset(&srb.cmd[0], 0, 6);
-		srb.cmdlen = 6;
-		srb.cmd[0] = SCSI_INQUIRY;
-		srb.cmd[3] = (u8)(srb.datalen >> 8);
-		srb.cmd[4] = (u8)(srb.datalen >> 0);
-		result = us->transport(&srb, us);
+		memset(cmd, 0, sizeof(cmd));
+		cmd[0] = SCSI_INQUIRY;
+		cmd[3] = (u8)(datalen >> 8);
+		cmd[4] = (u8)(datalen >> 0);
+		result = us->transport(usb_blkdev, cmd, sizeof(cmd),
+				       data, datalen);
 		dev_dbg(dev, "SCSI_INQUIRY returns %d\n", result);
 		if (result == USB_STOR_TRANSPORT_GOOD) {
 			dev_dbg(dev, "Peripheral type: %x, removable: %x\n",
@@ -80,19 +77,16 @@ static int usb_stor_request_sense(struct us_blk_dev *usb_blkdev)
 {
 	struct us_data *us = usb_blkdev->us;
 	struct device_d *dev = &us->pusb_dev->dev;
-	ccb srb;
-	u8 *data = xzalloc(18);
-
-	srb.lun = usb_blkdev->lun;
+	u8 cmd[6];
+	const u8 datalen = 18;
+	u8 *data = xzalloc(datalen);
 
 	dev_dbg(dev, "SCSI_REQ_SENSE\n");
-	srb.pdata = data;
-	srb.datalen = 18;
-	memset(&srb.cmd[0], 0, 6);
-	srb.cmdlen = 6;
-	srb.cmd[0] = SCSI_REQ_SENSE;
-	srb.cmd[4] = (u8)(srb.datalen >> 0);
-	us->transport(&srb, us);
+
+	memset(cmd, 0, sizeof(cmd));
+	cmd[0] = SCSI_REQ_SENSE;
+	cmd[4] = datalen;
+	us->transport(usb_blkdev, cmd, sizeof(cmd), data, datalen);
 	dev_dbg(dev, "Request Sense returned %02X %02X %02X\n",
 		data[2], data[12], data[13]);
 
@@ -105,19 +99,16 @@ static int usb_stor_test_unit_ready(struct us_blk_dev *usb_blkdev)
 {
 	struct us_data *us = usb_blkdev->us;
 	struct device_d *dev = &us->pusb_dev->dev;
+	u8 cmd[12];
 	int retries, result;
-	ccb srb;
-
-	srb.lun = usb_blkdev->lun;
 
 	retries = 10;
 	do {
 		dev_dbg(dev, "SCSI_TST_U_RDY\n");
-		memset(&srb.cmd[0], 0, 12);
-		srb.cmdlen = 12;
-		srb.cmd[0] = SCSI_TST_U_RDY;
-		srb.datalen = 0;
-		result = us->transport(&srb, us);
+		memset(cmd, 0, sizeof(cmd));
+		cmd[0] = SCSI_TST_U_RDY;
+		result = us->transport(usb_blkdev, cmd, sizeof(cmd),
+				       NULL, 0);
 		dev_dbg(dev, "SCSI_TST_U_RDY returns %d\n", result);
 		if (result == USB_STOR_TRANSPORT_GOOD)
 			return 0;
@@ -134,19 +125,18 @@ static int usb_stor_read_capacity(struct us_blk_dev *usb_blkdev,
 	struct us_data *us = usb_blkdev->us;
 	struct device_d *dev = &us->pusb_dev->dev;
 	int retries, result;
-	ccb srb;
-	u32 *data = xzalloc(8);
+	const u32 datalen = 8;
+	u32 *data = xzalloc(datalen);
+	u8 cmd[10];
 
 	retries = 3;
 	do {
 		dev_dbg(dev, "SCSI_RD_CAPAC\n");
-		memset(&srb.cmd[0], 0, 10);
-		srb.cmdlen = 10;
-		srb.lun = usb_blkdev->lun;
-		srb.cmd[0] = SCSI_RD_CAPAC;
-		srb.pdata = (void *)data;
-		srb.datalen = 8;
-		result = us->transport(&srb, us);
+		memset(cmd, 0, sizeof(cmd));
+		cmd[0] = SCSI_RD_CAPAC;
+
+		result = us->transport(usb_blkdev, cmd, sizeof(cmd), data,
+				       datalen);
 		dev_dbg(dev, "SCSI_RD_CAPAC returns %d\n", result);
 
 		if (result == USB_STOR_TRANSPORT_GOOD) {
@@ -163,30 +153,28 @@ static int usb_stor_read_capacity(struct us_blk_dev *usb_blkdev,
 	return result ? -EIO : 0;
 }
 
-static int usb_stor_io_10(struct us_blk_dev *usb_blkdev, u8 cmd,
+static int usb_stor_io_10(struct us_blk_dev *usb_blkdev, u8 opcode,
 			  unsigned long start, u8 *data,
 			  unsigned short blocks)
 {
 	struct us_data *us = usb_blkdev->us;
 	int retries, result;
-	ccb srb;
-
-	srb.lun = usb_blkdev->lun;
-	srb.pdata = data;
-	srb.datalen = blocks * SECTOR_SIZE;
+	const u32 datalen = blocks * SECTOR_SIZE;
+	u8 cmd[10];
 
 	retries = 2;
 	do {
-		memset(&srb.cmd[0], 0, 10);
-		srb.cmdlen = 10;
-		srb.cmd[0] = cmd;
-		srb.cmd[2] = (u8)(start >> 24);
-		srb.cmd[3] = (u8)(start >> 16);
-		srb.cmd[4] = (u8)(start >> 8);
-		srb.cmd[5] = (u8)(start >> 0);
-		srb.cmd[7] = (u8)(blocks >> 8);
-		srb.cmd[8] = (u8)(blocks >> 0);
-		result = us->transport(&srb, us);
+		memset(cmd, 0, sizeof(cmd));
+
+		cmd[0] = opcode;
+		cmd[2] = (u8)(start >> 24);
+		cmd[3] = (u8)(start >> 16);
+		cmd[4] = (u8)(start >> 8);
+		cmd[5] = (u8)(start >> 0);
+		cmd[7] = (u8)(blocks >> 8);
+		cmd[8] = (u8)(blocks >> 0);
+		result = us->transport(usb_blkdev, cmd, sizeof(cmd),
+				       data, datalen);
 		if (result == USB_STOR_TRANSPORT_GOOD)
 			return 0;
 		usb_stor_request_sense(usb_blkdev);
diff --git a/drivers/usb/storage/usb.h b/drivers/usb/storage/usb.h
index 544537089..3aff15da2 100644
--- a/drivers/usb/storage/usb.h
+++ b/drivers/usb/storage/usb.h
@@ -44,8 +44,11 @@
 
 
 struct us_data;
+struct us_blk_dev;
 
-typedef int (*trans_cmnd)(ccb *cb, struct us_data *data);
+typedef int (trans_cmnd)(struct us_blk_dev *usb_blkdev,
+			 const u8 *cmd, u8 cmdlen,
+			 void *data, u32 datalen);
 typedef int (*trans_reset)(struct us_data *data);
 
 /* one us_data object allocated per usb storage device */
@@ -65,11 +68,10 @@ struct us_data {
 
 	char			*transport_name;
 
-	trans_cmnd		transport;	/* transport function */
+	trans_cmnd		*transport;	/* transport function */
 	trans_reset		transport_reset;/* transport device reset */
 
 	/* SCSI interfaces */
-	ccb			*srb;		/* current srb */
 	struct list_head	blk_dev_list;
 };
 
diff --git a/include/scsi.h b/include/scsi.h
index 00750acac..59d47393c 100644
--- a/include/scsi.h
+++ b/include/scsi.h
@@ -20,26 +20,6 @@
  #ifndef _SCSI_H
  #define _SCSI_H
 
-typedef struct SCSI_cmd_block {
-	unsigned char		cmd[16];		/* command */
-	unsigned char		sense_buf[64];		/* for request sense */
-	unsigned char		status;			/* SCSI Status */
-	unsigned char		target;			/* Target ID */
-	unsigned char		lun;			/* Target LUN */
-	unsigned char		cmdlen;			/* command len */
-	unsigned long		datalen;		/* Total data length */
-	unsigned char	*	pdata;			/* pointer to data */
-	unsigned char		msgout[12];		/* Messge out buffer (NOT USED) */
-	unsigned char		msgin[12];		/* Message in buffer */
-	unsigned char		sensecmdlen;		/* Sense command len */
-	unsigned long		sensedatalen;		/* Sense data len */
-	unsigned char		sensecmd[6];		/* Sense command */
-	unsigned long		contr_stat;		/* Controller Status */
-	unsigned long		trans_bytes;		/* tranfered bytes */
-
-	unsigned int		priv;
-} ccb;
-
 /*-----------------------------------------------------------
 **
 **	SCSI  constants.
@@ -171,8 +151,6 @@ typedef struct SCSI_cmd_block {
  * decleration of functions which have to reside in the LowLevel Part Driver
  */
 
-void scsi_print_error(ccb *pccb);
-int scsi_exec(ccb *pccb);
 void scsi_bus_reset(void);
 void scsi_low_level_init(int busdevfunc);
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R6zhr-0003DX-Nv
	for barebox@lists.infradead.org; Fri, 23 Sep 2011 06:58:02 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 23 Sep 2011 08:57:46 +0200
Message-Id: <1316761066-29811-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1316761066-29811-1-git-send-email-s.hauer@pengutronix.de>
References: <1316761066-29811-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/3] USB mass storage device driver initial implementation
To: barebox@lists.infradead.org

From: Rosen Kolev <rosen.kolev@amk-drives.bg>

Implemented an initial version of USB mass storage device driver,
supporting USB mass storage devices with SCSI interface and BBB
protocol.  It implements the ATA interface and registers diskovered
LUNs with the disk driver.
---
 drivers/usb/Kconfig             |    2 +
 drivers/usb/Makefile            |    1 +
 drivers/usb/storage/Kconfig     |    2 +
 drivers/usb/storage/Makefile    |    4 +
 drivers/usb/storage/transport.c |  251 ++++++++++++++++
 drivers/usb/storage/transport.h |   95 ++++++
 drivers/usb/storage/usb.c       |  619 +++++++++++++++++++++++++++++++++++++++
 drivers/usb/storage/usb.h       |   96 ++++++
 include/scsi.h                  |  208 +++++++++++++
 9 files changed, 1278 insertions(+), 0 deletions(-)
 create mode 100644 drivers/usb/storage/Kconfig
 create mode 100644 drivers/usb/storage/Makefile
 create mode 100644 drivers/usb/storage/transport.c
 create mode 100644 drivers/usb/storage/transport.h
 create mode 100644 drivers/usb/storage/usb.c
 create mode 100644 drivers/usb/storage/usb.h
 create mode 100644 include/scsi.h

diff --git a/drivers/usb/Kconfig b/drivers/usb/Kconfig
index c7b2c52..254b196 100644
--- a/drivers/usb/Kconfig
+++ b/drivers/usb/Kconfig
@@ -7,6 +7,8 @@ source drivers/usb/host/Kconfig
 
 source drivers/usb/otg/Kconfig
 
+source drivers/usb/storage/Kconfig
+
 endif
 
 source drivers/usb/gadget/Kconfig
diff --git a/drivers/usb/Makefile b/drivers/usb/Makefile
index e6f683b..be4b371 100644
--- a/drivers/usb/Makefile
+++ b/drivers/usb/Makefile
@@ -1,5 +1,6 @@
 obj-$(CONFIG_USB)		+= core/
 obj-$(CONFIG_USB_GADGET)	+= gadget/
+obj-$(CONFIG_USB_STORAGE)	+= storage/
 obj-y += host/
 obj-y += otg/
 
diff --git a/drivers/usb/storage/Kconfig b/drivers/usb/storage/Kconfig
new file mode 100644
index 0000000..f6c8c06
--- /dev/null
+++ b/drivers/usb/storage/Kconfig
@@ -0,0 +1,2 @@
+config USB_STORAGE
+	tristate "USB Mass Storage support"
diff --git a/drivers/usb/storage/Makefile b/drivers/usb/storage/Makefile
new file mode 100644
index 0000000..adf0843
--- /dev/null
+++ b/drivers/usb/storage/Makefile
@@ -0,0 +1,4 @@
+obj-$(CONFIG_USB_STORAGE)	+= usb-storage.o
+
+usb-storage-objs :=	usb.o transport.o
+
diff --git a/drivers/usb/storage/transport.c b/drivers/usb/storage/transport.c
new file mode 100644
index 0000000..e7a5972
--- /dev/null
+++ b/drivers/usb/storage/transport.c
@@ -0,0 +1,251 @@
+/*
+ * Most of this source has been derived from the Linux and
+ * U-Boot USB Mass Storage driver implementations.
+ *
+ * Adapted for barebox:
+ * Copyright (c) 2011, AMK Drives & Controls Ltd.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ *
+ */
+
+#include <common.h>
+#include <clock.h>
+#include <scsi.h>
+#include <errno.h>
+
+#undef USB_STOR_DEBUG
+
+#include "usb.h"
+#include "transport.h"
+
+
+/* The timeout argument of usb_bulk_msg() is actually ignored
+   and the timeout is hardcoded in the host driver */
+#define USB_BULK_TO		5000
+
+static __u32 cbw_tag = 0;
+
+/* direction table -- this indicates the direction of the data
+ * transfer for each command code (bit-encoded) -- 1 indicates input
+ * note that this doesn't work for shared command codes
+ */
+static const unsigned char us_direction[256/8] = {
+	0x28, 0x81, 0x14, 0x14, 0x20, 0x01, 0x90, 0x77,
+	0x0C, 0x20, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00,
+	0x00, 0x01, 0x00, 0x40, 0x09, 0x01, 0x80, 0x01,
+	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
+};
+#define US_DIRECTION(x) ((us_direction[x>>3] >> (x & 7)) & 1)
+
+
+/*
+ * Bulk only transport
+ */
+
+/* Clear a stall on an endpoint - special for bulk-only devices */
+int usb_stor_Bulk_clear_endpt_stall(struct us_data *us, unsigned int pipe)
+{
+	return usb_clear_halt(us->pusb_dev, pipe);
+}
+
+/* Determine what the maximum LUN supported is */
+int usb_stor_Bulk_max_lun(struct us_data *us)
+{
+	int len;
+	unsigned char iobuf[1];
+
+	/* issue the command */
+	iobuf[0] = 0;
+	len = usb_control_msg(us->pusb_dev,
+	                      usb_rcvctrlpipe(us->pusb_dev, 0),
+	                      US_BULK_GET_MAX_LUN,
+	                      USB_DIR_IN | USB_TYPE_CLASS | USB_RECIP_INTERFACE,
+	                      0, us->ifnum, iobuf, 1, USB_CNTL_TIMEOUT);
+
+	US_DEBUGP("GetMaxLUN command result is %d, data is %d\n",
+	          len, (int)iobuf[0]);
+
+	/* if we have a successful request, return the result */
+	if (len > 0)
+		return (int)iobuf[0];
+
+	/*
+	 * Some devices don't like GetMaxLUN.  They may STALL the control
+	 * pipe, they may return a zero-length result, they may do nothing at
+	 * all and timeout, or they may fail in even more bizarrely creative
+	 * ways.  In these cases the best approach is to use the default
+	 * value: only one LUN.
+	 */
+	return 0;
+}
+
+int usb_stor_Bulk_transport(ccb *srb, struct us_data *us)
+{
+	struct bulk_cb_wrap cbw;
+	struct bulk_cs_wrap csw;
+	int actlen, data_actlen;
+	int result;
+	unsigned int residue;
+	unsigned int pipein = usb_rcvbulkpipe(us->pusb_dev, us->recv_bulk_ep);
+	unsigned int pipeout = usb_sndbulkpipe(us->pusb_dev, us->send_bulk_ep);
+	int dir_in = US_DIRECTION(srb->cmd[0]);
+
+	srb->trans_bytes = 0;
+
+	/* set up the command wrapper */
+	cbw.Signature = cpu_to_le32(US_BULK_CB_SIGN);
+	cbw.DataTransferLength = cpu_to_le32(srb->datalen);
+	cbw.Flags = (dir_in ? US_BULK_FLAG_IN : US_BULK_FLAG_OUT);
+	cbw.Tag = ++cbw_tag;
+	cbw.Lun = srb->lun;
+	cbw.Length = srb->cmdlen;
+
+	/* copy the command payload */
+	memcpy(cbw.CDB, srb->cmd, cbw.Length);
+
+	/* send it to out endpoint */
+	US_DEBUGP("Bulk Command S 0x%x T 0x%x L %d F %d Trg %d LUN %d CL %d\n",
+	                le32_to_cpu(cbw.Signature), cbw.Tag,
+	                le32_to_cpu(cbw.DataTransferLength), cbw.Flags,
+	                (cbw.Lun >> 4), (cbw.Lun & 0x0F),
+	                cbw.Length);
+	result = usb_bulk_msg(us->pusb_dev, pipeout, &cbw, US_BULK_CB_WRAP_LEN,
+			      &actlen, USB_BULK_TO);
+	US_DEBUGP("Bulk command transfer result=%d\n", result);
+	if (result < 0) {
+		usb_stor_Bulk_reset(us);
+		return USB_STOR_TRANSPORT_FAILED;
+	}
+
+	/* DATA STAGE */
+	/* send/receive data payload, if there is any */
+
+	wait_ms(1);
+
+	data_actlen = 0;
+	if (srb->datalen) {
+		unsigned int pipe = dir_in ? pipein : pipeout;
+		result = usb_bulk_msg(us->pusb_dev, pipe, srb->pdata,
+		                      srb->datalen, &data_actlen, USB_BULK_TO);
+		US_DEBUGP("Bulk data transfer result 0x%x\n", result);
+		/* special handling of STALL in DATA phase */
+		if ((result < 0) && (us->pusb_dev->status & USB_ST_STALLED)) {
+			US_DEBUGP("DATA: stall\n");
+			/* clear the STALL on the endpoint */
+			result = usb_stor_Bulk_clear_endpt_stall(us, pipe);
+		}
+		if (result < 0) {
+			US_DEBUGP("Device status: %lx\n", us->pusb_dev->status);
+			usb_stor_Bulk_reset(us);
+			return USB_STOR_TRANSPORT_FAILED;
+		}
+	}
+
+	/* STATUS phase + error handling */
+	US_DEBUGP("Attempting to get CSW...\n");
+	result = usb_bulk_msg(us->pusb_dev, pipein, &csw, US_BULK_CS_WRAP_LEN,
+	                      &actlen, USB_BULK_TO);
+
+	/* did the endpoint stall? */
+	if ((result < 0) && (us->pusb_dev->status & USB_ST_STALLED)) {
+		US_DEBUGP("STATUS: stall\n");
+		/* clear the STALL on the endpoint */
+		result = usb_stor_Bulk_clear_endpt_stall(us, pipein);
+		if (result >= 0) {
+			US_DEBUGP("Attempting to get CSW...\n");
+			result = usb_bulk_msg(us->pusb_dev, pipein,
+			                      &csw, US_BULK_CS_WRAP_LEN,
+			                      &actlen, USB_BULK_TO);
+		}
+	}
+
+	if (result < 0) {
+		US_DEBUGP("Device status: %lx\n", us->pusb_dev->status);
+		usb_stor_Bulk_reset(us);
+		return USB_STOR_TRANSPORT_FAILED;
+	}
+
+	/* check bulk status */
+	residue = le32_to_cpu(csw.Residue);
+	US_DEBUGP("Bulk Status S 0x%x T 0x%x R %u Stat 0x%x\n",
+	          le32_to_cpu(csw.Signature), csw.Tag, residue, csw.Status);
+	if (csw.Signature != cpu_to_le32(US_BULK_CS_SIGN)) {
+		US_DEBUGP("Bad CSW signature\n");
+		usb_stor_Bulk_reset(us);
+		return USB_STOR_TRANSPORT_FAILED;
+	} else if (csw.Tag != cbw_tag) {
+		US_DEBUGP("Mismatching tag\n");
+		usb_stor_Bulk_reset(us);
+		return USB_STOR_TRANSPORT_FAILED;
+	} else if (csw.Status >= US_BULK_STAT_PHASE) {
+		US_DEBUGP("Status >= phase\n");
+		usb_stor_Bulk_reset(us);
+		return USB_STOR_TRANSPORT_ERROR;
+	} else if (residue > srb->datalen) {
+		US_DEBUGP("residue (%uB) > req data (%luB)\n",
+		          residue, srb->datalen);
+		return USB_STOR_TRANSPORT_FAILED;
+	} else if (csw.Status == US_BULK_STAT_FAIL) {
+		US_DEBUGP("FAILED\n");
+		return USB_STOR_TRANSPORT_FAILED;
+	}
+	srb->trans_bytes = min(srb->datalen - residue, (ulong)data_actlen);
+
+	return 0;
+}
+
+
+/* This issues a Bulk-only Reset to the device in question, including
+ * clearing the subsequent endpoint halts that may occur.
+ */
+int usb_stor_Bulk_reset(struct us_data *us)
+{
+	int result;
+	int result2;
+	unsigned int pipe;
+
+	US_DEBUGP("%s called\n", __func__);
+
+	/* issue the command */
+	result = usb_control_msg(us->pusb_dev,
+	                         usb_sndctrlpipe(us->pusb_dev, 0),
+	                         US_BULK_RESET_REQUEST,
+	                         USB_TYPE_CLASS | USB_RECIP_INTERFACE,
+	                         0, us->ifnum, 0, 0, USB_CNTL_TIMEOUT);
+	if ((result < 0) && (us->pusb_dev->status & USB_ST_STALLED)) {
+		US_DEBUGP("Soft reset stalled: %d\n", result);
+		return result;
+	}
+	wait_ms(150);
+
+	/* clear the bulk endpoints halt */
+	US_DEBUGP("Soft reset: clearing %s endpoint halt\n", "bulk-in");
+	pipe = usb_rcvbulkpipe(us->pusb_dev, us->recv_bulk_ep);
+	result = usb_clear_halt(us->pusb_dev, pipe);
+	wait_ms(150);
+	US_DEBUGP("Soft reset: clearing %s endpoint halt\n", "bulk-out");
+	pipe = usb_sndbulkpipe(us->pusb_dev, us->send_bulk_ep);
+	result2 = usb_clear_halt(us->pusb_dev, pipe);
+	wait_ms(150);
+
+	if (result >= 0)
+		result = result2;
+	US_DEBUGP("Soft reset %s\n", ((result < 0) ? "failed" : "done"));
+
+	return result;
+}
+
diff --git a/drivers/usb/storage/transport.h b/drivers/usb/storage/transport.h
new file mode 100644
index 0000000..1c5c141
--- /dev/null
+++ b/drivers/usb/storage/transport.h
@@ -0,0 +1,95 @@
+/*
+ * Most of this source has been derived from the Linux and
+ * U-Boot USB Mass Storage driver implementations.
+ *
+ * Adapted for barebox:
+ * Copyright (c) 2011, AMK Drives & Controls Ltd.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ *
+ */
+
+#ifndef _TRANSPORT_H_
+#define _TRANSPORT_H_
+
+#include <scsi.h>
+
+/*
+ * Bulk only data structures
+ */
+
+/* command block wrapper */
+struct bulk_cb_wrap {
+	__le32	Signature;		/* contains 'USBC' */
+	__u32	Tag;			/* unique per command id */
+	__le32	DataTransferLength;	/* size of data */
+	__u8	Flags;			/* direction in bit 7 */
+	__u8	Lun;			/* LUN normally 0 */
+	__u8	Length;			/* of of the CDB */
+	__u8	CDB[16];		/* max command */
+};
+
+#define US_BULK_CB_WRAP_LEN	31
+#define US_BULK_CB_SIGN		0x43425355	/*spells out USBC */
+#define US_BULK_FLAG_IN		(1<<7)
+#define US_BULK_FLAG_OUT	(0<<7)
+
+/* command status wrapper */
+struct bulk_cs_wrap {
+	__le32	Signature;		/* should = 'USBS' */
+	__u32	Tag;			/* same as original command */
+	__le32	Residue;		/* amount not transferred */
+	__u8	Status;			/* see below */
+	__u8	Filler[18];
+};
+
+#define US_BULK_CS_WRAP_LEN	13
+#define US_BULK_CS_SIGN		0x53425355	/* spells out 'USBS' */
+#define US_BULK_STAT_OK		0
+#define US_BULK_STAT_FAIL	1
+#define US_BULK_STAT_PHASE	2
+
+/* bulk-only class specific requests */
+#define US_BULK_RESET_REQUEST	0xff
+#define US_BULK_GET_MAX_LUN	0xfe
+
+/*
+ * usb_stor_bulk_transfer_xxx() return codes, in order of severity
+ */
+
+#define USB_STOR_XFER_GOOD	0	/* good transfer                 */
+#define USB_STOR_XFER_SHORT	1	/* transferred less than expected */
+#define USB_STOR_XFER_STALLED	2	/* endpoint stalled              */
+#define USB_STOR_XFER_LONG	3	/* device tried to send too much */
+#define USB_STOR_XFER_ERROR	4	/* transfer died in the middle   */
+
+/*
+ * Transport return codes
+ */
+
+#define USB_STOR_TRANSPORT_GOOD	   0   /* Transport good, command good	   */
+#define USB_STOR_TRANSPORT_FAILED  1   /* Transport good, command failed   */
+#define USB_STOR_TRANSPORT_NO_SENSE 2  /* Command failed, no auto-sense    */
+#define USB_STOR_TRANSPORT_ERROR   3   /* Transport bad (i.e. device dead) */
+
+
+struct us_data;
+
+extern int usb_stor_Bulk_transport(ccb *, struct us_data *);
+extern int usb_stor_Bulk_max_lun(struct us_data *);
+extern int usb_stor_Bulk_reset(struct us_data *);
+
+#endif
diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
new file mode 100644
index 0000000..d033b29
--- /dev/null
+++ b/drivers/usb/storage/usb.c
@@ -0,0 +1,619 @@
+/*
+ * Most of this source has been derived from the Linux and
+ * U-Boot USB Mass Storage driver implementations.
+ *
+ * Adapted for barebox:
+ * Copyright (c) 2011, AMK Drives & Controls Ltd.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ *
+ */
+
+#include <common.h>
+#include <init.h>
+#include <malloc.h>
+#include <errno.h>
+#include <scsi.h>
+#include <usb/usb.h>
+#include <usb/usb_defs.h>
+
+#undef USB_STOR_DEBUG
+
+#include "usb.h"
+#include "transport.h"
+
+
+static LIST_HEAD(us_blkdev_list);
+
+
+/***********************************************************************
+ * USB Storage routines
+ ***********************************************************************/
+
+static int usb_stor_inquiry(ccb *srb, struct us_data *us)
+{
+	int retries, result;
+
+	srb->datalen = min(128UL, srb->datalen);
+	if (srb->datalen < 5) {
+		US_DEBUGP("SCSI_INQUIRY: invalid data buffer size\n");
+		return -EINVAL;
+	}
+
+	retries = 3;
+	do {
+		US_DEBUGP("SCSI_INQUIRY\n");
+		memset(&srb->cmd[0], 0, 6);
+		srb->cmdlen = 6;
+		srb->cmd[0] = SCSI_INQUIRY;
+		srb->cmd[3] = (u8)(srb->datalen >> 8);
+		srb->cmd[4] = (u8)(srb->datalen >> 0);
+		result = us->transport(srb, us);
+		US_DEBUGP("SCSI_INQUIRY returns %d\n", result);
+	} while ((result != USB_STOR_TRANSPORT_GOOD) && retries--);
+
+	return (result != USB_STOR_TRANSPORT_GOOD) ? -EIO : 0;
+}
+
+static int usb_stor_request_sense(ccb *srb, struct us_data *us)
+{
+	unsigned char *pdata = srb->pdata;
+	unsigned long datalen = srb->datalen;
+
+	US_DEBUGP("SCSI_REQ_SENSE\n");
+	srb->pdata = &srb->sense_buf[0];
+	srb->datalen = 18;
+	memset(&srb->cmd[0], 0, 6);
+	srb->cmdlen = 6;
+	srb->cmd[0] = SCSI_REQ_SENSE;
+	srb->cmd[4] = (u8)(srb->datalen >> 0);
+	us->transport(srb, us);
+	US_DEBUGP("Request Sense returned %02X %02X %02X\n",
+	          srb->sense_buf[2], srb->sense_buf[12], srb->sense_buf[13]);
+	srb->pdata = pdata;
+	srb->datalen = datalen;
+
+	return 0;
+}
+
+static int usb_stor_test_unit_ready(ccb *srb, struct us_data *us)
+{
+	int retries, result;
+
+	retries = 10;
+	do {
+		US_DEBUGP("SCSI_TST_U_RDY\n");
+		memset(&srb->cmd[0], 0, 6);
+		srb->cmdlen = 6;
+		srb->cmd[0] = SCSI_TST_U_RDY;
+		srb->datalen = 0;
+		result = us->transport(srb, us);
+		US_DEBUGP("SCSI_TST_U_RDY returns %d\n", result);
+		if (result == USB_STOR_TRANSPORT_GOOD)
+			return 0;
+		usb_stor_request_sense(srb, us);
+		wait_ms(100);
+	} while (retries--);
+
+	return -1;
+}
+
+static int usb_stor_read_capacity(ccb *srb, struct us_data *us)
+{
+	int retries, result;
+
+	if (srb->datalen < 8) {
+		US_DEBUGP("SCSI_RD_CAPAC: invalid data buffer size\n");
+		return -EINVAL;
+	}
+
+	retries = 3;
+	do {
+		US_DEBUGP("SCSI_RD_CAPAC\n");
+		memset(&srb->cmd[0], 0, 10);
+		srb->cmdlen = 10;
+		srb->cmd[0] = SCSI_RD_CAPAC;
+		srb->datalen = 8;
+		result = us->transport(srb, us);
+		US_DEBUGP("SCSI_RD_CAPAC returns %d\n", result);
+	} while ((result != USB_STOR_TRANSPORT_GOOD) && retries--);
+
+	return (result != USB_STOR_TRANSPORT_GOOD) ? -EIO : 0;
+}
+
+static int usb_stor_read_10(ccb *srb, struct us_data *us,
+                            unsigned long start, unsigned short blocks)
+{
+	int retries, result;
+
+	retries = 2;
+	do {
+		US_DEBUGP("SCSI_READ10: start %lx blocks %x\n", start, blocks);
+		memset(&srb->cmd[0], 0, 10);
+		srb->cmdlen = 10;
+		srb->cmd[0] = SCSI_READ10;
+		srb->cmd[2] = (u8)(start >> 24);
+		srb->cmd[3] = (u8)(start >> 16);
+		srb->cmd[4] = (u8)(start >> 8);
+		srb->cmd[5] = (u8)(start >> 0);
+		srb->cmd[7] = (u8)(blocks >> 8);
+		srb->cmd[8] = (u8)(blocks >> 0);
+		result = us->transport(srb, us);
+		US_DEBUGP("SCSI_READ10 returns %d\n", result);
+		if (result == USB_STOR_TRANSPORT_GOOD)
+			return 0;
+		usb_stor_request_sense(srb, us);
+	} while (retries--);
+
+	return -EIO;
+}
+
+static int usb_stor_write_10(ccb *srb, struct us_data *us,
+                             unsigned long start, unsigned short blocks)
+{
+	int retries, result;
+
+	retries = 2;
+	do {
+		US_DEBUGP("SCSI_WRITE10: start %lx blocks %x\n", start, blocks);
+		memset(&srb->cmd[0], 0, 10);
+		srb->cmdlen = 10;
+		srb->cmd[0] = SCSI_WRITE10;
+		srb->cmd[2] = (u8)(start >> 24);
+		srb->cmd[3] = (u8)(start >> 16);
+		srb->cmd[4] = (u8)(start >> 8);
+		srb->cmd[5] = (u8)(start >> 0);
+		srb->cmd[7] = (u8)(blocks >> 8);
+		srb->cmd[8] = (u8)(blocks >> 0);
+		result = us->transport(srb, us);
+		US_DEBUGP("SCSI_WRITE10 returns %d\n", result);
+		if (result == USB_STOR_TRANSPORT_GOOD)
+			return 0;
+		usb_stor_request_sense(srb, us);
+	} while (retries--);
+
+	return us->transport(srb, us);
+}
+
+
+/***********************************************************************
+ * Disk driver interface
+ ***********************************************************************/
+
+#define US_MAX_IO_BLK 32U
+
+enum { io_rd, io_wr };
+
+/* Read / write a chunk of sectors on media */
+static int usb_stor_blk_io(int io_op, struct device_d *disk_dev,
+                           uint64_t sector_start, unsigned sector_count,
+                           void *buffer)
+{
+	struct ata_interface *pata_if = disk_dev->platform_data;
+	struct us_blk_dev *pblk_dev = (struct us_blk_dev *)pata_if->priv;
+	struct us_data *us = pblk_dev->us;
+	ccb us_ccb;
+	ushort const sector_size = 512;
+	unsigned sectors_done;
+
+	if (sector_count == 0)
+		return 0;
+
+	/* check for unsupported block size */
+	if (pblk_dev->blksz != sector_size) {
+		US_DEBUGP("%s: unsupported block size %lu\n",
+		          __func__, pblk_dev->blksz);
+		return -EINVAL;
+	}
+
+	/* check for invalid sector_start */
+	if (sector_start >= pblk_dev->blknum || sector_start > (ulong)-1) {
+		US_DEBUGP("%s: start sector %llu too large\n",
+		          __func__, sector_start);
+		return -EINVAL;
+	}
+
+	us_ccb.lun = pblk_dev->lun;
+	usb_disable_asynch(1);
+
+	/* ensure unit ready */
+	US_DEBUGP("Testing for unit ready\n");
+	if (usb_stor_test_unit_ready(&us_ccb, us)) {
+		US_DEBUGP("Device NOT ready\n");
+		usb_disable_asynch(0);
+		return -EIO;
+	}
+
+	/* possibly limit the amount of I/O data */
+	if (sector_count > INT_MAX) {
+		sector_count = INT_MAX;
+		US_DEBUGP("Restricting I/O to %u blocks\n", sector_count);
+	}
+	if (sector_start + sector_count > pblk_dev->blknum) {
+		sector_count = pblk_dev->blknum - sector_start;
+		US_DEBUGP("Restricting I/O to %u blocks\n", sector_count);
+	}
+
+	/* read / write the requested data */
+	US_DEBUGP("%s %u block(s), starting from %llu\n",
+	          ((io_op == io_rd) ? "Read" : "Write"),
+	          sector_count, sector_start);
+	sectors_done = 0;
+	while (sector_count > 0) {
+		int result;
+		ushort n = (ushort)min(sector_count, US_MAX_IO_BLK);
+		us_ccb.pdata = buffer + sectors_done * sector_size;
+		us_ccb.datalen = n * (ulong)sector_size;
+		if (io_op == io_rd)
+			result = usb_stor_read_10(&us_ccb, us,
+			                          (ulong)sector_start, n);
+		else
+			result = usb_stor_write_10(&us_ccb, us,
+			                           (ulong)sector_start, n);
+		if (result != 0) {
+			US_DEBUGP("I/O error at sector %llu\n", sector_start);
+			break;
+		}
+		sector_start += n;
+		sector_count -= n;
+		sectors_done += n;
+	}
+
+	usb_disable_asynch(0);
+
+	US_DEBUGP("Successful I/O of %u blocks\n", sectors_done);
+
+	return (sector_count != 0) ? -EIO : 0;
+}
+
+/* Write a chunk of sectors to media */
+static int usb_stor_blk_write(struct device_d *disk_dev, uint64_t sector_start,
+                              unsigned sector_count, const void *buffer)
+{
+	return usb_stor_blk_io(io_wr, disk_dev, sector_start, sector_count,
+	                       (void *)buffer);
+}
+
+/* Read a chunk of sectors from media */
+static int usb_stor_blk_read(struct device_d *disk_dev, uint64_t sector_start,
+                             unsigned sector_count, void *buffer)
+{
+	return usb_stor_blk_io(io_rd, disk_dev, sector_start, sector_count,
+	                       buffer);
+}
+
+
+/***********************************************************************
+ * Block device routines
+ ***********************************************************************/
+
+static unsigned char us_io_buf[512];
+
+/* Prepare a disk device */
+static int usb_stor_init_blkdev(struct us_blk_dev *pblk_dev)
+{
+	struct us_data *us = pblk_dev->us;
+	ccb us_ccb;
+	unsigned long *pcap;
+	int result = 0;
+
+	us_ccb.pdata = us_io_buf;
+	us_ccb.lun = pblk_dev->lun;
+
+	pblk_dev->blknum = 0;
+	usb_disable_asynch(1);
+
+	/* get device info */
+	US_DEBUGP("Reading device info\n");
+	us_ccb.datalen = 36;
+	if (usb_stor_inquiry(&us_ccb, us)) {
+		US_DEBUGP("Cannot read device info\n");
+		result = -ENODEV;
+		goto Exit;
+	}
+	US_DEBUGP("Peripheral type: %x, removable: %x\n",
+	          us_io_buf[0], (us_io_buf[1] >> 7));
+	US_DEBUGP("ISO ver: %x, resp format: %x\n", us_io_buf[2], us_io_buf[3]);
+	US_DEBUGP("Vendor/product/rev: %28s\n", &us_io_buf[8]);
+	// TODO:  process and store device info
+
+	/* ensure unit ready */
+	US_DEBUGP("Testing for unit ready\n");
+	us_ccb.datalen = 0;
+	if (usb_stor_test_unit_ready(&us_ccb, us)) {
+		US_DEBUGP("Device NOT ready\n");
+		result = -ENODEV;
+		goto Exit;
+	}
+
+	/* read capacity */
+	US_DEBUGP("Reading capacity\n");
+	memset(us_ccb.pdata, 0, 8);
+	us_ccb.datalen = sizeof(us_io_buf);
+	if (usb_stor_read_capacity(&us_ccb, us) != 0) {
+		US_DEBUGP("Cannot read device capacity\n");
+		result = -EIO;
+		goto Exit;
+	}
+	pcap = (unsigned long *)us_ccb.pdata;
+	US_DEBUGP("Read Capacity returns: 0x%lx, 0x%lx\n", pcap[0], pcap[1]);
+	pblk_dev->blknum = be32_to_cpu(pcap[0]);
+	pblk_dev->blksz = be32_to_cpu(pcap[1]);
+	pblk_dev->blknum++;
+	US_DEBUGP("Capacity = 0x%llx, blocksz = 0x%lx\n",
+	          pblk_dev->blknum, pblk_dev->blksz);
+
+Exit:
+	usb_disable_asynch(0);
+	return result;
+}
+
+/* Create and register a disk device for the specified LUN */
+static int usb_stor_add_blkdev(struct us_data *us, unsigned char lun)
+{
+	struct us_blk_dev *pblk_dev;
+	struct device_d *pdev;
+	struct ata_interface *pata_if;
+	int result;
+
+	/* allocate blk dev data */
+	pblk_dev = (struct us_blk_dev *)malloc(sizeof(struct us_blk_dev));
+	if (!pblk_dev)
+		return -ENOMEM;
+	memset(pblk_dev, 0, sizeof(struct us_blk_dev));
+
+	/* initialize blk dev data */
+	pblk_dev->us = us;
+	pblk_dev->lun = lun;
+	pata_if = &pblk_dev->ata_if;
+	pata_if->read = &usb_stor_blk_read;
+	pata_if->write = &usb_stor_blk_write;
+	pata_if->priv = pblk_dev;
+	pdev = &pblk_dev->dev;
+	strcpy(pdev->name, "disk");
+	pdev->platform_data = pata_if;
+
+	/* read some info and get the unit ready */
+	result = usb_stor_init_blkdev(pblk_dev);
+	if (result < 0)
+		goto BadDevice;
+
+	/* register disk device */
+	result = register_device(pdev);
+	if (result < 0)
+		goto BadDevice;
+	list_add_tail(&pblk_dev->list, &us_blkdev_list);
+	US_DEBUGP("USB disk device successfully added\n");
+
+	return 0;
+
+BadDevice:
+	US_DEBUGP("%s failed with %d\n", __func__, result);
+	free(pblk_dev);
+	return result;
+}
+
+/***********************************************************************
+ * USB Mass Storage device probe and initialization
+ ***********************************************************************/
+
+/* Get the transport settings */
+static void get_transport(struct us_data *us)
+{
+	switch (us->protocol) {
+	case US_PR_BULK:
+		us->transport_name = "Bulk";
+		us->transport = &usb_stor_Bulk_transport;
+		us->transport_reset = &usb_stor_Bulk_reset;
+		break;
+	}
+
+	US_DEBUGP("Transport: %s\n", us->transport_name);
+}
+
+/* Get the endpoint settings */
+static int get_pipes(struct us_data *us, struct usb_interface_descriptor *intf)
+{
+	unsigned int i;
+	struct usb_endpoint_descriptor *ep;
+	struct usb_endpoint_descriptor *ep_in = NULL;
+	struct usb_endpoint_descriptor *ep_out = NULL;
+	struct usb_endpoint_descriptor *ep_int = NULL;
+
+	/*
+	 * Find the first endpoint of each type we need.
+	 * We are expecting a minimum of 2 endpoints - in and out (bulk).
+	 * An optional interrupt-in is OK (necessary for CBI protocol).
+	 * We will ignore any others.
+	 */
+	for (i = 0; i < intf->bNumEndpoints; i++) {
+		ep = &intf->ep_desc[i];
+
+		if (USB_EP_IS_XFER_BULK(ep)) {
+			if (USB_EP_IS_DIR_IN(ep)) {
+				if ( !ep_in )
+					ep_in = ep;
+			}
+			else {
+				if ( !ep_out )
+					ep_out = ep;
+			}
+		}
+		else if (USB_EP_IS_INT_IN(ep)) {
+			if (!ep_int)
+				ep_int = ep;
+		}
+	}
+	if (!ep_in || !ep_out || (us->protocol == US_PR_CBI && !ep_int)) {
+		US_DEBUGP("Endpoint sanity check failed! Rejecting dev.\n");
+		return -EIO;
+	}
+
+	/* Store the pipe values */
+	us->send_bulk_ep = USB_EP_NUM(ep_out);
+	us->recv_bulk_ep = USB_EP_NUM(ep_in);
+	if (ep_int) {
+		us->recv_intr_ep = USB_EP_NUM(ep_int);
+		us->ep_bInterval = ep_int->bInterval;
+	}
+	return 0;
+}
+
+/* Scan device's LUNs, registering a disk device for each LUN */
+static int usb_stor_scan(struct usb_device *usbdev, struct us_data *us)
+{
+	unsigned char lun;
+	int num_devs = 0;
+
+	/* obtain the max LUN */
+	us->max_lun = 0;
+	if (us->protocol == US_PR_BULK)
+		us->max_lun = usb_stor_Bulk_max_lun(us);
+
+	/* register a disk device for each active LUN */
+	for (lun=0; lun<=us->max_lun; lun++) {
+		if (usb_stor_add_blkdev(us, lun) == 0)
+			num_devs++;
+	}
+
+	US_DEBUGP("Found %d block devices on %s\n", num_devs, usbdev->dev.name);
+
+	return  num_devs ? 0 : -ENODEV;
+}
+
+/* Probe routine for standard devices */
+static int usb_stor_probe(struct usb_device *usbdev,
+			 const struct usb_device_id *id)
+{
+	struct us_data *us;
+	int result;
+	int ifno;
+	struct usb_interface_descriptor *intf;
+
+	US_DEBUGP("Supported USB Mass Storage device detected\n");
+
+	/* scan usbdev interfaces again to find one that we can handle */
+	for (ifno=0; ifno<usbdev->config.no_of_if; ifno++) {
+		intf = &usbdev->config.if_desc[ifno];
+
+		if (intf->bInterfaceClass    == USB_CLASS_MASS_STORAGE &&
+		    intf->bInterfaceSubClass == US_SC_SCSI &&
+		    intf->bInterfaceProtocol == US_PR_BULK)
+			break;
+	}
+	if (ifno >= usbdev->config.no_of_if)
+		return -ENXIO;
+
+	/* select the right interface */
+	result = usb_set_interface(usbdev, intf->bInterfaceNumber, 0);
+	if (result)
+		return result;
+
+	US_DEBUGP("Selected interface %d\n", (int)intf->bInterfaceNumber);
+
+	/* allocate us_data structure */
+	us = (struct us_data *)malloc(sizeof(struct us_data));
+	if (!us)
+		return -ENOMEM;
+	memset(us, 0, sizeof(struct us_data));
+
+	/* initialize the us_data structure */
+	us->pusb_dev = usbdev;
+	us->flags = 0;
+	us->ifnum = intf->bInterfaceNumber;
+	us->subclass = intf->bInterfaceSubClass;
+	us->protocol = intf->bInterfaceProtocol;
+
+	/* get standard transport and protocol settings */
+	get_transport(us);
+
+	/* find the endpoints needed by the transport */
+	result = get_pipes(us, intf);
+	if (result)
+		goto BadDevice;
+
+	/* register a disk device for each LUN */
+	usb_stor_scan(usbdev, us);
+
+	/* associate the us_data structure with the usb_device */
+	usbdev->drv_data = us;
+
+	return 0;
+
+BadDevice:
+	US_DEBUGP("%s failed with %d\n", __func__, result);
+	free(us);
+	return result;
+}
+
+/* Handle a USB mass-storage disconnect */
+static void usb_stor_disconnect(struct usb_device *usbdev)
+{
+#if 0
+	struct us_data *us = (struct us_data *)usbdev->drv_data;
+	struct us_blk_dev *bdev, *bdev_tmp;
+
+	US_DEBUGP("Disconnecting USB Mass Storage device %s\n",
+	          usbdev->dev.name);
+
+	/* release all block devices of this mass storage device */
+	list_for_each_entry_safe(bdev, bdev_tmp, &us_blkdev_list, list) {
+		if (bdev->us == us) {
+			US_DEBUGP("Releasing %s\n", bdev->dev.name);
+			list_del(&bdev->list);
+			unregister_device(&bdev->dev);
+			free(bdev);
+		}
+	}
+
+	/* release device's private data */
+	usbdev->drv_data = 0;
+	free(us);
+#else
+	dev_err(&usbdev->dev, "Disk/partition removal not yet implemented "
+	                      "in the ATA disk driver.");
+#endif
+}
+
+#define USUAL_DEV(use_proto, use_trans, drv_info) \
+{	USB_INTERFACE_INFO(USB_CLASS_MASS_STORAGE, use_proto, use_trans), \
+	.driver_info = (drv_info) }
+
+/* Table with supported devices, most specific first. */
+static struct usb_device_id usb_storage_usb_ids[] = {
+	USUAL_DEV(US_SC_SCSI, US_PR_BULK, 0),	// SCSI intf, BBB proto
+	{ }
+};
+
+
+/***********************************************************************
+ * USB Storage driver initialization and registration
+ ***********************************************************************/
+
+static struct usb_driver usb_storage_driver = {
+	.driver.name =	"usb-storage",
+	.id_table =	usb_storage_usb_ids,
+	.probe =	usb_stor_probe,
+	.disconnect =	usb_stor_disconnect,
+};
+
+static int __init usb_stor_init(void)
+{
+	usb_storage_driver.name = usb_storage_driver.driver.name;
+	return usb_driver_register(&usb_storage_driver);
+}
+device_initcall(usb_stor_init);
+
diff --git a/drivers/usb/storage/usb.h b/drivers/usb/storage/usb.h
new file mode 100644
index 0000000..17a1e12
--- /dev/null
+++ b/drivers/usb/storage/usb.h
@@ -0,0 +1,96 @@
+/*
+ * Most of this source has been derived from the Linux and
+ * U-Boot USB Mass Storage driver implementations.
+ *
+ * Adapted for barebox:
+ * Copyright (c) 2011, AMK Drives & Controls Ltd.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ *
+ */
+
+#ifndef _STORAGE_USB_H_
+#define _STORAGE_USB_H_
+
+#include <usb/usb.h>
+#include <ata.h>
+#include <scsi.h>
+#include <linux/list.h>
+
+
+#ifdef  USB_STOR_DEBUG
+#define US_DEBUGP(fmt, args...)    printf(fmt , ##args)
+#else
+#define US_DEBUGP(fmt, args...)
+#endif
+
+
+/* some defines, similar to ch9.h */
+#define USB_EP_NUM(epd) \
+	((epd)->bEndpointAddress & USB_ENDPOINT_NUMBER_MASK)
+#define USB_EP_IS_DIR_IN(epd) \
+	(((epd)->bEndpointAddress & USB_ENDPOINT_DIR_MASK) == USB_DIR_IN)
+#define USB_EP_IS_XFER_BULK(epd) \
+	(((epd)->bmAttributes & USB_ENDPOINT_XFERTYPE_MASK) == \
+	 USB_ENDPOINT_XFER_BULK)
+#define USB_EP_IS_XFER_INT(epd) \
+	(((epd)->bmAttributes & USB_ENDPOINT_XFERTYPE_MASK) == \
+	 USB_ENDPOINT_XFER_INT)
+#define USB_EP_IS_INT_IN(epd) \
+	(USB_EP_IS_XFER_INT(epd) && USB_EP_IS_DIR_IN(epd))
+
+
+struct us_data;
+
+typedef int (*trans_cmnd)(ccb *cb, struct us_data *data);
+typedef int (*trans_reset)(struct us_data *data);
+
+/* one us_data object allocated per usb storage device */
+struct us_data {
+	struct usb_device	*pusb_dev;	/* this usb_device */
+	unsigned int		flags;		/* from filter */
+	unsigned char		send_bulk_ep;	/* used endpoints */
+	unsigned char		recv_bulk_ep;
+	unsigned char		recv_intr_ep;
+	unsigned char		ifnum;		/* interface number */
+
+	unsigned char		subclass;
+	unsigned char		protocol;
+
+	unsigned char		max_lun;
+	unsigned char		ep_bInterval;
+
+	char			*transport_name;
+
+	trans_cmnd		transport;	/* transport function */
+	trans_reset		transport_reset;/* transport device reset */
+
+	/* SCSI interfaces */
+	ccb			*srb;		/* current srb */
+};
+
+/* one us_blk_dev object allocated per LUN */
+struct us_blk_dev {
+	struct us_data		*us;		/* LUN's enclosing dev */
+	struct device_d		dev;		/* intf to generic driver */
+	struct ata_interface	ata_if;		/* intf to "disk" driver */
+	uint64_t		blknum;		/* capacity */
+	unsigned long		blksz;		/* block size */
+	unsigned char 		lun;		/* the LUN of this blk dev */
+	struct list_head	list;		/* siblings */
+};
+
+#endif
diff --git a/include/scsi.h b/include/scsi.h
new file mode 100644
index 0000000..931d03d
--- /dev/null
+++ b/include/scsi.h
@@ -0,0 +1,208 @@
+/*
+ * (C) Copyright 2001
+ * Denis Peter, MPL AG Switzerland
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ *
+ */
+ #ifndef _SCSI_H
+ #define _SCSI_H
+
+typedef struct SCSI_cmd_block {
+	unsigned char		cmd[16];		/* command */
+	unsigned char		sense_buf[64];		/* for request sense */
+	unsigned char		status;			/* SCSI Status */
+	unsigned char		target;			/* Target ID */
+	unsigned char		lun;			/* Target LUN */
+	unsigned char		cmdlen;			/* command len */
+	unsigned long		datalen;		/* Total data length */
+	unsigned char	*	pdata;			/* pointer to data */
+	unsigned char		msgout[12];		/* Messge out buffer (NOT USED) */
+	unsigned char		msgin[12];		/* Message in buffer */
+	unsigned char		sensecmdlen;		/* Sense command len */
+	unsigned long		sensedatalen;		/* Sense data len */
+	unsigned char		sensecmd[6];		/* Sense command */
+	unsigned long		contr_stat;		/* Controller Status */
+	unsigned long		trans_bytes;		/* tranfered bytes */
+
+	unsigned int		priv;
+} ccb;
+
+/*-----------------------------------------------------------
+**
+**	SCSI  constants.
+**
+**-----------------------------------------------------------
+*/
+
+/*
+**	Messages
+*/
+
+#define	M_COMPLETE	(0x00)
+#define	M_EXTENDED	(0x01)
+#define	M_SAVE_DP	(0x02)
+#define	M_RESTORE_DP	(0x03)
+#define	M_DISCONNECT	(0x04)
+#define	M_ID_ERROR	(0x05)
+#define	M_ABORT		(0x06)
+#define	M_REJECT	(0x07)
+#define	M_NOOP		(0x08)
+#define	M_PARITY	(0x09)
+#define	M_LCOMPLETE	(0x0a)
+#define	M_FCOMPLETE	(0x0b)
+#define	M_RESET		(0x0c)
+#define	M_ABORT_TAG	(0x0d)
+#define	M_CLEAR_QUEUE	(0x0e)
+#define	M_INIT_REC	(0x0f)
+#define	M_REL_REC	(0x10)
+#define	M_TERMINATE	(0x11)
+#define	M_SIMPLE_TAG	(0x20)
+#define	M_HEAD_TAG	(0x21)
+#define	M_ORDERED_TAG	(0x22)
+#define	M_IGN_RESIDUE	(0x23)
+#define	M_IDENTIFY	(0x80)
+
+#define	M_X_MODIFY_DP	(0x00)
+#define	M_X_SYNC_REQ	(0x01)
+#define	M_X_WIDE_REQ	(0x03)
+#define	M_X_PPR_REQ	(0x04)
+
+
+/*
+**	Status
+*/
+
+#define	S_GOOD		(0x00)
+#define	S_CHECK_COND	(0x02)
+#define	S_COND_MET	(0x04)
+#define	S_BUSY		(0x08)
+#define	S_INT		(0x10)
+#define	S_INT_COND_MET	(0x14)
+#define	S_CONFLICT	(0x18)
+#define	S_TERMINATED	(0x20)
+#define	S_QUEUE_FULL	(0x28)
+#define	S_ILLEGAL	(0xff)
+#define	S_SENSE		(0x80)
+
+/*
+ * Sense_keys
+ */
+
+#define SENSE_NO_SENSE		0x0
+#define SENSE_RECOVERED_ERROR	0x1
+#define SENSE_NOT_READY		0x2
+#define SENSE_MEDIUM_ERROR	0x3
+#define SENSE_HARDWARE_ERROR	0x4
+#define SENSE_ILLEGAL_REQUEST	0x5
+#define SENSE_UNIT_ATTENTION	0x6
+#define SENSE_DATA_PROTECT	0x7
+#define SENSE_BLANK_CHECK	0x8
+#define SENSE_VENDOR_SPECIFIC	0x9
+#define SENSE_COPY_ABORTED	0xA
+#define SENSE_ABORTED_COMMAND	0xB
+#define SENSE_VOLUME_OVERFLOW	0xD
+#define SENSE_MISCOMPARE	0xE
+
+
+#define SCSI_CHANGE_DEF	0x40		/* Change Definition (Optional) */
+#define SCSI_COMPARE	0x39		/* Compare (O) */
+#define SCSI_COPY	0x18		/* Copy (O) */
+#define SCSI_COP_VERIFY	0x3A		/* Copy and Verify (O) */
+#define SCSI_INQUIRY	0x12		/* Inquiry (MANDATORY) */
+#define SCSI_LOG_SELECT	0x4C		/* Log Select (O) */
+#define SCSI_LOG_SENSE	0x4D		/* Log Sense (O) */
+#define SCSI_MODE_SEL6	0x15		/* Mode Select 6-byte (Device Specific) */
+#define SCSI_MODE_SEL10	0x55		/* Mode Select 10-byte (Device Specific) */
+#define SCSI_MODE_SEN6	0x1A		/* Mode Sense 6-byte (Device Specific) */
+#define SCSI_MODE_SEN10	0x5A		/* Mode Sense 10-byte (Device Specific) */
+#define SCSI_READ_BUFF	0x3C		/* Read Buffer (O) */
+#define SCSI_REQ_SENSE	0x03		/* Request Sense (MANDATORY) */
+#define SCSI_SEND_DIAG	0x1D		/* Send Diagnostic (O) */
+#define SCSI_TST_U_RDY	0x00		/* Test Unit Ready (MANDATORY) */
+#define SCSI_WRITE_BUFF	0x3B		/* Write Buffer (O) */
+/***************************************************************************
+ *			  %%% Commands Unique to Direct Access Devices %%%
+ ***************************************************************************/
+#define SCSI_COMPARE	0x39		/* Compare (O) */
+#define SCSI_FORMAT	0x04		/* Format Unit (MANDATORY) */
+#define SCSI_LCK_UN_CAC	0x36		/* Lock Unlock Cache (O) */
+#define SCSI_PREFETCH	0x34		/* Prefetch (O) */
+#define SCSI_MED_REMOVL	0x1E		/* Prevent/Allow medium Removal (O) */
+#define SCSI_READ6	0x08		/* Read 6-byte (MANDATORY) */
+#define SCSI_READ10	0x28		/* Read 10-byte (MANDATORY) */
+#define SCSI_RD_CAPAC	0x25		/* Read Capacity (MANDATORY) */
+#define SCSI_RD_DEFECT	0x37		/* Read Defect Data (O) */
+#define SCSI_READ_LONG	0x3E		/* Read Long (O) */
+#define SCSI_REASS_BLK	0x07		/* Reassign Blocks (O) */
+#define SCSI_RCV_DIAG	0x1C		/* Receive Diagnostic Results (O) */
+#define SCSI_RELEASE	0x17		/* Release Unit (MANDATORY) */
+#define SCSI_REZERO	0x01		/* Rezero Unit (O) */
+#define SCSI_SRCH_DAT_E	0x31		/* Search Data Equal (O) */
+#define SCSI_SRCH_DAT_H	0x30		/* Search Data High (O) */
+#define SCSI_SRCH_DAT_L	0x32		/* Search Data Low (O) */
+#define SCSI_SEEK6	0x0B		/* Seek 6-Byte (O) */
+#define SCSI_SEEK10	0x2B		/* Seek 10-Byte (O) */
+#define SCSI_SEND_DIAG	0x1D		/* Send Diagnostics (MANDATORY) */
+#define SCSI_SET_LIMIT	0x33		/* Set Limits (O) */
+#define SCSI_START_STP	0x1B		/* Start/Stop Unit (O) */
+#define SCSI_SYNC_CACHE	0x35		/* Synchronize Cache (O) */
+#define SCSI_VERIFY	0x2F		/* Verify (O) */
+#define SCSI_WRITE6	0x0A		/* Write 6-Byte (MANDATORY) */
+#define SCSI_WRITE10	0x2A		/* Write 10-Byte (MANDATORY) */
+#define SCSI_WRT_VERIFY	0x2E		/* Write and Verify (O) */
+#define SCSI_WRITE_LONG	0x3F		/* Write Long (O) */
+#define SCSI_WRITE_SAME	0x41		/* Write Same (O) */
+
+
+/****************************************************************************
+ * decleration of functions which have to reside in the LowLevel Part Driver
+ */
+
+void scsi_print_error(ccb *pccb);
+int scsi_exec(ccb *pccb);
+void scsi_bus_reset(void);
+void scsi_low_level_init(int busdevfunc);
+
+
+/***************************************************************************
+ * functions residing inside cmd_scsi.c
+ */
+void scsi_init(void);
+
+
+#define SCSI_IDENTIFY				0xC0  /* not used */
+
+/* Hardware errors  */
+#define SCSI_SEL_TIME_OUT		 0x00000101  /* Selection time out */
+#define SCSI_HNS_TIME_OUT		 0x00000102  /* Handshake */
+#define SCSI_MA_TIME_OUT		 0x00000103  /* Phase error */
+#define SCSI_UNEXP_DIS			 0x00000104  /* unexpected disconnect */
+
+#define SCSI_INT_STATE			 0x00010000  /* unknown Interrupt number is stored in 16 LSB */
+
+
+#ifndef TRUE
+#define TRUE 1
+#endif
+#ifndef FALSE
+#define FALSE 0
+#endif
+
+#endif /* _SCSI_H */
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

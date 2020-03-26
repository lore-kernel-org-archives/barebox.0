Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHXJn-0000zg-Qw
 for barebox@lists.infradead.org; Thu, 26 Mar 2020 18:33:29 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 786CC27E0DC5
 for <barebox@lists.infradead.org>; Thu, 26 Mar 2020 19:33:26 +0100 (CET)
From: Jules Maselbas <jmaselbas@kalray.eu>
Date: Thu, 26 Mar 2020 19:33:02 +0100
Message-Id: <20200326183304.16531-3-jmaselbas@kalray.eu>
In-Reply-To: <20200326183304.16531-1-jmaselbas@kalray.eu>
References: <20200326183304.16531-1-jmaselbas@kalray.eu>
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
Subject: [PATCH v2 2/4] usb: gadget: dfu: Add manifestation phase
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@kalray.eu>

When downloading a firmware into a big flash partition the erase
operation can take a long time to be complete from few seconds to
minutes in extreme cases. During the erase the DFU gadget does not
respond to any USB setup request, the host only see a stalled USB
endpoint and cannot get responses from DFU_GETSTATE nor DFU_GETSTATUS.

After 5 seconds without any updates the host will abort the DFU
transfer and return an error (when using dfu-util).

When using the safe flag on the partition the file is first downloaded
in memory. The partition is only erased when the last chunk is received
if the partition takes more than 5 seconds to be erased then the
transfer fails.

This patch fix this issue by using the manifestation phase for safe
partitions. It's used to inform the host that the transfer is complete
and that the device will now be doing the actual erasing and writing.
Not all devices will be able to respond to DFU_GETSTATUS when in the
dfuMANIFEST state (from DFU-1.1 specification page 22).

This is far from perfect as the utility dfu-util will exit before the
erase/writing is done, but it will not report an error status if a
timeout happen during this phase.

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 drivers/usb/gadget/dfu.c | 179 ++++++++++++++++++++++++++++-----------
 1 file changed, 128 insertions(+), 51 deletions(-)

diff --git a/drivers/usb/gadget/dfu.c b/drivers/usb/gadget/dfu.c
index 5bdcb68bf..3f457b69d 100644
--- a/drivers/usb/gadget/dfu.c
+++ b/drivers/usb/gadget/dfu.c
@@ -346,38 +346,14 @@ static int handle_dnload(struct usb_function *f, const struct usb_ctrlrequest *c
 	struct f_dfu		*dfu = func_to_dfu(f);
 	struct usb_composite_dev *cdev = f->config->cdev;
 	u16			w_length = le16_to_cpu(ctrl->wLength);
-	int ret;
 
 	if (w_length == 0) {
-		dfu->dfu_state = DFU_STATE_dfuIDLE;
 		if (dfu_file_entry->flags & FILE_LIST_FLAG_SAFE) {
-			int fd;
-			unsigned flags = O_WRONLY;
-
-			if (dfu_file_entry->flags & FILE_LIST_FLAG_CREATE)
-				flags |= O_CREAT | O_TRUNC;
-
-			fd = open(dfu_file_entry->filename, flags);
-			if (fd < 0) {
-				perror("open");
-				ret = -EINVAL;
-				goto err_out;
-			}
-			ret = erase(fd, ERASE_SIZE_ALL, 0);
-			close(fd);
-			if (ret && ret != -ENOSYS) {
-				perror("erase");
-				ret = -EINVAL;
-				goto err_out;
-			}
-			ret = copy_file(DFU_TEMPFILE, dfu_file_entry->filename, 0);
-			if (ret) {
-				printf("copy file failed\n");
-				ret = -EINVAL;
-				goto err_out;
-			}
+			dfu->dfu_state = DFU_STATE_dfuMANIFEST;
+		} else {
+			dfu->dfu_state = DFU_STATE_dfuIDLE;
+			dfu_cleanup(dfu);
 		}
-		dfu_cleanup(dfu);
 		return 0;
 	}
 
@@ -385,9 +361,52 @@ static int handle_dnload(struct usb_function *f, const struct usb_ctrlrequest *c
 	dfu->dnreq->context = dfu;
 	usb_ep_queue(cdev->gadget->ep0, dfu->dnreq);
 
+	return 0;
+}
+
+static int handle_manifest(struct usb_function *f, const struct usb_ctrlrequest *ctrl)
+{
+	struct f_dfu		*dfu = func_to_dfu(f);
+	int ret;
+
+	dfu->dfu_state = DFU_STATE_dfuIDLE;
+
+	if (dfu_file_entry->flags & FILE_LIST_FLAG_SAFE) {
+		int fd;
+		unsigned flags = O_WRONLY;
+
+		if (dfu_file_entry->flags & FILE_LIST_FLAG_CREATE)
+			flags |= O_CREAT | O_TRUNC;
+
+		fd = open(dfu_file_entry->filename, flags);
+		if (fd < 0) {
+			perror("open");
+			dfu->dfu_status = DFU_STATUS_errERASE;
+			ret = -EINVAL;
+			goto out;
+		}
+
+		ret = erase(fd, ERASE_SIZE_ALL, 0);
+		close(fd);
+		if (ret && ret != -ENOSYS) {
+			dfu->dfu_status = DFU_STATUS_errERASE;
+			perror("erase");
+			goto out;
+		}
+
+		ret = copy_file(DFU_TEMPFILE, dfu_file_entry->filename, 0);
+		if (ret) {
+			printf("copy file failed\n");
+			ret = -EINVAL;
+			goto out;
+		}
+	}
+
 	return 0;
 
-err_out:
+out:
+	dfu->dfu_status = DFU_STATUS_errWRITE;
+	dfu->dfu_state = DFU_STATE_dfuERROR;
 	dfu_cleanup(dfu);
 	return ret;
 }
@@ -442,23 +461,17 @@ static int dfu_setup(struct usb_function *f, const struct usb_ctrlrequest *ctrl)
 		goto out;
 	}
 
-	/* Allow GETSTATUS in every state */
-	if (ctrl->bRequest == USB_REQ_DFU_GETSTATUS) {
-		value = dfu_status(f, ctrl);
-		value = min(value, w_length);
-		goto out;
-	}
-
-	/* Allow GETSTATE in every state */
-	if (ctrl->bRequest == USB_REQ_DFU_GETSTATE) {
-		*(u8 *)req->buf = dfu->dfu_state;
-		value = sizeof(u8);
-		goto out;
-	}
-
 	switch (dfu->dfu_state) {
 	case DFU_STATE_dfuIDLE:
 		switch (ctrl->bRequest) {
+		case USB_REQ_DFU_GETSTATUS:
+			value = dfu_status(f, ctrl);
+			value = min(value, w_length);
+			break;
+		case USB_REQ_DFU_GETSTATE:
+			*(u8 *)req->buf = dfu->dfu_state;
+			value = sizeof(u8);
+			break;
 		case USB_REQ_DFU_DNLOAD:
 			if (w_length == 0) {
 				dfu->dfu_state = DFU_STATE_dfuERROR;
@@ -483,11 +496,13 @@ static int dfu_setup(struct usb_function *f, const struct usb_ctrlrequest *ctrl)
 				goto out;
 			}
 
-			ret = erase(dfufd, ERASE_SIZE_ALL, 0);
-			if (ret && ret != -ENOSYS) {
-				dfu->dfu_status = DFU_STATUS_errERASE;
-				perror("erase");
-				goto out;
+			if (!(dfu_file_entry->flags & FILE_LIST_FLAG_SAFE)) {
+				ret = erase(dfufd, ERASE_SIZE_ALL, 0);
+				if (ret && ret != -ENOSYS) {
+					dfu->dfu_status = DFU_STATUS_errERASE;
+					perror("erase");
+					goto out;
+				}
 			}
 
 			value = handle_dnload(f, ctrl);
@@ -524,9 +539,17 @@ static int dfu_setup(struct usb_function *f, const struct usb_ctrlrequest *ctrl)
 		break;
 	case DFU_STATE_dfuDNLOAD_IDLE:
 		switch (ctrl->bRequest) {
+		case USB_REQ_DFU_GETSTATUS:
+			value = dfu_status(f, ctrl);
+			value = min(value, w_length);
+			break;
+		case USB_REQ_DFU_GETSTATE:
+			*(u8 *)req->buf = dfu->dfu_state;
+			value = sizeof(u8);
+			break;
 		case USB_REQ_DFU_DNLOAD:
 			value = handle_dnload(f, ctrl);
-			if (dfu->dfu_state != DFU_STATE_dfuIDLE) {
+			if (dfu->dfu_state == DFU_STATE_dfuDNLOAD_IDLE) {
 				return 0;
 			}
 			break;
@@ -542,6 +565,14 @@ static int dfu_setup(struct usb_function *f, const struct usb_ctrlrequest *ctrl)
 		break;
 	case DFU_STATE_dfuUPLOAD_IDLE:
 		switch (ctrl->bRequest) {
+		case USB_REQ_DFU_GETSTATUS:
+			value = dfu_status(f, ctrl);
+			value = min(value, w_length);
+			break;
+		case USB_REQ_DFU_GETSTATE:
+			*(u8 *)req->buf = dfu->dfu_state;
+			value = sizeof(u8);
+			break;
 		case USB_REQ_DFU_UPLOAD:
 			handle_upload(f, ctrl);
 			return 0;
@@ -557,6 +588,14 @@ static int dfu_setup(struct usb_function *f, const struct usb_ctrlrequest *ctrl)
 		break;
 	case DFU_STATE_dfuERROR:
 		switch (ctrl->bRequest) {
+		case USB_REQ_DFU_GETSTATUS:
+			value = dfu_status(f, ctrl);
+			value = min(value, w_length);
+			break;
+		case USB_REQ_DFU_GETSTATE:
+			*(u8 *)req->buf = dfu->dfu_state;
+			value = sizeof(u8);
+			break;
 		case USB_REQ_DFU_CLRSTATUS:
 			dfu_abort(dfu);
 			/* no zlp? */
@@ -568,10 +607,48 @@ static int dfu_setup(struct usb_function *f, const struct usb_ctrlrequest *ctrl)
 			break;
 		}
 		break;
-	case DFU_STATE_dfuDNLOAD_SYNC:
-	case DFU_STATE_dfuDNBUSY:
 	case DFU_STATE_dfuMANIFEST_SYNC:
+		switch (ctrl->bRequest) {
+		case USB_REQ_DFU_GETSTATUS:
+			value = dfu_status(f, ctrl);
+			if (dfu_file_entry->flags & FILE_LIST_FLAG_SAFE)
+				dfu->dfu_state = DFU_STATE_dfuMANIFEST;
+			else
+				dfu->dfu_state = DFU_STATE_dfuIDLE;
+			value = min(value, w_length);
+			break;
+		case USB_REQ_DFU_GETSTATE:
+			*(u8 *)req->buf = dfu->dfu_state;
+			value = sizeof(u8);
+			break;
+		default:
+			dfu->dfu_state = DFU_STATE_dfuERROR;
+			value = -EINVAL;
+			break;
+		}
+		break;
 	case DFU_STATE_dfuMANIFEST:
+		value = handle_manifest(f, ctrl);
+		if (dfu->dfu_state != DFU_STATE_dfuIDLE) {
+			return 0;
+		}
+		switch (ctrl->bRequest) {
+		case USB_REQ_DFU_GETSTATUS:
+			value = dfu_status(f, ctrl);
+			value = min(value, w_length);
+			break;
+		case USB_REQ_DFU_GETSTATE:
+			*(u8 *)req->buf = dfu->dfu_state;
+			value = sizeof(u8);
+			break;
+		default:
+			dfu->dfu_state = DFU_STATE_dfuERROR;
+			value = -EINVAL;
+			break;
+		}
+		break;
+	case DFU_STATE_dfuDNLOAD_SYNC:
+	case DFU_STATE_dfuDNBUSY:
 		dfu->dfu_state = DFU_STATE_dfuERROR;
 		value = -EINVAL;
 		break;
-- 
2.21.0.196.g041f5ea


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

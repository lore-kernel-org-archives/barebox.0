Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mib.mailinblack.com ([137.74.84.110])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lBeiV-0004Nu-H5
 for barebox@lists.infradead.org; Mon, 15 Feb 2021 14:19:13 +0000
Received: from localhost (localhost [127.0.0.1])
 by mib.mailinblack.com (Postfix) with ESMTP id 747BC1A47A3
 for <barebox@lists.infradead.org>; Mon, 15 Feb 2021 14:19:09 +0000 (UTC)
From: Jules Maselbas <jmaselbas@kalray.eu>
Date: Mon, 15 Feb 2021 15:18:43 +0100
Message-Id: <20210215141843.27629-2-jmaselbas@kalray.eu>
In-Reply-To: <20210215141843.27629-1-jmaselbas@kalray.eu>
References: <20210208163458.29143-2-jmaselbas@kalray.eu>
 <20210215141843.27629-1-jmaselbas@kalray.eu>
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
Subject: [PATCH v2 2/2] usb: gadget: dfu: Wrap fs operation in workqueue
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@kalray.eu>, Ahmad Fatoum <a.fatoum@pengutronix.de>

File system operation shouldn't be executed in a poller. Use
a workqueue to delay filesystem operation to command context.

---
change RFC -> v1:
 - Rework manifestation phase, copy work is directly triggered
   when entering the manifestation state
 - Rework cleanup, it is now done when either exiting the ERROR
   state or when calling dfu_abort or dfu_disable.
 - Rework error handling when reading from file
change v1 -> v2:
 - use pr_debug instead of debug

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 drivers/usb/gadget/dfu.c | 375 +++++++++++++++++++++++++--------------
 1 file changed, 246 insertions(+), 129 deletions(-)

diff --git a/drivers/usb/gadget/dfu.c b/drivers/usb/gadget/dfu.c
index fba4ad782..82c9dc030 100644
--- a/drivers/usb/gadget/dfu.c
+++ b/drivers/usb/gadget/dfu.c
@@ -55,6 +55,7 @@
 #include <fs.h>
 #include <ioctl.h>
 #include <linux/mtd/mtd-abi.h>
+#include <work.h>
 
 #define USB_DT_DFU			0x21
 
@@ -154,6 +155,7 @@ struct f_dfu {
 	u8	dfu_state;
 	u8	dfu_status;
 	struct usb_request		*dnreq;
+	struct work_queue wq;
 };
 
 static inline struct f_dfu *func_to_dfu(struct usb_function *f)
@@ -174,6 +176,191 @@ static struct usb_gadget_strings *dfu_strings[] = {
 };
 
 static void dn_complete(struct usb_ep *ep, struct usb_request *req);
+static void up_complete(struct usb_ep *ep, struct usb_request *req);
+static void dfu_cleanup(struct f_dfu *dfu);
+
+struct dfu_work {
+	struct work_struct work;
+	struct f_dfu *dfu;
+	void (*task)(struct dfu_work *dw);
+	size_t len;
+	uint8_t *rbuf;
+	uint8_t wbuf[CONFIG_USBD_DFU_XFER_SIZE];
+};
+
+static void dfu_do_work(struct work_struct *w)
+{
+	struct dfu_work *dw = container_of(w, struct dfu_work, work);
+	struct f_dfu *dfu = dw->dfu;
+
+	if (dfu->dfu_state != DFU_STATE_dfuERROR && dfu->dfu_status == DFU_STATUS_OK)
+		dw->task(dw);
+	else
+		pr_debug("skip work\n");
+
+	free(dw);
+}
+
+static void dfu_work_cancel(struct work_struct *w)
+{
+	struct dfu_work *dw = container_of(w, struct dfu_work, work);
+
+	free(dw);
+}
+
+static void dfu_do_write(struct dfu_work *dw)
+{
+	struct f_dfu *dfu = dw->dfu;
+	ssize_t size, wlen = dw->len;
+	ssize_t ret;
+
+	pr_debug("do write\n");
+
+	if (prog_erase && (dfu_written + wlen) > dfu_erased) {
+		size = roundup(wlen, dfu_mtdinfo.erasesize);
+		ret = erase(dfufd, size, dfu_erased);
+		dfu_erased += size;
+		if (ret && ret != -ENOSYS) {
+			perror("erase");
+			dfu->dfu_state = DFU_STATE_dfuERROR;
+			dfu->dfu_status = DFU_STATUS_errERASE;
+			return;
+		}
+	}
+
+	dfu_written += wlen;
+	ret = write(dfufd, dw->wbuf, wlen);
+	if (ret < wlen) {
+		perror("write");
+		dfu->dfu_state = DFU_STATE_dfuERROR;
+		dfu->dfu_status = DFU_STATUS_errWRITE;
+	}
+}
+
+static void dfu_do_read(struct dfu_work *dw)
+{
+	struct f_dfu *dfu = dw->dfu;
+	struct usb_composite_dev *cdev = dfu->func.config->cdev;
+	ssize_t size, rlen = dw->len;
+
+	pr_debug("do read\n");
+
+	size = read(dfufd, dfu->dnreq->buf, rlen);
+	dfu->dnreq->length = size;
+	if (size < 0) {
+		perror("read");
+		dfu->dnreq->length = 0;
+		dfu->dfu_state = DFU_STATE_dfuERROR;
+		dfu->dfu_status = DFU_STATUS_errFILE;
+	} else if (size < rlen) {
+		/* this is the last chunk, go to IDLE and close file */
+		dfu_cleanup(dfu);
+	}
+
+	dfu->dnreq->complete = up_complete;
+	usb_ep_queue(cdev->gadget->ep0, dfu->dnreq);
+}
+
+static void dfu_do_open_dnload(struct dfu_work *dw)
+{
+	struct f_dfu *dfu = dw->dfu;
+	int ret;
+
+	pr_debug("do open dnload\n");
+
+	if (dfu_file_entry->flags & FILE_LIST_FLAG_SAFE) {
+		dfufd = open(DFU_TEMPFILE, O_WRONLY | O_CREAT);
+	} else {
+		unsigned flags = O_WRONLY;
+
+		if (dfu_file_entry->flags & FILE_LIST_FLAG_CREATE)
+			flags |= O_CREAT | O_TRUNC;
+
+		dfufd = open(dfu_file_entry->filename, flags);
+	}
+
+	if (dfufd < 0) {
+		perror("open");
+		dfu->dfu_state = DFU_STATE_dfuERROR;
+		dfu->dfu_status = DFU_STATUS_errFILE;
+		return;
+	}
+
+	if (!(dfu_file_entry->flags & FILE_LIST_FLAG_SAFE)) {
+		ret = ioctl(dfufd, MEMGETINFO, &dfu_mtdinfo);
+		if (!ret) /* file is on a mtd device */
+			prog_erase = 1;
+	}
+}
+
+static void dfu_do_open_upload(struct dfu_work *dw)
+{
+	struct f_dfu *dfu = dw->dfu;
+
+	pr_debug("do open upload\n");
+
+	dfufd = open(dfu_file_entry->filename, O_RDONLY);
+	if (dfufd < 0) {
+		perror("open");
+		dfu->dfu_state = DFU_STATE_dfuERROR;
+		dfu->dfu_status = DFU_STATUS_errFILE;
+	}
+}
+
+static void dfu_do_close(struct dfu_work *dw)
+{
+	struct stat s;
+
+	pr_debug("do close\n");
+
+	if (dfufd > 0) {
+		close(dfufd);
+		dfufd = -EINVAL;
+	}
+
+	if (!stat(DFU_TEMPFILE, &s))
+		unlink(DFU_TEMPFILE);
+}
+
+static void dfu_do_copy(struct dfu_work *dw)
+{
+	struct f_dfu *dfu = dw->dfu;
+	unsigned flags = O_WRONLY;
+	int ret, fd;
+
+	pr_debug("do copy\n");
+
+	if (dfu_file_entry->flags & FILE_LIST_FLAG_CREATE)
+		flags |= O_CREAT | O_TRUNC;
+
+	fd = open(dfu_file_entry->filename, flags);
+	if (fd < 0) {
+		perror("open");
+		dfu->dfu_state = DFU_STATE_dfuERROR;
+		dfu->dfu_status = DFU_STATUS_errERASE;
+		return;
+	}
+
+	ret = erase(fd, ERASE_SIZE_ALL, 0);
+	close(fd);
+	if (ret && ret != -ENOSYS) {
+		perror("erase");
+		dfu->dfu_state = DFU_STATE_dfuERROR;
+		dfu->dfu_status = DFU_STATUS_errERASE;
+		return;
+	}
+
+	ret = copy_file(DFU_TEMPFILE, dfu_file_entry->filename, 0);
+	if (ret) {
+		pr_err("copy file failed\n");
+		dfu->dfu_state = DFU_STATE_dfuERROR;
+		dfu->dfu_status = DFU_STATUS_errWRITE;
+		return;
+	}
+
+	dfu->dfu_state = DFU_STATE_dfuIDLE;
+	dfu_do_close(dw);
+}
 
 static int
 dfu_bind(struct usb_configuration *c, struct usb_function *f)
@@ -224,6 +411,10 @@ dfu_bind(struct usb_configuration *c, struct usb_function *f)
 		goto out;
 	}
 
+	dfu->wq.fn = dfu_do_work;
+	dfu->wq.cancel = dfu_work_cancel;
+	wq_register(&dfu->wq);
+
 	/* allocate instance-specific interface IDs, and patch descriptors */
 	status = usb_interface_id(c, f);
 	if (status < 0)
@@ -279,6 +470,8 @@ dfu_unbind(struct usb_configuration *c, struct usb_function *f)
 	dfu_file_entry = NULL;
 	dfudetach = 0;
 
+	wq_unregister(&dfu->wq);
+
 	usb_free_all_descriptors(f);
 
 	dma_free(dfu->dnreq->buf);
@@ -321,47 +514,50 @@ static int dfu_status(struct usb_function *f, const struct usb_ctrlrequest *ctrl
 
 static void dfu_cleanup(struct f_dfu *dfu)
 {
-	struct stat s;
+	struct dfu_work *dw;
+
+	pr_debug("dfu cleanup\n");
 
 	memset(&dfu_mtdinfo, 0, sizeof(dfu_mtdinfo));
 	dfu_written = 0;
 	dfu_erased = 0;
 	prog_erase = 0;
 
-	if (dfufd > 0) {
-		close(dfufd);
-		dfufd = -EINVAL;
-	}
+	dfu->dfu_state = DFU_STATE_dfuIDLE;
+	dfu->dfu_status = DFU_STATUS_OK;
 
-	if (!stat(DFU_TEMPFILE, &s))
-		unlink(DFU_TEMPFILE);
+	dw = xzalloc(sizeof(*dw));
+	dw->dfu = dfu;
+	dw->task = dfu_do_close;
+	wq_queue_work(&dfu->wq, &dw->work);
 }
 
 static void dn_complete(struct usb_ep *ep, struct usb_request *req)
 {
 	struct f_dfu		*dfu = req->context;
-	loff_t size;
-	int ret;
+	struct dfu_work *dw;
+
+	dw = xzalloc(sizeof(*dw));
+	dw->dfu = dfu;
+	dw->task = dfu_do_write;
+	dw->len = min_t(unsigned int, req->length, CONFIG_USBD_DFU_XFER_SIZE);
+	memcpy(dw->wbuf, req->buf, dw->len);
+	wq_queue_work(&dfu->wq, &dw->work);
+}
 
-	if (prog_erase && (dfu_written + req->length) > dfu_erased) {
-		size = roundup(req->length, dfu_mtdinfo.erasesize);
-		ret = erase(dfufd, size, dfu_erased);
-		dfu_erased += size;
-		if (ret && ret != -ENOSYS) {
-			perror("erase");
-			dfu->dfu_status = DFU_STATUS_errERASE;
-			dfu_cleanup(dfu);
-			return;
-		}
-	}
+static int handle_manifest(struct usb_function *f, const struct usb_ctrlrequest *ctrl)
+{
+	struct f_dfu		*dfu = func_to_dfu(f);
+	struct dfu_work *dw;
 
-	dfu_written += req->length;
-	ret = write(dfufd, req->buf, req->length);
-	if (ret < (int)req->length) {
-		perror("write");
-		dfu->dfu_status = DFU_STATUS_errWRITE;
-		dfu_cleanup(dfu);
+	if (dfu_file_entry->flags & FILE_LIST_FLAG_SAFE) {
+		dw = xzalloc(sizeof(*dw));
+		dw->dfu = dfu;
+		dw->task = dfu_do_copy;
+		wq_queue_work(&dfu->wq, &dw->work);
 	}
+
+	return 0;
 }
 
 static int handle_dnload(struct usb_function *f, const struct usb_ctrlrequest *ctrl)
@@ -371,12 +567,8 @@ static int handle_dnload(struct usb_function *f, const struct usb_ctrlrequest *c
 	u16			w_length = le16_to_cpu(ctrl->wLength);
 
 	if (w_length == 0) {
-		if (dfu_file_entry->flags & FILE_LIST_FLAG_SAFE) {
-			dfu->dfu_state = DFU_STATE_dfuMANIFEST;
-		} else {
-			dfu->dfu_state = DFU_STATE_dfuIDLE;
-			dfu_cleanup(dfu);
-		}
+		handle_manifest(f, ctrl);
+		dfu->dfu_state = DFU_STATE_dfuMANIFEST;
 		return 0;
 	}
 
@@ -387,53 +579,6 @@ static int handle_dnload(struct usb_function *f, const struct usb_ctrlrequest *c
 	return 0;
 }
 
-static int handle_manifest(struct usb_function *f, const struct usb_ctrlrequest *ctrl)
-{
-	struct f_dfu		*dfu = func_to_dfu(f);
-	int ret;
-
-	dfu->dfu_state = DFU_STATE_dfuIDLE;
-
-	if (dfu_file_entry->flags & FILE_LIST_FLAG_SAFE) {
-		int fd;
-		unsigned flags = O_WRONLY;
-
-		if (dfu_file_entry->flags & FILE_LIST_FLAG_CREATE)
-			flags |= O_CREAT | O_TRUNC;
-
-		fd = open(dfu_file_entry->filename, flags);
-		if (fd < 0) {
-			perror("open");
-			dfu->dfu_status = DFU_STATUS_errERASE;
-			ret = -EINVAL;
-			goto out;
-		}
-
-		ret = erase(fd, ERASE_SIZE_ALL, 0);
-		close(fd);
-		if (ret && ret != -ENOSYS) {
-			dfu->dfu_status = DFU_STATUS_errERASE;
-			perror("erase");
-			goto out;
-		}
-
-		ret = copy_file(DFU_TEMPFILE, dfu_file_entry->filename, 0);
-		if (ret) {
-			pr_err("copy file failed\n");
-			ret = -EINVAL;
-			goto out;
-		}
-	}
-
-	return 0;
-
-out:
-	dfu->dfu_status = DFU_STATUS_errWRITE;
-	dfu->dfu_state = DFU_STATE_dfuERROR;
-	dfu_cleanup(dfu);
-	return ret;
-}
-
 static void up_complete(struct usb_ep *ep, struct usb_request *req)
 {
 }
@@ -441,28 +586,22 @@ static void up_complete(struct usb_ep *ep, struct usb_request *req)
 static int handle_upload(struct usb_function *f, const struct usb_ctrlrequest *ctrl)
 {
 	struct f_dfu		*dfu = func_to_dfu(f);
-	struct usb_composite_dev *cdev = f->config->cdev;
+	struct dfu_work *dw;
 	u16			w_length = le16_to_cpu(ctrl->wLength);
-	int len;
-
-	len = read(dfufd, dfu->dnreq->buf, w_length);
 
-	dfu->dnreq->length = len;
-	if (len < w_length) {
-		dfu_cleanup(dfu);
-		dfu->dfu_state = DFU_STATE_dfuIDLE;
-	}
-
-	dfu->dnreq->complete = up_complete;
-	usb_ep_queue(cdev->gadget->ep0, dfu->dnreq);
+	dw = xzalloc(sizeof(*dw));
+	dw->dfu = dfu;
+	dw->task = dfu_do_read;
+	dw->len = w_length;
+	dw->rbuf = dfu->dnreq->buf;
+	wq_queue_work(&dfu->wq, &dw->work);
 
 	return 0;
 }
 
 static void dfu_abort(struct f_dfu *dfu)
 {
-	dfu->dfu_state = DFU_STATE_dfuIDLE;
-	dfu->dfu_status = DFU_STATUS_OK;
+	wq_cancel_work(&dfu->wq);
 
 	dfu_cleanup(dfu);
 }
@@ -475,7 +614,7 @@ static int dfu_setup(struct usb_function *f, const struct usb_ctrlrequest *ctrl)
 	int			value = -EOPNOTSUPP;
 	int			w_length = le16_to_cpu(ctrl->wLength);
 	int			w_value = le16_to_cpu(ctrl->wValue);
-	int ret;
+	struct dfu_work *dw;
 
 	if (ctrl->bRequestType == USB_DIR_IN && ctrl->bRequest == USB_REQ_GET_DESCRIPTOR
 			&& (w_value >> 8) == 0x21) {
@@ -502,28 +641,10 @@ static int dfu_setup(struct usb_function *f, const struct usb_ctrlrequest *ctrl)
 				goto out;
 			}
 			pr_debug("starting download to %s\n", dfu_file_entry->filename);
-			if (dfu_file_entry->flags & FILE_LIST_FLAG_SAFE) {
-				dfufd = open(DFU_TEMPFILE, O_WRONLY | O_CREAT);
-			} else {
-				unsigned flags = O_WRONLY;
-
-				if (dfu_file_entry->flags & FILE_LIST_FLAG_CREATE)
-					flags |= O_CREAT | O_TRUNC;
-
-				dfufd = open(dfu_file_entry->filename, flags);
-			}
-
-			if (dfufd < 0) {
-				dfu->dfu_state = DFU_STATE_dfuERROR;
-				perror("open");
-				goto out;
-			}
-
-			if (!(dfu_file_entry->flags & FILE_LIST_FLAG_SAFE)) {
-				ret = ioctl(dfufd, MEMGETINFO, &dfu_mtdinfo);
-				if (!ret) /* file is on a mtd device */
-					prog_erase = 1;
-			}
+			dw = xzalloc(sizeof(*dw));
+			dw->dfu = dfu;
+			dw->task = dfu_do_open_dnload;
+			wq_queue_work(&dfu->wq, &dw->work);
 
 			value = handle_dnload(f, ctrl);
 			dfu->dfu_state = DFU_STATE_dfuDNLOAD_IDLE;
@@ -535,12 +656,12 @@ static int dfu_setup(struct usb_function *f, const struct usb_ctrlrequest *ctrl)
 				dfu->dfu_state = DFU_STATE_dfuERROR;
 				goto out;
 			}
-			dfufd = open(dfu_file_entry->filename, O_RDONLY);
-			if (dfufd < 0) {
-				dfu->dfu_state = DFU_STATE_dfuERROR;
-				perror("open");
-				goto out;
-			}
+
+			dw = xzalloc(sizeof(*dw));
+			dw->dfu = dfu;
+			dw->task = dfu_do_open_upload;
+			wq_queue_work(&dfu->wq, &dw->work);
+
 			handle_upload(f, ctrl);
 			return 0;
 		case USB_REQ_DFU_ABORT:
@@ -607,6 +728,7 @@ static int dfu_setup(struct usb_function *f, const struct usb_ctrlrequest *ctrl)
 		}
 		break;
 	case DFU_STATE_dfuERROR:
+		wq_cancel_work(&dfu->wq);
 		switch (ctrl->bRequest) {
 		case USB_REQ_DFU_GETSTATUS:
 			value = dfu_status(f, ctrl);
@@ -648,10 +770,7 @@ static int dfu_setup(struct usb_function *f, const struct usb_ctrlrequest *ctrl)
 		}
 		break;
 	case DFU_STATE_dfuMANIFEST:
-		value = handle_manifest(f, ctrl);
-		if (dfu->dfu_state != DFU_STATE_dfuIDLE) {
-			return 0;
-		}
+		dfu->dfu_state = DFU_STATE_dfuMANIFEST_SYNC;
 		switch (ctrl->bRequest) {
 		case USB_REQ_DFU_GETSTATUS:
 			value = dfu_status(f, ctrl);
@@ -693,9 +812,7 @@ static void dfu_disable(struct usb_function *f)
 {
 	struct f_dfu		*dfu = func_to_dfu(f);
 
-	dfu->dfu_state = DFU_STATE_dfuIDLE;
-
-	dfu_cleanup(dfu);
+	dfu_abort(dfu);
 }
 
 #define STRING_MANUFACTURER_IDX		0
-- 
2.17.1



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l5QR0-0003XP-Qs
 for barebox@lists.infradead.org; Fri, 29 Jan 2021 09:51:24 +0000
References: <20210127164937.20328-1-jmaselbas@kalray.eu>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <91ec3053-201d-ff02-0f78-6d86a6b8a0f0@pengutronix.de>
Date: Fri, 29 Jan 2021 10:51:18 +0100
MIME-Version: 1.0
In-Reply-To: <20210127164937.20328-1-jmaselbas@kalray.eu>
Content-Language: en-US
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
Subject: Re: [RFC PATCH] usb: gadget: dfu: Wrap fs operation in workqueue
To: Jules Maselbas <jmaselbas@kalray.eu>, barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>

Hello Jules,

On 27.01.21 17:49, Jules Maselbas wrote:
> File system operation shouldn't be executed in a poller. Use
> a workqueue to delay filesystem operation to command context.
> 
> This is an RFC, extra work must be done to properly handle error
> cases and dfu cleanup.

I erroneously thought the poller is within the DFU bits. I wonder what
side-effect moving the whole USB gadget polling into a workqueue would
have. In that case, we wouldn't need to any changes for DFU itself.

Jules, Sascha, thoughts?

Cheers,
Ahmad

> 
> Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
> ---
>  drivers/usb/gadget/dfu.c | 321 ++++++++++++++++++++++++++-------------
>  1 file changed, 216 insertions(+), 105 deletions(-)
> 
> diff --git a/drivers/usb/gadget/dfu.c b/drivers/usb/gadget/dfu.c
> index 9d6a9d252..75abd1576 100644
> --- a/drivers/usb/gadget/dfu.c
> +++ b/drivers/usb/gadget/dfu.c
> @@ -54,6 +54,7 @@
>  #include <fs.h>
>  #include <ioctl.h>
>  #include <linux/mtd/mtd-abi.h>
> +#include <work.h>
>  
>  #define USB_DT_DFU			0x21
>  
> @@ -153,6 +154,7 @@ struct f_dfu {
>  	u8	dfu_state;
>  	u8	dfu_status;
>  	struct usb_request		*dnreq;
> +	struct work_queue wq;
>  };
>  
>  static inline struct f_dfu *func_to_dfu(struct usb_function *f)
> @@ -173,6 +175,178 @@ static struct usb_gadget_strings *dfu_strings[] = {
>  };
>  
>  static void dn_complete(struct usb_ep *ep, struct usb_request *req);
> +static void up_complete(struct usb_ep *ep, struct usb_request *req);
> +static void dfu_cleanup(struct f_dfu *dfu);
> +
> +struct dfu_work {
> +	struct work_struct work;
> +	struct f_dfu *dfu;
> +	void (*task)(struct dfu_work *dw);
> +	size_t len;
> +	uint8_t *rbuf;
> +	uint8_t wbuf[CONFIG_USBD_DFU_XFER_SIZE];
> +};
> +
> +static void dfu_do_work(struct work_struct *w)
> +{
> +	struct dfu_work *dw = container_of(w, struct dfu_work, work);
> +
> +	/* TODO: find a better way to skip tasks when the dfu gadget
> +	 * has encounter an error and dfu_cleanup has been called */
> +	if (dw->task && dw->dfu->dfu_status == DFU_STATUS_OK)
> +		dw->task(dw);
> +
> +	free(dw);
> +}
> +
> +static void dfu_work_cancel(struct work_struct *w)
> +{
> +	struct dfu_work *dw = container_of(w, struct dfu_work, work);
> +
> +	free(dw);
> +}
> +
> +static void dfu_do_write(struct dfu_work *dw)
> +{
> +	struct f_dfu *dfu = dw->dfu;
> +	size_t size, wlen = dw->len;
> +	int ret;
> +
> +	debug("do write\n");
> +
> +	if (prog_erase && (dfu_written + wlen) > dfu_erased) {
> +		size = roundup(wlen, dfu_mtdinfo.erasesize);
> +		ret = erase(dfufd, size, dfu_erased);
> +		dfu_erased += size;
> +		if (ret && ret != -ENOSYS) {
> +			perror("erase");
> +			dfu->dfu_status = DFU_STATUS_errERASE;
> +			dfu_cleanup(dfu);
> +			return;
> +		}
> +	}
> +
> +	dfu_written += wlen;
> +	ret = write(dfufd, dw->wbuf, wlen);
> +	if (ret < (int)wlen) {
> +		perror("write");
> +		dfu->dfu_status = DFU_STATUS_errWRITE;
> +		dfu_cleanup(dfu);
> +	}
> +}
> +
> +static void dfu_do_read(struct dfu_work *dw)
> +{
> +	struct f_dfu *dfu = dw->dfu;
> +	struct usb_composite_dev *cdev = dfu->func.config->cdev;
> +	size_t size, rlen = dw->len;
> +
> +	debug("do read\n");
> +
> +	size = read(dfufd, dfu->dnreq->buf, rlen);
> +	dfu->dnreq->length = size;
> +	if (size < (int)rlen) {
> +		perror("read");
> +		dfu_cleanup(dfu);
> +		dfu->dfu_state = DFU_STATE_dfuIDLE;
> +	}
> +
> +	dfu->dnreq->complete = up_complete;
> +	usb_ep_queue(cdev->gadget->ep0, dfu->dnreq);
> +}
> +
> +static void dfu_do_open_dnload(struct dfu_work *dw)
> +{
> +	struct f_dfu *dfu = dw->dfu;
> +	int ret;
> +
> +	debug("do open dnload\n");
> +
> +	if (dfu_file_entry->flags & FILE_LIST_FLAG_SAFE) {
> +		dfufd = open(DFU_TEMPFILE, O_WRONLY | O_CREAT);
> +	} else {
> +		unsigned flags = O_WRONLY;
> +
> +		if (dfu_file_entry->flags & FILE_LIST_FLAG_CREATE)
> +			flags |= O_CREAT | O_TRUNC;
> +
> +		dfufd = open(dfu_file_entry->filename, flags);
> +	}
> +
> +	if (dfufd < 0) {
> +		perror("open");
> +		dfu->dfu_status = DFU_STATUS_errFILE;
> +		goto out;
> +	}
> +
> +	if (!(dfu_file_entry->flags & FILE_LIST_FLAG_SAFE)) {
> +		ret = ioctl(dfufd, MEMGETINFO, &dfu_mtdinfo);
> +		if (!ret) /* file is on a mtd device */
> +			prog_erase = 1;
> +	}
> +
> +	return;
> +out:
> +	dfu->dfu_state = DFU_STATE_dfuERROR;
> +	dfu_cleanup(dfu);
> +}
> +
> +static void dfu_do_open_upload(struct dfu_work *dw)
> +{
> +	struct f_dfu *dfu = dw->dfu;
> +
> +	debug("do open upload\n");
> +
> +	dfufd = open(dfu_file_entry->filename, O_RDONLY);
> +	if (dfufd < 0) {
> +		perror("open");
> +		dfu->dfu_status = DFU_STATUS_errFILE;
> +		dfu->dfu_state = DFU_STATE_dfuERROR;
> +		dfu_cleanup(dfu);
> +	}
> +}
> +
> +static void dfu_do_copy(struct dfu_work *dw)
> +{
> +	struct f_dfu *dfu = dw->dfu;
> +	unsigned flags = O_WRONLY;
> +	int ret, fd;
> +
> +	debug("do copy\n");
> +
> +	if (dfu_file_entry->flags & FILE_LIST_FLAG_CREATE)
> +		flags |= O_CREAT | O_TRUNC;
> +
> +	fd = open(dfu_file_entry->filename, flags);
> +	if (fd < 0) {
> +		perror("open");
> +		dfu->dfu_status = DFU_STATUS_errERASE;
> +		goto out;
> +	}
> +
> +	ret = erase(fd, ERASE_SIZE_ALL, 0);
> +	close(fd);
> +	if (ret && ret != -ENOSYS) {
> +		perror("erase");
> +		dfu->dfu_status = DFU_STATUS_errERASE;
> +		goto out;
> +	}
> +
> +	ret = copy_file(DFU_TEMPFILE, dfu_file_entry->filename, 0);
> +	if (ret) {
> +		dfu->dfu_status = DFU_STATUS_errWRITE;
> +		printf("copy file failed\n");
> +		goto out;
> +	}
> +
> +	dfu->dfu_state = DFU_STATE_dfuIDLE;
> +	dfu_cleanup(dfu);
> +
> +	return;
> +out:
> +	dfu->dfu_state = DFU_STATE_dfuERROR;
> +	dfu_cleanup(dfu);
> +}
>  
>  static int
>  dfu_bind(struct usb_configuration *c, struct usb_function *f)
> @@ -223,6 +397,10 @@ dfu_bind(struct usb_configuration *c, struct usb_function *f)
>  		goto out;
>  	}
>  
> +	dfu->wq.fn = dfu_do_work;
> +	dfu->wq.cancel = dfu_work_cancel;
> +	wq_register(&dfu->wq);
> +
>  	/* allocate instance-specific interface IDs, and patch descriptors */
>  	status = usb_interface_id(c, f);
>  	if (status < 0)
> @@ -278,6 +456,8 @@ dfu_unbind(struct usb_configuration *c, struct usb_function *f)
>  	dfu_file_entry = NULL;
>  	dfudetach = 0;
>  
> +	wq_unregister(&dfu->wq);
> +
>  	usb_free_all_descriptors(f);
>  
>  	dma_free(dfu->dnreq->buf);
> @@ -327,6 +507,9 @@ static void dfu_cleanup(struct f_dfu *dfu)
>  	dfu_erased = 0;
>  	prog_erase = 0;
>  
> +	/* TODO: Right now, close and stat operation can be called
> +	 * in a poller, in dfu_abort and dfu_disable. */
> +
>  	if (dfufd > 0) {
>  		close(dfufd);
>  		dfufd = -EINVAL;
> @@ -339,28 +522,15 @@ static void dfu_cleanup(struct f_dfu *dfu)
>  static void dn_complete(struct usb_ep *ep, struct usb_request *req)
>  {
>  	struct f_dfu		*dfu = req->context;
> -	loff_t size;
> -	int ret;
> +	struct dfu_work *dw;
>  
> -	if (prog_erase && (dfu_written + req->length) > dfu_erased) {
> -		size = roundup(req->length, dfu_mtdinfo.erasesize);
> -		ret = erase(dfufd, size, dfu_erased);
> -		dfu_erased += size;
> -		if (ret && ret != -ENOSYS) {
> -			perror("erase");
> -			dfu->dfu_status = DFU_STATUS_errERASE;
> -			dfu_cleanup(dfu);
> -			return;
> -		}
> -	}
> +	dw = xzalloc(sizeof(*dw));
> +	dw->dfu = dfu;
> +	dw->task = dfu_do_write;
> +	dw->len = min_t(unsigned int, req->length, CONFIG_USBD_DFU_XFER_SIZE);
> +	memcpy(dw->wbuf, req->buf, dw->len);
>  
> -	dfu_written += req->length;
> -	ret = write(dfufd, req->buf, req->length);
> -	if (ret < (int)req->length) {
> -		perror("write");
> -		dfu->dfu_status = DFU_STATUS_errWRITE;
> -		dfu_cleanup(dfu);
> -	}
> +	wq_queue_work(&dfu->wq, &dw->work);
>  }
>  
>  static int handle_dnload(struct usb_function *f, const struct usb_ctrlrequest *ctrl)
> @@ -370,12 +540,7 @@ static int handle_dnload(struct usb_function *f, const struct usb_ctrlrequest *c
>  	u16			w_length = le16_to_cpu(ctrl->wLength);
>  
>  	if (w_length == 0) {
> -		if (dfu_file_entry->flags & FILE_LIST_FLAG_SAFE) {
> -			dfu->dfu_state = DFU_STATE_dfuMANIFEST;
> -		} else {
> -			dfu->dfu_state = DFU_STATE_dfuIDLE;
> -			dfu_cleanup(dfu);
> -		}
> +		dfu->dfu_state = DFU_STATE_dfuMANIFEST_SYNC;
>  		return 0;
>  	}
>  
> @@ -389,48 +554,18 @@ static int handle_dnload(struct usb_function *f, const struct usb_ctrlrequest *c
>  static int handle_manifest(struct usb_function *f, const struct usb_ctrlrequest *ctrl)
>  {
>  	struct f_dfu		*dfu = func_to_dfu(f);
> -	int ret;
> +	struct dfu_work *dw;
>  
>  	dfu->dfu_state = DFU_STATE_dfuIDLE;
>  
>  	if (dfu_file_entry->flags & FILE_LIST_FLAG_SAFE) {
> -		int fd;
> -		unsigned flags = O_WRONLY;
> -
> -		if (dfu_file_entry->flags & FILE_LIST_FLAG_CREATE)
> -			flags |= O_CREAT | O_TRUNC;
> -
> -		fd = open(dfu_file_entry->filename, flags);
> -		if (fd < 0) {
> -			perror("open");
> -			dfu->dfu_status = DFU_STATUS_errERASE;
> -			ret = -EINVAL;
> -			goto out;
> -		}
> -
> -		ret = erase(fd, ERASE_SIZE_ALL, 0);
> -		close(fd);
> -		if (ret && ret != -ENOSYS) {
> -			dfu->dfu_status = DFU_STATUS_errERASE;
> -			perror("erase");
> -			goto out;
> -		}
> -
> -		ret = copy_file(DFU_TEMPFILE, dfu_file_entry->filename, 0);
> -		if (ret) {
> -			printf("copy file failed\n");
> -			ret = -EINVAL;
> -			goto out;
> -		}
> +		dw = xzalloc(sizeof(*dw));
> +		dw->dfu = dfu;
> +		dw->task = dfu_do_copy;
> +		wq_queue_work(&dfu->wq, &dw->work);
>  	}
>  
>  	return 0;
> -
> -out:
> -	dfu->dfu_status = DFU_STATUS_errWRITE;
> -	dfu->dfu_state = DFU_STATE_dfuERROR;
> -	dfu_cleanup(dfu);
> -	return ret;
>  }
>  
>  static void up_complete(struct usb_ep *ep, struct usb_request *req)
> @@ -440,20 +575,17 @@ static void up_complete(struct usb_ep *ep, struct usb_request *req)
>  static int handle_upload(struct usb_function *f, const struct usb_ctrlrequest *ctrl)
>  {
>  	struct f_dfu		*dfu = func_to_dfu(f);
> -	struct usb_composite_dev *cdev = f->config->cdev;
> +	struct dfu_work *dw;
>  	u16			w_length = le16_to_cpu(ctrl->wLength);
> -	int len;
> -
> -	len = read(dfufd, dfu->dnreq->buf, w_length);
> -
> -	dfu->dnreq->length = len;
> -	if (len < w_length) {
> -		dfu_cleanup(dfu);
> -		dfu->dfu_state = DFU_STATE_dfuIDLE;
> -	}
>  
> -	dfu->dnreq->complete = up_complete;
> -	usb_ep_queue(cdev->gadget->ep0, dfu->dnreq);
> +	/* RFC: I didn't found a better way to queue the usb response other
> +	 * than making dfu_do_read call usb_ep_queue after reading from file */
> +	dw = xzalloc(sizeof(*dw));
> +	dw->dfu = dfu;
> +	dw->task = dfu_do_read;
> +	dw->len = w_length;
> +	dw->rbuf = dfu->dnreq->buf;
> +	wq_queue_work(&dfu->wq, &dw->work);
>  
>  	return 0;
>  }
> @@ -474,7 +606,7 @@ static int dfu_setup(struct usb_function *f, const struct usb_ctrlrequest *ctrl)
>  	int			value = -EOPNOTSUPP;
>  	int			w_length = le16_to_cpu(ctrl->wLength);
>  	int			w_value = le16_to_cpu(ctrl->wValue);
> -	int ret;
> +	struct dfu_work *dw;
>  
>  	if (ctrl->bRequestType == USB_DIR_IN && ctrl->bRequest == USB_REQ_GET_DESCRIPTOR
>  			&& (w_value >> 8) == 0x21) {
> @@ -501,28 +633,10 @@ static int dfu_setup(struct usb_function *f, const struct usb_ctrlrequest *ctrl)
>  				goto out;
>  			}
>  			debug("dfu: starting download to %s\n", dfu_file_entry->filename);
> -			if (dfu_file_entry->flags & FILE_LIST_FLAG_SAFE) {
> -				dfufd = open(DFU_TEMPFILE, O_WRONLY | O_CREAT);
> -			} else {
> -				unsigned flags = O_WRONLY;
> -
> -				if (dfu_file_entry->flags & FILE_LIST_FLAG_CREATE)
> -					flags |= O_CREAT | O_TRUNC;
> -
> -				dfufd = open(dfu_file_entry->filename, flags);
> -			}
> -
> -			if (dfufd < 0) {
> -				dfu->dfu_state = DFU_STATE_dfuERROR;
> -				perror("open");
> -				goto out;
> -			}
> -
> -			if (!(dfu_file_entry->flags & FILE_LIST_FLAG_SAFE)) {
> -				ret = ioctl(dfufd, MEMGETINFO, &dfu_mtdinfo);
> -				if (!ret) /* file is on a mtd device */
> -					prog_erase = 1;
> -			}
> +			dw = xzalloc(sizeof(*dw));
> +			dw->dfu = dfu;
> +			dw->task = dfu_do_open_dnload;
> +			wq_queue_work(&dfu->wq, &dw->work);
>  
>  			value = handle_dnload(f, ctrl);
>  			dfu->dfu_state = DFU_STATE_dfuDNLOAD_IDLE;
> @@ -534,12 +648,12 @@ static int dfu_setup(struct usb_function *f, const struct usb_ctrlrequest *ctrl)
>  				dfu->dfu_state = DFU_STATE_dfuERROR;
>  				goto out;
>  			}
> -			dfufd = open(dfu_file_entry->filename, O_RDONLY);
> -			if (dfufd < 0) {
> -				dfu->dfu_state = DFU_STATE_dfuERROR;
> -				perror("open");
> -				goto out;
> -			}
> +
> +			dw = xzalloc(sizeof(*dw));
> +			dw->dfu = dfu;
> +			dw->task = dfu_do_open_upload;
> +			wq_queue_work(&dfu->wq, &dw->work);
> +
>  			handle_upload(f, ctrl);
>  			return 0;
>  		case USB_REQ_DFU_ABORT:
> @@ -648,9 +762,6 @@ static int dfu_setup(struct usb_function *f, const struct usb_ctrlrequest *ctrl)
>  		break;
>  	case DFU_STATE_dfuMANIFEST:
>  		value = handle_manifest(f, ctrl);
> -		if (dfu->dfu_state != DFU_STATE_dfuIDLE) {
> -			return 0;
> -		}
>  		switch (ctrl->bRequest) {
>  		case USB_REQ_DFU_GETSTATUS:
>  			value = dfu_status(f, ctrl);
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZbN9H-00067d-SB
 for barebox@lists.infradead.org; Mon, 14 Sep 2015 06:21:57 +0000
Date: Mon, 14 Sep 2015 08:21:33 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150914062133.GU18700@pengutronix.de>
References: <1441992476-11703-1-git-send-email-pmamonov@gmail.com>
 <1441992476-11703-2-git-send-email-pmamonov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1441992476-11703-2-git-send-email-pmamonov@gmail.com>
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
Subject: Re: [RFC v2 1/3] usb: ehci-hcd: port periodic transactions
 implementation from the u-boot
To: Peter Mamonov <pmamonov@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, Sep 11, 2015 at 08:27:54PM +0300, Peter Mamonov wrote:
> Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
> ---
>  drivers/usb/host/ehci-hcd.c | 426 +++++++++++++++++++++++++++++++++++++++++++-
>  drivers/usb/host/ehci.h     |  15 +-
>  2 files changed, 439 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
> index 9d74d2f..c9bf703 100644
> --- a/drivers/usb/host/ehci-hcd.c
> +++ b/drivers/usb/host/ehci-hcd.c
> +static void ehci_update_endpt2_dev_n_port(struct usb_device *udev,
> +					  struct QH *qh)
> +{
> +	struct usb_device *ttdev;
> +	int parent_devnum;
> +
> +	if (udev->speed != USB_SPEED_LOW && udev->speed != USB_SPEED_FULL)
> +		return;
> +
> +	/*
> +	 * For full / low speed devices we need to get the devnum and portnr of
> +	 * the tt, so of the first upstream usb-2 hub, there may be usb-1 hubs
> +	 * in the tree before that one!
> +	 */
> +
> +//#ifdef CONFIG_DM_USB
> +#if 0
> +	/*
> +	 * When called from usb-uclass.c: usb_scan_device() udev->dev points
> +	 * to the parent udevice, not the actual udevice belonging to the
> +	 * udev as the device is not instantiated yet. So when searching
> +	 * for the first usb-2 parent start with udev->dev not
> +	 * udev->dev->parent .
> +	 */
> +	struct udevice *parent;
> +	struct usb_device *uparent;
> +
> +	ttdev = udev;
> +	parent = udev->dev;
> +	uparent = dev_get_parentdata(parent);
> +
> +	while (uparent->speed != USB_SPEED_HIGH) {
> +		struct udevice *dev = parent;
> +
> +		if (device_get_uclass_id(dev->parent) != UCLASS_USB_HUB) {
> +			printf("ehci: Error cannot find high-speed parent of usb-1 device\n");

Please use dev_dbg, dev_err and friends in driver context rather than
debug and printf.

> +			return;
> +		}
> +
> +		ttdev = dev_get_parentdata(dev);
> +		parent = dev->parent;
> +		uparent = dev_get_parentdata(parent);
> +	}
> +	parent_devnum = uparent->devnum;
> +#else
> +	ttdev = udev;
> +	while (ttdev->parent && ttdev->parent->speed != USB_SPEED_HIGH)
> +		ttdev = ttdev->parent;
> +	if (!ttdev->parent)
> +		return;
> +	parent_devnum = ttdev->parent->devnum;
> +#endif
> +
> +	qh->qh_endpt2 |= cpu_to_hc32(QH_ENDPT2_PORTNUM(ttdev->portnr) |
> +				     QH_ENDPT2_HUBADDR(parent_devnum));
> +}
> +
> +static struct int_queue *ehci_create_int_queue(struct usb_device *dev,
> +			unsigned long pipe, int queuesize, int elementsize,
> +			void *buffer, int interval)
> +{
> +	struct usb_host *host = dev->host;
> +	struct ehci_priv *ehci = to_ehci(host);
> +	struct int_queue *result = NULL;
> +	uint32_t i, toggle;
> +	struct QH *list = ehci->periodic_queue;
> +
> +	/*
> +	 * Interrupt transfers requiring several transactions are not supported
> +	 * because bInterval is ignored.
> +	 *
> +	 * Also, ehci_submit_async() relies on wMaxPacketSize being a power of 2
> +	 * <= PKT_ALIGN if several qTDs are required, while the USB
> +	 * specification does not constrain this for interrupt transfers. That
> +	 * means that ehci_submit_async() would support interrupt transfers
> +	 * requiring several transactions only as long as the transfer size does
> +	 * not require more than a single qTD.
> +	 */
> +	if (elementsize > usb_maxpacket(dev, pipe)) {
> +		pr_err("%s: xfers requiring several transactions are not supported.\n",
> +		       __func__);
> +		return NULL;
> +	}
> +
> +	debug("Enter create_int_queue\n");
> +	if (usb_pipetype(pipe) != PIPE_INTERRUPT) {
> +		debug("non-interrupt pipe (type=%lu)", usb_pipetype(pipe));
> +		return NULL;
> +	}
> +
> +	/* limit to 4 full pages worth of data -
> +	 * we can safely fit them in a single TD,
> +	 * no matter the alignment
> +	 */
> +	if (elementsize >= 16384) {
> +		debug("too large elements for interrupt transfers\n");
> +		return NULL;
> +	}
> +
> +	result = xzalloc(sizeof(*result));
> +	if (!result) {
> +		debug("ehci intr queue: out of memory\n");
> +		goto fail1;
> +	}

xzalloc never fails, no need to check the return value.

> +
> +	debug("Exit create_int_queue\n");
> +	return result;
> +fail3:
> +	if (result->tds)
> +		free(result->tds);

free(NULL) works perfectly fine, no need to check for result->tds.

> +fail2:
> +	if (result->first)
> +		free(result->first);

memory allocated with dma_alloc_coherent must be freed with
dma_free_coherent.

> +	if (result)
> +		free(result);
> +fail1:
> +	return NULL;
> +}
> +
> +static int ehci_destroy_int_queue(struct usb_device *dev,
> +				   struct int_queue *queue)
> +{
> +	int result = -1;
> +	struct usb_host *host = dev->host;
> +	struct ehci_priv *ehci = to_ehci(host);
> +	struct QH *cur = ehci->periodic_queue;
> +	uint64_t start;
> +
> +	if (disable_periodic(ehci) < 0) {
> +		debug("FATAL: periodic should never fail, but did");
> +		goto out;
> +	}
> +	ehci->periodic_schedules--;
> +
> +	start = get_time_ns();
> +	while (!(cur->qh_link & cpu_to_hc32(QH_LINK_TERMINATE))) {
> +		debug("considering %p, with qh_link %x\n", cur, cur->qh_link);
> +		if (NEXT_QH(cur) == queue->first) {
> +			debug("found candidate. removing from chain\n");
> +			cur->qh_link = queue->last->qh_link;
> +			result = 0;
> +			break;
> +		}
> +		cur = NEXT_QH(cur);
> +		if (is_timeout_non_interruptible(start, 500 * MSECOND)) {
> +			printf("Timeout destroying interrupt endpoint queue\n");
> +			result = -1;

Please use an error code rather than -1. -1 is easily interpreted as
-EPERM from the callers which is not the correct error code here.

> +	queue = ehci_create_int_queue(dev, pipe, 1, length, buffer, interval);
> +	if (!queue)
> +		return -1;
> +
> +	start = get_time_ns();
> +	while ((backbuffer = ehci_poll_int_queue(dev, queue)) == NULL)
> +		if (is_timeout_non_interruptible(start, 
> +						 USB_CNTL_TIMEOUT * MSECOND)) {
> +			pr_err("Timeout poll on interrupt endpoint\n");
> +			result = -ETIMEDOUT;
> +			break;
> +		}
> +
> +	if (backbuffer != buffer) {
> +		pr_err("got wrong buffer back (%p instead of %p)\n",
> +		      backbuffer, buffer);
> +		return -EINVAL;
> +	}
> +
> +	ret = ehci_destroy_int_queue(dev, queue);
> +	if (ret < 0)
> +		return ret;
> +
> +	/* everything worked out fine */

Is this true? result can be nonzero here.

> +	return result;
>  }
>  

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

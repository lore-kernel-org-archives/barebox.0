Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZeH7S-00060K-Da
 for barebox@lists.infradead.org; Tue, 22 Sep 2015 06:32:03 +0000
Date: Tue, 22 Sep 2015 08:31:35 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150922063135.GJ7858@pengutronix.de>
References: <1442835049-20829-1-git-send-email-pmamonov@gmail.com>
 <1442835049-20829-2-git-send-email-pmamonov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1442835049-20829-2-git-send-email-pmamonov@gmail.com>
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
Subject: Re: [PATCH 1/5] usb: ehci-hcd: port periodic transactions
 implementation from the u-boot
To: Peter Mamonov <pmamonov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Sep 21, 2015 at 02:30:45PM +0300, Peter Mamonov wrote:
> Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
> ---
>  drivers/usb/host/ehci-hcd.c | 400 +++++++++++++++++++++++++++++++++++++++++++-
>  drivers/usb/host/ehci.h     |  15 +-
>  2 files changed, 413 insertions(+), 2 deletions(-)
> 
>  }
>  
>  static int
> +disable_periodic(struct ehci_priv *ehci)
> +{
> +	uint32_t cmd;
> +	struct ehci_hcor *hcor = ehci->hcor;
> +	int ret;
> +
> +	cmd = ehci_readl(&hcor->or_usbcmd);
> +	cmd &= ~CMD_PSE;
> +	ehci_writel(&hcor->or_usbcmd, cmd);
> +
> +	ret = handshake((uint32_t *)&hcor->or_usbsts,
> +			STS_PSS, 0, 100 * 1000);
> +	if (ret < 0) {
> +		printf("EHCI failed: timeout when disabling periodic list\n");
> +		return -ETIMEDOUT;
> +	}
> +	return 0;
> +}
> +
> +#define NEXT_QH(qh) (struct QH *)((0xa0000000 | (unsigned long)hc32_to_cpu((qh)->qh_link)) & ~0x1f)

Ok, here's the reason it doesn't work on Arm. The 0xa0000000 is probably
due to the cached/uncached address conversion on Mips. Without the
0a0000000 this patch works fine on Arm.

> +
> +static int
> +enable_periodic(struct ehci_priv *ehci)
> +{
> +	uint32_t cmd;
> +	struct ehci_hcor *hcor = ehci->hcor;
> +	int ret;
> +	uint64_t start;
> +
> +	cmd = ehci_readl(&hcor->or_usbcmd);
> +	cmd |= CMD_PSE;
> +	ehci_writel(&hcor->or_usbcmd, cmd);
> +
> +	ret = handshake((uint32_t *)&hcor->or_usbsts,
> +			STS_PSS, STS_PSS, 100 * 1000);
> +	if (ret < 0) {
> +		printf("EHCI failed: timeout when enabling periodic list\n");
> +		return -ETIMEDOUT;
> +	}
> +
> +	start = get_time_ns();
> +	while(!is_timeout_non_interruptible(start, 1 * MSECOND));

mdelay_non_interruptible?

> +static int ehci_destroy_int_queue(struct usb_device *dev,
> +				   struct int_queue *queue)
> +{
> +	int result = -EINVAL;
> +	struct usb_host *host = dev->host;
> +	struct ehci_priv *ehci = to_ehci(host);
> +	struct QH *cur = ehci->periodic_queue;
> +	uint64_t start;
> +
> +	if (disable_periodic(ehci) < 0) {
> +		dev_err(&dev->dev,
> +			"FATAL: periodic should never fail, but did\n");
> +		goto out;
> +	}
> +	ehci->periodic_schedules--;
> +
> +	start = get_time_ns();
> +	while (!(cur->qh_link & cpu_to_hc32(QH_LINK_TERMINATE))) {
> +		dev_dbg(&dev->dev, 
> +			"considering %p, with qh_link %x\n",
> +			cur, cur->qh_link);
> +		if (NEXT_QH(cur) == queue->first) {
> +			dev_dbg(&dev->dev,
> +				"found candidate. removing from chain\n");
> +			cur->qh_link = queue->last->qh_link;
> +			result = 0;
> +			break;
> +		}
> +		cur = NEXT_QH(cur);
> +		if (is_timeout_non_interruptible(start, 500 * MSECOND)) {
> +			dev_err(&dev->dev,
> +				"Timeout destroying interrupt endpoint queue\n");
> +			result = -ETIMEDOUT;
> +			goto out;
> +		}
> +	}
> +
> +	if (ehci->periodic_schedules > 0) {
> +		result = enable_periodic(ehci);
> +		if (result < 0)
> +			dev_err(&dev->dev,
> +				"FATAL: periodic should never fail, but did");
> +	}
> +
> +out:
> +	free(queue->tds);
> +	free(queue->first);

You have to use dma_free_coherent here.

> +	free(queue);
> +
> +	return result;
> +}
> +
>  submit_int_msg(struct usb_device *dev, unsigned long pipe, void *buffer,
>  	       int length, int interval)
>  {
>  	struct usb_host *host = dev->host;
>  	struct ehci_priv *ehci = to_ehci(host);
> +	struct int_queue *queue;
> +	uint64_t start;
> +	void *backbuffer;
> +	int result = 0, ret;
>  
>  	dev_dbg(ehci->dev, "dev=%p, pipe=%lu, buffer=%p, length=%d, interval=%d",
>  	      dev, pipe, buffer, length, interval);
> -	return -1;
> +
> +	queue = ehci_create_int_queue(dev, pipe, 1, length, buffer, interval);
> +	if (!queue)
> +		return -EINVAL;
> +
> +	start = get_time_ns();
> +	while ((backbuffer = ehci_poll_int_queue(dev, queue)) == NULL)
> +		if (is_timeout_non_interruptible(start, 
> +						 USB_CNTL_TIMEOUT * MSECOND)) {
> +			dev_err(&dev->dev,
> +				"Timeout poll on interrupt endpoint\n");
> +			result = -ETIMEDOUT;
> +			break;
> +		}
> +
> +	if (backbuffer != buffer) {
> +		dev_err(&dev->dev,
> +			"got wrong buffer back (%p instead of %p)\n",
> +			backbuffer, buffer);
> +		return -EINVAL;

Shouldn't we call ehci_destroy_int_queue() here aswell? Otherwise we
leak the memory allocated from ehci_create_int_queue().

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

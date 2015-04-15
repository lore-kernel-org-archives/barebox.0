Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YiJL4-0004U4-Hf
 for barebox@lists.infradead.org; Wed, 15 Apr 2015 09:10:31 +0000
Message-ID: <1429089007.3365.9.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Wed, 15 Apr 2015 11:10:07 +0200
In-Reply-To: <1428934950-6836-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1428627714-17077-5-git-send-email-sebastian.hesselbarth@gmail.com>
 <1428934950-6836-1-git-send-email-sebastian.hesselbarth@gmail.com>
Mime-Version: 1.0
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
Subject: Re: [PATCH v2] USB: xHCI: Sync non-coherent DMA buffers
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

Am Montag, den 13.04.2015, 16:22 +0200 schrieb Sebastian Hesselbarth:
> When working with non-coherent transfer buffers, we have to sync
> device and cpu for outgoing and incoming buffers. Fix the driver where
> non-coherent buffers are used in device context.
> 
> Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>

Reviewed-by: Lucas Stach <l.stach@pengutronix.de>

> ---
> Changelog:
> v1->v2:
> - balance dma_sync_single_foo() calls (Reported by Lucas Stach)
> 
> Cc: barebox@lists.infradead.org
> Cc: Lucas Stach <dev@lynxeye.de>
> ---
>  drivers/usb/host/xhci-hcd.c | 23 ++++++++++++++++++++++-
>  1 file changed, 22 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/usb/host/xhci-hcd.c b/drivers/usb/host/xhci-hcd.c
> index c3d623e91f51..a44a1a4dffa5 100644
> --- a/drivers/usb/host/xhci-hcd.c
> +++ b/drivers/usb/host/xhci-hcd.c
> @@ -1024,6 +1024,11 @@ static int xhci_submit_normal(struct usb_device *udev, unsigned long pipe,
>  		GET_SLOT_STATE(le32_to_cpu(vdev->out_ctx->slot.dev_state)), epi,
>  		vdev->in_ctx, vdev->out_ctx);
>  
> +	/* pass ownership of data buffer to device */
> +	dma_sync_single_for_device((unsigned long)buffer, length,
> +				   usb_pipein(pipe) ?
> +				   DMA_FROM_DEVICE : DMA_TO_DEVICE);
> +
>  	/* Normal TRB */
>  	memset(&trb, 0, sizeof(union xhci_trb));
>  	trb.event_cmd.cmd_trb = cpu_to_le64((dma_addr_t)buffer);
> @@ -1037,6 +1042,11 @@ static int xhci_submit_normal(struct usb_device *udev, unsigned long pipe,
>  	ret = xhci_wait_for_event(xhci, TRB_TRANSFER, &trb);
>  	xhci_print_trb(xhci, &trb, "Response Normal");
>  
> +	/* Regain ownership of data buffer from device */
> +	dma_sync_single_for_cpu((unsigned long)buffer, length,
> +				usb_pipein(pipe) ?
> +				DMA_FROM_DEVICE : DMA_TO_DEVICE);
> +
>  	switch (ret) {
>  	case -COMP_SHORT_TX:
>  		udev->status = 0;
> @@ -1094,6 +1104,11 @@ static int xhci_submit_control(struct usb_device *udev, unsigned long pipe,
>  			return ret;
>  	}
>  
> +	/* Pass ownership of data buffer to device */
> +	dma_sync_single_for_device((unsigned long)buffer, length,
> +				   (req->requesttype & USB_DIR_IN) ?
> +				   DMA_FROM_DEVICE : DMA_TO_DEVICE);
> +
>  	/* Setup TRB */
>  	memset(&trb, 0, sizeof(union xhci_trb));
>  	trb.generic.field[0] = le16_to_cpu(req->value) << 16 |
> @@ -1141,11 +1156,17 @@ static int xhci_submit_control(struct usb_device *udev, unsigned long pipe,
>  		if (ret == -COMP_SHORT_TX)
>  			length -= EVENT_TRB_LEN(trb.event_cmd.status);
>  		else if (ret < 0)
> -			return ret;
> +			goto dma_regain;
>  	}
>  
>  	ret = xhci_wait_for_event(xhci, TRB_TRANSFER, &trb);
>  	xhci_print_trb(xhci, &trb, "Response Status");
> +
> +dma_regain:
> +	/* Regain ownership of data buffer from device */
> +	dma_sync_single_for_cpu((unsigned long)buffer, length,
> +				(req->requesttype & USB_DIR_IN) ?
> +				DMA_FROM_DEVICE : DMA_TO_DEVICE);
>  	if (ret < 0)
>  		return ret;
>  

-- 
Pengutronix e.K.             | Lucas Stach                 |
Industrial Linux Solutions   | http://www.pengutronix.de/  |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

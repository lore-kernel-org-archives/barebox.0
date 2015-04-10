Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YgTKE-0001Ev-HE
 for barebox@lists.infradead.org; Fri, 10 Apr 2015 07:26:03 +0000
Message-ID: <1428650710.2182.9.camel@lynxeye.de>
From: Lucas Stach <dev@lynxeye.de>
Date: Fri, 10 Apr 2015 09:25:10 +0200
In-Reply-To: <1428627714-17077-5-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1428627714-17077-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1428627714-17077-5-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: Re: [PATCH 4/4] USB: xHCI: Sync non-coherent DMA buffers
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

Am Freitag, den 10.04.2015, 03:01 +0200 schrieb Sebastian Hesselbarth:
> When working with non-coherent transfer buffers, we have to sync
> device and cpu for outgoing and incoming buffers. Fix the driver where
> non-coherent buffers are used in device context.
> 
> Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>

This is not using the DMA API the way it is intended. See my last reply
about balanced ownership transfer. Please make sure you take this into
account for this patch.

> ---
> Cc: barebox@lists.infradead.org
> ---
>  drivers/usb/host/xhci-hcd.c | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/drivers/usb/host/xhci-hcd.c b/drivers/usb/host/xhci-hcd.c
> index c3d623e91f51..fab884229732 100644
> --- a/drivers/usb/host/xhci-hcd.c
> +++ b/drivers/usb/host/xhci-hcd.c
> @@ -1026,6 +1026,8 @@ static int xhci_submit_normal(struct usb_device *udev, unsigned long pipe,
>  
>  	/* Normal TRB */
>  	memset(&trb, 0, sizeof(union xhci_trb));
> +	dma_sync_single_for_device((unsigned long)buffer, length,
> +				   DMA_TO_DEVICE);
>  	trb.event_cmd.cmd_trb = cpu_to_le64((dma_addr_t)buffer);
>  	/* FIXME: TD remainder */
>  	trb.event_cmd.status = TRB_LEN(length) | TRB_INTR_TARGET(0);
> @@ -1114,6 +1116,8 @@ static int xhci_submit_control(struct usb_device *udev, unsigned long pipe,
>  	/* Data TRB */
>  	if (length > 0) {
>  		memset(&trb, 0, sizeof(union xhci_trb));
> +		dma_sync_single_for_device((unsigned long)buffer, length,
> +					   DMA_TO_DEVICE);
>  		trb.event_cmd.cmd_trb = cpu_to_le64((dma_addr_t)buffer);
>  		/* FIXME: TD remainder */
>  		trb.event_cmd.status = TRB_LEN(length) | TRB_INTR_TARGET(0);
> @@ -1142,6 +1146,8 @@ static int xhci_submit_control(struct usb_device *udev, unsigned long pipe,
>  			length -= EVENT_TRB_LEN(trb.event_cmd.status);
>  		else if (ret < 0)
>  			return ret;
> +		dma_sync_single_for_cpu((unsigned long)buffer, length,
> +					DMA_FROM_DEVICE);
>  	}
>  
>  	ret = xhci_wait_for_event(xhci, TRB_TRANSFER, &trb);



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

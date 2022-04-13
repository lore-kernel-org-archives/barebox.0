Delivery-date: Wed, 13 Apr 2022 17:58:59 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nefOX-000p4h-6p
	for lore@lore.pengutronix.de; Wed, 13 Apr 2022 17:58:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nefOU-0001Hs-8C
	for lore@pengutronix.de; Wed, 13 Apr 2022 17:58:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ObjilFnYvK3supYzUglVhmLt9SYiLwk0YdKZS+diZMQ=; b=kcdbIQS9L/yqL1
	fhdqJcXW0gFfDgvvXkBvVTDJVYXeRnfyV61lHbFjPngIbMxj/pPZzbCUAIuGhZOtIAno1pCwI5KRU
	m6Ix73v2M/dI4NjTzU8fvn5NlBW/o62P7VxYryNNg596e9xvLbLnNzZxkwRnxS/HgldNzIDTMR0jM
	EsZu/aQ+5fE3KYhtvEwhj6567gquGWodqyT1O6hSkipncbp+MvDC0M4GloPuG7l4mAR/anCXwl2F5
	0dW3Q7WYnDu6ifhOCzcDpXBh0ZznMQUsUIWFsUVWtuZGPjyMX/4fybYeMMxqIXFDKBhOZ/URbqLWa
	XklN1Z2hkTi4NxfZwpdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nefMs-001gEs-Qo; Wed, 13 Apr 2022 15:57:18 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nefMn-001gEV-CT
 for barebox@lists.infradead.org; Wed, 13 Apr 2022 15:57:15 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>)
 id 1nefMl-00013n-8Y; Wed, 13 Apr 2022 17:57:11 +0200
Message-ID: <8e08020ce35baf3cad238836faddcdee77652cc4.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, Barebox List
 <barebox@lists.infradead.org>
Date: Wed, 13 Apr 2022 17:57:10 +0200
In-Reply-To: <20201214135831.14287-1-s.hauer@pengutronix.de>
References: <20201214135831.14287-1-s.hauer@pengutronix.de>
User-Agent: Evolution 3.40.4 (3.40.4-1.fc34) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220413_085713_636542_8752441B 
X-CRM114-Status: GOOD (  21.46  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] usb: xhci: Honor transfer timeouts
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Sascha,

Am Montag, dem 14.12.2020 um 14:58 +0100 schrieb Sascha Hauer:
> The usb host submit_control_msg() and submit_bulk_msg() hooks pass a
> timeout value. Honor these values in the XHCI driver instead of just
> ignoring them. The USB net driver in barebox polls for receive packets
> by submitting an URB with a very low timeout, expecting it to timeout
> when no incoming packet is present. With the default timeout of 5
> seconds the XHCI driver previously used barebox became unusable.

Seems like this patch has not been applied. USB net on a XHCI host is
still unusable with current master.

Regards,
Lucas

> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/usb/host/xhci-ring.c | 29 +++++++++++------------------
>  drivers/usb/host/xhci.c      | 17 +++++++++--------
>  drivers/usb/host/xhci.h      |  8 +++++---
>  3 files changed, 25 insertions(+), 29 deletions(-)
> 
> diff --git a/drivers/usb/host/xhci-ring.c b/drivers/usb/host/xhci-ring.c
> index 61b1b55a27..76c18e4615 100644
> --- a/drivers/usb/host/xhci-ring.c
> +++ b/drivers/usb/host/xhci-ring.c
> @@ -436,7 +436,8 @@ static int event_ready(struct xhci_ctrl *ctrl)
>   * @param expected	TRB type expected from Event TRB
>   * @return pointer to event trb
>   */
> -union xhci_trb *xhci_wait_for_event(struct xhci_ctrl *ctrl, trb_type expected)
> +union xhci_trb *xhci_wait_for_event(struct xhci_ctrl *ctrl, trb_type expected,
> +				    unsigned int timeout_ms)
>  {
>  	trb_type type;
>  	uint64_t start = get_time_ns();
> @@ -460,16 +461,8 @@ union xhci_trb *xhci_wait_for_event(struct xhci_ctrl *ctrl, trb_type expected)
>  			BUG_ON(GET_COMP_CODE(
>  				le32_to_cpu(event->generic.field[2])) !=
>  								COMP_SUCCESS);
> -		else
> -			dev_err(ctrl->dev, "Unexpected XHCI event TRB, skipping... "
> -				"(%08x %08x %08x %08x)\n",
> -				le32_to_cpu(event->generic.field[0]),
> -				le32_to_cpu(event->generic.field[1]),
> -				le32_to_cpu(event->generic.field[2]),
> -				le32_to_cpu(event->generic.field[3]));
> -
>  		xhci_acknowledge_event(ctrl);
> -	} while (!is_timeout_non_interruptible(start, 5 * SECOND));
> +	} while (!is_timeout_non_interruptible(start, timeout_ms * MSECOND));
>  
>  	if (expected == TRB_TRANSFER)
>  		return NULL;
> @@ -495,7 +488,7 @@ static void abort_td(struct usb_device *udev, int ep_index)
>  
>  	xhci_queue_command(ctrl, NULL, udev->slot_id, ep_index, TRB_STOP_RING);
>  
> -	event = xhci_wait_for_event(ctrl, TRB_TRANSFER);
> +	event = xhci_wait_for_event(ctrl, TRB_TRANSFER, XHCI_TIMEOUT_DEFAULT);
>  	field = le32_to_cpu(event->trans_event.flags);
>  	BUG_ON(TRB_TO_SLOT_ID(field) != udev->slot_id);
>  	BUG_ON(TRB_TO_EP_INDEX(field) != ep_index);
> @@ -503,7 +496,7 @@ static void abort_td(struct usb_device *udev, int ep_index)
>  		!= COMP_STOP)));
>  	xhci_acknowledge_event(ctrl);
>  
> -	event = xhci_wait_for_event(ctrl, TRB_COMPLETION);
> +	event = xhci_wait_for_event(ctrl, TRB_COMPLETION, XHCI_TIMEOUT_DEFAULT);
>  	BUG_ON(TRB_TO_SLOT_ID(le32_to_cpu(event->event_cmd.flags))
>  		!= udev->slot_id || GET_COMP_CODE(le32_to_cpu(
>  		event->event_cmd.status)) != COMP_SUCCESS);
> @@ -511,7 +504,7 @@ static void abort_td(struct usb_device *udev, int ep_index)
>  
>  	xhci_queue_command(ctrl, (void *)((uintptr_t)ring->enqueue |
>  		ring->cycle_state), udev->slot_id, ep_index, TRB_SET_DEQ);
> -	event = xhci_wait_for_event(ctrl, TRB_COMPLETION);
> +	event = xhci_wait_for_event(ctrl, TRB_COMPLETION, XHCI_TIMEOUT_DEFAULT);
>  	BUG_ON(TRB_TO_SLOT_ID(le32_to_cpu(event->event_cmd.flags))
>  		!= udev->slot_id || GET_COMP_CODE(le32_to_cpu(
>  		event->event_cmd.status)) != COMP_SUCCESS);
> @@ -557,7 +550,7 @@ static void record_transfer_result(struct usb_device *udev,
>   * @return returns 0 if successful else -1 on failure
>   */
>  int xhci_bulk_tx(struct usb_device *udev, unsigned long pipe,
> -			int length, void *buffer)
> +			int length, void *buffer, unsigned int timeout_ms)
>  {
>  	int num_trbs = 0;
>  	struct xhci_generic_trb *start_trb;
> @@ -726,7 +719,7 @@ int xhci_bulk_tx(struct usb_device *udev, unsigned long pipe,
>  
>  	giveback_first_trb(udev, ep_index, start_cycle, start_trb);
>  
> -	event = xhci_wait_for_event(ctrl, TRB_TRANSFER);
> +	event = xhci_wait_for_event(ctrl, TRB_TRANSFER, timeout_ms);
>  	if (!event) {
>  		dev_dbg(&udev->dev, "XHCI bulk transfer timed out, aborting...\n");
>  		abort_td(udev, ep_index);
> @@ -767,7 +760,7 @@ int xhci_bulk_tx(struct usb_device *udev, unsigned long pipe,
>   */
>  int xhci_ctrl_tx(struct usb_device *udev, unsigned long pipe,
>  			struct devrequest *req,	int length,
> -			void *buffer)
> +			void *buffer, unsigned int timeout_ms)
>  {
>  	int ret;
>  	int start_cycle;
> @@ -936,7 +929,7 @@ int xhci_ctrl_tx(struct usb_device *udev, unsigned long pipe,
>  
>  	giveback_first_trb(udev, ep_index, start_cycle, start_trb);
>  
> -	event = xhci_wait_for_event(ctrl, TRB_TRANSFER);
> +	event = xhci_wait_for_event(ctrl, TRB_TRANSFER, timeout_ms);
>  	if (!event)
>  		goto abort;
>  	field = le32_to_cpu(event->trans_event.flags);
> @@ -959,7 +952,7 @@ int xhci_ctrl_tx(struct usb_device *udev, unsigned long pipe,
>  	if (GET_COMP_CODE(le32_to_cpu(event->trans_event.transfer_len))
>  			== COMP_SHORT_TX) {
>  		/* Short data stage, clear up additional status stage event */
> -		event = xhci_wait_for_event(ctrl, TRB_TRANSFER);
> +		event = xhci_wait_for_event(ctrl, TRB_TRANSFER, timeout_ms);
>  		if (!event)
>  			goto abort;
>  		BUG_ON(TRB_TO_SLOT_ID(field) != slot_id);
> diff --git a/drivers/usb/host/xhci.c b/drivers/usb/host/xhci.c
> index 317000d650..a743e73479 100644
> --- a/drivers/usb/host/xhci.c
> +++ b/drivers/usb/host/xhci.c
> @@ -443,7 +443,7 @@ static int xhci_configure_endpoints(struct usb_device *udev, bool ctx_change)
>  	xhci_flush_cache((uintptr_t)in_ctx->bytes, in_ctx->size);
>  	xhci_queue_command(ctrl, in_ctx->bytes, udev->slot_id, 0,
>  			   ctx_change ? TRB_EVAL_CONTEXT : TRB_CONFIG_EP);
> -	event = xhci_wait_for_event(ctrl, TRB_COMPLETION);
> +	event = xhci_wait_for_event(ctrl, TRB_COMPLETION, XHCI_TIMEOUT_DEFAULT);
>  	BUG_ON(TRB_TO_SLOT_ID(le32_to_cpu(event->event_cmd.flags))
>  		!= udev->slot_id);
>  
> @@ -629,7 +629,7 @@ static int xhci_address_device(struct usb_device *udev, int root_portnr)
>  	ctrl_ctx->drop_flags = 0;
>  
>  	xhci_queue_command(ctrl, (void *)ctrl_ctx, slot_id, 0, TRB_ADDR_DEV);
> -	event = xhci_wait_for_event(ctrl, TRB_COMPLETION);
> +	event = xhci_wait_for_event(ctrl, TRB_COMPLETION, XHCI_TIMEOUT_DEFAULT);
>  	BUG_ON(TRB_TO_SLOT_ID(le32_to_cpu(event->event_cmd.flags)) != slot_id);
>  
>  	switch (GET_COMP_CODE(le32_to_cpu(event->event_cmd.status))) {
> @@ -704,7 +704,7 @@ static int _xhci_alloc_device(struct usb_device *udev)
>  	}
>  
>  	xhci_queue_command(ctrl, NULL, 0, 0, TRB_ENABLE_SLOT);
> -	event = xhci_wait_for_event(ctrl, TRB_COMPLETION);
> +	event = xhci_wait_for_event(ctrl, TRB_COMPLETION, XHCI_TIMEOUT_DEFAULT);
>  	BUG_ON(GET_COMP_CODE(le32_to_cpu(event->event_cmd.status))
>  		!= COMP_SUCCESS);
>  
> @@ -1097,7 +1097,7 @@ static int _xhci_submit_int_msg(struct usb_device *udev, unsigned long pipe,
>  	 * (at most) one TD. A TD (comprised of sg list entries) can
>  	 * take several service intervals to transmit.
>  	 */
> -	return xhci_bulk_tx(udev, pipe, length, buffer);
> +	return xhci_bulk_tx(udev, pipe, length, buffer, 0);
>  }
>  
>  /**
> @@ -1115,7 +1115,7 @@ static int _xhci_submit_bulk_msg(struct usb_device *udev, unsigned long pipe,
>  	if (usb_pipetype(pipe) != PIPE_BULK)
>  		return -EINVAL;
>  
> -	return xhci_bulk_tx(udev, pipe, length, buffer);
> +	return xhci_bulk_tx(udev, pipe, length, buffer, timeout_ms);
>  }
>  
>  /**
> @@ -1131,7 +1131,8 @@ static int _xhci_submit_bulk_msg(struct usb_device *udev, unsigned long pipe,
>   */
>  static int _xhci_submit_control_msg(struct usb_device *udev, unsigned long pipe,
>  				    void *buffer, int length,
> -				    struct devrequest *setup, int root_portnr)
> +				    struct devrequest *setup, int root_portnr,
> +				    unsigned int timeout_ms)
>  {
>  	struct xhci_ctrl *ctrl = xhci_get_ctrl(udev);
>  	int ret = 0;
> @@ -1155,7 +1156,7 @@ static int _xhci_submit_control_msg(struct usb_device *udev, unsigned long pipe,
>  		}
>  	}
>  
> -	return xhci_ctrl_tx(udev, pipe, setup, length, buffer);
> +	return xhci_ctrl_tx(udev, pipe, setup, length, buffer, timeout_ms);
>  }
>  
>  static int xhci_lowlevel_init(struct xhci_ctrl *ctrl)
> @@ -1239,7 +1240,7 @@ static int xhci_submit_control_msg(struct usb_device *udev,
>  	}
>  
>  	return _xhci_submit_control_msg(udev, pipe, buffer, length, setup,
> -					root_portnr);
> +					root_portnr, timeout_ms);
>  }
>  
>  static int xhci_submit_bulk_msg(struct usb_device *udev,
> diff --git a/drivers/usb/host/xhci.h b/drivers/usb/host/xhci.h
> index 9ffbb103d5..be447ce5ed 100644
> --- a/drivers/usb/host/xhci.h
> +++ b/drivers/usb/host/xhci.h
> @@ -1247,11 +1247,13 @@ void xhci_setup_addressable_virt_dev(struct xhci_ctrl *ctrl,
>  void xhci_queue_command(struct xhci_ctrl *ctrl, u8 *ptr,
>  			u32 slot_id, u32 ep_index, trb_type cmd);
>  void xhci_acknowledge_event(struct xhci_ctrl *ctrl);
> -union xhci_trb *xhci_wait_for_event(struct xhci_ctrl *ctrl, trb_type expected);
> +#define XHCI_TIMEOUT_DEFAULT 5000
> +union xhci_trb *xhci_wait_for_event(struct xhci_ctrl *ctrl, trb_type expected,
> +	unsigned int timeout_ms);
>  int xhci_bulk_tx(struct usb_device *udev, unsigned long pipe,
> -		 int length, void *buffer);
> +		 int length, void *buffer, unsigned int timeout_ms);
>  int xhci_ctrl_tx(struct usb_device *udev, unsigned long pipe,
> -		 struct devrequest *req, int length, void *buffer);
> +		 struct devrequest *req, int length, void *buffer, unsigned int timeout_ms);
>  int xhci_check_maxpacket(struct usb_device *udev);
>  void xhci_flush_cache(uintptr_t addr, u32 type_len);
>  void xhci_inval_cache(uintptr_t addr, u32 type_len);



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


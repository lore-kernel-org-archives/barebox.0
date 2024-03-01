Delivery-date: Fri, 01 Mar 2024 10:19:36 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfz3I-001QL2-1K
	for lore@lore.pengutronix.de;
	Fri, 01 Mar 2024 10:19:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfz3H-0007Et-Pk
	for lore@pengutronix.de; Fri, 01 Mar 2024 10:19:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=c8hDrgKLNWnF6b8WyasDdGDICEoeYVXrRKmCBwVXKVU=; b=MK/gwVXt4es4RXQUEElsoYqxeL
	2DN0wIFcW7GsZKGNwChOPZ4fp2xO7r0I/S+rqn+N+3/ibUumyK4rme34au9gxoceFkP1YdQxW70oj
	+jMsRav9S3Z1USKhjb2s2hYxsMEyedKWsjQip5YOSxwqiUNqlUQYnLkcqWZH92ZbZEY+pnaGqb0An
	yq0iW6M7FDn0p9pNaZOWYn3xpwTuG1UgUclApKz+XvIMXsuB7J8KCaIPW8bXY59wG38JzJ5mMdZlA
	qyf7n7wqcYO2lnptLGtpXhqGMo5PkZ7TmsTwFMvalKzutDXIL4au7hcS5XyfJCB0l06AAsv+/FhzX
	4DnUlPfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfz2b-0000000H6Ki-2cE2;
	Fri, 01 Mar 2024 09:18:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfz2Y-0000000H6Jj-3e03
	for barebox@lists.infradead.org;
	Fri, 01 Mar 2024 09:18:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rfz2V-00076T-ID; Fri, 01 Mar 2024 10:18:47 +0100
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rfz2V-003kiJ-5v; Fri, 01 Mar 2024 10:18:47 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rfz2V-00F2Tb-0K;
	Fri, 01 Mar 2024 10:18:47 +0100
Date: Fri, 1 Mar 2024 10:18:47 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <ZeGdd4oatCtGQnF7@pengutronix.de>
References: <20240301074400.1616644-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240301074400.1616644-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240301_011850_928298_C4A9C8E4 
X-CRM114-Status: GOOD (  23.23  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH next] fixup! usb: xhci: reset endpoint on USB stall
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Fri, Mar 01, 2024 at 08:44:00AM +0100, Ahmad Fatoum wrote:
> usb: xhci: call dma_unmap_single in all error paths
> 
> A new early exit for stalled USB was added that resets the endpoint
> before returning an error code to the caller.
> 
> This unintentionally happened before unmapping the buffer, which is
> detected by CONFIG_DMA_API_DEBUG:
> 
>   usb2-0: Resetting EP 0...
>   WARNING: dwc3 2f00000.usb@2f00000.of: from-device mapping 0xbdf96680+0xff: duplicate mapping
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/usb/host/xhci-ring.c | 9 +++++----
>  1 file changed, 5 insertions(+), 4 deletions(-)

The patch is already in master, so I applied the fix there.

Sascha

> 
> diff --git a/drivers/usb/host/xhci-ring.c b/drivers/usb/host/xhci-ring.c
> index 5f68bc7c2f35..691d9c7463ad 100644
> --- a/drivers/usb/host/xhci-ring.c
> +++ b/drivers/usb/host/xhci-ring.c
> @@ -1045,15 +1045,16 @@ int xhci_ctrl_tx(struct usb_device *udev, unsigned long pipe,
>  
>  	record_transfer_result(udev, event, length);
>  	xhci_acknowledge_event(ctrl);
> -	if (udev->status == USB_ST_STALLED) {
> -		reset_ep(udev, ep_index, timeout_ms);
> -		return -EPIPE;
> -	}
>  
>  	/* Invalidate buffer to make it available to usb-core */
>  	if (length > 0)
>  		dma_unmap_single(ctrl->host.hw_dev, map, length, direction);
>  
> +	if (udev->status == USB_ST_STALLED) {
> +		reset_ep(udev, ep_index, timeout_ms);
> +		return -EPIPE;
> +	}
> +
>  	if (GET_COMP_CODE(le32_to_cpu(event->trans_event.transfer_len))
>  			== COMP_SHORT_TX) {
>  		/* Short data stage, clear up additional status stage event */
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



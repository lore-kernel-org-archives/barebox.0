Delivery-date: Tue, 10 Jan 2023 16:24:34 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFGUN-007sNW-E5
	for lore@lore.pengutronix.de; Tue, 10 Jan 2023 16:24:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFGUL-0005K7-AI
	for lore@pengutronix.de; Tue, 10 Jan 2023 16:24:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+ObXJWhHooTGOD7LREpT6ZVSxjGrJ0gss6JnA3jkSHI=; b=vEva/zMWqcQOl2D+cYvnvWfMIX
	cPkrMmhsW2BHIS2fWXvQ+7XS0hBwWH8EA8WOtJwPBqa61DRLJ6lsADIuxXr2S+TNKrpvYkXaaQNC7
	NRBvwwMsSuMrMMtgEBdxxQHO51XrZgCqRKAMeq50oo6C/Rp//ogV6k3jp6NWkg/7UwMQEEgpJLwGD
	Tvo17DfpJQuFbVZTc1trzcq7cHcViIEv+FVqQPhJhQ6+e7gXlq/B/2gk/5wbZdqwMmZUI3q2lx0lz
	FOfQ4iVcNCuM6BOrLaK0ZPlsbkU9fNPsiHMQ2gFEF5MoQ/UDVj4EZC3Irw1NrC5A6Y4Nxa9gmX2T1
	67j7fPNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFGT9-007YNn-NE; Tue, 10 Jan 2023 15:23:19 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFGT4-007YMv-MK
	for barebox@lists.infradead.org; Tue, 10 Jan 2023 15:23:16 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1pFGT2-00051J-6A; Tue, 10 Jan 2023 16:23:12 +0100
Message-ID: <78914b10-2226-1eb7-3aff-35621bacf755@pengutronix.de>
Date: Tue, 10 Jan 2023 16:23:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Michael Grzeschik <m.grzeschik@pengutronix.de>,
 barebox@lists.infradead.org
References: <20230110151738.4019078-1-m.grzeschik@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230110151738.4019078-1-m.grzeschik@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_072314_754344_7B30A933 
X-CRM114-Status: GOOD (  23.59  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] usb: dwc2: fix multiplier handling in endpoint setup
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Michael,

On 10.01.23 16:17, Michael Grzeschik wrote:
> If the multiplier is 0 in the descriptor bitfield the multiplier count
> is one. For calculating the multiplier count the extra function
> usb_endpoint_maxp_mult should be used. Rework the dwc2 driver to use it
> and make multi packages work.
> 
> While at it, we also remove the USB_EP_MAXP_MULT and
> USB_ENDPOINT_MAXP_MASK macros that would stay left unused and are
> defined in include/usb/ch9.ch anyway.

I assume this is a fix and should go into master?
Could you shortly describe the symptoms?

Cheers,
Ahmad

> 
> Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
> ---
>  drivers/usb/dwc2/gadget.c | 9 +--------
>  1 file changed, 1 insertion(+), 8 deletions(-)
> 
> diff --git a/drivers/usb/dwc2/gadget.c b/drivers/usb/dwc2/gadget.c
> index 7070485410..5a72ba795b 100644
> --- a/drivers/usb/dwc2/gadget.c
> +++ b/drivers/usb/dwc2/gadget.c
> @@ -14,13 +14,6 @@
>  #define spin_lock_irqsave(lock, flags) (void)(flags)
>  #define spin_unlock_irqrestore(lock, flags) (void)(flags)
>  
> -#ifndef USB_ENDPOINT_MAXP_MASK
> -#define USB_ENDPOINT_MAXP_MASK	0x07ff
> -#endif
> -#ifndef USB_EP_MAXP_MULT
> -#define USB_EP_MAXP_MULT(m)	(((m) & 0x1800) >> 11)
> -#endif
> -
>  static void kill_all_requests(struct dwc2 *, struct dwc2_ep *, int);
>  
>  static inline struct dwc2_ep *index_to_ep(struct dwc2 *dwc2,
> @@ -484,7 +477,7 @@ static int dwc2_ep_enable(struct usb_ep *ep,
>  
>  	ep_type = desc->bmAttributes & USB_ENDPOINT_XFERTYPE_MASK;
>  	mps = usb_endpoint_maxp(desc) & USB_ENDPOINT_MAXP_MASK;
> -	mc =  USB_EP_MAXP_MULT(usb_endpoint_maxp(desc));
> +	mc = usb_endpoint_maxp_mult(desc);
>  
>  	/* note, we handle this here instead of dwc2_set_ep_maxpacket */
>  	epctrl_reg = dir_in ? DIEPCTL(index) : DOEPCTL(index);

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |




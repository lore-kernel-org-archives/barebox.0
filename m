Delivery-date: Wed, 01 Feb 2023 19:14:42 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pNHd5-00AQNr-K9
	for lore@lore.pengutronix.de; Wed, 01 Feb 2023 19:14:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pNHd2-0001kS-OT
	for lore@pengutronix.de; Wed, 01 Feb 2023 19:14:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BMqzLTBihFVwzL/7A17b4+eBrHDxUjX9OCto6Fc3MXQ=; b=pDpOUNRLjn8iikr+M8ko9ZXgU2
	Rvl6wZc/zZStl72gyGHKsTJ7DwxAVA8czMUx7/a7dKmK1PZ86LiSl7FrUHZ2MA7BL2uYB6OQPRMD9
	NOw4bJgKBIt2o/GjennNPe3I102Y+npENuvR1jRy/PSP583HDUUEoFd3X3nFiGrmiKJW82/0VvdpK
	FxfxtBtEigSKqE8w64NKachfKKJOFNXG1iHHw8htXkPPn05pwHpm1PUqP2SeQpwhAwB3BwkDr7Wu7
	Z875SbAdR52O1+fLkSTeEHcB5vfnY2ddGs948ugk0Zh7sjhbh4TxNJEOCpJ14FJKosgf+s0XWvLQQ
	JG8CsVFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNHbv-00D9C6-1E; Wed, 01 Feb 2023 18:13:31 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNHbq-00D9BJ-Eb
	for barebox@lists.infradead.org; Wed, 01 Feb 2023 18:13:28 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1pNHbp-0001dU-2G; Wed, 01 Feb 2023 19:13:25 +0100
Message-ID: <47af6a80-3fec-1f05-793c-6a4a62bd219a@pengutronix.de>
Date: Wed, 1 Feb 2023 19:13:24 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Michael Grzeschik <m.grzeschik@pengutronix.de>,
 barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>
Cc: Jules Maselbas <jmaselbas@kalray.eu>
References: <20230124200114.3160585-1-m.grzeschik@pengutronix.de>
 <20230124200114.3160585-2-m.grzeschik@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230124200114.3160585-2-m.grzeschik@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230201_101326_520502_67407263 
X-CRM114-Status: GOOD (  25.10  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 2/2] usb: dwc2: fix multiplier handling in endpoint
 setup
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 24.01.23 21:01, Michael Grzeschik wrote:
> If the multiplier is 0 in the descriptor bitfield the multiplier count
> is one. For calculating the multiplier count the extra function
> usb_endpoint_maxp_mult should be used. Rework the dwc2 driver to use it
> and make multi packages work.
> 
> While at it, we also remove the USB_EP_MAXP_MULT and
> USB_ENDPOINT_MAXP_MASK macros that would stay left unused and are
> defined in include/usb/ch9.ch anyway.
> 
> Tested-by: Jules Maselbas <jmaselbas@kalray.eu>
> Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>

This induces the same breakage as in v1, even a simple ACM gadget
fails:

  barebox@Linux Automation Test Automation Controller (TAC):/ usbgadget -a
  udc0: registering UDC driver [g_multi]
  multi_bind: creating ACM function
  g_multi usbgadget: Multifunction Composite Gadget
  g_multi usbgadget: g_multi ready
  dwc2 49000000.usb-otg@49000000.of: bound driver g_multi
  dwc2 49000000.usb-otg@49000000.of: new address 3
  g_multi usbgadget: high-speed config #1: Multifunction Composite Gadget
  ERROR: dwc2 49000000.usb-otg@49000000.of: dwc2_ep_enable: No suitable fifo found


The other patch while maybe applicable to the kernel, doesn't do anything
for barebox. Please test barebox patches in barebox for v3.

@Sascha, can you drop this series from next?

Cheers,
Ahmad

> ---
> v1 -> v2: - added tested-by
> 
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




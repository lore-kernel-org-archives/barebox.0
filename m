Delivery-date: Tue, 10 Jan 2023 16:53:08 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFGw0-007ukr-J9
	for lore@lore.pengutronix.de; Tue, 10 Jan 2023 16:53:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFGvy-0001Hl-Jc
	for lore@pengutronix.de; Tue, 10 Jan 2023 16:53:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lmgFkI+81axC8FXq/iQEAdmPLSGTiodoBfr9zdPOvfw=; b=Pmgrv9dWWt2OFZ538ZaNeUS965
	2Fmt5H/WsSIYocr5G4J/g2R58jaSHIMQtJ10uGon5NsdtuzGBd4wT/aqWR7yTwVWV1/WCLuPuOUvB
	lu624SL+52NFWV3YJST2yfw+66gK1f0BkZvfnA/Y7Ir5/WvvlZJ9ir5GTINFG7NbRTdyP14cPbhKY
	Su/oUKSzi0F0hD0IxiyiE0OZ4sLndMfbngk8SU6H2Jh/88rYLS2sItD943+7K5Sy0MxCi+9njTNpb
	g2CjVGMUyHyiocVxru/lksaOyztFnmZEUbJQbqmf7NRjF+5torzdjowDmo40aLQeJXd853B2aEpYl
	xH7GdbWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFGum-007f5w-9Z; Tue, 10 Jan 2023 15:51:52 +0000
Received: from smtpout140.security-mail.net ([85.31.212.149] helo=fx409.security-mail.net)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFGui-007f4Y-0F
	for barebox@lists.infradead.org; Tue, 10 Jan 2023 15:51:49 +0000
Received: from localhost (fx409.security-mail.net [127.0.0.1])
	by fx409.security-mail.net (Postfix) with ESMTP id 2C866349833
	for <barebox@lists.infradead.org>; Tue, 10 Jan 2023 16:51:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
	s=sec-sig-email; t=1673365903;
	bh=WMo4Y+KNKlvVkZ3dhi5EQwxFtnheg5CqTTWe5Ot8Wz0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=TMOZrELHbzy9FIjZRyHUdmQeKLlSF83WUE2KteKy7mAhlBbhcvBnPtqxcg57/rIV8
	 rY+XaUlM4AcjwC+S4kuKJsqNDcX048hvB19qW3aCrI4AF6wu8JYEdUomx+2x67pU8f
	 qDHfjORyR1qc2hL5uVX0R5/daQ8WmXd+et1n1YxM=
Received: from fx409 (fx409.security-mail.net [127.0.0.1]) by
 fx409.security-mail.net (Postfix) with ESMTP id EF4DE349391; Tue, 10 Jan
 2023 16:51:42 +0100 (CET)
Received: from zimbra2.kalray.eu (unknown [217.181.231.53]) by
 fx409.security-mail.net (Postfix) with ESMTPS id 27D26349809; Tue, 10 Jan
 2023 16:51:42 +0100 (CET)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1]) by
 zimbra2.kalray.eu (Postfix) with ESMTPS id 0080A27E0402; Tue, 10 Jan 2023
 16:51:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1]) by zimbra2.kalray.eu
 (Postfix) with ESMTP id DCCB727E0405; Tue, 10 Jan 2023 16:51:41 +0100 (CET)
Received: from zimbra2.kalray.eu ([127.0.0.1]) by localhost
 (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026) with ESMTP id
 1qCKoE1u-BYI; Tue, 10 Jan 2023 16:51:41 +0100 (CET)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206]) by
 zimbra2.kalray.eu (Postfix) with ESMTPSA id C06A627E0402; Tue, 10 Jan 2023
 16:51:41 +0100 (CET)
X-Virus-Scanned: E-securemail
Secumail-id: <5428.63bd898e.251ba.0>
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu DCCB727E0405
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1673365901;
 bh=lmgFkI+81axC8FXq/iQEAdmPLSGTiodoBfr9zdPOvfw=;
 h=Date:From:To:Message-ID:MIME-Version;
 b=Ch9Ip6AfRVTyUW7at074S+Lg+xVdazHE8Fqimd96priBvLkqg8Ra7Vq9qnm7Khqw0
 qnscyQxYqK+FnUrXuxyaUdAtY9hP/Ws4ykoCHrdIGBhzcQ5ULa9la4bBYR+RqWu6D1
 034/v6/261JDxIxgGNWy3OGtECBYewIYjy3YA3dk=
Date: Tue, 10 Jan 2023 16:51:40 +0100
From: Jules Maselbas <jmaselbas@kalray.eu>
To: Michael Grzeschik <m.grzeschik@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230110155140.GB29108@tellis.lin.mbt.kalray.eu>
References: <20230110151738.4019078-1-m.grzeschik@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230110151738.4019078-1-m.grzeschik@pengutronix.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_075148_223138_90318DAE 
X-CRM114-Status: GOOD (  20.24  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] usb: dwc2: fix multiplier handling in endpoint setup
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Jan 10, 2023 at 04:17:38PM +0100, Michael Grzeschik wrote:
> If the multiplier is 0 in the descriptor bitfield the multiplier count
> is one. For calculating the multiplier count the extra function
> usb_endpoint_maxp_mult should be used. Rework the dwc2 driver to use it
> and make multi packages work.
Yes, the driver seems to expect mc to be in the range of 1 to 3
included (see dwc2_set_ep_maxpacket in driver/usb/dwc2/gadget.c)
This is aslo the range accepted by dwc2 hardware.

However the .mc fields isn't used at all, it should be written
in the epsize register (see macro DXEPTSIZ_MC)


> While at it, we also remove the USB_EP_MAXP_MULT and
> USB_ENDPOINT_MAXP_MASK macros that would stay left unused and are
> defined in include/usb/ch9.ch anyway.
Indeed, this is can be removed.

I've tested this patch on one board and it worked just find.

Tested-by: Jules Maselbas <jmaselbas@kalray.eu>

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
> -- 
> 2.30.2
> 
> 
> 
> 
> 
> 







Delivery-date: Thu, 02 Feb 2023 08:23:20 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pNTwH-00B6WH-T8
	for lore@lore.pengutronix.de; Thu, 02 Feb 2023 08:23:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pNTwF-0004ON-8a
	for lore@pengutronix.de; Thu, 02 Feb 2023 08:23:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xF28sFn/+YgwSIcRSEfmW8EX5veqQT6QwD2gEyqEbPc=; b=s6eRO6rm8sn1RmmR4iaiiaVV0S
	189OUpYwQSVfiVgWHgBPiyFbF14OiaIVgNxxis3cIs/xVh4s7iPe64yOEGTiPyIcYFYHSbBb6oM32
	cLQ99bMfwGSlAVxYffJWp3OG8SVkjBAMAKtb3ycoRU+1bSCh0s6Xg9zaow5WiU0IwMNZB46iOQ+pj
	HJgNOnIxezFa8gbdDnwicS5Sm0g0V1GCaAhKkUsMeXN0eHiwBm7YkJyKYtiLnyxsqhe1jipwywUS+
	3tIxaEBLQU92GHNTb3l+PEvmBDLYbe3YefmMLc8RH98Y3xdZRa27kLD+D1MjCNqD1yGyy3zujbNjy
	0vWwdbJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNTua-00EcnS-QG; Thu, 02 Feb 2023 07:21:36 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNTuV-00Ecm3-P5
	for barebox@lists.infradead.org; Thu, 02 Feb 2023 07:21:33 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pNTuN-0004By-Qj; Thu, 02 Feb 2023 08:21:23 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pNTuN-00028c-AA; Thu, 02 Feb 2023 08:21:23 +0100
Date: Thu, 2 Feb 2023 08:21:23 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <20230202072123.GI13319@pengutronix.de>
References: <20230124200114.3160585-1-m.grzeschik@pengutronix.de>
 <20230124200114.3160585-2-m.grzeschik@pengutronix.de>
 <47af6a80-3fec-1f05-793c-6a4a62bd219a@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <47af6a80-3fec-1f05-793c-6a4a62bd219a@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230201_232131_831829_6B9C2013 
X-CRM114-Status: GOOD (  23.54  )
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
Cc: barebox@lists.infradead.org, Jules Maselbas <jmaselbas@kalray.eu>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 2/2] usb: dwc2: fix multiplier handling in endpoint
 setup
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Feb 01, 2023 at 07:13:24PM +0100, Ahmad Fatoum wrote:
> On 24.01.23 21:01, Michael Grzeschik wrote:
> > If the multiplier is 0 in the descriptor bitfield the multiplier count
> > is one. For calculating the multiplier count the extra function
> > usb_endpoint_maxp_mult should be used. Rework the dwc2 driver to use it
> > and make multi packages work.
> > 
> > While at it, we also remove the USB_EP_MAXP_MULT and
> > USB_ENDPOINT_MAXP_MASK macros that would stay left unused and are
> > defined in include/usb/ch9.ch anyway.
> > 
> > Tested-by: Jules Maselbas <jmaselbas@kalray.eu>
> > Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
> 
> This induces the same breakage as in v1, even a simple ACM gadget
> fails:
> 
>   barebox@Linux Automation Test Automation Controller (TAC):/ usbgadget -a
>   udc0: registering UDC driver [g_multi]
>   multi_bind: creating ACM function
>   g_multi usbgadget: Multifunction Composite Gadget
>   g_multi usbgadget: g_multi ready
>   dwc2 49000000.usb-otg@49000000.of: bound driver g_multi
>   dwc2 49000000.usb-otg@49000000.of: new address 3
>   g_multi usbgadget: high-speed config #1: Multifunction Composite Gadget
>   ERROR: dwc2 49000000.usb-otg@49000000.of: dwc2_ep_enable: No suitable fifo found
> 
> 
> The other patch while maybe applicable to the kernel, doesn't do anything
> for barebox. Please test barebox patches in barebox for v3.
> 
> @Sascha, can you drop this series from next?

Did that.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



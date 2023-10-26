Delivery-date: Thu, 26 Oct 2023 16:33:00 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qw1Pw-004dmx-Iw
	for lore@lore.pengutronix.de; Thu, 26 Oct 2023 16:33:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qw1Pv-0002xS-7J
	for lore@pengutronix.de; Thu, 26 Oct 2023 16:32:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BNvrpV4pZofwxar9eA1PUdEpuW5aLW5AgcikYVs4z40=; b=uiY6Iz8ojnqvqClIIkI0JGOw36
	snQKtf8sKY4Ea/B9mNKnvein+6pw4ffH7DtNuVyL62mS7a00SHkOpSphElfg94dQEcEVKbiCQEG6p
	rMenhY7X1rL48WHsEVAK+C30BshtS+0zi7FkpWqOTwsIfcdqh6dGGgu4WNkkV/wDKsTYO3DsXoyug
	9pw3LcHBWZtZD8UFOqjlnDteOcmgK2aWGHMDnq0lLrfI92JdwSNqwYujhNwqrLIcXYO+hFUN04mMY
	naIm+wMZPXW5hB2Of35VSPR7SepJyGGxj7/8+V6ud0V8pVPJfQKOnG5WcUQOc5/u1UJsirSr+Zk/N
	U8vvMuHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qw1Ot-00Eggr-14;
	Thu, 26 Oct 2023 14:31:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qw1Oi-00Ega6-0O
	for barebox@lists.infradead.org;
	Thu, 26 Oct 2023 14:31:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1qw1Og-0002cx-UY; Thu, 26 Oct 2023 16:31:42 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1qw1Og-004Qlc-Hl; Thu, 26 Oct 2023 16:31:42 +0200
Received: from mfe by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1qw1Og-00GT3e-FZ; Thu, 26 Oct 2023 16:31:42 +0200
Date: Thu, 26 Oct 2023 16:31:42 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20231026143142.6dlijrwabwgj4kfb@pengutronix.de>
References: <20231026124623.4054582-1-m.felsch@pengutronix.de>
 <2e8afb0f-8ac4-575e-3029-9c1fffdb71fc@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2e8afb0f-8ac4-575e-3029-9c1fffdb71fc@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231026_073144_164287_C06615CF 
X-CRM114-Status: GOOD (  16.19  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] usb: gadget: initialize serialnumber as empty string
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 23-10-26, Ahmad Fatoum wrote:
> Hello Marco,
> 
> On 26.10.23 14:46, Marco Felsch wrote:
> > Windows hosts do require the serial number to be set to any ascii string
> > to enumerate correctly. Set the serial number to "empty" to provide a
> > sane default which works for both hosts. Users can still override this
> > via the gadget.serialnumber variable.
> > 
> > Reported-by: Andrey Zhizhikin <andrey.zhizhikin@leica-geosystems.com>
> > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> > ---
> >  drivers/usb/gadget/udc/core.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/usb/gadget/udc/core.c b/drivers/usb/gadget/udc/core.c
> > index b58498680ad1..dc5d1daa14bf 100644
> > --- a/drivers/usb/gadget/udc/core.c
> > +++ b/drivers/usb/gadget/udc/core.c
> > @@ -1204,7 +1204,7 @@ int usb_add_gadget(struct usb_gadget *gadget)
> >  	gadget->productname = xstrdup(barebox_get_model());
> >  	dev_add_param_string(&gadget->dev, "productname", NULL, NULL,
> >  			     &gadget->productname, NULL);
> > -	gadget->serialnumber = xstrdup("");
> > +	gadget->serialnumber = xstrdup("empty");
> 
> Given that we initialize productname to model, it makes sense to initialize
> serialnumber to global.serial_number now that we have that generic variable.
> 
> If that's unset, you can use a fixed value, I'd prefer "unset" though
> instead of "empty".

I will adapt it, thanks.

Regards,
  Marco



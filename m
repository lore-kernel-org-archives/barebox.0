Delivery-date: Fri, 27 Oct 2023 10:02:13 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qwHnJ-005mk0-Rh
	for lore@lore.pengutronix.de; Fri, 27 Oct 2023 10:02:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qwHnI-0006lN-EC
	for lore@pengutronix.de; Fri, 27 Oct 2023 10:02:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cFK9i7xCQOD6CiDTTK7H/TqbbGfVPxwcUnQOntY/hFg=; b=Pszs71HjU5n0LOewKC2Rt4tikm
	Z/6fV6OGSzpHVJNhSGUpsIrBFX6HvIWwxHLKURwLltQCzzvkCbzcPSjCYrWmjZQudqCMWVYQF7AGL
	J5h2qaV4MjjQhfbdQnejxVX7JZ3CCbCIw/5uGgZK34E8axcuOnAy47/ZZKI9zpIpJ98PUP504oBMP
	nakMgrAJCFBMPEUfi88bvdEOAx53r7HWHKUlI56UcSbVS0/rJRjPL4uEi0SJXrEaMouWjAs9mRhMJ
	iliucNVvNlp+H+/lH02boaOffC5c8zjqL0280IjBzIhDYDPnN1V3mMyLaZQ5/roS2ge+Fu7xqLlaM
	8Az3TSjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qwHlr-00FrZf-0a;
	Fri, 27 Oct 2023 08:00:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qwHln-00FrXK-32
	for barebox@lists.infradead.org;
	Fri, 27 Oct 2023 08:00:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qwHli-0006AT-Pu; Fri, 27 Oct 2023 10:00:34 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qwHli-004aj0-CK; Fri, 27 Oct 2023 10:00:34 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qwHli-00Ga6V-Au; Fri, 27 Oct 2023 10:00:34 +0200
Date: Fri, 27 Oct 2023 10:00:34 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Marco Felsch <m.felsch@pengutronix.de>, barebox@lists.infradead.org
Message-ID: <20231027080034.GZ3359458@pengutronix.de>
References: <20231026144325.4172966-1-m.felsch@pengutronix.de>
 <ebc7664f-65ed-964a-437c-20c4dab5b2e6@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ebc7664f-65ed-964a-437c-20c4dab5b2e6@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231027_010039_976334_7BDFDBDB 
X-CRM114-Status: GOOD (  22.57  )
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
Subject: Re: [PATCH v2 1/2] usb: gadget: initialize serialnumber
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Oct 26, 2023 at 11:32:10PM +0200, Ahmad Fatoum wrote:
> On 26.10.23 16:43, Marco Felsch wrote:
> > Windows hosts do require the serial number to be set to any ascii string
> > to enumerate correctly. Set the serial number if provided or to "unset"
> > if not to provide a sane default which works for both hosts.
> > 
> > Reported-by: Andrey Zhizhikin <andrey.zhizhikin@leica-geosystems.com>
> > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> 
> Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> 
> > ---
> > Changelog
> > 
> > v2:
> > - adapt commit message
> > - use barebox_get_serial_number() and "unset"
> > 
> >  drivers/usb/gadget/udc/core.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/usb/gadget/udc/core.c b/drivers/usb/gadget/udc/core.c
> > index b58498680ad1..e7cfa0d5d836 100644
> > --- a/drivers/usb/gadget/udc/core.c
> > +++ b/drivers/usb/gadget/udc/core.c
> > @@ -1204,7 +1204,7 @@ int usb_add_gadget(struct usb_gadget *gadget)
> >  	gadget->productname = xstrdup(barebox_get_model());
> >  	dev_add_param_string(&gadget->dev, "productname", NULL, NULL,
> >  			     &gadget->productname, NULL);
> > -	gadget->serialnumber = xstrdup("");
> > +	gadget->serialnumber = xstrdup(barebox_get_serial_number() ? : "unset");
> 
> Nitpick: xstrdup(NULL) == NULL, so the ternary could be moved out the xstrdup.

gadget->serialnumber is freed when the value of the variable is changed,
so it must be an allocated string. gadget->serialnumber = "unset" would
be wrong.

Sascha

> 
> >  	dev_add_param_string(&gadget->dev, "serialnumber", NULL, NULL,
> >  			     &gadget->serialnumber, NULL);
> >  
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



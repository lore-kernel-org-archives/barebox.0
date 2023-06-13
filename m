Delivery-date: Tue, 13 Jun 2023 10:24:11 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8zK1-004usm-6h
	for lore@lore.pengutronix.de; Tue, 13 Jun 2023 10:24:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8zJy-0001ZF-Nz
	for lore@pengutronix.de; Tue, 13 Jun 2023 10:24:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=m8tD7wyAATDf6Wu7nRLB1lUPjP8ergUbPrHiDVvZG4k=; b=U5BE83zo6bu+vsgaCnPbi4WG+x
	2HBM/vjQl6tvOcRyV1SDr+JGzGcE3nN50xKFXLp63ybI9mFSf+j/BAJDy5MMIMWi6aiJIWWk2LBn1
	qHOLwtZkJcOb6dDtSSVO3jvbRsonc3hlnboZdpiRIkJhOd81PW+2ArEZbjN/qrcB3bpbkAbpL/a0h
	CrAcI8Gnv1SBHSd//sKBuCBA/oR9psV3+2ffDxneBINnv15iHYnWV7kdF9aP7VNKe5YLDSHmkyiP2
	2BQuMM2A9qCgqVicpY6wjJUaR3ommBoVH3sIPkECpsR2q9FLcOHL6nLvXMrlf1lvXJXsHVTwSvjAR
	vrn0ho+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8zIt-007MMd-24;
	Tue, 13 Jun 2023 08:23:03 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8zIq-007MLt-0u
	for barebox@lists.infradead.org;
	Tue, 13 Jun 2023 08:23:01 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1q8zIo-0001OC-RD; Tue, 13 Jun 2023 10:22:58 +0200
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1q8zIo-0002Z9-Em; Tue, 13 Jun 2023 10:22:58 +0200
Date: Tue, 13 Jun 2023 10:22:58 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, Jules Maselbas <jmaselbas@kalray.eu>
Message-ID: <20230613082258.kxwcqjbklwmma4jl@pengutronix.de>
References: <20230602074921.2687669-1-m.felsch@pengutronix.de>
 <20230602074921.2687669-10-m.felsch@pengutronix.de>
 <b8488721-f37e-5400-4c74-855b30eef363@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b8488721-f37e-5400-4c74-855b30eef363@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230613_012300_320177_A699F5DA 
X-CRM114-Status: GOOD (  20.41  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 09/10] OF: gpio: fix device_node leakage
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 23-06-13, Ahmad Fatoum wrote:
> On 02.06.23 09:49, Marco Felsch wrote:
> > Drop the device_node after we are done.
> > 
> > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> 
> There's no leakage fixed here. of_node_put is a no-op in barebox
> and even in the kernel, it only does reference counting when
> CONFIG_OF_DYNAMIC=y.

Didn't noticed that of_node_put() is a no-op but since barebox does
start to handle of-overlays for its own devicetrees we should reconsider
that.

> I don't mind if change is to align with kernel, so with commit
> message reworded:

Sure.

Regards,
  Marco

> 
> Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> 
> > ---
> >  drivers/of/of_gpio.c | 10 +++++++---
> >  1 file changed, 7 insertions(+), 3 deletions(-)
> > 
> > diff --git a/drivers/of/of_gpio.c b/drivers/of/of_gpio.c
> > index c20133bbfd..76398f7542 100644
> > --- a/drivers/of/of_gpio.c
> > +++ b/drivers/of/of_gpio.c
> > @@ -76,16 +76,17 @@ int of_get_named_gpio_flags(struct device_node *np, const char *propname,
> >  	if (!dev) {
> >  		pr_debug("%s: unable to find device of node %s\n",
> >  			 __func__, gpiospec.np->full_name);
> > -		return -EPROBE_DEFER;
> > +		ret = -EPROBE_DEFER;
> > +		goto out;
> >  	}
> >  
> >  	ret = gpio_get_num(dev, gpiospec.args[0]);
> >  	if (ret == -EPROBE_DEFER)
> > -		return ret;
> > +		goto out;
> >  	if (ret < 0) {
> >  		pr_err("%s: unable to get gpio num of device %s: %d\n",
> >  			__func__, dev_name(dev), ret);
> > -		return ret;
> > +		goto out;
> >  	}
> >  
> >  	if (flags) {
> > @@ -93,6 +94,9 @@ int of_get_named_gpio_flags(struct device_node *np, const char *propname,
> >  		of_gpio_flags_quirks(np, propname, flags, index);
> >  	}
> >  
> > +out:
> > +	of_node_put(gpiospec.np);
> > +
> >  	return ret;
> >  }
> >  EXPORT_SYMBOL(of_get_named_gpio_flags);
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 
> 



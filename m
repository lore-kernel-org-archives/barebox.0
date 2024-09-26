Delivery-date: Thu, 26 Sep 2024 09:22:19 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stipO-002ug8-2n
	for lore@lore.pengutronix.de;
	Thu, 26 Sep 2024 09:22:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stipP-0003wN-C6
	for lore@pengutronix.de; Thu, 26 Sep 2024 09:22:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dlobCS0iQEeQl9ggAlb9cR1qrXDHJ4GYIUGKM3AKk9Q=; b=zPSUi0gNS3e+43iZJl4mKhU+js
	PPuok5ouhq9XUpNJN0X/CHHWQznRtgJzB6SKwOtYDIiP1y0goRnWhOrWW+NOj++5MiD7bk1uVDpDe
	xb1oPJeToKZ0cXbhUDphAeaUBHo4PXDFaA+Oti/P/BIPpVAKX9ZNyn8MB3ioA4b+wTG5qAX+/axyS
	A9k8w9r+qLWRgGfn/pEItjSfMpaGn+xuPFIsw9JsYB/NRSCKlqdEePhIICUoT8U7gHWeV/s48AlU+
	dzEHeHwfAvwJKcnv9dNmpbLRb3CYtGbsz8F+F5bA6uVIPl0gkf3+T84z61/nyB3yZad+O2tB7xBwY
	mDXnes4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stip1-00000007UTU-0bNz;
	Thu, 26 Sep 2024 07:21:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1stiZW-00000007Rfr-1930
	for barebox@lists.infradead.org;
	Thu, 26 Sep 2024 07:05:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1stiZU-0004JX-T1; Thu, 26 Sep 2024 09:05:52 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1stiZU-001dBU-Gf; Thu, 26 Sep 2024 09:05:52 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1stiZU-00D6ub-1P;
	Thu, 26 Sep 2024 09:05:52 +0200
Date: Thu, 26 Sep 2024 09:05:52 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: "open list:BAREBOX" <barebox@lists.infradead.org>
Message-ID: <ZvUH0B4IvKxXyMcA@pengutronix.de>
References: <20240925-spi-gpio-v1-0-47f6285b3bf1@pengutronix.de>
 <20240925-spi-gpio-v1-1-47f6285b3bf1@pengutronix.de>
 <334cf766-bf60-494a-8ba2-71006286ff3c@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <334cf766-bf60-494a-8ba2-71006286ff3c@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240926_000554_333074_AECCB736 
X-CRM114-Status: GOOD (  20.46  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/3] spi: spi-gpio: actually delay in spidelay()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Sep 26, 2024 at 07:55:35AM +0200, Ahmad Fatoum wrote:
> On 25.09.24 16:06, Sascha Hauer wrote:
> > spidelay() currently only is a no-op dummy function. Actually delay in
> > this function to avoid spi-gpio being faster than specified.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  drivers/spi/gpio_spi.c | 5 ++++-
> >  1 file changed, 4 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/spi/gpio_spi.c b/drivers/spi/gpio_spi.c
> > index e5664df3fe..a71b4eddab 100644
> > --- a/drivers/spi/gpio_spi.c
> > +++ b/drivers/spi/gpio_spi.c
> > @@ -48,7 +48,10 @@ static inline int getmiso(const struct spi_device *spi)
> >  	return !!gpio_get_value(priv->data->miso);
> >  }
> >  
> > -#define spidelay(nsecs) do { } while (0)
> > +static inline void spidelay(unsigned int nsecs)
> > +{
> > +	udelay(max(1U, nsecs / 1000));
> 
> Why delay 1us at least? Why not use ndelay?

I was under the assumption that we don't have ndelay(). We do have it,
will use it instead.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



Delivery-date: Sat, 30 Jul 2022 13:29:22 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oHkeo-004vW6-MP
	for lore@lore.pengutronix.de; Sat, 30 Jul 2022 13:29:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oHken-0000Gb-8E
	for lore@pengutronix.de; Sat, 30 Jul 2022 13:29:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IJpBRbww7mFgf5v6kmfQktcEEJ4e6Q/xJivrnSP6bIw=; b=00KU3zIjSj+sV50Ge2LJWdJdMw
	r3kCONw7GXHXOkPQogFYIA+l37V6NGJCOKMi1UpwMUqiRWTATbDegaWkouQ6xNUAJ0lFhygyRNsnn
	2sLUwQ4fSFlW967TMmbKoJw+JpqI1xI3ofwlIY8swIR1NoTRyJsEweMioSGOewIA5y1ZkSZzjTfJQ
	p4XB+vk4FPMKKhMe2kCwyZYrjbs3IKlJ6s3EmM+s+2gbd4WjzIedEqSFoYcBjf5huOruzwqxNGRWv
	y84JUZ4Fu7S7Spyg6heqXWXBWRBip5jWgK7y7qf1ikfNzgy7YnYOucrEC+lLZV/FaMORsHqQZBi9/
	1lTGbQ6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oHkdA-0004Pf-NF; Sat, 30 Jul 2022 11:27:40 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oHkd5-0004M0-Sg
	for barebox@lists.infradead.org; Sat, 30 Jul 2022 11:27:37 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1oHkd0-0000Dw-3m; Sat, 30 Jul 2022 13:27:30 +0200
Received: from ore by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1oHkcz-0007pM-RL; Sat, 30 Jul 2022 13:27:29 +0200
Date: Sat, 30 Jul 2022 13:27:29 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220730112729.GA4662@pengutronix.de>
References: <20220413082205.429509-1-o.rempel@pengutronix.de>
 <20220413082205.429509-13-o.rempel@pengutronix.de>
 <7f14c5f2-ec1e-8d76-6aa2-a2a1c4313be5@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <7f14c5f2-ec1e-8d76-6aa2-a2a1c4313be5@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220730_042735_951997_8FD77615 
X-CRM114-Status: GOOD (  16.58  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v5 12/14] net: dsa: add KSZ9477 switch SPI driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Ahmad,

On Sat, Jul 30, 2022 at 11:10:34AM +0200, Ahmad Fatoum wrote:
> Hello Oleksij,
> 
> On 13.04.22 10:22, Oleksij Rempel wrote:
> > +static int microchip_switch_probe(struct device_d *dev)
> > +{
> > +	struct ksz_switch *priv;
> > +	int ret = 0, gpio;
> > +	struct dsa_switch *ds;
> > +
> > +	priv = xzalloc(sizeof(*priv));
> > +
> > +	dev->priv = priv;
> > +	priv->dev = dev;
> > +
> > +	priv->spi = (struct spi_device *)dev->type_data;
> > +	priv->spi->mode = SPI_MODE_0;
> 
> The kernel DSA driver configures SPI_MODE_3.
> Is it intended that you configure the barebox driver differently?

Yes. I wonted to investigate it deeper but didn't found time.
According to the KSZ9477S data sheet, SPI TIMING diagram:
we have following pictures:

FIGURE 6-9: SPI DATA INPUT TIMING

CLK ____/---\__/---\__/---\__/---\__/---\__
SDI   {-----}{-----}{-----}{-----}{-----}

This is CPOL=0 and CPHA=0 == SPI_MODE_0

And FIGURE 6-10: SPI DATA OUTPUT TIMING
CLK ____/---\__/---\__/---\__/---\__/---\__
SDO   {-----}{-----}{-----}{-----}{-----}
(LOW-SPEED MODE) This is CPOL=0 and CPHA=0 == SPI_MODE_0
SDO      {-----}{-----}{-----}{-----}{-----}
(HIGH-SPEED MODE) This is CPOL=0 and CPHA=1 == SPI_MODE_1

If I see it correctly SPI_MODE_3 is not documented at all. And
SPI_MODE_3 didn't worked for me, this is why I started investigating it
:)

Regards,
Oleksij
-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



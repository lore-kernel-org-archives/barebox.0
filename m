Delivery-date: Fri, 17 Jun 2022 08:59:24 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o25wx-004ux8-KW
	for lore@lore.pengutronix.de; Fri, 17 Jun 2022 08:59:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o25wx-0000nM-Fi
	for lore@pengutronix.de; Fri, 17 Jun 2022 08:59:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0AmMPpiU22U6EPbHqg8DKB+gKzk+rdakcm0NGd6xbt0=; b=JuYMAySZACnNv4C6/xgEtaDuJg
	28N2BGguAc4pEW9Aq3ni13CPByDGt1Hs38QNj7kV3pa5sBZuu5KNbRb8deyZt8hKTf1xiV3nfJh5y
	jZOeV1IqVG6wAiigNHOhT1bhAlt3gDhslFAMroyoKY+p0dg+M0+ValLqdlH6wMPaTJkqIo2Nm7fGP
	ID34pYx1vCacxBEpdpmBouQf9/cVXcFWzuDk5wO3YohYh0+Hciq963XknaVGrds2yTOxQWPgcw9jj
	RtcjnzPUMexuqNWdmXPIZUIUsvVPwVNBjGs3ouXZDRX4jmVOH28RfcaWmFeFcgJHll5Td1cGzG4cl
	xROmXYiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o25vg-005oGC-8M; Fri, 17 Jun 2022 06:58:04 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o25vb-005oFQ-Oi
	for barebox@lists.infradead.org; Fri, 17 Jun 2022 06:58:01 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1o25va-0000aO-Bw; Fri, 17 Jun 2022 08:57:58 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1o25vZ-0003YD-QE; Fri, 17 Jun 2022 08:57:57 +0200
Date: Fri, 17 Jun 2022 08:57:57 +0200
To: Oleksij Rempel <linux@rempel-privat.de>
Cc: Oleksij Rempel <o.rempel@pengutronix.de>,
	Robin van der Gracht <robin@protonic.nl>,
	barebox@lists.infradead.org, david@protonic.nl
Message-ID: <20220617065757.GC1615@pengutronix.de>
References: <20220616131114.214628-1-robin@protonic.nl>
 <20220616131114.214628-2-robin@protonic.nl>
 <20220616162833.GD28995@pengutronix.de>
 <85d82f53-5290-613f-2214-924dc2135cb6@rempel-privat.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <85d82f53-5290-613f-2214-924dc2135cb6@rempel-privat.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220616_235759_840402_CA1B89B2 
X-CRM114-Status: GOOD (  22.07  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/9] ARM: boards: protonic-imx6: prtvt7 hardkey inputs
 are active low
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Jun 16, 2022 at 06:38:45PM +0200, Oleksij Rempel wrote:
> Am 16.06.22 um 18:28 schrieb Oleksij Rempel:
> > Hi Robin,
> > 
> > On Thu, Jun 16, 2022 at 03:11:06PM +0200, Robin van der Gracht wrote:
> > > The usb check needs to be skipped unless both keys are pressed
> > > simultaneously.
> > > 
> > > Signed-off-by: Robin van der Gracht <robin@protonic.nl>
> > > ---
> > >   arch/arm/boards/protonic-imx6/board.c | 2 +-
> > >   1 file changed, 1 insertion(+), 1 deletion(-)
> > > 
> > > diff --git a/arch/arm/boards/protonic-imx6/board.c b/arch/arm/boards/protonic-imx6/board.c
> > > index cdbb8debe6..8f8a0c745e 100644
> > > --- a/arch/arm/boards/protonic-imx6/board.c
> > > +++ b/arch/arm/boards/protonic-imx6/board.c
> > > @@ -645,7 +645,7 @@ static int prt_imx6_init_prtvt7(struct prt_imx6_priv *priv)
> > >   	gpio_direction_input(GPIO_KEY_F6);
> > >   	gpio_direction_input(GPIO_KEY_CYCLE);
> > > 
> > > -	if (gpio_get_value(GPIO_KEY_CYCLE) && gpio_get_value(GPIO_KEY_F6))
> > > +	if (gpio_get_value(GPIO_KEY_CYCLE) || gpio_get_value(GPIO_KEY_F6))
> > >   		priv->no_usb_check = 1;
> > 
> > Hm, you probably wont:
> > 	if (!(gpio_get_value(GPIO_KEY_CYCLE) && gpio_get_value(GPIO_KEY_F6)))
> > 
> > otherwise usb check will be always skipped.
> 
> Or, it is active low and your patch is correct :D

If they are, can we add a comment or _N suffix to the names?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



Delivery-date: Fri, 17 Jun 2022 10:55:37 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o27lQ-0051XT-4u
	for lore@lore.pengutronix.de; Fri, 17 Jun 2022 10:55:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o27lP-0004ZZ-MK
	for lore@pengutronix.de; Fri, 17 Jun 2022 10:55:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xFRJUazzN2gdfCjucmLk8DFlu2LVkdHbc+uGNjjpyao=; b=VKan3w/OVxOqGZ6ttQLzm3pVAE
	vhZy51+49JKR9RIRYZS/cUi2xnCDdzoyIZErlY2euyt/mt5jpfd5LPeQvj34oyR/ogME90aaTZnBq
	bK2SgHAAiJ3/xHPBU7D9WmcRLW3BOwdMDRihhJe2EJeFGzFtvNDdXhf8QvHFCJF5bn6UMxvBtkRic
	OYaBgdFpdCnVCo+zedcQsRJIsbF5t7rCXNtPy1mCQNPMyV0+MuNiFwLTCeDY1edBv67HAwFIslu8m
	ct8tVWg42WTLHIdSg1ta8AfKINvben7sGyOwlyL5QRZSEu132B6V3vWb8lHKzywMHCa5xr6zvfCah
	wCYQBdKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o27jk-006UhP-Hc; Fri, 17 Jun 2022 08:53:52 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o27ap-006QQZ-5H
	for barebox@lists.infradead.org; Fri, 17 Jun 2022 08:44:42 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1o27an-0002LE-PM; Fri, 17 Jun 2022 10:44:37 +0200
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1o27an-000176-7V; Fri, 17 Jun 2022 10:44:37 +0200
Date: Fri, 17 Jun 2022 10:44:37 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <sha@pengutronix.de>
Cc: Oleksij Rempel <linux@rempel-privat.de>,
	Oleksij Rempel <o.rempel@pengutronix.de>,
	Robin van der Gracht <robin@protonic.nl>,
	barebox@lists.infradead.org, david@protonic.nl
Message-ID: <20220617084437.fvfwaxaxxediqm3t@pengutronix.de>
References: <20220616131114.214628-1-robin@protonic.nl>
 <20220616131114.214628-2-robin@protonic.nl>
 <20220616162833.GD28995@pengutronix.de>
 <85d82f53-5290-613f-2214-924dc2135cb6@rempel-privat.de>
 <20220617065757.GC1615@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220617065757.GC1615@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220617_014439_246069_1BBC4053 
X-CRM114-Status: GOOD (  22.75  )
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

On 22-06-17, Sascha Hauer wrote:
> On Thu, Jun 16, 2022 at 06:38:45PM +0200, Oleksij Rempel wrote:
> > Am 16.06.22 um 18:28 schrieb Oleksij Rempel:
> > > Hi Robin,
> > > 
> > > On Thu, Jun 16, 2022 at 03:11:06PM +0200, Robin van der Gracht wrote:
> > > > The usb check needs to be skipped unless both keys are pressed
> > > > simultaneously.
> > > > 
> > > > Signed-off-by: Robin van der Gracht <robin@protonic.nl>
> > > > ---
> > > >   arch/arm/boards/protonic-imx6/board.c | 2 +-
> > > >   1 file changed, 1 insertion(+), 1 deletion(-)
> > > > 
> > > > diff --git a/arch/arm/boards/protonic-imx6/board.c b/arch/arm/boards/protonic-imx6/board.c
> > > > index cdbb8debe6..8f8a0c745e 100644
> > > > --- a/arch/arm/boards/protonic-imx6/board.c
> > > > +++ b/arch/arm/boards/protonic-imx6/board.c
> > > > @@ -645,7 +645,7 @@ static int prt_imx6_init_prtvt7(struct prt_imx6_priv *priv)
> > > >   	gpio_direction_input(GPIO_KEY_F6);
> > > >   	gpio_direction_input(GPIO_KEY_CYCLE);
> > > > 
> > > > -	if (gpio_get_value(GPIO_KEY_CYCLE) && gpio_get_value(GPIO_KEY_F6))
> > > > +	if (gpio_get_value(GPIO_KEY_CYCLE) || gpio_get_value(GPIO_KEY_F6))
> > > >   		priv->no_usb_check = 1;
> > > 
> > > Hm, you probably wont:
> > > 	if (!(gpio_get_value(GPIO_KEY_CYCLE) && gpio_get_value(GPIO_KEY_F6)))
> > > 
> > > otherwise usb check will be always skipped.
> > 
> > Or, it is active low and your patch is correct :D
> 
> If they are, can we add a comment or _N suffix to the names?

Does barebox not have gpiod? The board code just should check if it is
active or not. Whatever active means in this case.

Regards,
  Marco

> 
> Sascha
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 
> 



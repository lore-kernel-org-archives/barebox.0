Delivery-date: Mon, 15 Nov 2021 09:08:21 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mmX2L-0004TB-VJ
	for lore@lore.pengutronix.de; Mon, 15 Nov 2021 09:08:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mmX2L-0004ua-2V
	for lore@pengutronix.de; Mon, 15 Nov 2021 09:08:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fsv1IuYQn9MK+iFxoLp6l/1vLc/tVopjp6KYdk9F/1Q=; b=3aGMYlTe9C7Yt1
	djT03A9mLr45lUyu0vyaZmtP7xm7sI6wzh434K8KXxoWImwnLBVL0ELAp37cv1CjkJZofb5d/vuzi
	m06jAGdoPtIeBQXHMntZ4aiVMXsKKS0xu2Szgc+i/TTISYMplqHBr7TSAJo/UJ9AB6RtsbEP4ZE1E
	GW7V05B2KFF66W1JJZhddJchEoqCE5U+a2JtdqM6nxg224rM0gpgf3xlFql24+gEHWitwEt99Uv1D
	vFhbrioDkz+V+5f743kOSrtE7r8hXBIr/gi6YOnhW+5k6po1nSg4HCaJSFiQyRruL6RddQfBzpRBi
	T8aA9PpAbj37X7gf0aOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mmX15-00EdT5-Aa; Mon, 15 Nov 2021 08:07:03 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mmX0z-00EdRx-UD
 for barebox@lists.infradead.org; Mon, 15 Nov 2021 08:06:59 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mmX0y-0004np-MH; Mon, 15 Nov 2021 09:06:56 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mmX0y-0004sP-9R; Mon, 15 Nov 2021 09:06:56 +0100
Date: Mon, 15 Nov 2021 09:06:56 +0100
From: Sascha Hauer <sha@pengutronix.de>
To: Michael Riesch <michael.riesch@wolfvision.net>
Cc: barebox@lists.infradead.org
Message-ID: <20211115080656.GE25698@pengutronix.de>
References: <20211111140316.1646962-1-michael.riesch@wolfvision.net>
 <20211111140316.1646962-2-michael.riesch@wolfvision.net>
 <20211115075116.GC25698@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211115075116.GC25698@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 08:56:36 up 270 days, 11:20, 127 users,  load average: 0.53, 0.43,
 0.26
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211115_000658_002909_6A9D1B2C 
X-CRM114-Status: GOOD (  31.27  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/3] arm: rockchip: rk3568: fix mmc boot source instances
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Nov 15, 2021 at 08:51:16AM +0100, Sascha Hauer wrote:
> On Thu, Nov 11, 2021 at 03:03:14PM +0100, Michael Riesch wrote:
> > The mainline DTS for the RK3568 EVB1 introduces mmc aliases sorted
> > by the addresses of the corresponding controller. This commit
> > fixes the instance number and aligns it with these aliases.
> 
> The board dts sorts them differently, but the file is a SoC specific
> one. We have a problem here.
> 
> Sascha
> 
> > 
> > Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
> > ---
> >  arch/arm/mach-rockchip/rk3568.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> > 
> > diff --git a/arch/arm/mach-rockchip/rk3568.c b/arch/arm/mach-rockchip/rk3568.c
> > index 234c6d22d..95f462eca 100644
> > --- a/arch/arm/mach-rockchip/rk3568.c
> > +++ b/arch/arm/mach-rockchip/rk3568.c
> > @@ -144,10 +144,10 @@ struct rk_bootsource {
> >  
> >  static struct rk_bootsource bootdev_map[] = {
> >  	[0x1] = { .src = BOOTSOURCE_NAND, .instance = 0 },
> > -	[0x2] = { .src = BOOTSOURCE_MMC, .instance = 0 },
> > +	[0x2] = { .src = BOOTSOURCE_MMC, .instance = 1 },
> >  	[0x3] = { .src = BOOTSOURCE_SPI_NOR, .instance = 0 },
> >  	[0x4] = { .src = BOOTSOURCE_SPI_NAND, .instance = 0 },
> > -	[0x5] = { .src = BOOTSOURCE_MMC, .instance = 1 },
> > +	[0x5] = { .src = BOOTSOURCE_MMC, .instance = 0 },

Instead of storing the .src and .instance directly here we could store
the base address of the peripheral here. Then search in the device tree
for the node with that address and get the corresponding alias.

We would then have to translate this into our BOOTSOURCE_ defines and
instance numbers. Or maybe it was a bad idea to have defines for these
and we should have used strings for the bootsources in the first place.

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


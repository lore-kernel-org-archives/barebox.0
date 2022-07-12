Delivery-date: Tue, 12 Jul 2022 16:16:13 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oBGgP-004bru-Mc
	for lore@lore.pengutronix.de; Tue, 12 Jul 2022 16:16:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oBGgN-0003Uj-Cd
	for lore@pengutronix.de; Tue, 12 Jul 2022 16:16:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nR41y4K4OAYi/uhs4K0bi6zjGedYmtgz6yaOAACjE+k=; b=tT3W4r/MwiBEl3NeoO8XXYONaS
	q+zNvG7kRJCVwAcCbwEzCc5K5inkcHg4EO34T6riktx13ATL0uBCtLm3srMWx9dKDyc8GFYj8ywz5
	tD7yiBv5hDWjSdjVY6j5uBxJAAsz7GblQwrN5iD6XgyVm6Njk/KDaRA4mOfKBFV+AMyxLM71+oJSY
	E6iIEGvMySz7f/9wgWNF1Hew3t7xCwPnxBD8M/Uplkjv9VlI3seSJS++jY7ulFqfzhd4SHYwYBgA2
	Bvo3SwAVzyLzsqAUukkaTGiO8AI6bPIy+OkWwstGbtSlYclGouoH5OVKUCV+TKITiJ1lMVsQovOkG
	xalJT/TQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBGf0-00BdhM-IL; Tue, 12 Jul 2022 14:14:46 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBGew-00BdgK-1N
	for barebox@lists.infradead.org; Tue, 12 Jul 2022 14:14:43 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oBGeu-0003BN-5I; Tue, 12 Jul 2022 16:14:40 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oBGet-0006vw-Sb; Tue, 12 Jul 2022 16:14:39 +0200
Date: Tue, 12 Jul 2022 16:14:39 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20220712141439.GF23482@pengutronix.de>
References: <20220712133202.2472149-1-s.hauer@pengutronix.de>
 <20220712133202.2472149-2-s.hauer@pengutronix.de>
 <200c0d39-6ede-e8f8-3c60-f803f707c5ee@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <200c0d39-6ede-e8f8-3c60-f803f707c5ee@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220712_071442_119579_51133A2E 
X-CRM114-Status: GOOD (  20.99  )
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 2/2] ARM: i.MX8MP-EVK: Use compressed dtb
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Jul 12, 2022 at 04:01:38PM +0200, Ahmad Fatoum wrote:
> Hello Sascha,
> 
> On 12.07.22 15:32, Sascha Hauer wrote:
> > Use a compressed dtb to save some space in OCRAM.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> 
> I sent patches a few days ago to move the select to ARCH_IMX8M.

Ups, ok. Then I can drop this patch.

Sascha

> 
> > ---
> >  arch/arm/mach-imx/Kconfig | 1 +
> >  1 file changed, 1 insertion(+)
> > 
> > diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
> > index 54a4f7a33a..fb96234de2 100644
> > --- a/arch/arm/mach-imx/Kconfig
> > +++ b/arch/arm/mach-imx/Kconfig
> > @@ -591,6 +591,7 @@ config MACH_NXP_IMX8MP_EVK
> >  	select IMX8M_DRAM
> >  	select I2C_IMX_EARLY
> >  	select USB_GADGET_DRIVER_ARC_PBL
> > +	select ARM_USE_COMPRESSED_DTB
> >  
> >  config MACH_NXP_IMX8MQ_EVK
> >  	bool "NXP i.MX8MQ EVK Board"
> 
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



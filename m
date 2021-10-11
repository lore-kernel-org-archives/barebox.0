Delivery-date: Mon, 11 Oct 2021 09:21:44 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mZpd2-0005s2-DJ
	for lore@lore.pengutronix.de; Mon, 11 Oct 2021 09:21:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mZpd1-000197-BT
	for lore@pengutronix.de; Mon, 11 Oct 2021 09:21:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=EuIDVaDlXPJWZH4Q0hUpJfaSAhFoB36eFJt6rj/4tuI=; b=AR6IJGYh6euAZeDlo5eAL5NlPP
	WaKnHHlMwP/tsdXaSW92GAMKsm5pAa8bX8U2prT78YrUT0JuOQtOrsnRHjbQz3iD67IsZpdJlvJvK
	//G7xlcYz/VRTljtOkDkiFzQm64fjtgSreP/RvI0sx7SxGJcUCI0dJfGh1k0leEGBboZxZc/x3eO8
	2MsNoBjIrg/eXrrCSvaXxYgjFQPvlS6kFjBYkjnndxSVbWhOJZJLu3TLY7aVs8m/qTGA6A2p3dhOP
	2A7OQM2rE/fcK/EBlgaPHRW/KHTSmG166lbHDCZgUBMwca5VMEpi8eTx65fdxM4LYvhgNOAbcI6Aw
	X52hMvCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mZpb4-0088FU-P0; Mon, 11 Oct 2021 07:19:42 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mZpZh-0087ad-Hp
 for barebox@lists.infradead.org; Mon, 11 Oct 2021 07:18:19 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mZpZd-0000Tv-Ps; Mon, 11 Oct 2021 09:18:13 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mZpZc-0001Q7-Vf; Mon, 11 Oct 2021 09:18:12 +0200
Date: Mon, 11 Oct 2021 09:18:12 +0200
To: Michael Riesch <michael.riesch@wolfvision.net>
Cc: barebox@lists.infradead.org
Message-ID: <20211011071812.GW28453@pengutronix.de>
References: <20211006142254.1751864-1-s.hauer@pengutronix.de>
 <20211006142254.1751864-6-s.hauer@pengutronix.de>
 <19559eab-4ba0-f96a-028e-a748da9b9c29@wolfvision.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <19559eab-4ba0-f96a-028e-a748da9b9c29@wolfvision.net>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:15:52 up 235 days, 10:39, 136 users,  load average: 0.07, 0.19,
 0.20
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211011_001817_637027_DDC90605 
X-CRM114-Status: GOOD (  40.00  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 5/5] scripts: Add rk-usb-loader tool
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Oct 08, 2021 at 04:25:58PM +0200, Michael Riesch wrote:
> Hello Sascha,
> 
> On 10/6/21 4:22 PM, Sascha Hauer wrote:
> > This adds a tool suitable for bootstrapping barebox on Rockchip RK3568
> > SoCs. It has been tested on this SoC only. It might or might not work
> > with minor adjustments on other SoCs.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  scripts/Kconfig         |   8 +
> >  scripts/Makefile        |   3 +
> >  scripts/rk-usb-loader.c | 324 ++++++++++++++++++++++++++++++++++++++++
> >  scripts/rkimage.c       |  32 +---
> >  scripts/rockchip.h      |  35 +++++
> >  5 files changed, 371 insertions(+), 31 deletions(-)
> >  create mode 100644 scripts/rk-usb-loader.c
> >  create mode 100644 scripts/rockchip.h
> > 
> > diff --git a/scripts/Kconfig b/scripts/Kconfig
> > index 5cba520f4b..5118269c2d 100644
> > --- a/scripts/Kconfig
> > +++ b/scripts/Kconfig
> > @@ -102,4 +102,12 @@ config OMAP4_HOSTTOOL_USBBOOT
> >  
> >  	  You need libusb-1.0 to compile this tool.
> >  
> > +config RK_USB_LOADER
> > +	bool "Rockchip USB loader"
> > +	depends on ARCH_ROCKCHIP || COMPILE_HOST_TOOLS
> > +	help
> > +	  Say Y here to build the rockchip usb loader tool.
> > +
> > +	  You need libusb-1.0 to compile this tool.
> > +
> >  endmenu
> > diff --git a/scripts/Makefile b/scripts/Makefile
> > index 53568573a3..db2168bfab 100644
> > --- a/scripts/Makefile
> > +++ b/scripts/Makefile
> > @@ -36,6 +36,9 @@ hostprogs-always-$(CONFIG_OMAP3_USB_LOADER)		+= omap3-usb-loader
> >  HOSTCFLAGS_omap4_usbboot.o = `pkg-config --cflags libusb-1.0`
> >  HOSTLDLIBS_omap4_usbboot = -lpthread `pkg-config --libs libusb-1.0`
> >  hostprogs-always-$(CONFIG_OMAP4_HOSTTOOL_USBBOOT)	+= omap4_usbboot
> > +HOSTCFLAGS_rk-usb-loader.o = `pkg-config --cflags libusb-1.0`
> > +HOSTLDLIBS_rk-usb-loader  = `pkg-config --libs libusb-1.0`
> > +hostprogs-always-$(CONFIG_RK_USB_LOADER)		+= rk-usb-loader
> >  
> >  userprogs-always-$(CONFIG_BAREBOXENV_TARGET)		+= bareboxenv-target
> >  userprogs-always-$(CONFIG_KERNEL_INSTALL_TARGET)	+= kernel-install-target
> > diff --git a/scripts/rk-usb-loader.c b/scripts/rk-usb-loader.c
> > new file mode 100644
> > index 0000000000..87bc7b94a9
> > --- /dev/null
> > +++ b/scripts/rk-usb-loader.c
> > @@ -0,0 +1,324 @@
> > +// SPDX-License-Identifier: GPL-2.0-or-later
> > +
> > +/*
> > + * rk-usb-loader: A tool to USB Bootstrap RK3568 SoCs
> > + *
> > + * This tool bootstraps Rockchip RK3568 SoCs via USB. It currently
> > + * works for this SoC only. It takes the barebox images the barebox
> > + * build process generates as input. The upload protocol has been
> > + * taken from the rkdevelop tool, but it's not a full replacement
> > + * of that tool.
> > + */
> 
> very nice! I was able to load barebox images into the RAM of the RK3568
> EVB1 as well as of the Pine64 Quartz64A boards. So it works for the
> RK3566 as well, maybe this should be reflected in the comments and the
> commit message.
> 
> Also, if it is not too much to ask, a short hint to this tool in the
> documentation would be nice.

I added a text to the documentation and also a note about the RK3566 to
the top of the tool's sourcecode.

> > +	dev = rk_usb_open(ctx, 0x2207, 0x350a);

I hardcoded the vid/pid of the RK3568 here. Is it the same for the
RK3566 or did you have to change it?

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


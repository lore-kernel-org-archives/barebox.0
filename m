Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dUapv-0003v7-ME
 for barebox@lists.infradead.org; Mon, 10 Jul 2017 15:43:01 +0000
Message-ID: <1499701357.18894.1.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon, 10 Jul 2017 17:42:37 +0200
In-Reply-To: <20170710152706.GA12108@ravnborg.org>
References: <20170710152108.23601-1-l.stach@pengutronix.de>
 <20170710152706.GA12108@ravnborg.org>
Mime-Version: 1.0
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] ARM: imx: phyCORE i.MX7 on phyBOARD-Zeta support
To: Sam Ravnborg <sam@ravnborg.org>
Cc: barebox@lists.infradead.org

Am Montag, den 10.07.2017, 17:27 +0200 schrieb Sam Ravnborg:
> Hi Lucas
> 
> > index 000000000000..b1608dd9c730
> > --- /dev/null
> > +++ b/arch/arm/boards/phytec-phycore-imx7/flash-header-phytec-phycore-imx7.imxcfg
> > @@ -0,0 +1,76 @@
> > +/*
> > + * Copyright (C) 2016 NXP Semiconductors
> > + *
> > + * SPDX-License-Identifier:	GPL-2.0
> > + *
> > + * Refer docs/README.imxmage for more details about how-to configure
> > + * and create imximage boot image
> > + *
> > + * The syntax is taken as close as possible with the kwbimage
> > + */
> > +
> > +soc imx7
> > +loadaddr 0x80000000
> > +dcdofs 0x400
> > +
> > +wm 32 0x30340004 0x4F400005
> > +/* Clear then set bit30 to ensure exit from DDR retention */
> > +wm 32 0x30360388 0x40000000
> > +wm 32 0x30360384 0x40000000
> > +
> > +wm 32 0x30391000 0x00000002
> > +wm 32 0x307a0000 0x01040001
> 
> 
> Uwe posted a patch the other day to replace all these
> constants with defines across the tree.
> Looks like a step backward to introduce a new file where this approach is not used.

Uwes patch replaces raw values in the i.MX6 files (where we have defines
for the registers). This is a new i.MX7 board, where no such defines
exists for now.

I'm not saying that we shouldn't try to do the same thing for i.MX7, but
it is considerably more work than for MX6.

Regards,
Lucas


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtp (Exim 4.87 #1 (Red Hat Linux))
 id 1dQ8Ei-0008Nm-0v
 for barebox@lists.infradead.org; Wed, 28 Jun 2017 08:22:10 +0000
Date: Wed, 28 Jun 2017 10:16:07 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20170628081607.oidrzpkvvfc5zj2a@pengutronix.de>
References: <20170627190317.19253-1-uwe@kleine-koenig.org>
 <20170627194002.GB675@sill.h.stcim.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170627194002.GB675@sill.h.stcim.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] ARM: imx: add support for Udoo Neo full
To: Stefan Lengfeld <contact@stefanchrist.eu>
Cc: barebox@lists.infradead.org

Hello Stefan,

On Tue, Jun 27, 2017 at 09:40:02PM +0200, Stefan Lengfeld wrote:
> > new file mode 100644
> > index 000000000000..9bf480305d70
> > --- /dev/null
> > +++ b/arch/arm/boards/udoo-neo/board.c
> > @@ -0,0 +1,27 @@
> > +/*
> > + * Copyright (C) 2014 Pengutronix, Sascha Hauer
> =

> Maybe add or replace your copyright here. At least you have changed some
> strings and function names.

I wonder if a board.c like this is copyrightable at all and don't feel
an urge to eternalize my name there.
 =

> > + * This program is free software; you can redistribute it and/or
> > + * modify it under the terms of the GNU General Public License
> > + * version 2, as published by the Free Software Foundation.
> > + *
> > + * This program is distributed in the hope that it will be useful,
> > + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> > + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> > + * GNU General Public License for more details.
> > + */
> > +
> > +#include <common.h>
> > +#include <init.h>
> > +#include <linux/clk.h>
> > +
> > +static int imx6sx_udoneo_coredevices_init(void)
> > +{
> > +	if (!of_machine_is_compatible("fsl,imx6sx-udoo-neo"))
> > +		return 0;
> > +
> > +	barebox_set_hostname("mx6sx-udooneo");
> > +
> > +	return 0;
> > +}
> > +coredevice_initcall(imx6sx_udoneo_coredevices_init);
> > diff --git a/arch/arm/boards/udoo-neo/flash-header-mx6sx-udoo-neo_full.=
imxcfg b/arch/arm/boards/udoo-neo/flash-header-mx6sx-udoo-neo_full.imxcfg
> > new file mode 100644
> > index 000000000000..176aff49b3ec
> > --- /dev/null
> > +++ b/arch/arm/boards/udoo-neo/flash-header-mx6sx-udoo-neo_full.imxcfg
> > @@ -0,0 +1,124 @@
> > +loadaddr 0x80000000
> > +soc imx6
> > +dcdofs 0x400
> =

> I'm always wondering where the magic values in the flash headers are
> coming from. Whether they are copied from u-boot or another
> variant/board or completely self-made or provided by a friendly hardware
> engineer in an Excel sheet ;-) Maybe you can add a comment here or in
> the commit message. But this would be a new convention, because I have
> not seen it in other flash headers yet.

I got it in a patch from Sascha, don't know where he got it from. I
guess it's a mixure of copy-and-paste from other imxcfgs and the RAMs
datasheet.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

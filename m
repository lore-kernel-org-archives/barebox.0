Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ciyK4-0002WZ-1N
 for barebox@lists.infradead.org; Wed, 01 Mar 2017 07:05:17 +0000
Date: Wed, 1 Mar 2017 08:04:54 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170301070454.vzyx2wg6jct3ghqs@pengutronix.de>
References: <20170209095334.a5brdlab5oqisu5t@pengutronix.de>
 <775aabc6-5d7e-2ccb-3ef3-c8eaeb29aae1@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <775aabc6-5d7e-2ccb-3ef3-c8eaeb29aae1@phytec.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: GPLv3 file in barebox
To: Daniel Schultz <d.schultz@phytec.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Tue, Feb 28, 2017 at 10:41:36AM +0100, Daniel Schultz wrote:
> Acked-by: Daniel Schultz <d.schultz@phytec.de>

Thanks. Applied now with your ack.

Sascha

> =

> Thanks
> =

> -- =

> Mit freundlichen Gr=FC=DFen,
> With best regards,
>   Daniel Schultz
> =

> Am 09.02.2017 um 10:53 schrieb Sascha Hauer:
> > Hi Daniel,
> > =

> > We have found that commands/mmc_extcsd.c is licensed under GPLv3 which
> > is incompatible to the barebox GPLv2 license. Are you ok with
> > relicensing this file? Otherwise we would have to remove it from
> > barebox.
> > If you're ok with relicensing the file please just ack the following
> > patch.
> > =

> > Sascha
> > =

> > ---------------------------------8<----------------------------
> > =

> > From f75fdb6741fa7f20a810798007ec1ebc12886370 Mon Sep 17 00:00:00 2001
> > From: Sascha Hauer <s.hauer@pengutronix.de>
> > Date: Thu, 9 Feb 2017 10:51:49 +0100
> > Subject: [PATCH] commands/mmc_extcsd: Relicense under GPLv2+
> > =

> > GPLv3 is incompatible with the projects license. Relicense file
> > under GPLv2+
> > =

> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  commands/mmc_extcsd.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > =

> > diff --git a/commands/mmc_extcsd.c b/commands/mmc_extcsd.c
> > index d7fc50697c..42adfe0860 100644
> > --- a/commands/mmc_extcsd.c
> > +++ b/commands/mmc_extcsd.c
> > @@ -5,7 +5,7 @@
> >   *
> >   * This program is free software: you can redistribute it and/or modify
> >   * it under the terms of the GNU General Public License as published by
> > - * the Free Software Foundation, either version 3 of the License, or
> > + * the Free Software Foundation, either version 2 of the License, or
> >   * (at your option) any later version.
> >   *
> >   * This program is distributed in the hope that it will be useful,
> > =

> =

> =

> =


-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

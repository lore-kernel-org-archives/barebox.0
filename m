Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbPFi-0000kN-B7
 for barebox@lists.infradead.org; Wed, 20 May 2020 13:59:24 +0000
Date: Wed, 20 May 2020 15:59:20 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20200520135920.34sbvrdafx4evwqj@pengutronix.de>
References: <20200519165208.3546-1-u.kleine-koenig@pengutronix.de>
 <96a9cba1-26d1-b51c-f8c1-f3ab2fde5c0b@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <96a9cba1-26d1-b51c-f8c1-f3ab2fde5c0b@pengutronix.de>
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
Subject: Re: [PATCH] pwm: Replace license and copyright boilerplate by SPDX
 identfiers
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, Roland Hieber <rhi@pengutronix.de>

Hello,

On Wed, May 20, 2020 at 02:10:47PM +0200, Ahmad Fatoum wrote:
> On 5/19/20 6:52 PM, Uwe Kleine-K=F6nig wrote:
> > This adapts all files that were identifed by licensecheck
> > (https://salsa.debian.org/build-common-team/licensecheck.git) as
> > licensed under the GPL and that have a (IMHO) clear copyright statement.
> > =

> > The advantage is that these specifiers are machine-parseable which helps
> > license conformance, e.g. for packaging barebox in Debian.
> > =

> > Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> > ---
> >  drivers/pwm/core.c    | 15 +++------------
> >  drivers/pwm/pwm-mxs.c | 12 ++----------
> >  drivers/pwm/pxa_pwm.c |  6 ++----
> >  3 files changed, 7 insertions(+), 26 deletions(-)
> > =

> > diff --git a/drivers/pwm/core.c b/drivers/pwm/core.c
> > index 05dad93e5ce3..878f4d72bbf5 100644
> > --- a/drivers/pwm/core.c
> > +++ b/drivers/pwm/core.c
> > @@ -1,17 +1,8 @@
> > +// SPDX-License-Identifier: GPL-2.0-or-later
> > +// SPDX-FileCopyrightText: 2011 Sascha Hauer <s.hauer@pengutronix.de>
> > +
> >  /*
> >   * Generic pwmlib implementation
> > - *
> > - * Copyright (C) 2011 Sascha Hauer <s.hauer@pengutronix.de>
> > - *
> > - *  This program is free software; you can redistribute it and/or modi=
fy
> > - *  it under the terms of the GNU General Public License as published =
by
> > - *  the Free Software Foundation; either version 2, or (at your option)
> > - *  any later version.
> > - *
> > - *  This program is distributed in the hope that it will be useful,
> > - *  but WITHOUT ANY WARRANTY; without even the implied warranty of
> > - *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> > - *  GNU General Public License for more details.
> >   */
> >  #include <common.h>
> >  #include <errno.h>
> > diff --git a/drivers/pwm/pwm-mxs.c b/drivers/pwm/pwm-mxs.c
> > index a06040ac3268..1e2db39def22 100644
> > --- a/drivers/pwm/pwm-mxs.c
> > +++ b/drivers/pwm/pwm-mxs.c
> > @@ -1,13 +1,5 @@
> > -/*
> > - * Copyright 2012 Freescale Semiconductor, Inc.
> > - *
> > - * The code contained herein is licensed under the GNU General Public
> > - * License. You may obtain a copy of the GNU General Public License
> > - * Version 2 or later at the following locations:
> > - *
> > - * http://www.opensource.org/licenses/gpl-license.html
> > - * http://www.gnu.org/copyleft/gpl.html
> > - */
> > +// SPDX-License-Identifier: GPL-2.0-only
> =

> The deleted text says "or later"

Strange as I didn't do this manually. My scratch-pad has:

	add_license() {
		git grep -L SPDX-License-Identifier | grep -E '\.(c|cpp|h)$' | xargs lice=
nsecheck | awk -F: '$2 =3D=3D " '"$1"'" {print $1}' | xargs sed -i "1i // S=
PDX-License-Identifier: $2"
	}

	add_license "GPL (v2)" "GPL-2.0-only"
	add_license "GPL (v2 or later)" "GPL-2.0-or-later"

which does the right thing when I rety it.

I just rechecked the other patches I created and this is the only
problematic change.

@Sascha: can you fix up here please?
@Ahmad: Thanks for your attention.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

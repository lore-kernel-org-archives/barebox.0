Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcVdb-0001ou-SE
 for barebox@lists.infradead.org; Sat, 23 May 2020 15:00:37 +0000
Date: Sat, 23 May 2020 17:00:32 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20200523150032.5lopw2n3c7onpqxe@pengutronix.de>
References: <20200519165208.3546-1-u.kleine-koenig@pengutronix.de>
 <96a9cba1-26d1-b51c-f8c1-f3ab2fde5c0b@pengutronix.de>
 <20200522125556.pisjtt6pe5jtfkyq@pengutronix.de>
 <20200522131759.dnof3ixb4idqemcv@pengutronix.de>
 <20200523141612.3xjmugzalvokwubv@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200523141612.3xjmugzalvokwubv@pengutronix.de>
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
To: Sascha Hauer <s.hauer@pengutronix.de>, Roland Hieber <rhi@pengutronix.de>
Cc: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>

Hello Sascha, hello Roland,

On Sat, May 23, 2020 at 04:16:12PM +0200, Roland Hieber wrote:
> On Fri, May 22, 2020 at 03:17:59PM +0200, Uwe Kleine-K=F6nig wrote:
> > Hello Roland,
> > =

> > On Fri, May 22, 2020 at 02:55:56PM +0200, Roland Hieber wrote:
> > > On Wed, May 20, 2020 at 02:10:47PM +0200, Ahmad Fatoum wrote:
> > > > On 5/19/20 6:52 PM, Uwe Kleine-K=F6nig wrote:
> > > > > diff --git a/drivers/pwm/pwm-mxs.c b/drivers/pwm/pwm-mxs.c
> > > > > index a06040ac3268..1e2db39def22 100644
> > > > > --- a/drivers/pwm/pwm-mxs.c
> > > > > +++ b/drivers/pwm/pwm-mxs.c
> > > > > @@ -1,13 +1,5 @@
> > > > > -/*
> > > > > - * Copyright 2012 Freescale Semiconductor, Inc.
> > > > > - *
> > > > > - * The code contained herein is licensed under the GNU General P=
ublic
> > > > > - * License. You may obtain a copy of the GNU General Public Lice=
nse
> > > > > - * Version 2 or later at the following locations:
> > > > > - *
> > > > > - * http://www.opensource.org/licenses/gpl-license.html
> > > > > - * http://www.gnu.org/copyleft/gpl.html
> > > > > - */
> > > > > +// SPDX-License-Identifier: GPL-2.0-only
> > > > =

> > > > The deleted text says "or later"
> > > =

> > > Ah, I stumbled over this too. The deleted text says:
> > > =

> > >     "The code contained herein is licensed under the GNU General Publ=
ic
> > >     License."
> > > =

> > > which in itself reads like "you can use any version of the GPL" (i.e.,
> > > GPL-1.0-or-later). Later then the text says:
> > > =

> > >     "You may obtain a copy of the GNU General Public License
> > >     Version 2 or later at the following locations:"
> > > =

> > > which in my opinion does not say anything about which version of the =
GPL
> > > the code is licensed under.
> > =

> > This seems to be a problem in the Freescale template. I think I pointed
> > that out once, but nothing changed.
> > =

> > For practical reasons I'd interpret that as "GPL-2.0-or-later".
> =

> Yeah, I guess that's alright.
> =

> Reviewed-by: Roland Hieber <rhi@pengutronix.de>

I assume this Reviewed-by: applies only if we squash

diff --git a/drivers/pwm/pwm-mxs.c b/drivers/pwm/pwm-mxs.c
index 1e2db39def22..08819b43bc1d 100644
--- a/drivers/pwm/pwm-mxs.c
+++ b/drivers/pwm/pwm-mxs.c
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0-only
+// SPDX-License-Identifier: GPL-2.0-or-later
 // SPDX-FileCopyrightText: 2012 Freescale Semiconductor, Inc.
 =

 #include <common.h>

into the patch Sascha applied.

Sascha, can you care for this?

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

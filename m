Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTmyN-0004sF-Hd
 for barebox@lists.infradead.org; Wed, 29 Apr 2020 13:42:01 +0000
Date: Wed, 29 Apr 2020 15:41:56 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20200429134156.heqow7sqyilgwgwp@pengutronix.de>
References: <20200428132405.3624-1-u.kleine-koenig@pengutronix.de>
 <20200429105044.pyc5gj343e2v4hgy@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200429105044.pyc5gj343e2v4hgy@pengutronix.de>
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
Subject: Re: [PATCH] arch/arm/boards: Replace license and copyright
 boilerplate by SPDX identfiers
To: Roland Hieber <rhi@pengutronix.de>
Cc: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>

Hallo Roland,

first of all thanks for your feedback.

On Wed, Apr 29, 2020 at 12:50:45PM +0200, Roland Hieber wrote:
> On Tue, Apr 28, 2020 at 03:24:05PM +0200, Uwe Kleine-K=F6nig wrote:
> > diff --git a/arch/arm/boards/beaglebone/board.c b/arch/arm/boards/beagl=
ebone/board.c
> > index 819bdfae465a..661af7dbe0a1 100644
> > --- a/arch/arm/boards/beaglebone/board.c
> > +++ b/arch/arm/boards/beaglebone/board.c
> > @@ -1,20 +1,5 @@
> > -/*
> > - * (C) Copyright 2008
> > - * Texas Instruments, <www.ti.com>
> > - * Raghavendra KH <r-khandenahally@ti.com>
> > - *
> > - * Copyright (C) 2012 Jan Luebbe <j.luebbe@pengutronix.de>
> > - *
> > - * This program is free software; you can redistribute it and/or
> > - * modify it under the terms of the GNU General Public License as
> > - * published by the Free Software Foundation; either version 2 of
> > - * the License, or (at your option) any later version.
> > - *
> > - * This program is distributed in the hope that it will be useful,
> > - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> > - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> > - * GNU General Public License for more details.
> > - */
> > +// SPDX-License-Identifier: GPL-2.0-or-later
> > +// SPDX-FileCopyrightText: =A9 2008 Raghavendra KH <r-khandenahally@ti=
.com>, Texas Instruments (http://www.ti.com/)
> =

> SPDX-FileCopyrightText: =A9 2012 Jan Luebbe <j.luebbe@pengutronix.de>
> is missing

right, good catch.

> > diff --git a/arch/arm/boards/embedsky-e9/board.c b/arch/arm/boards/embe=
dsky-e9/board.c
> > index e5f92636fbc3..e86d1700376b 100644
> > --- a/arch/arm/boards/embedsky-e9/board.c
> > +++ b/arch/arm/boards/embedsky-e9/board.c
> > @@ -1,21 +1,12 @@
> > +// SPDX-License-Identifier: GPL-2.0-or-later
> > +// SPDX-FileCopyrightText: =A9 2014 Andrey Panov <rockford@yandex.ru>
> > +
> >  /*
> > - * Copyright (C) 2014 Andrey Panov <rockford@yandex.ru>
> > - *
> >   * based on arch/arm/boards/freescale-mx6-sabresd/board.c
> >   * Copyright (C) 2013 Hubert Feurstein <h.feurstein@gmail.com>
> >   *
> >   * based on arch/arm/boards/freescale-mx6-sabrelite/board.c
> >   * Copyright (C) 2012 Steffen Trumtrar, Pengutronix
> =

> This looks like SPDX-FileCopyrightText to me too?

I'm unsure (and didn't add SPDX-FileCopyrightText consistently for these
(I hope)). Is the copyright "infecting" in this way? What is your
suggestion?

	// SPDX-License-Identifier: GPL-2.0-or-later
	// SPDX-FileCopyrightText: =A9 2014 Andrey Panov <rockford@yandex.ru>
	// SPDX-FileCopyrightText: =A9 2013 Hubert Feurstein <h.feurstein@gmail.co=
m>
	// SPDX-FileCopyrightText: =A9 2012 Steffen Trumtrar, Pengutronix

	/*
	 * based on arch/arm/boards/freescale-mx6-sabresd/board.c
	 * and arch/arm/boards/freescale-mx6-sabrelite/board.c
	 */

?

> > diff --git a/arch/arm/boards/karo-tx6x/board.c b/arch/arm/boards/karo-t=
x6x/board.c
> > index 54b1e248f43d..f9d790b0f189 100644
> > --- a/arch/arm/boards/karo-tx6x/board.c
> > +++ b/arch/arm/boards/karo-tx6x/board.c
> > @@ -1,23 +1,13 @@
> > +// SPDX-License-Identifier: GPL-2.0-or-later
> > +// SPDX-FileCopyrightText: =A9 2014 Steffen Trumtrar, Pengutronix
> > +
> > +#define pr_fmt(fmt) "Karo-tx6: " fmt
> > +
> >  /*
> > - * Copyright (C) 2014 Steffen Trumtrar, Pengutronix
> > - *
> > - *
> >   * with the PMIC init code taken from u-boot
> >   * Copyright (C) 2012,2013 Lothar Wa=DFmann <LW@KARO-electronics.de>
> =

> [..]
> =

> > - *
> > - * This program is free software; you can redistribute it and/or
> > - * modify it under the terms of the GNU General Public License as
> > - * published by the Free Software Foundation; either version 2 of
> > - * the License, or (at your option) any later version.
> > - *
> > - * This program is distributed in the hope that it will be useful,
> > - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> > - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> > - * GNU General Public License for more details.
> >   */
> >  =

> > -#define pr_fmt(fmt) "Karo-tx6: " fmt
> > -
> =

> Why does this line move to the top...?

huch, I guess I first removed the comment about u-boot and then readded
it during my own review at the wrong place. Will fix.

> > diff --git a/arch/arm/boards/phytec-phycard-omap3/pca-a-l1.h b/arch/arm=
/boards/phytec-phycard-omap3/pca-a-l1.h
> > index f6f89966970c..2a9477b8aa25 100644
> > --- a/arch/arm/boards/phytec-phycard-omap3/pca-a-l1.h
> > +++ b/arch/arm/boards/phytec-phycard-omap3/pca-a-l1.h
> > @@ -1,22 +1,11 @@
> > +// SPDX-License-Identifier: GPL-2.0-or-later
> > +// SPDX-FileCopyrightText: =A9 2008 Raghavendra KH <r-khandenahally@ti=
.com>,Texas Instruments (<www.ti.com>)
> =

> You might want to add an additional space after the comma.

indeed. And also remove the < >.

> > diff --git a/arch/arm/boards/phytec-phycore-pxa270/config.h b/arch/arm/=
boards/phytec-phycore-pxa270/config.h
> > index ca02b1140b27..325c40191329 100644
> > --- a/arch/arm/boards/phytec-phycore-pxa270/config.h
> > +++ b/arch/arm/boards/phytec-phycore-pxa270/config.h
> > @@ -1,23 +1,7 @@
> > -/*
> > - * Copyright (C) 2005 Phytec Messtechnik GmbH
> > - * Juergen Kilb, H. Klaholz <armlinux@phytec.de>
> > - *
> > - * Copyright (C) 2006 Pengutronix
> > - * Sascha Hauer <s.hauer@pengutronix.de>
> > - * Robert Schwebel <r.schwebel@pengutronix.de>
> > - *
> > - * This program is free software; you can redistribute it and/or
> > - * modify it under the terms of the GNU General Public License as
> > - * published by the Free Software Foundation; either version 2 of
> > - * the License, or (at your option) any later version.
> > - *
> > - * This program is distributed in the hope that it will be useful,
> > - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> > - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> > - * GNU General Public License for more details.
> > - *
> > - *
> > - */
> > +// SPDX-License-Identifier: GPL-2.0-or-later
> > +// SPDX-FileCopyrightText: =A9 2005 Juergen Kilb & H. Klaholz <armlinu=
x@phytec.de>, Phytec Messtechnik GmbH
> =

> Nitpick: an '&' might have a slightly different semantics as a ','.

Right, I didn't use a , as the email address looked as if it covered
both persons. An alternative I considered is to use two lines for the
two developpers and duplicate the email address. I don't like s/&/,/ as
after a name and a comma in all other locations a company only follows.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

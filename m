Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jR087-0008FJ-M8
 for barebox@lists.infradead.org; Tue, 21 Apr 2020 21:08:33 +0000
Date: Tue, 21 Apr 2020 23:08:27 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20200421210827.ivvwaostkssofq2q@pengutronix.de>
References: <20200417203308.22372-1-u.kleine-koenig@pengutronix.de>
 <20200420084657.7vqzmu5g5aj63sza@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200420084657.7vqzmu5g5aj63sza@pengutronix.de>
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
Subject: Re: [PATCH] commands/*: Replace license boilerplate by SPDX identfiers
To: Roland Hieber <rhi@pengutronix.de>
Cc: barebox@lists.infradead.org

Hello Roland,

On Mon, Apr 20, 2020 at 10:46:57AM +0200, Roland Hieber wrote:
> On Fri, Apr 17, 2020 at 10:33:08PM +0200, Uwe Kleine-K=F6nig wrote:
> > While at it also drop references to the non-existing CREDITS file.
> > =

> > Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> > ---
> > Hello,
> > =

> > there is one file (2048.c) that specifies the MIT license. I wonder if
> > we should use "GPL-2.0 OR MIT" there as effectively as distributed with
> > barebox it is licensed under the GPL 2, isn't it?
> =

> I would stay as close to the source as possible. MIT and GPL-2.0 are
> compatible, so there is no problem on the project level, and I see no
> reason to handle this on the level of individual files.

fine for me.

> > diff --git a/commands/2048.c b/commands/2048.c
> > index 865803a5a616..f5f86940e80e 100644
> > --- a/commands/2048.c
> > +++ b/commands/2048.c
> > @@ -1,6 +1,5 @@
> > +// SPDX-License-Identifier: MIT
> >  /*
> > - * The MIT License (MIT)
> > - *
> >   * Copyright (c) 2014 Maurits van der Schee
> >   *
> >   * Permission is hereby granted, free of charge, to any person obtaini=
ng a copy
> =

> These boilerplate lines could be removed too.

I wasn't sure this is the right thing as "The above copyright notice and
this permission notice shall be included in all copies or substantial
portions of the Software." Probably this is not relevant when we include
the license as Ahmad pointed out.

> > +// SPDX-License-Identifier: GPL-2.0+
> =

> GPL-2.0+ is the old-style identifier, which is deprecated by SPDX (see
> https://spdx.org/licenses/ at the bottom).  I think we should also use
> new-style GPL-2.0-or-later or GPL-2.0-only here.
> =

> The rest looks okay. Thanks for picking this up!

Thanks for looking through the patch and giving feedback.

Will send a revised patch later (or tomorrow).

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

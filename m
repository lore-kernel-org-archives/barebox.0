Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x233.google.com ([2a00:1450:4010:c07::233])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dyGLa-0005JF-06
 for barebox@lists.infradead.org; Sat, 30 Sep 2017 11:54:20 +0000
Received: by mail-lf0-x233.google.com with SMTP id l196so1897228lfl.1
 for <barebox@lists.infradead.org>; Sat, 30 Sep 2017 04:53:55 -0700 (PDT)
Date: Sat, 30 Sep 2017 15:05:51 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20170930150551.4e4a69c8c8280463fbb02562@gmail.com>
In-Reply-To: <282b43e5-7a6d-8085-a4f3-5f100bfe4953@rempel-privat.de>
References: <20170928231249.4158-1-antonynpavlov@gmail.com>
 <20170928231249.4158-3-antonynpavlov@gmail.com>
 <282b43e5-7a6d-8085-a4f3-5f100bfe4953@rempel-privat.de>
Mime-Version: 1.0
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
Subject: Re: [RFC v4 02/10] RISC-V: add Erizo SoC support
To: Oleksij Rempel <linux@rempel-privat.de>
Cc: barebox@lists.infradead.org

On Fri, 29 Sep 2017 14:18:40 +0200
Oleksij Rempel <linux@rempel-privat.de> wrote:

> Probably it is better to send it as patch not as RFC ;)

There are still some issues.
 =

> Am 29.09.2017 um 01:12 schrieb Antony Pavlov:

...

> > diff --git a/arch/riscv/boards/erizo-generic/board.c b/arch/riscv/board=
s/erizo-generic/board.c
> > new file mode 100644
> > index 000000000..ecda85001
> > --- /dev/null
> > +++ b/arch/riscv/boards/erizo-generic/board.c
> > @@ -0,0 +1,28 @@
> > +/*
> > + * Copyright (C) 2016 Antony Pavlov <antonynpavlov@gmail.com>
> > + *
> > + * This file is part of barebox.
> > + * See file CREDITS for list of people who contributed to this project.
> > + *
> > + * This program is free software; you can redistribute it and/or modify
> > + * it under the terms of the GNU General Public License version 2
> > + * as published by the Free Software Foundation.
> > + *
> > + * This program is distributed in the hope that it will be useful,
> > + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> > + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> > + * GNU General Public License for more details.
> > + *
> > + */
> > +
> > +#include <common.h>
> > +#include <driver.h>
> > +#include <init.h>
> > +
> > +static int hostname_init(void)
> > +{
> > +	barebox_set_hostname("barebox");
> =

> please, use board name. Maybe: erizo-generic or so.
> For network boot the filenames will be constructed as following:
> username-hostname-filetype


That's a good point!


> =

> > +
> > +	return 0;
> > +}
> > +postcore_initcall(hostname_init);


-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

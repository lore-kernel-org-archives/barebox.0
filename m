Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SevYw-0000So-BV
 for barebox@lists.infradead.org; Wed, 13 Jun 2012 21:57:15 +0000
Date: Wed, 13 Jun 2012 23:57:12 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120613215712.GG30400@pengutronix.de>
References: <1339581710-5460-1-git-send-email-s.trumtrar@pengutronix.de>
 <CAA4bVAE21rSWgzhtDAOHxsomjUG0p0r5tmkK7+WwqTaKFvLKxg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAA4bVAE21rSWgzhtDAOHxsomjUG0p0r5tmkK7+WwqTaKFvLKxg@mail.gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] commands: add msleep command
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org, Steffen Trumtrar <s.trumtrar@pengutronix.de>

On Wed, Jun 13, 2012 at 03:07:15PM +0400, Antony Pavlov wrote:
> On 13 June 2012 14:01, Steffen Trumtrar <s.trumtrar@pengutronix.de> wrote:
> > Add a command to sleep for n milliseconds.
> >
> =

> May be will be better to upgrade sleep?
> =

> SYNOPSIS
>        sleep NUMBER
> =

> DESCRIPTION
>        Pause  for  NUMBER seconds.
>        The NUMBER may be an arbitrary floating point  number.

Then we would need code which parses this floating point number. I
assume that this code will be bigger than the code needed for an
additional command. Having both sleep and msleep seems more intuitive
also.

Sascha

> =

> > Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> > ---
> > =A0commands/Kconfig =A0| =A0 =A04 ++++
> > =A0commands/Makefile | =A0 =A01 +
> > =A0commands/msleep.c | =A0 40 ++++++++++++++++++++++++++++++++++++++++
> > =A03 files changed, 45 insertions(+)
> > =A0create mode 100644 commands/msleep.c
> >
> > diff --git a/commands/Kconfig b/commands/Kconfig
> > index 52e1f17..adc0914 100644
> > --- a/commands/Kconfig
> > +++ b/commands/Kconfig
> > @@ -25,6 +25,10 @@ config CMD_SLEEP
> > =A0 =A0 =A0 =A0tristate
> > =A0 =A0 =A0 =A0prompt "sleep"
> >
> > +config CMD_MSLEEP
> > + =A0 =A0 =A0 tristate
> > + =A0 =A0 =A0 prompt "msleep"
> > +
> > =A0config CMD_SAVEENV
> > =A0 =A0 =A0 =A0tristate
> > =A0 =A0 =A0 =A0select ENV_HANDLING
> > diff --git a/commands/Makefile b/commands/Makefile
> > index 4c8a0a9..0970ba3 100644
> > --- a/commands/Makefile
> > +++ b/commands/Makefile
> > @@ -10,6 +10,7 @@ obj-$(CONFIG_CMD_MTEST) =A0 =A0 =A0 =A0 =A0 =A0 =A0 +=
=3D memtest.o
> > =A0obj-$(CONFIG_CMD_EDIT) =A0 =A0 =A0 =A0 +=3D edit.o
> > =A0obj-$(CONFIG_CMD_EXEC) =A0 =A0 =A0 =A0 +=3D exec.o
> > =A0obj-$(CONFIG_CMD_SLEEP) =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0+=3D sleep.o
> > +obj-$(CONFIG_CMD_MSLEEP) =A0 =A0 =A0 +=3D msleep.o
> > =A0obj-$(CONFIG_CMD_RESET) =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0+=3D reset.o
> > =A0obj-$(CONFIG_CMD_GO) =A0 =A0 =A0 =A0 =A0 +=3D go.o
> > =A0obj-$(CONFIG_NET) =A0 =A0 =A0 =A0 =A0 =A0 =A0+=3D net.o
> > diff --git a/commands/msleep.c b/commands/msleep.c
> > new file mode 100644
> > index 0000000..c9fa23c
> > --- /dev/null
> > +++ b/commands/msleep.c
> > @@ -0,0 +1,40 @@
> > +/*
> > + * msleep.c - delay execution for n milliseconds
> > + *
> > + * Copyright (c) 2012 Steffen Trumtrar <s.trumtrar@pengutronix.de>, Pe=
ngutronix
> > + *
> > + * derived from commands/sleep.c
> > + *
> > + * This program is free software; you can redistribute it and/or modify
> > + * it under the terms of the GNU General Public License version 2
> > + * as published by the Free Software Foundation.
> > + *
> > + * This program is distributed in the hope that it will be useful,
> > + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> > + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. =A0See the
> > + * GNU General Public License for more details.
> > + *
> > + */
> > +
> > +#include <common.h>
> > +#include <command.h>
> > +#include <clock.h>
> > +
> > +static int do_msleep(int argc, char *argv[])
> > +{
> > + =A0 =A0 =A0 ulong delay;
> > +
> > + =A0 =A0 =A0 if (argc !=3D 2)
> > + =A0 =A0 =A0 =A0 =A0 =A0 =A0 return COMMAND_ERROR_USAGE;
> > +
> > + =A0 =A0 =A0 delay =3D simple_strtoul(argv[1], NULL, 10);
> > +
> > + =A0 =A0 =A0 mdelay(delay);
> > +
> > + =A0 =A0 =A0 return 0;
> > +}
> > +
> > +BAREBOX_CMD_START(msleep)
> > + =A0 =A0 =A0 .cmd =A0 =A0 =A0 =A0 =A0 =A0=3D do_msleep,
> > + =A0 =A0 =A0 .usage =A0 =A0 =A0 =A0 =A0=3D "delay execution for n mill=
iseconds",
> > +BAREBOX_CMD_END
> > --
> > 1.7.10
> >
> >
> > _______________________________________________
> > barebox mailing list
> > barebox@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/barebox
> =

> =

> =

> -- =

> Best regards,
> =A0 Antony Pavlov
> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
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

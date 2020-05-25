Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd8As-0000ST-KG
 for barebox@lists.infradead.org; Mon, 25 May 2020 08:09:32 +0000
Date: Mon, 25 May 2020 10:09:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200525080928.GP11869@pengutronix.de>
References: <20200520094403.12651-1-s.hauer@pengutronix.de>
 <20200520094403.12651-8-s.hauer@pengutronix.de>
 <901a205b-1e1e-bd23-0e35-88d9b9d88351@emlix.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <901a205b-1e1e-bd23-0e35-88d9b9d88351@emlix.com>
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
Subject: Re: [PATCH 07/19] Introduce idle slice
To: Daniel =?iso-8859-15?Q?Gl=F6ckner?= <dg@emlix.com>
Cc: Barebox List <barebox@lists.infradead.org>, Edmund Henniges <eh@emlix.com>

On Fri, May 22, 2020 at 01:56:33PM +0200, Daniel Gl=F6ckner wrote:
> Hello Sascha,
> =

> Am 20.05.20 um 11:43 schrieb Sascha Hauer:
> > diff --git a/common/console_countdown.c b/common/console_countdown.c
> > index 74dc382795..c69029dc0e 100644
> > --- a/common/console_countdown.c
> > +++ b/common/console_countdown.c
> > @@ -19,6 +19,7 @@
> >  #include <errno.h>
> >  #include <console_countdown.h>
> >  #include <stdio.h>
> > +#include <slice.h>
> >  =

> >  static bool console_countdown_timeout_abort;
> >  =

> =

> with your changes we no longer need that include in here.
> =

> > diff --git a/common/hush.c b/common/hush.c
> > index c24b2c7cd2..61424d98e7 100644
> > --- a/common/hush.c
> > +++ b/common/hush.c
> > @@ -460,7 +460,12 @@ static void get_user_input(struct in_str *i)
> >  	else
> >  		prompt =3D CONFIG_PROMPT_HUSH_PS2;
> >  =

> > +	idle_slice_release();
> > +
> >  	n =3D readline(prompt, console_buffer, CONFIG_CBSIZE);
> > +
> > +	idle_slice_acquire();
> > +
> >  	if (n =3D=3D -1 ) {
> >  		i->interrupt =3D 1;
> >  		n =3D 0;
> =

> Ok, you moved the release/acquire from readline and console_countdown to
> get_user_input and do_autoboot_countdown. That is actually more strict
> than what I had in mind and avoids having to acquire/release in binfmt_run
> and execute_command.
> =

> But I'm not so happy about the removal of the acquire/release in poller.c.
> Now the fastboot poller might be run from within another poller and neith=
er
> do we know which resources that other poller uses nor do we know which
> resources the commands need that we are told over to execute in our polle=
r.

Ok, what you mean here is:

- idle_slice is released
- poller_call() calls some unrelated poller
- this unrelated poller triggers execution of poller_call() again
- poller_call() then triggers pollers which depend on the idle_slice

In this situation we end with pollers depending on the idle_slice to be
executed inside of pollers. Yes, we don't want that, so let's add
acquiring the idle_slice before calling into poller functions back. I
hadn't thought about this situation.

I fixed the other things you mentioned as well.

Sascha

-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

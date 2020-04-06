Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLQcB-0002wI-Od
 for barebox@lists.infradead.org; Mon, 06 Apr 2020 12:12:33 +0000
Received: by mail-lf1-x144.google.com with SMTP id h6so7102228lfc.0
 for <barebox@lists.infradead.org>; Mon, 06 Apr 2020 05:12:30 -0700 (PDT)
Date: Mon, 6 Apr 2020 15:12:27 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20200406151227.62a4bd5c928c46415638876c@gmail.com>
In-Reply-To: <8b4ce6ee-b978-1cc8-956c-ce6e1b5f7e35@pengutronix.de>
References: <20200403122659.32298-1-antonynpavlov@gmail.com>
 <8b4ce6ee-b978-1cc8-956c-ce6e1b5f7e35@pengutronix.de>
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
Subject: Re: [PATCH] startup: introduce global.endianity variable
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, 3 Apr 2020 14:39:27 +0200
Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:

Hi Ahmad,

You are right! There are several mentions of "endianness"
in current barebox codebase and there is no "endianity" mention.

I'll resend fixed patch soon.

-- =

Best regards,
=A0 Antony Pavlov

> Hi,
> =

> On 4/3/20 2:26 PM, Antony Pavlov wrote:
> > The global.endianity variable make it possible
> =

> I'd prefer you call it endianness, as that's the term we are
> using elsewhere in barebox.
> =

> (unless you've a good reason to introduce a new name,
>  if so that should be part of the commit message)
> =

> Cheers
> Ahmad
> =

> > to determine current endian mode from command
> > line or from script on bi-endian capable system.
> > =

> > Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> > ---
> >  common/globalvar.c | 10 ++++++++++
> >  1 file changed, 10 insertions(+)
> > =

> > diff --git a/common/globalvar.c b/common/globalvar.c
> > index c87f2c9339..7632cb6418 100644
> > --- a/common/globalvar.c
> > +++ b/common/globalvar.c
> > @@ -591,6 +591,8 @@ int globalvar_add_simple_ip(const char *name, IPadd=
r_t *ip)
> >  =

> >  static int globalvar_init(void)
> >  {
> > +	const char *endianity;
> > +
> >  	register_device(&global_device);
> >  =

> >  	if (IS_ENABLED(CONFIG_NVVAR))
> > @@ -598,11 +600,19 @@ static int globalvar_init(void)
> >  =

> >  	globalvar_add_simple("version", UTS_RELEASE);
> >  =

> > +	if (IS_ENABLED(CONFIG_CPU_BIG_ENDIAN))
> > +		endianity =3D "big";
> > +	else
> > +		endianity =3D "little";
> > +
> > +	globalvar_add_simple("endianity", endianity);
> > +
> >  	return 0;
> >  }
> >  pure_initcall(globalvar_init);
> >  =

> >  BAREBOX_MAGICVAR_NAMED(global_version, global.version, "The barebox ve=
rsion");
> > +BAREBOX_MAGICVAR_NAMED(global_endianity, global.endianity, "The barebo=
x endianity");
> >  =

> >  /**
> >   * nvvar_save - save NV variables to persistent environment
> > =

> =

> -- =

> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

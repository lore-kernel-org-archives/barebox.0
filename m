Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1ShQJN-0004cV-FH
 for barebox@lists.infradead.org; Wed, 20 Jun 2012 19:11:31 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Wed, 20 Jun 2012 21:09:53 +0200
References: <1340202731-30831-1-git-send-email-jbe@pengutronix.de>
 <201206201708.52673.jbe@pengutronix.de>
 <20120620185059.GC5642@pengutronix.de>
In-Reply-To: <20120620185059.GC5642@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201206202109.54078.jbe@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/2] Enable a way to provide the reason for "being here"
To: barebox@lists.infradead.org
Cc: Uwe =?iso-8859-1?q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>

Hi Uwe,

Uwe Kleine-K=F6nig wrote:
> On Wed, Jun 20, 2012 at 05:08:52PM +0200, Juergen Beisert wrote:
> > Marc Kleine-Budde wrote:
> > > [...]
> > >
> > > > +
> > > > +#include <common.h>
> > > > +#include <init.h>
> > > > +#include <environment.h>
> > > > +#include <globalvar.h>
> > > > +#include <reset_source.h>
> > > > +
> > > > +static const char name[] =3D "global.system.reset";
> > > > +static const char unknown_reset[] =3D "unknown";
> > > > +static const char power_on_reset[] =3D "POR";
> > > > +static const char manual_reset[] =3D "RST";
> > > > +static const char watchdog[] =3D "WDG";
> > > > +static const char wake[] =3D "WKE";
> > > > +static const char jtag[] =3D "JTAG";
> > >
> > > what about using an array
> > >
> > > static cost char *reset_reason_array[] =3D {
> > > 	[RESET_UKWN] =3D "unknown",
> > > 	...
> > > };
> >
> > The result is not the same. The strings are no longer "const". But it
> > should
>
> <kidding>Of course they are not "const" if you write "cost".</kidding>
> Using
>
> 	static const char * const reset_reason_array[] =3D {
>
> should do the trick.

No, it doesn't. Only this would:

static const bla[] =3D "this is a really constant string";
static const char * const reset_reason_array[] =3D {
	[0] =3D bla,
[...]
};

But its ugly. So I will prefer Marc's suggestion.

> Having said that, I wonder what is the difference between
>
> 	static const char wake[] =3D "WKE";
> 	... use wake here ...
>
> and
>
> 	... just use "WKE" ...

Just based on how U-Boot does it.

jbe

-- =

Pengutronix e.K.                              | Juergen Beisert            =
 |
Linux Solutions for Science and Industry      | Phone: +49-5121-206917-5128=
 |
Vertretung Sued/Muenchen, Germany             | Fax:   +49-5121-206917-5555=
 |
Amtsgericht Hildesheim, HRA 2686              | http://www.pengutronix.de/ =
 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

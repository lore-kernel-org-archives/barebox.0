Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1ShPzZ-0004Rn-PR
 for barebox@lists.infradead.org; Wed, 20 Jun 2012 18:51:02 +0000
Date: Wed, 20 Jun 2012 20:50:59 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20120620185059.GC5642@pengutronix.de>
References: <1340202731-30831-1-git-send-email-jbe@pengutronix.de>
 <1340202731-30831-2-git-send-email-jbe@pengutronix.de>
 <4FE1E3CE.8050908@pengutronix.de>
 <201206201708.52673.jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201206201708.52673.jbe@pengutronix.de>
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
To: Juergen Beisert <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Jun 20, 2012 at 05:08:52PM +0200, Juergen Beisert wrote:
> Marc Kleine-Budde wrote:
> > [...]
> > > +
> > > +#include <common.h>
> > > +#include <init.h>
> > > +#include <environment.h>
> > > +#include <globalvar.h>
> > > +#include <reset_source.h>
> > > +
> > > +static const char name[] =3D "global.system.reset";
> > > +static const char unknown_reset[] =3D "unknown";
> > > +static const char power_on_reset[] =3D "POR";
> > > +static const char manual_reset[] =3D "RST";
> > > +static const char watchdog[] =3D "WDG";
> > > +static const char wake[] =3D "WKE";
> > > +static const char jtag[] =3D "JTAG";
> >
> > what about using an array
> >
> > static cost char *reset_reason_array[] =3D {
> > 	[RESET_UKWN] =3D "unknown",
> > 	...
> > };
> =

> The result is not the same. The strings are no longer "const". But it sho=
uld =

<kidding>Of course they are not "const" if you write "cost".</kidding>
Using

	static const char * const reset_reason_array[] =3D {

should do the trick.
Having said that, I wonder what is the difference between

	static const char wake[] =3D "WKE";
	... use wake here ...

and

	... just use "WKE" ...

.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

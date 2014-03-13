Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x230.google.com ([2a00:1450:4010:c04::230])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WNxkn-0004CL-CP
 for barebox@lists.infradead.org; Thu, 13 Mar 2014 05:00:26 +0000
Received: by mail-lb0-f176.google.com with SMTP id 10so314365lbg.35
 for <barebox@lists.infradead.org>; Wed, 12 Mar 2014 22:00:01 -0700 (PDT)
Date: Thu, 13 Mar 2014 09:09:28 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20140313090928.5da682507706b31ca2e38b54@gmail.com>
In-Reply-To: <20140312205041.GN17250@pengutronix.de>
References: <1394487281-10462-1-git-send-email-antonynpavlov@gmail.com>
 <1394487281-10462-2-git-send-email-antonynpavlov@gmail.com>
 <20140312205041.GN17250@pengutronix.de>
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
Subject: Re: [PATCH 1/8] clocksource: add dummy software-only clocksource
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, 12 Mar 2014 21:50:41 +0100
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> On Tue, Mar 11, 2014 at 01:34:34AM +0400, Antony Pavlov wrote:
> > This driver is very handy for initial barebox porting.
> > It was used for running barebox on DiGiC2-based camera
> > and initial porting barebox to Loongson-1 and ar9331.
> > =

> > Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > Reported-by: Alexander Aring <alex.aring@gmail.com>
> > Reported-by: Alexander Shiyan <shc_work@mail.ru>
> > ---
> >  drivers/clocksource/Kconfig  |  9 +++++++
> >  drivers/clocksource/Makefile |  1 +
> >  drivers/clocksource/dummy.c  | 56 ++++++++++++++++++++++++++++++++++++=
++++++++
> >  3 files changed, 66 insertions(+)
> > =

> > diff --git a/drivers/clocksource/Kconfig b/drivers/clocksource/Kconfig
> > index 4ef25ec..f9e00ff 100644
> > --- a/drivers/clocksource/Kconfig
> > +++ b/drivers/clocksource/Kconfig
> > @@ -14,6 +14,15 @@ config CLOCKSOURCE_CLPS711X
> >  	bool
> >  	depends on ARCH_CLPS711X
> >  =

> > +config CLOCKSOURCE_DUMMY
> > +	bool "Enable dummy software-only clocksource"
> > +	default n
> =

> You can drop the default n, no is the default already. Could you add
> some help text mentioning that this clocksource is for early bringup
> only and doesn't provide correct timing?

Ok, I'll write a help text.

Yesterday I got working davinci hardware clocksource :)
So I have no dependency on dummy clocksource for Davinci. =


What is about the rest of davinci patches?

> > +
> > +config CLOCKSOURCE_DUMMY_RATE
> > +	int "compile loglevel"
> =

> copy/paste ;) ?

:)

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

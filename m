Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22e.google.com ([2a00:1450:4010:c04::22e])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WQXR0-0005IF-71
 for barebox@lists.infradead.org; Thu, 20 Mar 2014 07:30:38 +0000
Received: by mail-lb0-f174.google.com with SMTP id u14so294653lbd.5
 for <barebox@lists.infradead.org>; Thu, 20 Mar 2014 00:30:14 -0700 (PDT)
Date: Thu, 20 Mar 2014 11:39:45 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20140320113945.b5d5addb8bed349118566364@gmail.com>
In-Reply-To: <20140319204529.GD17250@pengutronix.de>
References: <1395228552-28724-1-git-send-email-antonynpavlov@gmail.com>
 <20140319204529.GD17250@pengutronix.de>
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
Subject: Re: [PATCH] [FOR SQUASH] clocksource: dummy.c: remove Kconfig warning
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, 19 Mar 2014 21:45:29 +0100
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> On Wed, Mar 19, 2014 at 03:29:12PM +0400, Antony Pavlov wrote:
> > This patch removes this warning during 'make *config':
> > =

> >   drivers/clocksource/Kconfig:36:warning: leading whitespace ignored
> > =

> > Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> =

> Also squashed into the original commit.

Excuse me for my Treppenwitz!

Could you please change

+	int
+	prompt "dummy clocksource rate"

to more usual

+	int "dummy clocksource rate"
?

I'm so sorry!

]> =

> > ---
> >  drivers/clocksource/Kconfig | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> > =

> > diff --git a/drivers/clocksource/Kconfig b/drivers/clocksource/Kconfig
> > index f53c933..43974f0 100644
> > --- a/drivers/clocksource/Kconfig
> > +++ b/drivers/clocksource/Kconfig
> > @@ -32,7 +32,8 @@ config CLOCKSOURCE_DUMMY
> >  	  was initialized.
> >  =

> >  config CLOCKSOURCE_DUMMY_RATE
> > -	int "  dummy clocksource rate"
> > +	int
> > +	prompt "dummy clocksource rate"
> >  	depends on CLOCKSOURCE_DUMMY
> >  	default 1000
> >  =

> > -- =

> > 1.9.0
> > =

> > =

> =

> -- =

> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

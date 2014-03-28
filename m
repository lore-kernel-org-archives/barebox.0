Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WTSkn-00069M-9F
 for barebox@lists.infradead.org; Fri, 28 Mar 2014 09:07:09 +0000
Date: Fri, 28 Mar 2014 10:06:47 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140328090647.GD17250@pengutronix.de>
References: <1395822642-14342-1-git-send-email-antonynpavlov@gmail.com>
 <20140328120132.60cb4a7d25fb42cda18bdadc@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140328120132.60cb4a7d25fb42cda18bdadc@gmail.com>
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
Subject: Re: [PATCH] MIPS: lib: add BAREBOX_CLK_TABLE to linker script
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, Mar 28, 2014 at 12:01:32PM +0400, Antony Pavlov wrote:
> On Wed, 26 Mar 2014 12:30:42 +0400
> Antony Pavlov <antonynpavlov@gmail.com> wrote:
> =

> I have included just the same patch into Atheros AR933x series.

Ok, I'll just ignore this one then.

Sascha

> =

> > This commit is based on
> >     commit fa1a406f7245c5482a17014d5b97e8948352e5a5
> >     Author: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
> >     Date:   Sat Nov 9 14:24:18 2013 +0100
> > =

> >         ARM: lib: add BAREBOX_CLK_TABLE to linker script
> > =

> >         This adds an .oftables section right before .dtb section with
> >         BAREBOX_CLK_TABLE to ARM linker script.
> > =

> > Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> > ---
> >  arch/mips/lib/barebox.lds.S | 2 ++
> >  1 file changed, 2 insertions(+)
> > =

> > diff --git a/arch/mips/lib/barebox.lds.S b/arch/mips/lib/barebox.lds.S
> > index bc78d2b..4ee4252 100644
> > --- a/arch/mips/lib/barebox.lds.S
> > +++ b/arch/mips/lib/barebox.lds.S
> > @@ -69,6 +69,8 @@ SECTIONS
> >  	__usymtab : { BAREBOX_SYMS }
> >  	__usymtab_end =3D .;
> >  =

> > +	.oftables : { BAREBOX_CLK_TABLE() }
> > +
> >  	.dtb : { BAREBOX_DTB() }
> >  =

> >  	_edata =3D .;
> > -- =

> > 1.9.0
> > =

> =

> =

> -- =

> --=A0
> Best regards,
> =A0 Antony Pavlov
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

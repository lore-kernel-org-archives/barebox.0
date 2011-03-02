Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Puogw-0005sq-EF
	for barebox@lists.infradead.org; Wed, 02 Mar 2011 16:14:23 +0000
Date: Wed, 2 Mar 2011 17:14:19 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20110302161419.GF22310@pengutronix.de>
References: <6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B00DD7@SRV-VS06.TELEVIC.COM>
	<4D6BC8C7.9090309@pengutronix.de> <4D6BC95B.5030505@pengutronix.de>
	<6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B00E08@SRV-VS06.TELEVIC.COM>
	<6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B00E7D@SRV-VS06.TELEVIC.COM>
	<4D6CFE93.40508@pengutronix.de>
	<20110301142024.GB13983@jasper.tkos.co.il>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20110301142024.GB13983@jasper.tkos.co.il>
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
Subject: Re: scripts
To: Baruch Siach <baruch@tkos.co.il>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Tue, Mar 01, 2011 at 04:20:25PM +0200, Baruch Siach wrote:
> Hi Marc,
> =

> On Tue, Mar 01, 2011 at 03:11:31PM +0100, Marc Kleine-Budde wrote:
> > On 03/01/2011 03:06 PM, Vanalme Filip wrote:
> > [...]
> > =

> > > One more question about barebox scripts (I guess even scripts in
> > > general...). This is part of a script from another board (that I took
> > > over for my own board):
> > =

> > > #!/bin/sh
> > > =

> > > . /env/config
> > > =

> > > If [ x$1 =3D xflash ]; then
> > > 	root=3Dflash
> > > 	kernel=3Dflash
> > > fi
> > > =

> > > if [ x$1 =3D xnet ]; then
> > > 	root=3Dnet
> > > 	kernel=3Dnet
> > > fi
> > > =

> > > why the scripts are using i.e. [ x$1 =3D xflash ] instead of just sim=
ply [ $1 =3D flash ] ? Both are doing the same, no ?
> > =

> > The shell is quite old and doesn't support that. But you're right for
> > modern shells like bash or dash.
> =

> I get this under bash:
> =

> $ [ $UNDEF =3D test ]
> bash: [: =3D: unary operator expected
> =

> However '[ "$UNDEF" =3D test ]' behaves as expected under bash (but not u=
nder =

> hush, which is the shell of Barebox).
I didn't test it, but even if a variable is defined, I guess this might
result in trouble:

	arg=3D-n
	[ $arg =3D flash ]

(At least I remember this being the reason for using "x$arg" back when I
worked on Solaris.)

And note without quoting quite interesting things can happen, e.g.:

	test -n $arg

returns false if arg=3D"=3D 42".

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

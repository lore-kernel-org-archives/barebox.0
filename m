Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Svnrx-0003yo-Ig
 for barebox@lists.infradead.org; Mon, 30 Jul 2012 11:10:38 +0000
Date: Mon, 30 Jul 2012 13:10:32 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20120730111032.GO1528@pengutronix.de>
References: <1343378484-19963-1-git-send-email-u.kleine-koenig@pengutronix.de>
 <1343387010.3793.8.camel@lws-weitzel>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1343387010.3793.8.camel@lws-weitzel>
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
Subject: Re: [PATCH] ARM/imx/pcm043: increase size of "self" partition
To: Jan Weitzel <J.Weitzel@phytec.de>
Cc: barebox@lists.infradead.org

On Fri, Jul 27, 2012 at 01:03:30PM +0200, Jan Weitzel wrote:
> Am Freitag, den 27.07.2012, 10:41 +0200 schrieb Uwe Kleine-K=F6nig:
> > A barebox image generated from pcm043_defconfig doesn't fit into the
> > 0x40000 byte sized self partition as of
> > =

> > 	v2012.07.0-153-g14c8c60 (command: add missing EXPORT_SYMBOL for find_c=
md)
> > =

> > .
> > =

> > Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> > ---
> >  arch/arm/boards/pcm043/pcm043.c |    8 ++++----
> >  1 file changed, 4 insertions(+), 4 deletions(-)
> > =

> > diff --git a/arch/arm/boards/pcm043/pcm043.c b/arch/arm/boards/pcm043/p=
cm043.c
> > index b1bf8ef..7ccd973 100644
> > --- a/arch/arm/boards/pcm043/pcm043.c
> > +++ b/arch/arm/boards/pcm043/pcm043.c
> > @@ -153,15 +153,15 @@ static int imx35_devices_init(void)
> >  	if ((reg & 0xc00) =3D=3D 0x800) {   /* reset mode: external boot */
> >  		switch ( (reg >> 25) & 0x3) {
> >  		case 0x01:              /* NAND is the source */
> > -			devfs_add_partition("nand0", 0x00000, 0x40000, DEVFS_PARTITION_FIXE=
D, "self_raw");
> > +			devfs_add_partition("nand0", 0x00000, 0x60000, DEVFS_PARTITION_FIXE=
D, "self_raw");
> What do you think about SZ_128K + SZ_256K ? Maybe SZ_512K is even
> better.
I don't like SZ_128K + SZ_256K, which in my eyes is more ugly than a hex
constant. And using 512 kiB seems unnecessary to me. I'd like to stay
with 0x60000.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

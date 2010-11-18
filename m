Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PJ1d2-0004MG-RZ
	for barebox@lists.infradead.org; Thu, 18 Nov 2010 10:22:09 +0000
Date: Thu, 18 Nov 2010 11:22:06 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20101118102206.GL8942@pengutronix.de>
References: <AANLkTinH6kLH99A0DgUCp3AFnrLsmcACMeTgW1s1PNKt@mail.gmail.com>
	<20101117091102.GS6017@pengutronix.de>
	<AANLkTik5032UyqFa8XUUMWGhLAeXbOZqGQ_GmZo+Bksc@mail.gmail.com>
	<20101118100133.GU6017@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20101118100133.GU6017@pengutronix.de>
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
Subject: Re: sparse warnings
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Nov 18, 2010 at 11:01:33AM +0100, Sascha Hauer wrote:
> On Thu, Nov 18, 2010 at 10:36:51AM +0100, Belisko Marek wrote:
> > Hi,
> > =

> > On Wed, Nov 17, 2010 at 10:11 AM, Sascha Hauer <s.hauer@pengutronix.de>=
 wrote:
> > > Hi Marek,
> > >
> > > On Mon, Nov 15, 2010 at 03:20:47PM +0100, Belisko Marek wrote:
> > >> Hi,
> > >>
> > >> barebox compilation with C=3D1 produce a lot of sparse warnings.
> > >> Mainly concerning __iomem problems with readb() and similar function=
s.
> > >>
> > >> Make it sense to take care or just could be omitted?
> > >
> > > I think it makes sense to work on this. Then we can see the useful
> > > warnings buried under the __iomem warnings.
> > >
> > > I had the idea of adding a
> > >
> > > #define IOMEM(addr) =A0 =A0 =A0 =A0((void __force __iomem *)(addr))
> > >
> > > and use it where appropriate.
> > Maybe stupid question but couldn't be __iomem mechanism removed complet=
ely?
> > Do we need to check for different address_space? In my opinion it
> > makes no sense in
> > barebox.
> =

> I have a better feeling letting it in. There may be no different address
> spaces on Arm, but there are for exmample on x86.
> You can simply do a #define __iomem in include/linux/compiler.h to
> silence these kinds of warnings temporarily if you are not interested.
> I agree that at least on Arm these warnings will not reveal any real
> bugs.
I can imagine you to get hard to find bugs if you interpret a pointer to
registers as normal pointer without volatile.  Something like:

	unsigned long *register =3D 0xabcdef04;
	while (*register & SOME_FLAG)
		/* nothing */

This might generate code that corresponds to

	if (*register & SOME_FLAG)
		while(1);

So I feel for letting it in, too.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

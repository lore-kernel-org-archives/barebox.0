Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PJ1JA-0001sO-9V
	for barebox@lists.infradead.org; Thu, 18 Nov 2010 10:01:37 +0000
Date: Thu, 18 Nov 2010 11:01:33 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20101118100133.GU6017@pengutronix.de>
References: <AANLkTinH6kLH99A0DgUCp3AFnrLsmcACMeTgW1s1PNKt@mail.gmail.com>
	<20101117091102.GS6017@pengutronix.de>
	<AANLkTik5032UyqFa8XUUMWGhLAeXbOZqGQ_GmZo+Bksc@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AANLkTik5032UyqFa8XUUMWGhLAeXbOZqGQ_GmZo+Bksc@mail.gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: sparse warnings
To: Belisko Marek <marek.belisko@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Nov 18, 2010 at 10:36:51AM +0100, Belisko Marek wrote:
> Hi,
> =

> On Wed, Nov 17, 2010 at 10:11 AM, Sascha Hauer <s.hauer@pengutronix.de> w=
rote:
> > Hi Marek,
> >
> > On Mon, Nov 15, 2010 at 03:20:47PM +0100, Belisko Marek wrote:
> >> Hi,
> >>
> >> barebox compilation with C=3D1 produce a lot of sparse warnings.
> >> Mainly concerning __iomem problems with readb() and similar functions.
> >>
> >> Make it sense to take care or just could be omitted?
> >
> > I think it makes sense to work on this. Then we can see the useful
> > warnings buried under the __iomem warnings.
> >
> > I had the idea of adding a
> >
> > #define IOMEM(addr) =A0 =A0 =A0 =A0((void __force __iomem *)(addr))
> >
> > and use it where appropriate.
> Maybe stupid question but couldn't be __iomem mechanism removed completel=
y?
> Do we need to check for different address_space? In my opinion it
> makes no sense in
> barebox.

I have a better feeling letting it in. There may be no different address
spaces on Arm, but there are for exmample on x86.
You can simply do a #define __iomem in include/linux/compiler.h to
silence these kinds of warnings temporarily if you are not interested.
I agree that at least on Arm these warnings will not reveal any real
bugs.

Sascha


-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

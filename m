Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PLXD4-0005d2-OW
	for barebox@lists.infradead.org; Thu, 25 Nov 2010 08:29:43 +0000
Date: Thu, 25 Nov 2010 09:29:39 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20101125082939.GM6017@pengutronix.de>
References: <AANLkTi=JJf6HyktGrsS5gscd3Yf1wc2Ef2Bb8hbrmEqd@mail.gmail.com>
	<20101124144837.GI11909@game.jcrosoft.org>
	<AANLkTik_SAuEzg3WiSx1ptDejYdrCAoMjN0=SiJRya+C@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AANLkTik_SAuEzg3WiSx1ptDejYdrCAoMjN0=SiJRya+C@mail.gmail.com>
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
Subject: Re: RFC: change map_base type
To: Belisko Marek <marek.belisko@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Nov 24, 2010 at 09:09:43PM +0100, Belisko Marek wrote:
> On Wed, Nov 24, 2010 at 3:48 PM, Jean-Christophe PLAGNIOL-VILLARD
> <plagnioj@jcrosoft.com> wrote:
> > On 13:39 Wed 24 Nov =A0 =A0 , Belisko Marek wrote:
> >> Hi,
> >>
> >> fist sparse patches was accepted but doesn't fix all problems.
> >>
> >> There is still a lot of sparse problems which complain about incorrect=
 type
> >> in functions read(bwl)/writ(bwl). Over whole codebase to this
> >> functions are passed
> >> u_long or u_int types which is not correct.
> >>
> >> e.g. in serial drivers is used for access to registers:
> >> writeb(0x07, dev->map_base + UFCON);
> >>
> >> In my opinion it make no sense to use:
> >> writeb(0x07, IOMEM(dev->map_base + UFCON));
> >>
> >> Instead change map_base type in include/driver.h to void __iomem *map_=
base
> >> which should fix a lot sparse problems.
> >> Then only board code when device is initialized use: .map_base =3D
> >> IOMEM(0x00000...)
> >>
> >> Make it sense or there is not necessary to touch it or other way?
> > it's a ressources so it's the right type as in the kernel
> >
> > the driver need to cast based on it's need
> >
> > as done in linux
> You are right. Linus type for map_base is same like in barebox.
> Anyway if you pass some resource to driver it is always re-mapped and
> used remapped value over all code for IO access.
> =

> Maybe best would be cast map_base in probe function of driver with IOMEM(=
) macro
> and this value store in driver structure and use. Good idea?

Yes, I like it.

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

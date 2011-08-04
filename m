Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QosiH-0001I8-6L
	for barebox@lists.infradead.org; Thu, 04 Aug 2011 07:51:30 +0000
Date: Thu, 4 Aug 2011 09:51:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110804075124.GX31404@pengutronix.de>
References: <1312396666-23348-1-git-send-email-antonynpavlov@gmail.com>
	<20110804071940.GW31404@pengutronix.de>
	<CAA4bVAE2z76oS5TcU+eUozouKCqR1kAAeQgQw0ZLZVLseJVo2g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAA4bVAE2z76oS5TcU+eUozouKCqR1kAAeQgQw0ZLZVLseJVo2g@mail.gmail.com>
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
Subject: Re: [PATCH 1/2] serial_ns16550: move switch from ns16550_{read,
	write}() to ns16550_probe()
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Aug 04, 2011 at 11:38:53AM +0400, Antony Pavlov wrote:
> On 4 August 2011 11:19, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> =

> >>
> >> +#define NS16550_READ_WRITE_UART_FUNC(pfx, cmdr, cmdw, mask) \
> >> +static unsigned int ns16550_generic_##pfx##_read(unsigned long base, \
> >> + =A0 =A0 =A0 =A0 =A0 =A0 unsigned char reg_idx) =A0 =A0 =A0 =A0 =A0\
> >> +{ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0\
> >> + =A0 =A0 return cmdr((char *)base + reg_idx); =A0 =A0\
> >> +} =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0\
> >> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 \
> >> +static void ns16550_generic_##pfx##_write(unsigned int val, unsigned =
long base, \
> >> + =A0 =A0 =A0 =A0 =A0 =A0 unsigned char reg_idx) =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0\
> >> +{ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0\
> >> + =A0 =A0 cmdw((mask val), (char *)base + reg_idx); =A0 =A0 =A0 \
> >> +}
> >> +
> >> +NS16550_READ_WRITE_UART_FUNC(8bit, readb, writeb, 0xff &)
> >> +NS16550_READ_WRITE_UART_FUNC(16bit, readw, writew, 0xffff &)
> >> +NS16550_READ_WRITE_UART_FUNC(32bit, readl, writel, )
> >
> > Please don't do such preprocessor tricks if not necessary. we can afford
> > the 8 additional lines for making this readable.
> =

> approx. > 16 additional lines

Whatever.

> =

> >> + =A0 =A0 if (plat->reg_read =3D=3D NULL) {
> >> + =A0 =A0 =A0 =A0 =A0 =A0 int width =3D dev->resource[0].flags & IORES=
OURCE_MEM_TYPE_MASK;
> >> +
> >> + =A0 =A0 =A0 =A0 =A0 =A0 switch (width) {
> ...
> >> + =A0 =A0 }
> >> +
> >> + =A0 =A0 if (plat->reg_write =3D=3D NULL) {
> >> + =A0 =A0 =A0 =A0 =A0 =A0 int width =3D dev->resource[0].flags & IORES=
OURCE_MEM_TYPE_MASK;
> >> +
> >> + =A0 =A0 =A0 =A0 =A0 =A0 switch (width) {
> ...
> >> + =A0 =A0 =A0 =A0 =A0 =A0 }
> >> + =A0 =A0 }
> >
> > Passing one of the register access function without the other shouldn't
> > be a valid usecase. Jean is right, there should be only one if().
> =

> Agree.
> =

> > Generally platform_data shouldn't be used after device probe and for
> > sure it shouldn't be modified. This may be the point where this driver
> > needs a private data struct.
> =

> I like this point of view.
> We must add private data struct and copy plat->width, plat->reg_read etc =
there.

You won't need plat->width, only the correct the register accessors
depending on plat->width.

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

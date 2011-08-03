Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ww0-f49.google.com ([74.125.82.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QodTc-0003Qk-U3
	for barebox@lists.infradead.org; Wed, 03 Aug 2011 15:35:21 +0000
Received: by wwf22 with SMTP id 22so677216wwf.18
	for <barebox@lists.infradead.org>; Wed, 03 Aug 2011 08:35:19 -0700 (PDT)
MIME-Version: 1.0
Date: Wed, 3 Aug 2011 19:35:18 +0400
Message-ID: <CAA4bVAGcGr9Xv1RTMBbzYDxhcq+xrUeZCCvDJMDZ04cjVsPhZw@mail.gmail.com>
From: Antony Pavlov <antonynpavlov@gmail.com>
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
Subject: problem in serial_ns16550.c
To: barebox <barebox@lists.infradead.org>

Hi!

IMHO there is a problem in ns16550_probe() (see
drivers/serial/serial_ns16550.c:243).

There is the construction:
------
if (!(dev->resource[0].flags & IORESOURCE_MEM_TYPE_MASK) &&
            ((plat->reg_read =3D=3D NULL) || (plat->reg_write =3D=3D NULL)))
                return -EINVAL;
------

Imagine creation of typical serial port:
------
static struct NS16550_plat plat =3D {
        .clock =3D 1843200,
};

...

add_ns16550_device(-1, UART_ADDR, 8, IORESOURCE_MEM_8BIT, &plat);
------

Here we have plat.reg_read =3D=3D NULL, plat.reg_write =3D=3D NULL.
Usage of add_ns16550_device will make
dev->resource[0].flags & IORESOURCE_MEM_TYPE_MASK =3D=3D IORESOURCE_MEM_8BI=
T.

But take into account this (see include/linux/ioport.h):
------
#define IORESOURCE_MEM_TYPE_MASK        (3<<3)
#define IORESOURCE_MEM_8BIT             (0<<3)
------

So IORESOURCE_MEM_8BIT =3D=3D 0 (sic!)

A son tour, !(dev->resource[0].flags & IORESOURCE_MEM_TYPE_MASK) give
true, if flags select IORESOURCE_MEM_8BIT.

As a result, if add_ns16550_device() take IORESOURCE_MEM_8BIT, and
plat->reg_read =3D=3D NULL, plat->reg_write =3D=3D NULL then ns16550_probe()
will return -EINVAL.

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

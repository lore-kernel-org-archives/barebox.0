Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo4.mail-out.ovh.net ([188.165.44.50]
	helo=mo4.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QmnW5-0003Mq-NY
	for barebox@lists.infradead.org; Fri, 29 Jul 2011 13:54:18 +0000
Received: from mail182.ha.ovh.net (b6.ovh.net [213.186.33.56])
	by mo4.mail-out.ovh.net (Postfix) with SMTP id 79310FF9687
	for <barebox@lists.infradead.org>;
	Fri, 29 Jul 2011 15:55:05 +0200 (CEST)
Date: Fri, 29 Jul 2011 15:36:36 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20110729133636.GD25658@game.jcrosoft.org>
References: <1311918777-26719-1-git-send-email-plagnioj@jcrosoft.com>
	<1311918777-26719-6-git-send-email-plagnioj@jcrosoft.com>
	<CAJfOKBwDVwExXnqFss8gC0EkwG9qzdJhEB8qHuK2oCwjwuvrCQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJfOKBwDVwExXnqFss8gC0EkwG9qzdJhEB8qHuK2oCwjwuvrCQ@mail.gmail.com>
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
Subject: Re: [PATCH 6/7] omap: switch to add_generic_device
To: Franck JULLIEN <franck.jullien@gmail.com>
Cc: barebox@lists.infradead.org

On 09:07 Fri 29 Jul     , Franck JULLIEN wrote:
> Hi Jean-Christophe,
> =

> 2011/7/29 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>:
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > ---
> > =A0arch/arm/boards/omap/board-beagle.c =A0 =A0| =A0 30 ++++++----------=
--------------
> > =A0arch/arm/boards/omap/board-sdp343x.c =A0 | =A0 =A01 -
> > =A0arch/arm/mach-omap/devices-gpmc-nand.c | =A0 13 +++----------
> > =A03 files changed, 9 insertions(+), 35 deletions(-)
> >
> > diff --git a/arch/arm/boards/omap/board-beagle.c b/arch/arm/boards/omap=
/board-beagle.c
> > index adf0b94..8f868ad 100644
> > --- a/arch/arm/boards/omap/board-beagle.c
> > +++ b/arch/arm/boards/omap/board-beagle.c
> > @@ -242,14 +242,6 @@ static struct NS16550_plat serial_plat =3D {
> > =A0 =A0 =A0 =A0.reg_write =3D omap_uart_write,
> > =A0};
> >
> > -static struct device_d beagle_serial_device =3D {
> > - =A0 =A0 =A0 .id =3D -1,
> > - =A0 =A0 =A0 .name =3D "serial_ns16550",
> > - =A0 =A0 =A0 .map_base =3D OMAP_UART3_BASE,
> > - =A0 =A0 =A0 .size =3D 1024,
> > - =A0 =A0 =A0 .platform_data =3D (void *)&serial_plat,
> > -};
> > -
> > =A0/**
> > =A0* @brief UART serial port initialization - remember to enable COM cl=
ocks in
> > =A0* arch
> > @@ -259,7 +251,8 @@ static struct device_d beagle_serial_device =3D {
> > =A0static int beagle_console_init(void)
> > =A0{
> > =A0 =A0 =A0 =A0/* Register the serial port */
> > - =A0 =A0 =A0 return register_device(&beagle_serial_device);
> > + =A0 =A0 =A0 return !!add_generic_device("serial_ns16550", -1, NULL, O=
MAP_UART3_BASE, 1024,
> =

> Is this a double "!" in front of add_generic_device ??
yes 1! only

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

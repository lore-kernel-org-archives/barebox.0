Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x230.google.com ([2a00:1450:4010:c04::230])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WSBG7-0002Pc-K0
 for barebox@lists.infradead.org; Mon, 24 Mar 2014 20:14:13 +0000
Received: by mail-lb0-f176.google.com with SMTP id 10so4011176lbg.21
 for <barebox@lists.infradead.org>; Mon, 24 Mar 2014 13:13:47 -0700 (PDT)
Date: Tue, 25 Mar 2014 00:23:30 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20140325002330.48d4fac7fcb327f0c0a418cb@gmail.com>
In-Reply-To: <20140324064531.GJ17250@pengutronix.de>
References: <1395487797-16599-1-git-send-email-antonynpavlov@gmail.com>
 <1395487797-16599-5-git-send-email-antonynpavlov@gmail.com>
 <20140324064531.GJ17250@pengutronix.de>
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
Subject: Re: [PATCH 4/7] serial: ns16550: add compatible entry for
 "ingenic, jz4740-uart"
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, 24 Mar 2014 07:45:31 +0100
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> On Sat, Mar 22, 2014 at 03:29:54PM +0400, Antony Pavlov wrote:
> > Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> > ---
> >  drivers/serial/serial_ns16550.c | 30 ++++++++++++++++++++++++++++++
> >  1 file changed, 30 insertions(+)
> > =

> > diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns=
16550.c
> > index aa0992f..7130871 100644
> > --- a/drivers/serial/serial_ns16550.c
> > +++ b/drivers/serial/serial_ns16550.c
> > @@ -257,6 +257,30 @@ static __maybe_unused struct ns16550_drvdata omap_=
drvdata =3D {
> >  	.linux_console_name =3D "ttyO",
> >  };
> >  =

> > +#define JZ_UART_SHIFT	2
> > +
> > +static void jz_serial_reg_write(unsigned int val, unsigned long base,
> > +	unsigned char reg_offset)
> > +{
> > +	switch (reg_offset) {
> > +	case (fcr << JZ_UART_SHIFT):
> > +		val |=3D 0x10; /* Enable uart module */
> > +		break;
> =

> You could also do this by overwriting .init_port.

I'll do so.
 =

> > +	case (ier << JZ_UART_SHIFT):
> > +		val |=3D (val & 0x4) << 2;
> =

> What does this bit do?

It's non-standard Ingenic-specific 'Receive Timeout Interrupt Enable' bit.
We can simply drop it as we use 'ns16550_write(cdev, 0x00, ier);' for ier i=
nitialization.

> =

> Putting driver logic into the register writes is not good. Where this
> leads to can be seen in drivers/mmc/host/sdhci-esdhc-imx.c in the
> kernel. Could we make fcrval overwritable in drvdata? Or just special
> case the fcr register access in ns16550_setbaudrate?

Please see v2 patchseries.

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

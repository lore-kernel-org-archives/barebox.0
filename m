Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 16.mo3.mail-out.ovh.net ([188.165.56.217]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RnIwM-0001MR-QQ
 for barebox@lists.infradead.org; Tue, 17 Jan 2012 23:59:48 +0000
Received: from mail617.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 603A8FFB613
 for <barebox@lists.infradead.org>; Wed, 18 Jan 2012 01:01:17 +0100 (CET)
Date: Wed, 18 Jan 2012 00:58:38 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120117235838.GF25622@game.jcrosoft.org>
References: <1326796746-8652-1-git-send-email-antonynpavlov@gmail.com>
 <20120117130917.GZ5446@pengutronix.de>
 <CAA4bVAFT8qQ_Z1WxOJQ=RKSGqFNwgSwDgx8BZqg4_+E72OWxwA@mail.gmail.com>
 <20120117145302.GB25622@game.jcrosoft.org>
 <CAA4bVAFLHb6idJ6yUa5ZNDYdBTKroAE4g2_u=YAZ7XB2MCLGrw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAA4bVAFLHb6idJ6yUa5ZNDYdBTKroAE4g2_u=YAZ7XB2MCLGrw@mail.gmail.com>
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
Subject: Re: [RFC] ns16550: support for UART with broken FIFO
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On 23:40 Tue 17 Jan     , Antony Pavlov wrote:
> On 17 January 2012 18:53, Jean-Christophe PLAGNIOL-VILLARD
> <plagnioj@jcrosoft.com> wrote:
> > On 17:27 Tue 17 Jan =A0 =A0 , Antony Pavlov wrote:
> >> On 17 January 2012 17:09, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> >> > On Tue, Jan 17, 2012 at 02:39:06PM +0400, Antony Pavlov wrote:
> >> >> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> >> >> ---
> >> >> =A0drivers/serial/serial_ns16550.c | =A0 19 +++++++++++++++++--
> >> >> =A0include/ns16550.h =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =A0 =A02 ++
> >> >> =A02 files changed, 19 insertions(+), 2 deletions(-)
> >> >>
> >> >> diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/seria=
l_ns16550.c
> >> >> index 1217a5f..01de964 100644
> >> >> --- a/drivers/serial/serial_ns16550.c
> >> >> +++ b/drivers/serial/serial_ns16550.c
> >> >> @@ -139,6 +139,8 @@ static unsigned int ns16550_calc_divisor(struct=
 console_device *cdev,
> >> >> =A0static void ns16550_serial_init_port(struct console_device *cdev)
> >> >> =A0{
> >> >> =A0 =A0 =A0 unsigned int baud_divisor;
> >> >> + =A0 =A0 struct NS16550_plat *plat =3D (struct NS16550_plat *)
> >> >> + =A0 =A0 =A0 =A0 cdev->dev->platform_data;
> >> >>
> >> >> =A0 =A0 =A0 /* Setup the serial port with the defaults first */
> >> >> =A0 =A0 =A0 baud_divisor =3D ns16550_calc_divisor(cdev, CONFIG_BAUD=
RATE);
> >> >> @@ -153,7 +155,13 @@ static void ns16550_serial_init_port(struct co=
nsole_device *cdev)
> >> >> =A0 =A0 =A0 ns16550_write(cdev, (baud_divisor >> 8) & 0xff, dlm);
> >> >> =A0 =A0 =A0 ns16550_write(cdev, LCRVAL, lcr);
> >> >> =A0 =A0 =A0 ns16550_write(cdev, MCRVAL, mcr);
> >> >> - =A0 =A0 ns16550_write(cdev, FCRVAL, fcr);
> >> >> +
> >> >> + =A0 =A0 if (plat->flags & NS16650_FLAG_DISABLE_FIFO) {
> >> >> + =A0 =A0 =A0 =A0 =A0 =A0 ns16550_write(cdev, FCRVAL & ~FCR_FIFO_EN=
, fcr);
> >> >> + =A0 =A0 } else {
> >> >> + =A0 =A0 =A0 =A0 =A0 =A0 ns16550_write(cdev, FCRVAL, fcr);
> >> >> + =A0 =A0 }
> >> >
> >> > unnecessary braces here..
> >> >
> >> >> +
> >> >> =A0#ifdef CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS
> >> >> =A0 =A0 =A0 ns16550_write(cdev, 0x00, =A0mdr1);
> >> >> =A0#endif
> >> >> @@ -211,6 +219,8 @@ static int ns16550_tstc(struct console_device *=
cdev)
> >> >> =A0static int ns16550_setbaudrate(struct console_device *cdev, int =
baud_rate)
> >> >> =A0{
> >> >> =A0 =A0 =A0 unsigned int baud_divisor =3D ns16550_calc_divisor(cdev=
, baud_rate);
> >> >> + =A0 =A0 struct NS16550_plat *plat =3D (struct NS16550_plat *)
> >> >> + =A0 =A0 =A0 =A0 cdev->dev->platform_data;
> >> >>
> >> >> =A0 =A0 =A0 ns16550_write(cdev, 0x00, ier);
> >> >> =A0 =A0 =A0 ns16550_write(cdev, LCR_BKSE, lcr);
> >> >> @@ -218,7 +228,12 @@ static int ns16550_setbaudrate(struct console_=
device *cdev, int baud_rate)
> >> >> =A0 =A0 =A0 ns16550_write(cdev, (baud_divisor >> 8) & 0xff, dlm);
> >> >> =A0 =A0 =A0 ns16550_write(cdev, LCRVAL, lcr);
> >> >> =A0 =A0 =A0 ns16550_write(cdev, MCRVAL, mcr);
> >> >> - =A0 =A0 ns16550_write(cdev, FCRVAL, fcr);
> >> >> + =A0 =A0 if (plat->flags & NS16650_FLAG_DISABLE_FIFO) {
> >> >> + =A0 =A0 =A0 =A0 =A0 =A0 ns16550_write(cdev, FCRVAL & ~FCR_FIFO_EN=
, fcr);
> >> >> + =A0 =A0 } else {
> >> >> + =A0 =A0 =A0 =A0 =A0 =A0 ns16550_write(cdev, FCRVAL, fcr);
> >> >> + =A0 =A0 }
> >> >
> >> > and here. Otherwise this looks ok.
> >>
> >> Ok, I shall remove the braces.
> >>
> >> Sascha!
> >>
> >> We have special OMAP code, e.g.:
> >>
> >> #ifdef CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS
> >> =A0 =A0 =A0 =A0 ns16550_write(cdev, 0x07, mdr1); =A0 =A0 =A0 =A0/* Dis=
able */
> >> #endif
> >>
> >> I think, that we can change it to something like this:
> >>
> >> =A0 =A0 if (plat->flags & NS16650_FLAG_OMAP_EXTENSIONS)
> >> =A0 =A0 =A0 =A0 ns16550_write(cdev, 0x07, mdr1); =A0 =A0 =A0 =A0/* Dis=
able */
> > I don't like to add dead code in the binary
> > just use
> > =A0 =A0 =A0 =A0if (IS_ENABLED(CONFIG_...)
> =

> You is right, but there is another point of view.
> =

> If you have defined CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS
> macro, then you will use OMAP extensions for __ALL__ ports, not only
> for OMAP internal port. May be OMAP have no other ports, only internal
> ports with extensions. But in any case it is bad design example: we
> have very special code (OMAP EXTENSIONS) in universal driver
> (ns16550), and this special code works without checking presents of
> the extensions.
> =

> I don't like dead code too. So there are another solutions:
> =

> #ifdef CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS
>         if (plat->flags & NS16650_FLAG_OMAP_EXTENSIONS)
>             ns16550_write(cdev, 0x07, mdr1);        /* Disable */
> #endif
> =

> or even
>         if (IS_ENABLED(CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS) &&
>          plat->flags & NS16650_FLAG_OMAP_EXTENSIONS)
>             ns16550_write(cdev, 0x07, mdr1);        /* Disable */
this one

Best Regards,
J.
> -- =

> Best regards,
> =A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

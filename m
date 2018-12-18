Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gZB0L-0004I6-V7
 for barebox@lists.infradead.org; Tue, 18 Dec 2018 08:45:31 +0000
Date: Tue, 18 Dec 2018 09:45:18 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181218084518.vjk6xzk5oatqkal2@pengutronix.de>
References: <cover.e610a402e2d09170d606caefc97f20a39572bbde.1545034218.git-series.r.czerwinski@pengutronix.de>
 <39d36e54718c9c5c75175e3836de5425b1f73fb3.1545034218.git-series.r.czerwinski@pengutronix.de>
 <20181218072114.thijfcbgack4sprf@pengutronix.de>
 <1545122359.5234.2.camel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1545122359.5234.2.camel@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v4 2/7] ARM: rpi: retrieve miniuart clock from firmware
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Dec 18, 2018 at 09:39:19AM +0100, Rouven Czerwinski wrote:
> On Tue, 2018-12-18 at 08:21 +0100, Sascha Hauer wrote:
> > On Mon, Dec 17, 2018 at 09:10:40AM +0100, Rouven Czerwinski wrote:
> > > The miniuart uses the core clock as the clock source. This clock is
> > > fixed by the
> > > firmware to 250Mhz if enable_uart=3D1 is set in the config.txt file.
> > > However a user could still choose to overclock the core frequency,
> > > which would result in wrong baudrates computed by barebox.
> > > Retrieve the core clock frequency from the firmware to allow all
> > > potential
> > > firmware configurations to work with barebox.
> > > =

> > > Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
> > > ---
> > > =A0arch/arm/boards/raspberry-pi/rpi-common.c | 7 +++++++
> > > =A01 file changed, 7 insertions(+)
> > > =

> > > diff --git a/arch/arm/boards/raspberry-pi/rpi-common.c
> > > b/arch/arm/boards/raspberry-pi/rpi-common.c
> > > index 490aeef..e29177d 100644
> > > --- a/arch/arm/boards/raspberry-pi/rpi-common.c
> > > +++ b/arch/arm/boards/raspberry-pi/rpi-common.c
> > > @@ -309,6 +309,13 @@ static int rpi_console_clock_init(void)
> > > =A0	clkdev_add_physbase(clk, 0x20201000, NULL);
> > > =A0	clkdev_add_physbase(clk, 0x3f201000, NULL);
> > > =A0
> > > +	clk =3D
> > > rpi_register_firmware_clock(BCM2835_MBOX_CLOCK_ID_CORE,
> > > +					=A0=A0"uart1-8250");
> > =

> > We don't have this function anywhere in the tree, this breaks
> > compilation.
> Yes the base on my series was wrong, its missing a cleanup patch.
> =

> Do you want a single patch or shall I post a new series which
> incorporates the suggestions from Roland and you?

Please resend the whole series.

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

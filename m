Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22b.google.com ([2a00:1450:4010:c03::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YD7Bj-0007gz-Nh
 for barebox@lists.infradead.org; Mon, 19 Jan 2015 07:55:56 +0000
Received: by mail-la0-f43.google.com with SMTP id q1so11813828lam.2
 for <barebox@lists.infradead.org>; Sun, 18 Jan 2015 23:55:33 -0800 (PST)
Date: Mon, 19 Jan 2015 11:58:10 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20150119115810.190c5d6680d88344250de9ee@gmail.com>
In-Reply-To: <20150119075144.GO18220@pengutronix.de>
References: <20150113063128.GC30554@ns203013.ovh.net>
 <1421130790-1164-1-git-send-email-plagnioj@jcrosoft.com>
 <1421130790-1164-2-git-send-email-plagnioj@jcrosoft.com>
 <20150119020858.8ba6db8d84cb7e795078ba99@gmail.com>
 <20150119075144.GO18220@pengutronix.de>
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
Subject: Re: [PATCH 2/6] raspberry-pi: add leds support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, 19 Jan 2015 08:51:44 +0100
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> On Mon, Jan 19, 2015 at 02:08:58AM +0400, Antony Pavlov wrote:
> > On Tue, 13 Jan 2015 07:33:06 +0100
> > Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> wrote:
> > =

> > > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.co=
m>
> > > ---
> > >  arch/arm/boards/raspberry-pi/rpi.c | 55 ++++++++++++++++++++++++++++=
++++++++++
> > >  1 file changed, 55 insertions(+)
> > > =

> > > diff --git a/arch/arm/boards/raspberry-pi/rpi.c b/arch/arm/boards/ras=
pberry-pi/rpi.c
> > > index ae1e92a..81b485e 100644
> > > --- a/arch/arm/boards/raspberry-pi/rpi.c
> > > +++ b/arch/arm/boards/raspberry-pi/rpi.c
> > ...
> > > @@ -160,6 +205,15 @@ unknown_rev:
> > >  	barebox_set_model("RaspberryPi (BCM2835/ARM1176JZF-S)");
> > >  }
> > >  =

> > > +static void rpi_model_init(void)
> > > +{
> > > +	if (!models[rpi_board_rev].init)
> > > +		return;
> > =

> > Houston, we have a problem here.
> > Please see current arch/arm/boards/raspberry-pi/rpi.c:
> > =

> > /* See comments in mbox.h for data source */
> > static const struct {
> > 	const char *name;
> > 	bool has_onboard_eth;
> > 	void (*init)(void);
> > } models[] =3D {
> > 	RPI_MODEL(0, "Unknown model", NULL),
> > 	RPI_MODEL(BCM2835_BOARD_REV_B_I2C0_2, "Model B (no P5)", NULL),
> > 	RPI_MODEL(BCM2835_BOARD_REV_B_I2C0_3, "Model B (no P5)", NULL),
> > 	RPI_MODEL(BCM2835_BOARD_REV_B_I2C1_4, "Model B", NULL),
> > 	RPI_MODEL(BCM2835_BOARD_REV_B_I2C1_5, "Model B", NULL),
> > 	RPI_MODEL(BCM2835_BOARD_REV_B_I2C1_6, "Model B", NULL),
> > 	RPI_MODEL(BCM2835_BOARD_REV_A_7, "Model A", NULL),
> > 	RPI_MODEL(BCM2835_BOARD_REV_A_8, "Model A", NULL),
> > 	RPI_MODEL(BCM2835_BOARD_REV_A_9, "Model A", NULL),
> > 	RPI_MODEL(BCM2835_BOARD_REV_B_REV2_d, "Model B rev2", NULL),
> > 	RPI_MODEL(BCM2835_BOARD_REV_B_REV2_e, "Model B rev2", NULL),
> > 	RPI_MODEL(BCM2835_BOARD_REV_B_REV2_f, "Model B rev2", NULL),
> > 	RPI_MODEL(BCM2835_BOARD_REV_B_PLUS, "Model B+", NULL),
> > 	RPI_MODEL(BCM2835_BOARD_REV_CM, "Compute Module", NULL),
> > 	RPI_MODEL(BCM2835_BOARD_REV_A_PLUS, "Model A+", NULL),
> > };
> > =

> > All inits are NULLs!
> > =

> > Have we any chance to run rpi_add_led()?
> =

> Hm, no, this is never called. Maybe rpi_model_init() should look like
> this instead?
> =

> static void rpi_model_init(void)
> {
> 	if (!models[rpi_board_rev].init)
> 		models[rpi_board_rev].init();


Do you really want to dereference NULL pointer?


 =

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

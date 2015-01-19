Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo2.mail-out.ovh.net ([87.98.165.38])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YDBFt-0007Nr-8r
 for barebox@lists.infradead.org; Mon, 19 Jan 2015 12:16:30 +0000
Received: from mail427.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 9E73AFFCA33
 for <barebox@lists.infradead.org>; Mon, 19 Jan 2015 13:16:05 +0100 (CET)
Date: Mon, 19 Jan 2015 13:16:04 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20150119121604.GE30554@ns203013.ovh.net>
References: <20150113063128.GC30554@ns203013.ovh.net>
 <1421130790-1164-1-git-send-email-plagnioj@jcrosoft.com>
 <1421130790-1164-2-git-send-email-plagnioj@jcrosoft.com>
 <20150119020858.8ba6db8d84cb7e795078ba99@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20150119020858.8ba6db8d84cb7e795078ba99@gmail.com>
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
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On 02:08 Mon 19 Jan     , Antony Pavlov wrote:
> On Tue, 13 Jan 2015 07:33:06 +0100
> Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> wrote:
> =

> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > ---
> >  arch/arm/boards/raspberry-pi/rpi.c | 55 ++++++++++++++++++++++++++++++=
++++++++
> >  1 file changed, 55 insertions(+)
> > =

> > diff --git a/arch/arm/boards/raspberry-pi/rpi.c b/arch/arm/boards/raspb=
erry-pi/rpi.c
> > index ae1e92a..81b485e 100644
> > --- a/arch/arm/boards/raspberry-pi/rpi.c
> > +++ b/arch/arm/boards/raspberry-pi/rpi.c
> ...
> > @@ -160,6 +205,15 @@ unknown_rev:
> >  	barebox_set_model("RaspberryPi (BCM2835/ARM1176JZF-S)");
> >  }
> >  =

> > +static void rpi_model_init(void)
> > +{
> > +	if (!models[rpi_board_rev].init)
> > +		return;
> =

> Houston, we have a problem here.
> Please see current arch/arm/boards/raspberry-pi/rpi.c:
> =

> /* See comments in mbox.h for data source */
> static const struct {
> 	const char *name;
> 	bool has_onboard_eth;
> 	void (*init)(void);
> } models[] =3D {
> 	RPI_MODEL(0, "Unknown model", NULL),
> 	RPI_MODEL(BCM2835_BOARD_REV_B_I2C0_2, "Model B (no P5)", NULL),
> 	RPI_MODEL(BCM2835_BOARD_REV_B_I2C0_3, "Model B (no P5)", NULL),
> 	RPI_MODEL(BCM2835_BOARD_REV_B_I2C1_4, "Model B", NULL),
> 	RPI_MODEL(BCM2835_BOARD_REV_B_I2C1_5, "Model B", NULL),
> 	RPI_MODEL(BCM2835_BOARD_REV_B_I2C1_6, "Model B", NULL),
> 	RPI_MODEL(BCM2835_BOARD_REV_A_7, "Model A", NULL),
> 	RPI_MODEL(BCM2835_BOARD_REV_A_8, "Model A", NULL),
> 	RPI_MODEL(BCM2835_BOARD_REV_A_9, "Model A", NULL),
> 	RPI_MODEL(BCM2835_BOARD_REV_B_REV2_d, "Model B rev2", NULL),
> 	RPI_MODEL(BCM2835_BOARD_REV_B_REV2_e, "Model B rev2", NULL),
> 	RPI_MODEL(BCM2835_BOARD_REV_B_REV2_f, "Model B rev2", NULL),
> 	RPI_MODEL(BCM2835_BOARD_REV_B_PLUS, "Model B+", NULL),
> 	RPI_MODEL(BCM2835_BOARD_REV_CM, "Compute Module", NULL),
> 	RPI_MODEL(BCM2835_BOARD_REV_A_PLUS, "Model A+", NULL),
> };
> =

> All inits are NULLs!
> =

> Have we any chance to run rpi_add_led()?

there is a missing patch

that add the usb support

so the init is not NULL

so I'll send a fixup for now on

that move the rpi_add_led to the init pointer

Best Regards,
J.
> =

> =

> > +
> > +	models[rpi_board_rev].init();
> > +	rpi_add_led();
> > +}
> > +
> >  static int rpi_mem_init(void)
> >  {
> >  	u32 size =3D 0;
> > @@ -220,6 +274,7 @@ static int rpi_env_init(void)
> >  =

> >  static int rpi_devices_init(void)
> >  {
> > +	rpi_model_init();
> >  	bcm2835_register_mci();
> >  	bcm2835_register_fb();
> >  	armlinux_set_architecture(MACH_TYPE_BCM2708);
> > -- =

> > 2.1.3
> > =

> > =

> > _______________________________________________
> > barebox mailing list
> > barebox@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/barebox
> =

> =

> -- =

> --=A0
> Best regards,
> =A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

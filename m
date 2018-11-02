Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gISuh-0006a0-Qp
 for barebox@lists.infradead.org; Fri, 02 Nov 2018 06:26:37 +0000
Date: Fri, 2 Nov 2018 07:26:20 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181102062620.lbqswm3256oqjy7e@pengutronix.de>
References: <20181101091846.10882-1-l.stach@pengutronix.de>
 <20181101091846.10882-9-l.stach@pengutronix.de>
 <1541097325.3255.14.camel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1541097325.3255.14.camel@pengutronix.de>
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
Subject: Re: [PATCH v4 09/11] ARM: rpi: add revision IDs for Pi 3 Model B and
 Pi Zero
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Nov 01, 2018 at 07:35:25PM +0100, Lucas Stach wrote:
> Am Donnerstag, den 01.11.2018, 10:18 +0100 schrieb Lucas Stach:
> > > From: Enrico Joerns <ejo@pengutronix.de>
> > =

> > > Signed-off-by: Enrico Joerns <ejo@pengutronix.de>
> > > Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> > > Tested-by: Roland Hieber <r.hieber@pengutronix.de>
> > ---
> > =A0arch/arm/boards/raspberry-pi/rpi-common.c | 2 ++
> > =A0arch/arm/mach-bcm283x/include/mach/mbox.h | 4 ++++
> > =A02 files changed, 6 insertions(+)
> > =

> > diff --git a/arch/arm/boards/raspberry-pi/rpi-common.c b/arch/arm/board=
s/raspberry-pi/rpi-common.c
> > index 6e375bc984de..aec8cb27ed40 100644
> > --- a/arch/arm/boards/raspberry-pi/rpi-common.c
> > +++ b/arch/arm/boards/raspberry-pi/rpi-common.c
> > @@ -174,6 +174,8 @@ const struct rpi_model rpi_models_old_scheme[] =3D {
> > =A0const struct rpi_model rpi_models_new_scheme[] =3D {
> > > =A0	RPI_MODEL(0, "Unknown model", NULL),
> > > =A0	RPI_MODEL(BCM2836_BOARD_REV_2_B, "2 Model B", rpi_b_plus_init),
> > > +	RPI_MODEL(BCM2837_BOARD_REV_3_B, "3 Model B", rpi_b_plus_init),
> > > +	RPI_MODEL(BCM2837_BOARD_REV_ZERO, "Zero", rpi_b_plus_init),
> > =A0};
> > =A0
> > =A0static int rpi_board_rev =3D 0;
> > diff --git a/arch/arm/mach-bcm283x/include/mach/mbox.h b/arch/arm/mach-=
bcm283x/include/mach/mbox.h
> > index 2b5aea88ee0a..4cddf99a8429 100644
> > --- a/arch/arm/mach-bcm283x/include/mach/mbox.h
> > +++ b/arch/arm/mach-bcm283x/include/mach/mbox.h
> > @@ -129,6 +129,10 @@ struct bcm2835_mbox_tag_hdr {
> > =A0
> > =A0/* RPi 2 */
> > > =A0#define BCM2836_BOARD_REV_2_B		0x4
> > +/* RPi 3 */
> > > +#define BCM2837_BOARD_REV_3_B		0x8
> > +/* Zero */
> > > +#define BCM2837_BOARD_REV_ZERO		0x9
> =

> Robert noted that the Zero is actually a BCM2835 SoC. Sascha, can you
> fix up the define name while applying?

Did that and applied. /me is compile testing.

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

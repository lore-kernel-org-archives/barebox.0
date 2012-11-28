Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TdenY-0003kP-Rp
 for barebox@lists.infradead.org; Wed, 28 Nov 2012 10:23:21 +0000
Date: Wed, 28 Nov 2012 11:23:18 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121128102318.GN10369@pengutronix.de>
References: <1354096760-14409-1-git-send-email-s.hauer@pengutronix.de>
 <1354096760-14409-4-git-send-email-s.hauer@pengutronix.de>
 <20121128111104.75550da5@eb-e6520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121128111104.75550da5@eb-e6520>
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
Subject: Re: [PATCH 3/4] ARM i.MX: Add Garz+Fricke Vincell Board support
To: Eric =?iso-8859-15?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

On Wed, Nov 28, 2012 at 11:11:04AM +0100, Eric B=E9nard wrote:
> Hi Sascha,
> =

> Le Wed, 28 Nov 2012 10:59:19 +0100,
> Sascha Hauer <s.hauer@pengutronix.de> a =E9crit :
> > diff --git a/arch/arm/boards/freescale-mx53-loco/board.c b/arch/arm/boa=
rds/freescale-mx53-loco/board.c
> > index 38ece23..5846725 100644
> > --- a/arch/arm/boards/freescale-mx53-loco/board.c
> > +++ b/arch/arm/boards/freescale-mx53-loco/board.c
> > @@ -194,7 +194,7 @@ static int loco_devices_init(void)
> >  	armlinux_set_architecture(MACH_TYPE_MX53_LOCO);
> >  =

> >  	imx53_bbu_internal_mmc_register_handler("mmc", "/dev/disk0",
> > -		BBU_HANDLER_FLAG_DEFAULT, dcd_entry, sizeof(dcd_entry));
> > +		BBU_HANDLER_FLAG_DEFAULT, dcd_entry, sizeof(dcd_entry), 0);
> >  =

> is this change expected in this patch ?
> =

> > diff --git a/arch/arm/mach-imx/imx-bbu-internal.c b/arch/arm/mach-imx/i=
mx-bbu-internal.c
> > index 05aa5f1..cfde75d 100644
> > --- a/arch/arm/mach-imx/imx-bbu-internal.c
> > +++ b/arch/arm/mach-imx/imx-bbu-internal.c
> > @@ -15,7 +15,7 @@
> >   * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> >   * GNU General Public License for more details.
> >   */
> > -
> > +#define DEBUG
> =

> same here.
> =

> >  #define IMX_INTERNAL_NAND_BBU
> >  =

> >  #include <common.h>
> > diff --git a/drivers/mfd/mc34704.c b/drivers/mfd/mc34704.c
> > index 276b723..54d27c8 100644
> > --- a/drivers/mfd/mc34704.c
> > +++ b/drivers/mfd/mc34704.c
> > @@ -25,7 +25,7 @@
> >  #include <i2c/i2c.h>
> >  #include <mfd/mc34704.h>
> >  =

> > -#define DRIVERNAME		"mc34704"
> > +#define DRIVERNAME		"da9053"
> >  =

> >  #define to_mc34704(a)		container_of(a, struct mc34704, cdev)
> >  =

> and here ;-)

Damn ;)

Will fix.

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

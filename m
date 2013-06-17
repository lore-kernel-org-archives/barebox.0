Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UoUDM-0007dT-EJ
 for barebox@lists.infradead.org; Mon, 17 Jun 2013 07:51:01 +0000
Date: Mon, 17 Jun 2013 09:50:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130617075038.GL32299@pengutronix.de>
References: <1370892680-13254-1-git-send-email-jlu@pengutronix.de>
 <51BADE95.9090007@phytec.de>
 <1371453145.4168.1.camel@coredoba.hi.pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1371453145.4168.1.camel@coredoba.hi.pengutronix.de>
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
Subject: Re: [PATCH] arm: omap: am33xx: set up SPI devices
To: Jan =?iso-8859-15?Q?L=FCbbe?= <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Jun 17, 2013 at 09:12:25AM +0200, Jan L=FCbbe wrote:
> On Fri, 2013-06-14 at 11:12 +0200, Teresa Gamez wrote:
> > Am 10.06.2013 21:31, schrieb Jan Luebbe:
> > > Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
> > > ---
> > >   arch/arm/mach-omap/include/mach/am33xx-devices.h | 17 +++++++++++++=
++++
> > >   arch/arm/mach-omap/include/mach/am33xx-silicon.h |  4 ++++
> > >   drivers/spi/Kconfig                              |  2 +-
> > >   3 files changed, 22 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/arch/arm/mach-omap/include/mach/am33xx-devices.h b/arch/=
arm/mach-omap/include/mach/am33xx-devices.h
> > > index fe9fba9..cea4504 100644
> > > --- a/arch/arm/mach-omap/include/mach/am33xx-devices.h
> > > +++ b/arch/arm/mach-omap/include/mach/am33xx-devices.h
> > > @@ -7,6 +7,7 @@
> > >   #include <mach/devices.h>
> > >   #include <mach/omap_hsmmc.h>
> > >   #include <mach/cpsw.h>
> > > +#include <mach/omap_hsmmc.h>
> > =

> > this header has been already included just two lines before.
> =

> Oh, this must have slipped in while rebasing. Sascha, could you drop
> this if the rest is acceptable?

Applied and dropped the duplicate include.

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

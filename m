Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gU5Cu-0000rs-MZ
 for barebox@lists.infradead.org; Tue, 04 Dec 2018 07:33:26 +0000
Date: Tue, 4 Dec 2018 08:33:13 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181204073313.ugpjdcmxxmilum5o@pengutronix.de>
References: <20180608110605.8248-1-l.stach@pengutronix.de>
 <1543830945.3709.0.camel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1543830945.3709.0.camel@pengutronix.de>
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
Subject: Re: [PATCH] serdev: select POLLER
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Dec 03, 2018 at 10:55:45AM +0100, Lucas Stach wrote:
> Am Freitag, den 08.06.2018, 13:06 +0200 schrieb Lucas Stach:
> > A lot of the inner working of the serdev framework depend on the poller,
> > so there is no point in allowing to build without poller support.
> =

> It seems this patch fell through the cracks.

Applied, for real this time.

Thanks

Sascha

> =

> > Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> > ---
> > =A0drivers/serial/Kconfig | 1 +
> > =A01 file changed, 1 insertion(+)
> > =

> > diff --git a/drivers/serial/Kconfig b/drivers/serial/Kconfig
> > index 8a56d39f7c84..d462c11c169d 100644
> > --- a/drivers/serial/Kconfig
> > +++ b/drivers/serial/Kconfig
> > @@ -3,6 +3,7 @@ menu "serial drivers"
> > =A0
> > =A0config SERIAL_DEV_BUS
> > > =A0	bool "Serial device bus"
> > > +	select POLLER
> > > =A0	depends on CONSOLE_FULL
> > > =A0	help
> > > =A0	=A0=A0Core support for devices connected via a serial port.
> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

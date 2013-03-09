Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UEQf6-0006ex-9Q
 for barebox@lists.infradead.org; Sat, 09 Mar 2013 20:46:37 +0000
Date: Sat, 9 Mar 2013 21:46:34 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20130309204634.GN15375@pengutronix.de>
References: <1362733514-18373-1-git-send-email-shc_work@mail.ru>
 <20130309151230.GK1906@pengutronix.de>
 <1362842371.794592639@f291.mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1362842371.794592639@f291.mail.ru>
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
Subject: Re: [PATCH] Extend device_platform_driver macro
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

Hi,

On Sat, Mar 09, 2013 at 07:19:31PM +0400, Alexander Shiyan wrote:
> > On Fri, Mar 08, 2013 at 01:05:14PM +0400, Alexander Shiyan wrote:
> > > This patch extends device_platform_driver macro, so now we allow
> > > use it with various init levels and subsystems.
> > > =

> > > Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> > > ---
> > >  include/driver.h | 17 ++++++++++-------
> > >  1 file changed, 10 insertions(+), 7 deletions(-)
> > > =

> > > diff --git a/include/driver.h b/include/driver.h
> > > index 46c56c0..b891f80 100644
> > > --- a/include/driver.h
> > > +++ b/include/driver.h
> > > @@ -395,16 +395,19 @@ extern struct bus_type platform_bus;
> > >  =

> > >  int platform_driver_register(struct driver_d *drv);
> > >  =

> > > -/* device_platform_driver() - Helper macro for drivers that don't do
> > > +/* register_driver_macro() - Helper macro for drivers that don't do
> > >   * anything special in module registration. This eliminates a lot of
> > >   * boilerplate. Each module may only use this macro once.
> > >   */
> > > -#define device_platform_driver(drv)			\
> > > -	static int __init drv ## _register(void)	\
> > > -	{						\
> > > -		return platform_driver_register(&drv);	\
> > > -	}						\
> > > -	device_initcall(drv ## _register)
> > > +#define register_driver_macro(level,subsystem,drv)		\
> > > +	static int __init drv##_register(void)			\
> > > +	{							\
> > > +		return subsystem##_driver_register(&drv);	\
> > > +	}							\
> > > +	level##_initcall(drv##_register)
> > =

> > So the usage would look like:
> > =

> > register_driver_macro(device, i2c, &mc_driver)
> > =

> > ?
> > =

> > I'm not sure if I like this. I'm a bit concerned about being able
> > to grep for for example i2c_register_driver. This would become
> > =

> > wcgrep register_driver_macro | grep i2c
> > =

> > or similar.
> =

> You are skip 2 important lines:
> #define device_platform_driver(drv) \
>  register_driver_macro(device,platform,drv)
> =

> For i2c we can define new macro like this:
> #define device_i2c_driver(drv) \
>  register_driver_macro(device,i2c,drv)
> =

> then use device_i2c_driver(&foo) in the driver.
I like the idea. Alexander, what is your motivation? Maybe offer a patch
series that first contains this patch and then in a later patch
introduces a nice usage.

Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

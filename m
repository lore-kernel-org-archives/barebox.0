Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from f383.i.mail.ru ([185.5.136.54])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UER2U-0007Sy-0P
 for barebox@lists.infradead.org; Sat, 09 Mar 2013 21:10:47 +0000
From: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
Mime-Version: 1.0
Date: Sun, 10 Mar 2013 01:10:38 +0400
Message-ID: <1362863438.650892034@f383.i.mail.ru>
In-Reply-To: <20130309204634.GN15375@pengutronix.de>
References: <1362733514-18373-1-git-send-email-shc_work@mail.ru>
 <1362842371.794592639@f291.mail.ru> <20130309204634.GN15375@pengutronix.de>
Reply-To: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: =?UTF-8?B?UmVbMl06IFtQQVRDSF0gRXh0ZW5kIGRldmljZV9wbGF0Zm9ybV9kcml2ZXIg?=
 =?UTF-8?B?bWFjcm8=?=
To: =?UTF-8?B?VXdlIEtsZWluZS1L77+9bmln?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

> Hi,
> 
> On Sat, Mar 09, 2013 at 07:19:31PM +0400, Alexander Shiyan wrote:
> > > On Fri, Mar 08, 2013 at 01:05:14PM +0400, Alexander Shiyan wrote:
> > > > This patch extends device_platform_driver macro, so now we allow
> > > > use it with various init levels and subsystems.
> > > > 
> > > > Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> > > > ---
> > > >  include/driver.h | 17 ++++++++++-------
> > > >  1 file changed, 10 insertions(+), 7 deletions(-)
> > > > 
> > > > diff --git a/include/driver.h b/include/driver.h
> > > > index 46c56c0..b891f80 100644
> > > > --- a/include/driver.h
> > > > +++ b/include/driver.h
> > > > @@ -395,16 +395,19 @@ extern struct bus_type platform_bus;
> > > >  
> > > >  int platform_driver_register(struct driver_d *drv);
> > > >  
> > > > -/* device_platform_driver() - Helper macro for drivers that don't do
> > > > +/* register_driver_macro() - Helper macro for drivers that don't do
> > > >   * anything special in module registration. This eliminates a lot of
> > > >   * boilerplate. Each module may only use this macro once.
> > > >   */
> > > > -#define device_platform_driver(drv)			\
> > > > -	static int __init drv ## _register(void)	\
> > > > -	{						\
> > > > -		return platform_driver_register(&drv);	\
> > > > -	}						\
> > > > -	device_initcall(drv ## _register)
> > > > +#define register_driver_macro(level,subsystem,drv)		\
> > > > +	static int __init drv##_register(void)			\
> > > > +	{							\
> > > > +		return subsystem##_driver_register(&drv);	\
> > > > +	}							\
> > > > +	level##_initcall(drv##_register)
> > > 
> > > So the usage would look like:
> > > 
> > > register_driver_macro(device, i2c, &mc_driver)
> > > 
> > > ?
> > > 
> > > I'm not sure if I like this. I'm a bit concerned about being able
> > > to grep for for example i2c_register_driver. This would become
> > > 
> > > wcgrep register_driver_macro | grep i2c
> > > 
> > > or similar.
> > 
> > You are skip 2 important lines:
> > #define device_platform_driver(drv) \
> >  register_driver_macro(device,platform,drv)
> > 
> > For i2c we can define new macro like this:
> > #define device_i2c_driver(drv) \
> >  register_driver_macro(device,i2c,drv)
> > 
> > then use device_i2c_driver(&foo) in the driver.
> I like the idea. Alexander, what is your motivation? Maybe offer a patch
> series that first contains this patch and then in a later patch
> introduces a nice usage.

The first use of this idea was already here:
http://git.pengutronix.de/?p=barebox.git;a=commit;h=6a256321b839534cb3da4b8ffc06c126871a78e3

But you're right, I'll prepare another patch to show the use of the extended version.

---
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

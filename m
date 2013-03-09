Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from f291.mail.ru ([217.69.129.73])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UELYg-0000ze-HG
 for barebox@lists.infradead.org; Sat, 09 Mar 2013 15:19:39 +0000
From: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
Mime-Version: 1.0
Date: Sat, 09 Mar 2013 19:19:31 +0400
Message-ID: <1362842371.794592639@f291.mail.ru>
In-Reply-To: <20130309151230.GK1906@pengutronix.de>
References: <1362733514-18373-1-git-send-email-shc_work@mail.ru>
 <20130309151230.GK1906@pengutronix.de>
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
To: =?UTF-8?B?U2FzY2hhIEhhdWVy?= <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

> Hi Alexander,
> 
> On Fri, Mar 08, 2013 at 01:05:14PM +0400, Alexander Shiyan wrote:
> > This patch extends device_platform_driver macro, so now we allow
> > use it with various init levels and subsystems.
> > 
> > Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> > ---
> >  include/driver.h | 17 ++++++++++-------
> >  1 file changed, 10 insertions(+), 7 deletions(-)
> > 
> > diff --git a/include/driver.h b/include/driver.h
> > index 46c56c0..b891f80 100644
> > --- a/include/driver.h
> > +++ b/include/driver.h
> > @@ -395,16 +395,19 @@ extern struct bus_type platform_bus;
> >  
> >  int platform_driver_register(struct driver_d *drv);
> >  
> > -/* device_platform_driver() - Helper macro for drivers that don't do
> > +/* register_driver_macro() - Helper macro for drivers that don't do
> >   * anything special in module registration. This eliminates a lot of
> >   * boilerplate. Each module may only use this macro once.
> >   */
> > -#define device_platform_driver(drv)			\
> > -	static int __init drv ## _register(void)	\
> > -	{						\
> > -		return platform_driver_register(&drv);	\
> > -	}						\
> > -	device_initcall(drv ## _register)
> > +#define register_driver_macro(level,subsystem,drv)		\
> > +	static int __init drv##_register(void)			\
> > +	{							\
> > +		return subsystem##_driver_register(&drv);	\
> > +	}							\
> > +	level##_initcall(drv##_register)
> 
> So the usage would look like:
> 
> register_driver_macro(device, i2c, &mc_driver)
> 
> ?
> 
> I'm not sure if I like this. I'm a bit concerned about being able
> to grep for for example i2c_register_driver. This would become
> 
> wcgrep register_driver_macro | grep i2c
> 
> or similar.

You are skip 2 important lines:
#define device_platform_driver(drv) \
 register_driver_macro(device,platform,drv)

For i2c we can define new macro like this:
#define device_i2c_driver(drv) \
 register_driver_macro(device,i2c,drv)

then use device_i2c_driver(&foo) in the driver.

---
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

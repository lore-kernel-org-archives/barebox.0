Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from f195.mail.ru ([217.69.129.204])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U59no-0003Q0-CM
 for barebox@lists.infradead.org; Tue, 12 Feb 2013 06:57:17 +0000
From: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
Mime-Version: 1.0
Date: Tue, 12 Feb 2013 10:57:09 +0400
Message-ID: <1360652229.366978788@f195.mail.ru>
In-Reply-To: <20130211093838.GT1906@pengutronix.de>
References: <1360346822-11769-1-git-send-email-shc_work@mail.ru>
 <20130211093838.GT1906@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: =?UTF-8?B?UmVbMl06IFtQQVRDSCAxLzJdIEludHJvZHVjZSBkZXZpY2VfcGxhdGZvcm1f?=
 =?UTF-8?B?ZHJpdmVyKCkgbWFjcm8=?=
To: =?UTF-8?B?U2FzY2hhIEhhdWVy?= <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hello.

> On Fri, Feb 08, 2013 at 10:07:01PM +0400, Alexander Shiyan wrote:
> > device_platform_driver() - Helper macro for drivers that don't do
> > anything special in module registration. This eliminates a lot of
> > boilerplate. Driver registration will called on device_initcall.
> > 
> > Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> 
> Good move ;)
> 
> > ---
> >  include/driver.h | 12 ++++++++++++
> >  1 file changed, 12 insertions(+)
> > 
> > diff --git a/include/driver.h b/include/driver.h
> > index 31f5d69..d8ac66c 100644
> > --- a/include/driver.h
> > +++ b/include/driver.h
> > @@ -390,6 +390,18 @@ extern struct list_head bus_list;
> >  extern struct bus_type platform_bus;
> >  
> >  int platform_driver_register(struct driver_d *drv);
> > +
> > +/* device_platform_driver() - Helper macro for drivers that don't do
> > + * anything special in module registration. This eliminates a lot of
> > + * boilerplate. Each module may only use this macro once.
> > + */
> > +#define device_platform_driver(drv)				\
> > +	static int __init device_platform_driver_init(void)	\
> > +	{							\
> > +		return platform_driver_register(&drv);		\
> > +	}							\
> > +	device_initcall(device_platform_driver_init)
> > +
> 
> Can we use drv##_init as name for the function instead? This way the
> driver name is in the function name and objdumps and backtraces would
> have a bit more context.

OK. Maybe we should rename the names of driver_d structures to better
understand what is what is?
In this case, the procedure in the dump would look like;
__initcall_platform_bus0
__initcall_cfi_driver10
__initcall_smc911x_device10
and so on. I.e. explicitly specify a function (bus, driver, device).
I can do it in a separate patch if it looks OK.

Besides, as far as I know currently we are not using __init section.
Can we define this one in the linker script and release this memory after
initialization is complete?

Thanks!

---
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

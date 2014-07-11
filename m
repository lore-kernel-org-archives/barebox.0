Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-f43.google.com ([209.85.215.43])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X5TFb-0005AI-At
 for barebox@lists.infradead.org; Fri, 11 Jul 2014 05:20:04 +0000
Received: by mail-la0-f43.google.com with SMTP id e16so448222lan.2
 for <barebox@lists.infradead.org>; Thu, 10 Jul 2014 22:19:38 -0700 (PDT)
Date: Fri, 11 Jul 2014 09:31:56 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20140711093156.890f5ab97d35d93249d006c8@gmail.com>
In-Reply-To: <20140710214030.GH23235@pengutronix.de>
References: <1404981199-21293-1-git-send-email-antonynpavlov@gmail.com>
 <1404981199-21293-3-git-send-email-antonynpavlov@gmail.com>
 <20140710214030.GH23235@pengutronix.de>
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
Subject: Re: [RFC 2/5] add rtc support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, 10 Jul 2014 23:40:30 +0200
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> On Thu, Jul 10, 2014 at 12:33:16PM +0400, Antony Pavlov wrote:
> > Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> > ---
> >  drivers/Kconfig       |  1 +
> >  drivers/Makefile      |  1 +
> >  drivers/rtc/Kconfig   | 16 +++++++++++++
> >  drivers/rtc/Makefile  |  6 +++++
> >  drivers/rtc/class.c   | 62 +++++++++++++++++++++++++++++++++++++++++++=
++++++
> >  drivers/rtc/rtc-lib.c | 64 +++++++++++++++++++++++++++++++++++++++++++=
++++++++
> >  include/linux/rtc.h   | 46 ++++++++++++++++++++++++++++++++++++
> >  include/rtc.h         |  2 ++
> >  8 files changed, 198 insertions(+)
> > =

> > diff --git a/drivers/Kconfig b/drivers/Kconfig
> > index 12a9d8c..d38032c 100644
> > --- a/drivers/Kconfig
> > +++ b/drivers/Kconfig
> > @@ -28,5 +28,6 @@ source "drivers/bus/Kconfig"
> >  source "drivers/regulator/Kconfig"
> >  source "drivers/reset/Kconfig"
> >  source "drivers/pci/Kconfig"
> > +source "drivers/rtc/Kconfig"
> >  =

> >  endmenu
> > diff --git a/drivers/Makefile b/drivers/Makefile
> > index 1990e86..4591f9a 100644
> > --- a/drivers/Makefile
> > +++ b/drivers/Makefile
> > @@ -27,3 +27,4 @@ obj-y +=3D bus/
> >  obj-$(CONFIG_REGULATOR) +=3D regulator/
> >  obj-$(CONFIG_RESET_CONTROLLER) +=3D reset/
> >  obj-$(CONFIG_PCI) +=3D pci/
> > +obj-y +=3D rtc/
> > diff --git a/drivers/rtc/Kconfig b/drivers/rtc/Kconfig
> > new file mode 100644
> > index 0000000..f148266
> > --- /dev/null
> > +++ b/drivers/rtc/Kconfig
> > @@ -0,0 +1,16 @@
> > +#
> > +# RTC class/drivers configuration
> > +#
> > +
> > +config RTC_LIB
> > +	bool
> > +
> > +menuconfig RTC_CLASS
> > +        bool "Real Time Clock"
> > +        default n
> > +        depends on !S390 && !UML

I suppose i can drop thess two lines.

> > +        select RTC_LIB
> > +        help
> > +          Generic RTC class support. If you say yes here, you will
> > +          be allowed to plug one or more RTCs to your system. You will
> > +          probably want to enable one or more of the interfaces below.
> > diff --git a/drivers/rtc/Makefile b/drivers/rtc/Makefile
> > new file mode 100644
> > index 0000000..7d1b5bc
> > --- /dev/null
> > +++ b/drivers/rtc/Makefile
> > @@ -0,0 +1,6 @@
> > +#
> > +# Makefile for RTC class/drivers.
> > +#
> > +
> > +obj-$(CONFIG_RTC_LIB)           +=3D rtc-lib.o
> > +obj-$(CONFIG_RTC_CLASS)         +=3D class.o
> > diff --git a/drivers/rtc/class.c b/drivers/rtc/class.c
> > new file mode 100644
> > index 0000000..b808f3d
> > --- /dev/null
> > +++ b/drivers/rtc/class.c
> > @@ -0,0 +1,62 @@
> > +#include <linux/err.h>
> > +#include <rtc.h>
> > +#include <linux/rtc.h>
> > +
> > +LIST_HEAD(rtc_list);
> > +EXPORT_SYMBOL(rtc_list);
> > +
> > +struct rtc_device *rtc_lookup(const char *name)
> > +{
> > +	struct rtc_device *r;
> > +
> > +	if (!name)
> > +		return ERR_PTR(-ENODEV);
> > +
> > +	list_for_each_entry(r, &rtc_list, list) {
> > +		if (!strcmp(dev_name(&r->class_dev), name))
> > +			return r;
> > +	}
> > +
> > +	return ERR_PTR(-ENODEV);
> > +}
> > +EXPORT_SYMBOL(rtc_lookup);
> > +
> > +int rtc_read_time(struct rtc_device *rtc, struct rtc_time *tm)
> > +{
> > +	return rtc->ops->read_time(rtc, tm);
> > +}
> > +EXPORT_SYMBOL(rtc_read_time);
> > +
> > +int rtc_register(struct rtc_device *rtcdev)
> > +{
> > +	struct device_d *dev =3D &rtcdev->class_dev;
> > +
> > +	dev->id =3D DEVICE_ID_DYNAMIC;
> > +	strcpy(dev->name, "rtc");
> > +	if (rtcdev->dev)
> > +		dev->parent =3D rtcdev->dev;
> > +	platform_device_register(dev);
> =

> Please check the return value.
> =

> > +
> > +	list_add_tail(&rtcdev->list, &rtc_list);
> > +
> > +	return 0;
> > +}
> > +EXPORT_SYMBOL(rtc_register);
> > +
> > +#if 0
> > +int rtc_unregister(struct rtc_device *cdev)
> > +{
> > +	struct device_d *dev =3D &cdev->class_dev;
> > +	int status;
> > +
> > +	list_del(&cdev->list);
> > +	if (list_empty(&rtc_list))
> > +		initialized =3D CONSOLE_UNINITIALIZED;
> > +
> > +	status =3D unregister_device(dev);
> > +	if (!status)
> > +		memset(cdev, 0, sizeof(*cdev));
> > +	return status;
> > +}
> > +EXPORT_SYMBOL(rtc_unregister);
> > +#endif
> =

> CONSOLE_UNINITIALIZED? This probably wouldn't compile if it wasn't
> ifdeffed. I think we can just remove this.

Please see TODOs in the '[RFC 0/5] add rtc support' message:

 * rtc_unregister() is not realized.

I suppose that most (but not all) of RTC chips does not need any deinitiali=
zation routines.
So I have not realized the rtc_unregister() routine.


--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

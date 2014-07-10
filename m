Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X5M5E-0004ij-Ti
 for barebox@lists.infradead.org; Thu, 10 Jul 2014 21:40:53 +0000
Date: Thu, 10 Jul 2014 23:40:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140710214030.GH23235@pengutronix.de>
References: <1404981199-21293-1-git-send-email-antonynpavlov@gmail.com>
 <1404981199-21293-3-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1404981199-21293-3-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [RFC 2/5] add rtc support
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Jul 10, 2014 at 12:33:16PM +0400, Antony Pavlov wrote:
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  drivers/Kconfig       |  1 +
>  drivers/Makefile      |  1 +
>  drivers/rtc/Kconfig   | 16 +++++++++++++
>  drivers/rtc/Makefile  |  6 +++++
>  drivers/rtc/class.c   | 62 +++++++++++++++++++++++++++++++++++++++++++++++++
>  drivers/rtc/rtc-lib.c | 64 +++++++++++++++++++++++++++++++++++++++++++++++++++
>  include/linux/rtc.h   | 46 ++++++++++++++++++++++++++++++++++++
>  include/rtc.h         |  2 ++
>  8 files changed, 198 insertions(+)
> 
> diff --git a/drivers/Kconfig b/drivers/Kconfig
> index 12a9d8c..d38032c 100644
> --- a/drivers/Kconfig
> +++ b/drivers/Kconfig
> @@ -28,5 +28,6 @@ source "drivers/bus/Kconfig"
>  source "drivers/regulator/Kconfig"
>  source "drivers/reset/Kconfig"
>  source "drivers/pci/Kconfig"
> +source "drivers/rtc/Kconfig"
>  
>  endmenu
> diff --git a/drivers/Makefile b/drivers/Makefile
> index 1990e86..4591f9a 100644
> --- a/drivers/Makefile
> +++ b/drivers/Makefile
> @@ -27,3 +27,4 @@ obj-y += bus/
>  obj-$(CONFIG_REGULATOR) += regulator/
>  obj-$(CONFIG_RESET_CONTROLLER) += reset/
>  obj-$(CONFIG_PCI) += pci/
> +obj-y += rtc/
> diff --git a/drivers/rtc/Kconfig b/drivers/rtc/Kconfig
> new file mode 100644
> index 0000000..f148266
> --- /dev/null
> +++ b/drivers/rtc/Kconfig
> @@ -0,0 +1,16 @@
> +#
> +# RTC class/drivers configuration
> +#
> +
> +config RTC_LIB
> +	bool
> +
> +menuconfig RTC_CLASS
> +        bool "Real Time Clock"
> +        default n
> +        depends on !S390 && !UML
> +        select RTC_LIB
> +        help
> +          Generic RTC class support. If you say yes here, you will
> +          be allowed to plug one or more RTCs to your system. You will
> +          probably want to enable one or more of the interfaces below.
> diff --git a/drivers/rtc/Makefile b/drivers/rtc/Makefile
> new file mode 100644
> index 0000000..7d1b5bc
> --- /dev/null
> +++ b/drivers/rtc/Makefile
> @@ -0,0 +1,6 @@
> +#
> +# Makefile for RTC class/drivers.
> +#
> +
> +obj-$(CONFIG_RTC_LIB)           += rtc-lib.o
> +obj-$(CONFIG_RTC_CLASS)         += class.o
> diff --git a/drivers/rtc/class.c b/drivers/rtc/class.c
> new file mode 100644
> index 0000000..b808f3d
> --- /dev/null
> +++ b/drivers/rtc/class.c
> @@ -0,0 +1,62 @@
> +#include <linux/err.h>
> +#include <rtc.h>
> +#include <linux/rtc.h>
> +
> +LIST_HEAD(rtc_list);
> +EXPORT_SYMBOL(rtc_list);
> +
> +struct rtc_device *rtc_lookup(const char *name)
> +{
> +	struct rtc_device *r;
> +
> +	if (!name)
> +		return ERR_PTR(-ENODEV);
> +
> +	list_for_each_entry(r, &rtc_list, list) {
> +		if (!strcmp(dev_name(&r->class_dev), name))
> +			return r;
> +	}
> +
> +	return ERR_PTR(-ENODEV);
> +}
> +EXPORT_SYMBOL(rtc_lookup);
> +
> +int rtc_read_time(struct rtc_device *rtc, struct rtc_time *tm)
> +{
> +	return rtc->ops->read_time(rtc, tm);
> +}
> +EXPORT_SYMBOL(rtc_read_time);
> +
> +int rtc_register(struct rtc_device *rtcdev)
> +{
> +	struct device_d *dev = &rtcdev->class_dev;
> +
> +	dev->id = DEVICE_ID_DYNAMIC;
> +	strcpy(dev->name, "rtc");
> +	if (rtcdev->dev)
> +		dev->parent = rtcdev->dev;
> +	platform_device_register(dev);

Please check the return value.

> +
> +	list_add_tail(&rtcdev->list, &rtc_list);
> +
> +	return 0;
> +}
> +EXPORT_SYMBOL(rtc_register);
> +
> +#if 0
> +int rtc_unregister(struct rtc_device *cdev)
> +{
> +	struct device_d *dev = &cdev->class_dev;
> +	int status;
> +
> +	list_del(&cdev->list);
> +	if (list_empty(&rtc_list))
> +		initialized = CONSOLE_UNINITIALIZED;
> +
> +	status = unregister_device(dev);
> +	if (!status)
> +		memset(cdev, 0, sizeof(*cdev));
> +	return status;
> +}
> +EXPORT_SYMBOL(rtc_unregister);
> +#endif

CONSOLE_UNINITIALIZED? This probably wouldn't compile if it wasn't
ifdeffed. I think we can just remove this.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

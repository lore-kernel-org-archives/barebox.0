Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rbv6b-0002mM-5P
 for barebox@lists.infradead.org; Sat, 17 Dec 2011 14:19:19 +0000
Date: Sat, 17 Dec 2011 15:19:04 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111217141904.GX27267@pengutronix.de>
References: <1323939509-10174-1-git-send-email-a.aring@phytec.de>
 <1323939509-10174-3-git-send-email-a.aring@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1323939509-10174-3-git-send-email-a.aring@phytec.de>
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
Subject: Re: [PATCH 2/4] twl-core: add support for twl6030
To: Alexander Aring <a.aring@phytec.de>
Cc: barebox@lists.infradead.org

On Thu, Dec 15, 2011 at 09:58:27AM +0100, Alexander Aring wrote:
> Add support for twl6030 in twl-core driver.
> 
> Signed-off-by: Alexander Aring <a.aring@phytec.de>
> ---
>  drivers/mfd/Kconfig   |    4 +
>  drivers/mfd/Makefile  |    1 +
>  drivers/mfd/twl6030.c |   77 +++++++++
>  include/mfd/twl6030.h |  408 +++++++++++++++++++++++++++++++++++++++++++++++++
>  4 files changed, 490 insertions(+), 0 deletions(-)
>  create mode 100644 drivers/mfd/twl6030.c
>  create mode 100644 include/mfd/twl6030.h
> 
> diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
> index 72f87c2..2d42a22 100644
> --- a/drivers/mfd/Kconfig
> +++ b/drivers/mfd/Kconfig
> @@ -25,6 +25,10 @@ config I2C_TWL4030
>  	depends on I2C_TWLCORE
>  	bool "TWL4030 driver"
>  
> +config I2C_TWL6030
> +	depends on I2C_TWLCORE
> +	bool "TWL6030 driver"
> +
>  config DRIVER_SPI_MC13783
>  	depends on SPI
>  	bool "MC13783 a.k.a. PMIC driver"
> diff --git a/drivers/mfd/Makefile b/drivers/mfd/Makefile
> index b05b2cd..1171335 100644
> --- a/drivers/mfd/Makefile
> +++ b/drivers/mfd/Makefile
> @@ -4,4 +4,5 @@ obj-$(CONFIG_I2C_MC9SDZ60) += mc9sdz60.o
>  obj-$(CONFIG_I2C_LP3972) += lp3972.o
>  obj-$(CONFIG_I2C_TWLCORE) += twl-core.o
>  obj-$(CONFIG_I2C_TWL4030) += twl4030.o
> +obj-$(CONFIG_I2C_TWL6030) += twl6030.o
>  obj-$(CONFIG_DRIVER_SPI_MC13783) += mc13783.o
> diff --git a/drivers/mfd/twl6030.c b/drivers/mfd/twl6030.c
> new file mode 100644
> index 0000000..4035106
> --- /dev/null
> +++ b/drivers/mfd/twl6030.c
> @@ -0,0 +1,77 @@
> +/*
> + * Made by Alexander Aring <a.aring@phytec.de>
> + *
> + * This file is released under the GPLv2
> + */
> +
> +#include <common.h>
> +#include <init.h>
> +#include <driver.h>
> +#include <xfuncs.h>
> +#include <errno.h>
> +
> +#include <i2c/i2c.h>
> +#include <mfd/twl6030.h>
> +
> +#define DRIVERNAME		"twl6030"
> +
> +#define to_twl6030(a)		container_of(a, struct twl6030, cdev)
> +
> +static struct twl6030 *twl_dev;
> +
> +struct twl6030 *twl6030_get(void)
> +{
> +	return twl_dev;
> +}
> +EXPORT_SYMBOL(twl6030_get);
> +
> +inline int twl6030_reg_read(struct twl6030 *twl6030,
> +		enum twl6030_reg reg, u8 *val)
> +{
> +	return twlcore_reg_read(&(twl6030->core), reg, val);
> +}
> +EXPORT_SYMBOL(twl6030_reg_read);

Please move these as static inline functions to the header file (also
for the twl4030). As a side note, 'inline' in global functions is a
no-op, you can skip this. Also, unnecessary braces in &(twl6030->core).

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

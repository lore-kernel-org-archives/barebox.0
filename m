Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PdfoR-0000aE-Ep
	for barebox@lists.infradead.org; Fri, 14 Jan 2011 09:19:17 +0000
Date: Fri, 14 Jan 2011 10:19:12 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110114091912.GD24373@pengutronix.de>
References: <1294963621-4177-1-git-send-email-marc@cpdesign.com.au>
	<1294963621-4177-3-git-send-email-marc@cpdesign.com.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1294963621-4177-3-git-send-email-marc@cpdesign.com.au>
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
Subject: Re: [PATCH 2/2] at24: add I2C eeprom for 24cl02
To: Marc Reilly <marc@cpdesign.com.au>
Cc: barebox@lists.infradead.org

Hi Marc,

On Fri, Jan 14, 2011 at 11:07:01AM +1100, Marc Reilly wrote:
> This series adds a driver for at24 eeproms. Much of the guts of the code
> is taken from the at24 driver in the linux kernel.
> The files are located under a new misc directory, as per the kernel also.
> 
> Signed-off-by: Marc Reilly <marc@cpdesign.com.au>
> ---
>  drivers/Kconfig       |    1 +
>  drivers/Makefile      |    1 +
>  drivers/misc/Kconfig  |   10 ++++
>  drivers/misc/Makefile |    1 +
>  drivers/misc/at24.c   |  130 +++++++++++++++++++++++++++++++++++++++++++++++++
>  5 files changed, 143 insertions(+), 0 deletions(-)
>  create mode 100644 drivers/misc/Kconfig
>  create mode 100644 drivers/misc/Makefile
>  create mode 100644 drivers/misc/at24.c
> 
> diff --git a/drivers/Kconfig b/drivers/Kconfig
> index 86d8fb5..c54e225 100644
> --- a/drivers/Kconfig
> +++ b/drivers/Kconfig
> @@ -13,5 +13,6 @@ source "drivers/mci/Kconfig"
>  source "drivers/clk/Kconfig"
>  source "drivers/mfd/Kconfig"
>  source "drivers/led/Kconfig"
> +source "drivers/misc/Kconfig"
>  
>  endmenu
> diff --git a/drivers/Makefile b/drivers/Makefile
> index b1b402f..2127857 100644
> --- a/drivers/Makefile
> +++ b/drivers/Makefile
> @@ -11,3 +11,4 @@ obj-$(CONFIG_VIDEO) += video/
>  obj-y	+= clk/
>  obj-y	+= mfd/
>  obj-$(CONFIG_LED) += led/
> +obj-$(CONFIG_MISC) += misc/
> diff --git a/drivers/misc/Kconfig b/drivers/misc/Kconfig
> new file mode 100644
> index 0000000..7da647f
> --- /dev/null
> +++ b/drivers/misc/Kconfig
> @@ -0,0 +1,10 @@
> +menuconfig MISC
> +	bool "Misc devices support"
> +
> +if MISC
> +
> +config AT24
> +	bool "at24 based eeprom"
> +	depends on I2C
> +
> +endif
> diff --git a/drivers/misc/Makefile b/drivers/misc/Makefile
> new file mode 100644
> index 0000000..45d6553
> --- /dev/null
> +++ b/drivers/misc/Makefile
> @@ -0,0 +1 @@
> +obj-$(CONFIG_AT24) += at24.o
> diff --git a/drivers/misc/at24.c b/drivers/misc/at24.c
> new file mode 100644
> index 0000000..7bb085a
> --- /dev/null
> +++ b/drivers/misc/at24.c
> @@ -0,0 +1,130 @@
> +/*
> + * Copyright (C) 2007 Sascha Hauer, Pengutronix
> + *               2009 Marc Kleine-Budde <mkl@pengutronix.de>
> + *               2010 Marc Reilly, Creative Product Design
> + *
> + * This program is free software; you can redistribute it and/or
> + * modify it under the terms of the GNU General Public License as
> + * published by the Free Software Foundation; either version 2 of
> + * the License, or (at your option) any later version.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + * You should have received a copy of the GNU General Public License
> + * along with this program; if not, write to the Free Software
> + * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
> + * MA 02111-1307 USA
> + *
> + */
> +
> +#include <common.h>
> +#include <init.h>
> +#include <driver.h>
> +#include <xfuncs.h>
> +#include <errno.h>
> +
> +#include <i2c/i2c.h>
> +#include <misc/at24.h>
> +
> +#define DRIVERNAME		"at24"
> +
> +#define to_at24(a)		container_of(a, struct at24, cdev)
> +
> +static ssize_t at24_read(struct cdev *cdev, void *_buf, size_t count,
> +		ulong offset, ulong flags)
> +{
> +	struct at24 *priv = to_at24(cdev);
> +	u8 *buf = _buf;
> +	size_t i = count;
> +	ssize_t numwritten = 0;
> +	int retries = 5;
> +	int ret;
> +
> +	while (i && retries) {
> +		ret = i2c_read_reg(priv->client, offset, buf, i);
> +		if (ret < 0)
> +			return (ssize_t)ret;
> +		else if (ret == 0)
> +			--retries;
> +
> +		numwritten += ret;
> +		i -= ret;
> +		offset += ret;
> +		buf += ret;
> +	}
> +
> +	return numwritten;
> +}
> +
> +static ssize_t at24_write(struct cdev *cdev, const void *_buf, size_t count,
> +		ulong offset, ulong flags)
> +{
> +	struct at24 *priv = to_at24(cdev);
> +	const u8 *buf = _buf;
> +	const int maxwrite = 8;
> +	int numtowrite;
> +	ssize_t numwritten = 0;
> +
> +	while (count) {
> +		int ret;
> +
> +		numtowrite = count;
> +		if (numtowrite > maxwrite)
> +			numtowrite = maxwrite;
> +
> +		ret = i2c_write_reg(priv->client, offset, buf, numtowrite);
> +		if (ret < 0)
> +			return (ssize_t)ret;
> +
> +		mdelay(10);
> +
> +		numwritten += ret;
> +		buf += ret;
> +		count -= ret;
> +		offset += ret;
> +	}
> +
> +	return numwritten;
> +}
> +
> +static struct file_operations at24_fops = {
> +	.lseek	= dev_lseek_default,
> +	.read	= at24_read,
> +	.write	= at24_write,
> +};
> +
> +static int at24_probe(struct device_d *dev)
> +{
> +	struct at24 *at24;
> +	struct at24_platform_data *pdata;
> +	at24 = xzalloc(sizeof(*at24));
> +
> +	dev->priv = at24;
> +	pdata = dev->platform_data;
> +
> +	at24->cdev.name = DRIVERNAME;

You should use at24->cdev.name = asprintf("%s%d", DRIVERNAME, dev->id);
here to support multiple eeproms. Note that this afaics needs patching
i2c_new_device to initialize client->dev.id to -1 to make sure the i2c
device gets an autoassigned id.

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

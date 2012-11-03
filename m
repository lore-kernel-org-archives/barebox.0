Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TUlSd-0006IW-1v
 for barebox@lists.infradead.org; Sat, 03 Nov 2012 21:41:00 +0000
Date: Sat, 3 Nov 2012 22:39:28 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121103213928.GT1641@pengutronix.de>
References: <20121102160659.GS29599@game.jcrosoft.org>
 <1351873060-27968-1-git-send-email-plagnioj@jcrosoft.com>
 <1351873060-27968-2-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1351873060-27968-2-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 2/2] introduce spi command
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Fri, Nov 02, 2012 at 05:17:40PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> usefull to debug spi
> 
> The command allow to read/write on a spi device
> 
> Usage: spi [OPTION] [data to write 0xXX]
> write/read spi device.
>   -b <bus_num>  spi bus number (default = 0)
>   -r <count>    to read
>   -c <cs>       chip select (default = 0)
>   -m <mode>     spi mode (default = 0)
>   -f <hz>       max_speed_hz (default = 1MHz)
>   -w <bit>      bits_per_word (default = 8)
>   -v            verbose
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  commands/Kconfig  |    6 +++
>  commands/Makefile |    1 +
>  commands/spi.c    |  126 +++++++++++++++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 133 insertions(+)
>  create mode 100644 commands/spi.c
> 
> diff --git a/commands/Kconfig b/commands/Kconfig
> index 16706d3..f7cbd67 100644
> --- a/commands/Kconfig
> +++ b/commands/Kconfig
> @@ -597,6 +597,12 @@ config CMD_I2C
>  	  include i2c_probe, i2c_read and i2c_write commands to communicate
>  	  on i2c bus.
>  
> +config CMD_SPI
> +	bool
> +	depends on SPI
> +	prompt "spi command"
> +	help
> +
>  config CMD_LED
>  	bool
>  	depends on LED
> diff --git a/commands/Makefile b/commands/Makefile
> index 610be55..19d496e 100644
> --- a/commands/Makefile
> +++ b/commands/Makefile
> @@ -55,6 +55,7 @@ obj-$(CONFIG_USB_GADGET_SERIAL)	+= usbserial.o
>  obj-$(CONFIG_CMD_GPIO)		+= gpio.o
>  obj-$(CONFIG_CMD_UNCOMPRESS)	+= uncompress.o
>  obj-$(CONFIG_CMD_I2C)		+= i2c.o
> +obj-$(CONFIG_CMD_SPI)		+= spi.o
>  obj-$(CONFIG_CMD_UBI)		+= ubi.o
>  obj-$(CONFIG_CMD_MENU)		+= menu.o
>  obj-$(CONFIG_CMD_PASSWD)	+= passwd.o
> diff --git a/commands/spi.c b/commands/spi.c
> new file mode 100644
> index 0000000..599637c
> --- /dev/null
> +++ b/commands/spi.c
> @@ -0,0 +1,126 @@
> +/*
> + * Copyright (c) 2012 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> + *
> + * Under GPLv2 only
> + *
> + */
> +
> +#include <common.h>
> +#include <command.h>
> +#include <errno.h>
> +#include <malloc.h>
> +#include <getopt.h>
> +#include <spi/spi.h>
> +
> +static int do_spi(int argc, char *argv[])
> +{
> +	struct spi_device spi;
> +	int bus = 0;
> +	int read = 0;
> +	int verbose = 0;
> +	int opt, count, i, ret;
> +
> +	u8 *tx_buf, *rx_buf;
> +
> +	memset(&spi, 0, sizeof(struct spi_device));
> +
> +	spi.max_speed_hz = 1 * 1000 * 1000;
> +	spi.bits_per_word = 8;
> +
> +	while ((opt = getopt(argc, argv, "b:c:r:m:f:w:v")) > 0) {
> +		switch (opt) {
> +		case 'b':
> +			bus = simple_strtol(optarg, NULL, 0);
> +			break;
> +		case 'r':
> +			read = simple_strtol(optarg, NULL, 0);
> +			break;
> +		case 'c':
> +			spi.chip_select = simple_strtoul(optarg, NULL, 0);
> +			break;
> +		case 'm':
> +			spi.mode = simple_strtoul(optarg, NULL, 0);
> +			break;
> +		case 'f':
> +			spi.max_speed_hz = simple_strtoul(optarg, NULL, 0);
> +			break;
> +		case 'w':
> +			spi.bits_per_word = simple_strtoul(optarg, NULL, 0);
> +			break;
> +		case 'v':
> +			verbose = 1;
> +			break;

		default:
			return COMMAND_ERROR_USAGE;

I still didn't find the time to fix the other commands, but for new ones
we should get used to it.

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

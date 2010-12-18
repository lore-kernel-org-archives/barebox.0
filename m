Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 63.mail-out.ovh.net ([91.121.185.56])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PTzzY-0008PP-UC
	for barebox@lists.infradead.org; Sat, 18 Dec 2010 16:50:45 +0000
Date: Sat, 18 Dec 2010 17:45:54 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20101218164554.GC15695@game.jcrosoft.org>
References: <1292685309-32326-1-git-send-email-s.hauer@pengutronix.de>
	<1292685309-32326-6-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1292685309-32326-6-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 5/7] LED: Add led command
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 16:15 Sat 18 Dec     , Sascha Hauer wrote:
> This patch allows controlling LEDs via the command line.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  commands/Kconfig  |    7 ++++++
>  commands/Makefile |    1 +
>  commands/led.c    |   60 +++++++++++++++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 68 insertions(+), 0 deletions(-)
>  create mode 100644 commands/led.c
> 
> diff --git a/commands/Kconfig b/commands/Kconfig
> index 5416073..64e08bb 100644
> --- a/commands/Kconfig
> +++ b/commands/Kconfig
> @@ -372,4 +372,11 @@ config CMD_I2C
>  	  include i2c_probe, i2c_read and i2c_write commands to communicate
>  	  on i2c bus.
>  
> +config CMD_LED
> +	bool
> +	depends on LED
> +	prompt "led command"
> +	help
> +	  include led command to control LEDs
> +
>  endmenu
> diff --git a/commands/Makefile b/commands/Makefile
> index ca30b5f..0820483 100644
> --- a/commands/Makefile
> +++ b/commands/Makefile
> @@ -53,3 +53,4 @@ obj-$(CONFIG_CMD_UBI)		+= ubi.o
>  obj-$(CONFIG_CMD_MENU)		+= menu.o
>  obj-$(CONFIG_CMD_PASSWD)	+= passwd.o
>  obj-$(CONFIG_CMD_LOGIN)		+= login.o
> +obj-$(CONFIG_CMD_LED)		+= led.o
> diff --git a/commands/led.c b/commands/led.c
> new file mode 100644
> index 0000000..ef6250f
> --- /dev/null
> +++ b/commands/led.c
> @@ -0,0 +1,60 @@
> +/*
> + * LED command support for barebox
> + *
> + * (C) Copyright 2010 Sascha Hauer, Pengutronix
> + *
> + * See file CREDITS for list of people who contributed to this
> + * project.
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
> + */
> +
> +#include <common.h>
> +#include <led.h>
> +#include <command.h>
> +#include <getopt.h>
> +#include <errno.h>
> +
> +static int do_led(struct command *cmdtp, int argc, char *argv[])
> +{
> +	unsigned long led, value;
> +	int ret;
> +
> +	if (argc != 3)
> +		return COMMAND_ERROR_USAGE;
> +
> +	led = simple_strtoul(argv[optind], NULL, 0);
> +	value = simple_strtoul(argv[optind + 1], NULL, 0);
> +
> +	ret = led_set_num(led, value);
> +	if (ret < 0) {
> +		perror("led");
> +		return 1;
> +	}
> +
> +	return 0;
> +}
how about list the available led?

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

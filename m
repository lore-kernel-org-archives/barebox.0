Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1OEgKt-0002r8-BP
	for barebox@lists.infradead.org; Wed, 19 May 2010 10:17:14 +0000
Date: Wed, 19 May 2010 12:17:07 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100519101707.GL31199@pengutronix.de>
References: <1274174808-9516-1-git-send-email-eric@eukrea.com>
	<1274174808-9516-2-git-send-email-eric@eukrea.com>
	<1274174808-9516-3-git-send-email-eric@eukrea.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1274174808-9516-3-git-send-email-eric@eukrea.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 3/3] commands: add i2c commands
To: Eric =?iso-8859-15?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

Hi Eric,

On Tue, May 18, 2010 at 11:26:48AM +0200, Eric B=E9nard wrote:
> theses commands allow low level access to i2c bus and can be useful
> to setup an i2c device without having to add code, compile and flash
> barebox.

This is surely a nice thing to have sometimes. Comments inline.


> =

> Signed-off-by: Eric B=E9nard <eric@eukrea.com>
> ---
>  commands/Kconfig  |    8 ++
>  commands/Makefile |    1 +
>  commands/i2c.c    |  233 +++++++++++++++++++++++++++++++++++++++++++++++=
++++++
>  3 files changed, 242 insertions(+), 0 deletions(-)
>  create mode 100644 commands/i2c.c
> =

> diff --git a/commands/Kconfig b/commands/Kconfig
> index 0c09f91..7115b18 100644
> --- a/commands/Kconfig
> +++ b/commands/Kconfig
> @@ -314,4 +314,12 @@ config CMD_UNLZO
>  	  Say yes here to get the unlzo command. lzo is a fast compression
>  	  algorithm by Markus Franz Xaver Johannes Oberhumer.
>  =

> +config CMD_I2C
> +	bool
> +	depends on DRIVER_I2C_I2CDEV
> +	prompt "i2c commands"
> +	help
> +	  include i2c_probe, i2c_read and i2c_write commands to communicate
> +	  on i2c bus.
> +
>  endmenu
> diff --git a/commands/Makefile b/commands/Makefile
> index 74b0994..3eef5de 100644
> --- a/commands/Makefile
> +++ b/commands/Makefile
> @@ -48,3 +48,4 @@ obj-$(CONFIG_CMD_BMP)		+=3D bmp.o
>  obj-$(CONFIG_USB_GADGET_DFU)	+=3D dfu.o
>  obj-$(CONFIG_CMD_GPIO)		+=3D gpio.o
>  obj-$(CONFIG_CMD_UNLZO)		+=3D unlzo.o
> +obj-$(CONFIG_CMD_I2C)		+=3D i2c.o
> diff --git a/commands/i2c.c b/commands/i2c.c
> new file mode 100644
> index 0000000..b4152eb
> --- /dev/null
> +++ b/commands/i2c.c
> @@ -0,0 +1,233 @@
> +/*
> + * i2c.c - i2c commands
> + *
> + * Copyright (c) 2010 Eric B=E9nard <eric@eukrea.Com>, Eukr=E9a Electrom=
atique
> + *
> + * originals hex1_bin and hex2_bin are
> + * (C) Copyright 2000 Wolfgang Denk, DENX Software Engineering, wd@denx.=
de.
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
> +#include <command.h>
> +#include <errno.h>
> +#include <malloc.h>
> +#include <getopt.h>
> +#include <i2c/i2c.h>
> +
> +struct i2c_client	*client;
> +extern struct i2c_client *i2cdev_get_client(void);
> +
> +static int hex1_bin(char c)
> +{
> +	if (c >=3D '0' && c <=3D '9')
> +		return c - '0';
> +	if (c >=3D 'a' && c <=3D 'f')
> +		return c + 10 - 'a';
> +	if (c >=3D 'A' && c <=3D 'F')
> +		return c + 10 - 'A';
> +	return -1;
> +}
> +
> +static int hex2_bin(char *s)
> +{
> +	int i, j;
> +
> +	if (*s =3D=3D '0' && (*(s+1) =3D=3D 'x'))
> +		s +=3D 2;
> +	i =3D hex1_bin(*s++);
> +	if (i < 0)
> +		return -1;
> +	j =3D hex1_bin(*s);
> +	if (j < 0)
> +		return -1;
> +	return (i<<4) + j;
> +}

Any reason not to use simple_strtoul here?

> +
> +static int do_i2c_probe(struct command *cmdtp, int argc, char *argv[])
> +{
> +	struct i2c_client *client;
> +	int startaddr =3D -1, stopaddr =3D -1, addr, ret;
> +	u8 reg;
> +
> +	if (argc < 3)
> +		return COMMAND_ERROR_USAGE;
> +
> +	startaddr =3D hex2_bin(argv[1]);
> +	stopaddr =3D hex2_bin(argv[2]);
> +	if ((startaddr =3D=3D -1) || (stopaddr =3D=3D -1))
> +		return COMMAND_ERROR_USAGE;
> +

You should also check for stopaddr >=3D startaddr, otherwise you can run
into a (nearly) infinite loop below. Or better check for addr <=3D
stopaddr below.

> +	client =3D i2cdev_get_client();
> +	if (!client)
> +		return -ENODEV;
> +
> +	printf("probing i2c range 0X%02x - 0x%02x :\n", startaddr, stopaddr);
> +	for (addr =3D startaddr; addr !=3D stopaddr; addr++) {
> +		client->addr =3D addr;
> +		ret =3D i2c_write_reg(client, 0x00, &reg, 0);
> +		if (ret =3D=3D 0)
> +			printf("0x%02x ", addr);
> +	}
> +	printf("\n");
> +	return 0;
> +}
> +
> +static const __maybe_unused char cmd_i2c_probe_help[] =3D
> +"Usage: i2c_probe 0xstartaddr 0xstopaddr\n"
> +"probe a range of i2c addresses.\n";
> +
> +BAREBOX_CMD_START(i2c_probe)
> +	.cmd		=3D do_i2c_probe,
> +	.usage		=3D "probe for an i2c device",
> +	BAREBOX_CMD_HELP(cmd_i2c_probe_help)
> +BAREBOX_CMD_END
> +
> +static int do_i2c_write(struct command *cmdtp, int argc, char *argv[])
> +{
> +	struct i2c_client *client;
> +	int addr =3D -1, reg =3D -1, count =3D -1, ret, opt;
> +	void *buf =3D NULL;

No need to set this to NULL.

> +
> +	if (argc < 5)
> +		return COMMAND_ERROR_USAGE;

You don't need this check.

> +
> +	while ((opt =3D getopt(argc, argv, "a:c:r:")) > 0) {
> +		switch (opt) {
> +		case 'a':
> +			addr =3D hex2_bin(optarg);
> +			if (addr < 0)
> +				return COMMAND_ERROR_USAGE;
> +			break;
> +		case 'c':
> +			count =3D simple_strtoul(optarg, NULL, 0);
> +			break;
> +		case 'r':
> +			reg =3D hex2_bin(optarg);
> +			if (reg < 0)
> +				return COMMAND_ERROR_USAGE;
> +			break;
> +		}
> +	}
> +	if ((argc - optind) !=3D count)
> +		return COMMAND_ERROR_USAGE;

We do not need the count command line argument. Just do a
count =3D argc - optind.

You should move the addr < 0 and reg < 0 checks here. This also catches
the case when the user did not specify -a or -r.

> +
> +	client =3D i2cdev_get_client();
> +	if (!client)
> +		return -ENODEV;
> +	client->addr =3D addr;
> +
> +	buf =3D malloc(count);
> +	if (buf) {
> +		int i;
> +		u8 tmp;
> +		for (i =3D 0; i < count; i++) {
> +			tmp =3D hex2_bin(argv[optind+i]);
> +			if (tmp < 1) {

Shouldn't this be tmp < 0?
Anyway, simple_strtoul can do a better job here. You can explicitely
specify the base to 16 to get rid of the mandatory 0x prefix.

> +				free(buf);
> +				return COMMAND_ERROR_USAGE;
> +			}
> +			*(u8 *) (buf + i) =3D tmp;

u8 might a better type for buf.

> +		}
> +		ret =3D i2c_write_reg(client, reg, buf, count);
> +		if (ret !=3D count) {
> +			free(buf);
> +			return ret;
> +		}
> +		free(buf);
> +		printf("wrote %i bytes starting at reg 0x%02x to i2cdev \
> +			0x%02x\n", count, reg, addr);
> +		return 0;
> +	}
> +	return 1;
> +}
> +
> +static const __maybe_unused char cmd_i2c_write_help[] =3D
> +"Usage: i2c_write [OPTION] ... hexdatas\n"
> +"write to i2c device.\n"
> +"  -a 0x<addr>   i2c device address\n"
> +"  -r 0x<reg>    start register\n"
> +"  -c <count>  byte number to write\n";
> +
> +BAREBOX_CMD_START(i2c_write)
> +	.cmd		=3D do_i2c_write,
> +	.usage		=3D "write to an i2c device",
> +	BAREBOX_CMD_HELP(cmd_i2c_write_help)
> +BAREBOX_CMD_END
> +
> +static int do_i2c_read(struct command *cmdtp, int argc, char *argv[])
> +{

Some comments above apply to this function aswell.

> +	struct i2c_client *client;
> +	void *buf =3D NULL;
> +	int count =3D -1, addr =3D -1, reg =3D -1, ret, opt;
> +
> +	if (argc < 4)
> +		return COMMAND_ERROR_USAGE;
> +
> +	while ((opt =3D getopt(argc, argv, "a:c:r:")) > 0) {
> +		switch (opt) {
> +		case 'a':
> +			addr =3D hex2_bin(optarg);
> +			if (addr < 0)
> +				return COMMAND_ERROR_USAGE;
> +			break;
> +		case 'c':
> +			count =3D simple_strtoul(optarg, NULL, 0);
> +			break;
> +		case 'r':
> +			reg =3D hex2_bin(optarg);
> +			if (reg < 0)
> +				return COMMAND_ERROR_USAGE;
> +			break;
> +		}
> +	}
> +
> +	client =3D i2cdev_get_client();
> +	if (!client)
> +		return -ENODEV;
> +	client->addr =3D addr;
> +
> +	buf =3D malloc(count);
> +	if (buf) {
> +		ret =3D i2c_read_reg(client, reg, buf, count);
> +		if (ret =3D=3D count) {
> +			int i;
> +			printf("read %i bytes starting at reg 0x%02x from \
> +				i2cdev 0x%02x\n", count, reg, addr);
> +			for (i =3D 0; i < count; i++)
> +				printf("0x%02x ", *(u8 *) (buf + i));
> +			printf("\n");
> +			free(buf);
> +			return 0;
> +		}
> +		free(buf);
> +	}
> +	return 1;
> +}
> +
> +static const __maybe_unused char cmd_i2c_read_help[] =3D
> +"Usage: i2c_read [OPTION]\n"
> +"read i2c device.\n"
> +"  -a 0x<addr>   i2c device address\n"
> +"  -r 0x<reg>    start register\n"
> +"  -c <count>  byte count\n";
> +
> +BAREBOX_CMD_START(i2c_read)
> +	.cmd		=3D do_i2c_read,
> +	.usage		=3D "read from an i2c device",
> +	BAREBOX_CMD_HELP(cmd_i2c_read_help)
> +BAREBOX_CMD_END
> -- =

> 1.6.3.3
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

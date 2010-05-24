Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1OGft6-0006yv-T4
	for barebox@lists.infradead.org; Mon, 24 May 2010 22:12:46 +0000
Message-ID: <4BFAF9D1.90907@pengutronix.de>
Date: Tue, 25 May 2010 00:12:33 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
MIME-Version: 1.0
References: <1274708768-20607-1-git-send-email-eric@eukrea.com>	<1274708768-20607-2-git-send-email-eric@eukrea.com>
	<1274708768-20607-3-git-send-email-eric@eukrea.com>
In-Reply-To: <1274708768-20607-3-git-send-email-eric@eukrea.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0327088572=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 3/4] commands: add i2c commands
To: =?UTF-8?B?RXJpYyBCw6luYXJk?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--===============0327088572==
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="------------enigAA9BA426FA15F3280024C0FE"

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--------------enigAA9BA426FA15F3280024C0FE
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Eric B=C3=A9nard wrote:
> theses commands allow low level access to i2c bus and can be useful
> to setup an i2c device without having to add code, compile and flash
> barebox.
>=20
> Signed-off-by: Eric B=C3=A9nard <eric@eukrea.com>
> ---
> v3 :=20
> 	enable brain and fix v2
> 	tested on iMX27
> v2 :
> 	updated as per Sascha's comments
>=20
>  commands/Kconfig  |    8 ++
>  commands/Makefile |    1 +
>  commands/i2c.c    |  218 +++++++++++++++++++++++++++++++++++++++++++++=
++++++++
>  3 files changed, 227 insertions(+), 0 deletions(-)
>  create mode 100644 commands/i2c.c
>=20
> diff --git a/commands/Kconfig b/commands/Kconfig
> index 0c09f91..0ea32d9 100644
> --- a/commands/Kconfig
> +++ b/commands/Kconfig
> @@ -314,4 +314,12 @@ config CMD_UNLZO
>  	  Say yes here to get the unlzo command. lzo is a fast compression
>  	  algorithm by Markus Franz Xaver Johannes Oberhumer.
> =20
> +config CMD_I2C
> +	bool
> +	depends on I2C
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
> index 0000000..4bd7d85
> --- /dev/null
> +++ b/commands/i2c.c
> @@ -0,0 +1,218 @@
> +/*
> + * i2c.c - i2c commands
> + *
> + * Copyright (c) 2010 Eric B=C3=A9nard <eric@eukrea.Com>, Eukr=C3=A9a =
Electromatique
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

is this global still used?

> +
> +static int do_i2c_probe(struct command *cmdtp, int argc, char *argv[])=

> +{
> +	struct i2c_adapter *adapter;
> +	struct i2c_client client;
> +	int startaddr =3D -1, stopaddr =3D -1, addr, ret;
> +	u8 reg;
> +
> +	if (argc < 4)
> +		return COMMAND_ERROR_USAGE;
> +
> +	adapter =3D i2c_get_adapter(simple_strtoul(argv[1], NULL, 0));
> +	if (!adapter)
> +		return -ENODEV;
> +	client.adapter =3D adapter;
> +
> +	startaddr =3D simple_strtol(argv[2], NULL, 16);
> +	stopaddr =3D simple_strtol(argv[3], NULL, 16);
> +	if ((startaddr =3D=3D -1) || (stopaddr =3D=3D -1) || (startaddr > sto=
paddr))
> +		return COMMAND_ERROR_USAGE;
> +
> +	if (stopaddr > 0x7F)
> +		stopaddr =3D 0x7F;
> +
> +	printf("probing i2c range 0X%02x - 0x%02x :\n", startaddr, stopaddr);=

> +	for (addr =3D startaddr; addr <=3D stopaddr; addr++) {
> +		client.addr =3D addr;
> +		ret =3D i2c_write_reg(&client, 0x00, &reg, 0);
> +		if (ret =3D=3D 0)
> +			printf("0x%02x ", addr);
> +	}
> +	printf("\n");
> +	return 0;
> +}
> +
> +static const __maybe_unused char cmd_i2c_probe_help[] =3D
> +"Usage: i2c_probe bus 0xstartaddr 0xstopaddr\n"
> +"probe a range of i2c addresses.\n";
> +
> +BAREBOX_CMD_START(i2c_probe)
> +	.cmd		=3D do_i2c_probe,
> +	.usage		=3D "probe for an i2c device",
> +	BAREBOX_CMD_HELP(cmd_i2c_probe_help)
> +BAREBOX_CMD_END
> +
> +static int do_i2c_write(struct command *cmdtp, int argc, char *argv[])=

> +{
> +	struct i2c_adapter *adapter =3D NULL;
> +	struct i2c_client client;
> +	int addr =3D -1, reg =3D -1, count =3D -1, verbose =3D 0, ret, opt;
> +	u8 *buf;
> +
> +	while ((opt =3D getopt(argc, argv, "a:b:r:v")) > 0) {
> +		switch (opt) {
> +		case 'a':
> +			addr =3D simple_strtol(optarg, NULL, 16);
> +			break;
> +		case 'r':
> +			reg =3D simple_strtol(optarg, NULL, 16);
> +			break;
> +		case 'b':
> +			adapter =3D i2c_get_adapter(simple_strtoul(optarg, NULL, 0));
> +			if (!adapter)
> +				return -ENODEV;
> +			client.adapter =3D adapter;
> +			break;
> +		case 'v':
> +			verbose =3D 1;
> +			break;
> +		}
> +	}
> +
> +	count =3D argc - optind;
> +
> +	if ((addr < 0) || (reg < 0) || (count =3D=3D 0) || (addr > 0x7F))
> +		return COMMAND_ERROR_USAGE;
> +
> +	client.addr =3D addr;
> +
> +	buf =3D malloc(count);
> +	if (buf) {

I think barebox call hang() or something similar if it runs out of
memory, so IIRC no need for this test.

> +		int i;
> +		u8 tmp;
> +		for (i =3D 0; i < count; i++) {
> +			tmp =3D (char) simple_strtol(argv[optind+i], NULL, 16);
> +			if (tmp < 0) {
> +				free(buf);
> +				return COMMAND_ERROR_USAGE;

here...

> +			}
> +			*(buf + i) =3D tmp;
> +		}
> +		ret =3D i2c_write_reg(&client, reg, buf, count);
> +		if (ret !=3D count) {
> +			free(buf);
> +			return ret;

and here might be a "goto out_free" usefull.

> +		}
> +		if (verbose) {
> +			printf("wrote %i bytes starting at reg 0x%02x to i2cdev 0x%02x on b=
us %i\n",
> +				count, reg, addr, adapter->nr);
> +			for (i =3D 0; i < count; i++)
> +				printf("0x%02x ", *(buf + i));
> +			printf("\n");
> +		}
> +		free(buf);
> +		return 0;
> +	}
> +	return 1;
> +}
> +
> +static const __maybe_unused char cmd_i2c_write_help[] =3D
> +"Usage: i2c_write [OPTION] ... hexdatas\n"
> +"write to i2c device.\n"
> +"  -a 0x<addr>   i2c device address\n"
> +"  -b <bus_num>  i2c bus number\n"
> +"  -r 0x<reg>    start register\n";
> +
> +BAREBOX_CMD_START(i2c_write)
> +	.cmd		=3D do_i2c_write,
> +	.usage		=3D "write to an i2c device",
> +	BAREBOX_CMD_HELP(cmd_i2c_write_help)
> +BAREBOX_CMD_END
> +
> +static int do_i2c_read(struct command *cmdtp, int argc, char *argv[])
> +{
> +	struct i2c_adapter *adapter =3D NULL;
> +	struct i2c_client client;
> +	u8 *buf;
> +	int count =3D -1, addr =3D -1, reg =3D -1, verbose =3D 0, ret, opt;
> +
> +	while ((opt =3D getopt(argc, argv, "a:b:c:r:v")) > 0) {
> +		switch (opt) {
> +		case 'a':
> +			addr =3D simple_strtol(optarg, NULL, 16);
> +			break;
> +		case 'c':
> +			count =3D simple_strtoul(optarg, NULL, 0);
> +			break;
> +		case 'b':
> +			adapter =3D i2c_get_adapter(simple_strtoul(optarg, NULL, 0));
> +			if (!adapter)
> +				return -ENODEV;
> +			client.adapter =3D adapter;
> +			break;
> +		case 'r':
> +			reg =3D simple_strtol(optarg, NULL, 16);
> +			break;
> +		case 'v':
> +			verbose =3D 1;
> +			break;
> +		}
> +	}
> +
> +	if ((addr < 0) || (reg < 0) || (count =3D=3D 0) || (addr > 0x7F))
> +		return COMMAND_ERROR_USAGE;
> +
> +	client.addr =3D addr;
> +
> +	buf =3D malloc(count);

see above

> +	if (buf) {
> +		ret =3D i2c_read_reg(&client, reg, buf, count);
> +		if (ret =3D=3D count) {
> +			int i;
> +			if (verbose)
> +				printf("read %i bytes starting at reg 0x%02x from i2cdev 0x%02x on=
 bus %i\n",
> +					count, reg, addr, adapter->nr);
> +			for (i =3D 0; i < count; i++)
> +				printf("0x%02x ", *(buf + i));
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
> +"  -b <bus_num>  i2c bus number\n"
> +"  -r 0x<reg>    start register\n"
> +"  -c <count>    byte count\n";
> +
> +BAREBOX_CMD_START(i2c_read)
> +	.cmd		=3D do_i2c_read,
> +	.usage		=3D "read from an i2c device",
> +	BAREBOX_CMD_HELP(cmd_i2c_read_help)
> +BAREBOX_CMD_END

Is the "-b" an optional or required argument. It would be nice if it
defaults to the first bus.

cheers, Marc

--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--------------enigAA9BA426FA15F3280024C0FE
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.9 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org

iEYEARECAAYFAkv6+dkACgkQjTAFq1RaXHNDHACfcxbNlzBPrfAm/tuzSxKxl/WG
lfoAn1wlKTtthFESK5Iq1tdif+Tn1ykM
=Iv04
-----END PGP SIGNATURE-----

--------------enigAA9BA426FA15F3280024C0FE--


--===============0327088572==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============0327088572==--

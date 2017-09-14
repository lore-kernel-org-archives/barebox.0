Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dsUbz-0000kS-5z
 for barebox@lists.infradead.org; Thu, 14 Sep 2017 13:55:30 +0000
References: <1505392152-7965-1-git-send-email-gp@high-consulting.de>
From: Oleksij Rempel <linux@rempel-privat.de>
Message-ID: <c9ee5e1a-a51c-bab2-c4eb-b86bd66871e1@rempel-privat.de>
Date: Thu, 14 Sep 2017 15:54:58 +0200
MIME-Version: 1.0
In-Reply-To: <1505392152-7965-1-git-send-email-gp@high-consulting.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0649481230031491581=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v1 1/2] commands: writef write variable contents to file
To: gp@high-consulting.de, barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============0649481230031491581==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="tlvdarjqKCfpCcNgHCN6qs7C0puw5Vsjf"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--tlvdarjqKCfpCcNgHCN6qs7C0puw5Vsjf
Content-Type: multipart/mixed; boundary="6VKuth0BPebmRJwusB1igalQL73gfmdaj";
 protected-headers="v1"
From: Oleksij Rempel <linux@rempel-privat.de>
To: gp@high-consulting.de, barebox@lists.infradead.org
Message-ID: <c9ee5e1a-a51c-bab2-c4eb-b86bd66871e1@rempel-privat.de>
Subject: Re: [PATCH v1 1/2] commands: writef write variable contents to file
References: <1505392152-7965-1-git-send-email-gp@high-consulting.de>
In-Reply-To: <1505392152-7965-1-git-send-email-gp@high-consulting.de>

--6VKuth0BPebmRJwusB1igalQL73gfmdaj
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: quoted-printable

Hi,

Am 14.09.2017 um 14:29 schrieb gp@high-consulting.de:
> From: Gerd Pauli <gp@high-consulting.de>

please add comment here how it should be used.

> Signed-off-by: Gerd Pauli <gp@high-consulting.de>
> ---
>  commands/Kconfig  | 10 ++++++++
>  commands/Makefile |  1 +
>  commands/writef.c | 68 +++++++++++++++++++++++++++++++++++++++++++++++=
++++++++
>  3 files changed, 79 insertions(+)
>  create mode 100644 commands/writef.c
>=20
> diff --git a/commands/Kconfig b/commands/Kconfig
> index ae2dc4b..89b3103 100644
> --- a/commands/Kconfig
> +++ b/commands/Kconfig
> @@ -1082,6 +1082,16 @@ config CMD_READF
>  	  whitespaces are removed, nonvisible characters are stripped. Input =
is
>  	  limited to 1024 characters.
> =20
> +config CMD_WRITEF
> +        tristate
> +        prompt "writef"

please use tabs instead of spaces.

> +        help
> +          Write variable into file
> +
> +          Usage: writef VAR FILE
> +
> +          Writes a line from VARiable into a FILE.
> +
>  config CMD_SLEEP
>  	tristate
>  	prompt "sleep"
> diff --git a/commands/Makefile b/commands/Makefile
> index 37486dc..16c1768 100644
> --- a/commands/Makefile
> +++ b/commands/Makefile
> @@ -103,6 +103,7 @@ obj-$(CONFIG_CMD_BOOT)		+=3D boot.o
>  obj-$(CONFIG_CMD_DEVINFO)	+=3D devinfo.o
>  obj-$(CONFIG_CMD_DRVINFO)	+=3D drvinfo.o
>  obj-$(CONFIG_CMD_READF)		+=3D readf.o
> +obj-$(CONFIG_CMD_WRITEF)	+=3D writef.o
>  obj-$(CONFIG_CMD_MENUTREE)	+=3D menutree.o
>  obj-$(CONFIG_CMD_2048)		+=3D 2048.o
>  obj-$(CONFIG_CMD_REGULATOR)	+=3D regulator.o
> diff --git a/commands/writef.c b/commands/writef.c
> new file mode 100644
> index 0000000..1cd17b1
> --- /dev/null
> +++ b/commands/writef.c
> @@ -0,0 +1,68 @@
> +/*
> + * writef.c - Write Content of Variable to File
> + *
> + * Copyright (c) 2017 Gerd Pauli <gp@high-consulting.de>, HighConsulti=
ng GmbH & Co. KG
> + *
> + * See file CREDITS for list of people who contributed to this
> + * project.
> + *
> + * This program is free software; you can redistribute it and/or modif=
y
> + * it under the terms of the GNU General Public License version 2
> + * as published by the Free Software Foundation.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + */
> +
> +#include <common.h>
> +#include <command.h>
> +#include <fs.h>
> +#include <libfile.h>
> +#include <malloc.h>
> +#include <linux/stat.h>
> +#include <linux/ctype.h>
> +#include <environment.h>
> +
> +static int do_writef(int argc, char *argv[])
> +{
> +  const char *val;
> +  char *variable, *filename;
> +  size_t size;
> +  void *buf;
> +  int ret;

same here. tabs, not spaces.
please use linux kernel coding style.
https://www.kernel.org/doc/html/v4.13/process/coding-style.html

you can also use checkpatch.pl script from barebox repository.

for example:
=2E/scripts/checkpatch.pl -f commands/writef.c
or
=2E/scripts/checkpatch.pl your_patch

the same apply to other two patches as well


> +  if (argc !=3D 3)
> +    return COMMAND_ERROR_USAGE;
> + =20
> +  variable =3D argv[1];
> +  filename =3D argv[2];
> + =20
> +  val =3D getenv(variable);
> +  if ( val =3D=3D NULL )
> +    return COMMAND_ERROR;
> + =20
> +  size =3D strlen(val);
> +  size++;
> +
> +  buf =3D xmalloc(size+1);
> +  sprintf(buf,"%s\n",val);
> +
> +  ret =3D write_file(filename, buf, size);
> +  free(buf);
> +  return ret;
> +}
> +
> +BAREBOX_CMD_HELP_START(writef)
> +BAREBOX_CMD_HELP_TEXT("Write Content of VARiable to FILE")
> +BAREBOX_CMD_HELP_END
> +
> +BAREBOX_CMD_START(writef)
> +  .cmd		=3D do_writef,
> +  BAREBOX_CMD_DESC("write variable into file")
> +  BAREBOX_CMD_OPTS("VAR FILE")
> +  BAREBOX_CMD_GROUP(CMD_GRP_SCRIPT)
> +  BAREBOX_CMD_HELP(cmd_writef_help)
> +BAREBOX_CMD_END
>=20


--=20
Regards,
Oleksij


--6VKuth0BPebmRJwusB1igalQL73gfmdaj--

--tlvdarjqKCfpCcNgHCN6qs7C0puw5Vsjf
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iF4EAREIAAYFAlm6ijIACgkQHwImuRkmbWkiqQD9EHx72CjiljFkB9W+y6VuUuUt
KfF15/mxaIEUZxnujLUBAJHn1pFhXTnYpLImsA8QtXiWkQC5FN8eCnjEGh7idoDV
=UGwk
-----END PGP SIGNATURE-----

--tlvdarjqKCfpCcNgHCN6qs7C0puw5Vsjf--


--===============0649481230031491581==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============0649481230031491581==--

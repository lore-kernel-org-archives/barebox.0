Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RVALB-0006mc-1w
 for barebox@lists.infradead.org; Mon, 28 Nov 2011 23:10:27 +0000
Message-ID: <4ED414C9.2010909@pengutronix.de>
Date: Tue, 29 Nov 2011 00:10:01 +0100
From: Marc Kleine-Budde <mkl@pengutronix.de>
MIME-Version: 1.0
References: <1322518209-2965-1-git-send-email-s.hauer@pengutronix.de>
 <1322518209-2965-11-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1322518209-2965-11-git-send-email-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1185322650710557017=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 10/16] add file detection support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--===============1185322650710557017==
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="------------enig97978688A9A173C476AACAEC"

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--------------enig97978688A9A173C476AACAEC
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On 11/28/2011 11:10 PM, Sascha Hauer wrote:
> Several filetypes can be autodetected. Barebox could make use
> of this in several ways:
>=20
> - Add a command to detect filetypes
> - detect arm zImages and uImages to unify the different boot commands
> - maybe detect UBI or JFFS2 images to construct parts of the kernel
>   command line
> - select correct uncompression function based on filetype
>=20
> This patch adds basic support to detect filetypes.
>=20
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  common/Makefile    |    1 +
>  common/filetype.c  |  104 ++++++++++++++++++++++++++++++++++++++++++++=
++++++++
>  include/filetype.h |   23 +++++++++++
>  3 files changed, 128 insertions(+), 0 deletions(-)
>  create mode 100644 common/filetype.c
>  create mode 100644 include/filetype.h
>=20
> diff --git a/common/Makefile b/common/Makefile
> index 3edf38f..55d9dbc 100644
> --- a/common/Makefile
> +++ b/common/Makefile
> @@ -26,6 +26,7 @@ obj-$(CONFIG_CMD_BOOTM) +=3D image.o
>  obj-y +=3D startup.o
>  obj-y +=3D misc.o
>  obj-y +=3D memsize.o
> +obj-y +=3D filetype.o
>  obj-$(CONFIG_MENU) +=3D menu.o
>  obj-$(CONFIG_PASSWORD) +=3D password.o
>  obj-$(CONFIG_MODULES) +=3D module.o
> diff --git a/common/filetype.c b/common/filetype.c
> new file mode 100644
> index 0000000..5d246b4
> --- /dev/null
> +++ b/common/filetype.c
> @@ -0,0 +1,104 @@
> +/*
> + * filetype.c - detect filetypes
> + *
> + * Copyright (c) 2011 Sascha Hauer <s.hauer@pengutronix.de>, Pengutron=
ix
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
> + * You should have received a copy of the GNU General Public License
> + * along with this program; if not, write to the Free Software
> + * Foundation.
> + */
> +#include <common.h>
> +#include <filetype.h>
> +#include <asm/byteorder.h>
> +#include <fcntl.h>
> +#include <fs.h>
> +#include <malloc.h>
> +
> +const char *file_type_to_string(enum filetype f)
> +{

you can use an const array char pointers here:

static const char *filetype_str[] =3D {
        [filetype_unknown] =3D "unknown",
=2E..
}


> +	switch (f) {
> +	case filetype_unknown:
> +		return "unkown";
> +	case filetype_arm_zimage:
> +		return "arm Linux zImage";
> +	case filetype_lzo_compressed:
> +		return "lzo compressed";
> +	case filetype_arm_barebox:
> +		return "arm barebox image";
> +	case filetype_uimage:
> +		return "U-Boot uImage";
> +	case filetype_ubi:
> +		return "UBI image";
> +	case filetype_jffs2:
> +		return "JFFS2 image";
> +	case filetype_gzip:
> +		return "gzip compressed";
> +	case filetype_bzip2:
> +		return "bzip2 compressed";
> +	}
> +	return NULL;
> +}
> +
> +enum filetype file_detect_type(void *_buf)
> +{
> +	u32 *buf =3D _buf;
> +	u8 *buf8 =3D _buf;
> +
> +	if (buf[8] =3D=3D 0x65726162 && buf[9] =3D=3D 0x00786f62)
> +		return filetype_arm_barebox;
> +	if (buf[9] =3D=3D 0x016f2818 || buf[9] =3D=3D 0x18286f01)
> +		return filetype_arm_zimage;
> +	if (buf8[0] =3D=3D 0x89 && buf8[1] =3D=3D 0x4c && buf8[2] =3D=3D 0x5a=
 &&
> +			buf8[3] =3D=3D 0x4f)
> +		return filetype_lzo_compressed;
> +	if (buf[0] =3D=3D be32_to_cpu(0x27051956))
> +		return filetype_uimage;
> +	if (buf[0] =3D=3D 0x23494255)
> +		return filetype_ubi;
> +	if (buf[0] =3D=3D 0x20031985)
> +		return filetype_jffs2;
> +	if (buf8[0] =3D=3D 0x1f && buf8[1] =3D=3D 0x8b && buf8[2] =3D=3D 0x08=
)
> +		return filetype_gzip;
> +	if (buf8[0] =3D=3D 'B' && buf8[1] =3D=3D 'Z' && buf8[2] =3D=3D 'h' &&=

> +			buf8[3] > '0' && buf8[3] <=3D '9')
> +                return filetype_bzip2;
> +
> +	return filetype_unknown;
> +}
> +
> +enum filetype file_name_detect_type(const char *filename)
> +{
> +	int fd, ret;
> +	void *buf;
> +	enum filetype type =3D filetype_unknown;
> +
> +	fd =3D open(filename, O_RDONLY);
> +	if (fd < 0)
> +		return fd;
> +
> +	buf =3D xmalloc(512);
> +
> +	ret =3D read(fd, buf, 512);
> +	if (ret !=3D 512)
> +		goto err_out;
> +
> +	type =3D file_detect_type(buf);
> +
> +err_out:
> +	close(fd);
> +	free(buf);
> +
> +	return type;
> +}
> diff --git a/include/filetype.h b/include/filetype.h
> new file mode 100644
> index 0000000..64d32ef
> --- /dev/null
> +++ b/include/filetype.h
> @@ -0,0 +1,23 @@
> +#ifndef __FILE_TYPE_H
> +#define __FILE_TYPE_H
> +
> +/*
> + * List of file types we know
> + */
> +enum filetype {
> +	filetype_unknown,
> +	filetype_arm_zimage,
> +	filetype_lzo_compressed,
> +	filetype_arm_barebox,
> +	filetype_uimage,
> +	filetype_ubi,
> +	filetype_jffs2,
> +	filetype_gzip,
> +	filetype_bzip2,
> +};
> +
> +const char *file_type_to_string(enum filetype f);
> +enum filetype file_detect_type(void *_buf);
> +enum filetype file_name_detect_type(const char *filename);
> +
> +#endif /* __FILE_TYPE_H */

Marc

--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--------------enig97978688A9A173C476AACAEC
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.10 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org/

iEYEARECAAYFAk7UFMwACgkQjTAFq1RaXHOkkwCcCtLqBiG4dNrlWJdwCY1ruVgS
oZMAnRNFminZLcIl05kcVAKwdB8VgNdp
=0+LU
-----END PGP SIGNATURE-----

--------------enig97978688A9A173C476AACAEC--


--===============1185322650710557017==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1185322650710557017==--

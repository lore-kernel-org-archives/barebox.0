Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cm2dx-00041Z-UW
 for barebox@lists.infradead.org; Thu, 09 Mar 2017 18:18:31 +0000
References: <20170309170545.25325-1-o.rempel@pengutronix.de>
 <20170309175832.20213-1-o.rempel@pengutronix.de>
 <20170309175832.20213-2-o.rempel@pengutronix.de>
From: Marc Kleine-Budde <mkl@pengutronix.de>
Message-ID: <e8b1c961-65bc-b796-149d-a662ae6d9309@pengutronix.de>
Date: Thu, 9 Mar 2017 19:18:01 +0100
MIME-Version: 1.0
In-Reply-To: <20170309175832.20213-2-o.rempel@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1754876819545408683=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2 2/3] console_countdown: add possibility to abort
 countdown by external commands
To: Oleksij Rempel <o.rempel@pengutronix.de>, barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============1754876819545408683==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="E9A3IqSk3KUh1nVHDTxttt7xwu8GmVp4T"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--E9A3IqSk3KUh1nVHDTxttt7xwu8GmVp4T
Content-Type: multipart/mixed; boundary="rfQOqrN1foOlfEKwB6UlebAkBalMaNJ1L";
 protected-headers="v1"
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: Oleksij Rempel <o.rempel@pengutronix.de>, barebox@lists.infradead.org
Message-ID: <e8b1c961-65bc-b796-149d-a662ae6d9309@pengutronix.de>
Subject: Re: [PATCH v2 2/3] console_countdown: add possibility to abort
 countdown by external commands
References: <20170309170545.25325-1-o.rempel@pengutronix.de>
 <20170309175832.20213-1-o.rempel@pengutronix.de>
 <20170309175832.20213-2-o.rempel@pengutronix.de>
In-Reply-To: <20170309175832.20213-2-o.rempel@pengutronix.de>

--rfQOqrN1foOlfEKwB6UlebAkBalMaNJ1L
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 03/09/2017 06:58 PM, Oleksij Rempel wrote:
> From: Marc Kleine-Budde <mkl@pengutronix.de>
>=20
> This patch makes it possible to abort a console countdown by an externa=
l
> command, for example when fastboot is used. This requires additional
> modifications in the external commands, a call to "console_countdown_ab=
ort()"
> has to be inserted.
>=20
> Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  commands/timeout.c          |  8 ++++++--
>  common/console_countdown.c  | 15 +++++++++++++++
>  include/console_countdown.h |  2 ++
>  3 files changed, 23 insertions(+), 2 deletions(-)
>=20
> diff --git a/commands/timeout.c b/commands/timeout.c
> index ef1a037c1..d197cedd8 100644
> --- a/commands/timeout.c
> +++ b/commands/timeout.c
> @@ -32,7 +32,7 @@ static int do_timeout(int argc, char *argv[])
>  	char str[2] =3D { };
>  	const char *varname =3D NULL;
> =20
> -	while((opt =3D getopt(argc, argv, "crsav:")) > 0) {
> +	while ((opt =3D getopt(argc, argv, "crsav:e")) > 0) {
>  		switch(opt) {
>  		case 'r':
>  			flags |=3D CONSOLE_COUNTDOWN_RETURN;
> @@ -46,6 +46,9 @@ static int do_timeout(int argc, char *argv[])
>  		case 's':
>  			flags |=3D CONSOLE_COUNTDOWN_SILENT;
>  			break;
> +		case 'e':
> +			flags |=3D CONSOLE_COUNTDOWN_EXTERN;
> +			break;
>  		case 'v':
>  			varname =3D optarg;
>  			break;
> @@ -73,6 +76,7 @@ BAREBOX_CMD_HELP_TEXT("Options:")
>  BAREBOX_CMD_HELP_OPT("-a", "interrupt on any key")
>  BAREBOX_CMD_HELP_OPT("-c", "interrupt on Ctrl-C")
>  BAREBOX_CMD_HELP_OPT("-r", "interrupt on RETURN")
> +BAREBOX_CMD_HELP_OPT("-e", "interrupt on external commands (i.e. fastb=
oot")
>  BAREBOX_CMD_HELP_OPT("-s", "silent mode")
>  BAREBOX_CMD_HELP_OPT("-v <VARIABLE>", "export pressed key to environme=
nt")
>  BAREBOX_CMD_HELP_END
> @@ -80,7 +84,7 @@ BAREBOX_CMD_HELP_END
>  BAREBOX_CMD_START(timeout)
>  	.cmd		=3D do_timeout,
>  	BAREBOX_CMD_DESC("wait for a specified timeout")
> -	BAREBOX_CMD_OPTS("[-acrsv] SECONDS")
> +	BAREBOX_CMD_OPTS("[-acrsev] SECONDS")
>  	BAREBOX_CMD_GROUP(CMD_GRP_CONSOLE)
>  	BAREBOX_CMD_HELP(cmd_timeout_help)
>  BAREBOX_CMD_END
> diff --git a/common/console_countdown.c b/common/console_countdown.c
> index b2eec72b2..594d3d879 100644
> --- a/common/console_countdown.c
> +++ b/common/console_countdown.c
> @@ -23,6 +23,13 @@
>  #include <console_countdown.h>
>  #include <stdio.h>
> =20
> +static int console_countdown_timeout_abort;

static bool

> +
> +void console_countdown_abort(void)
> +{
> +	console_countdown_timeout_abort =3D true;
> +}
> +
>  int console_countdown(int timeout_s, unsigned flags, char *out_key)
>  {
>  	uint64_t start, second;
> @@ -48,6 +55,9 @@ int console_countdown(int timeout_s, unsigned flags, =
char *out_key)
>  				goto out;
>  			key =3D 0;
>  		}
> +		if ((flags & CONSOLE_COUNTDOWN_EXTERN) &&
> +		    console_countdown_timeout_abort)
> +			goto out;
>  		if (!(flags & CONSOLE_COUNTDOWN_SILENT) &&
>  		    is_timeout(second, SECOND)) {
>  			printf("\b\b\b\b%4d", countdown--);
> @@ -55,6 +65,10 @@ int console_countdown(int timeout_s, unsigned flags,=
 char *out_key)
>  		}
>  	} while (!is_timeout(start, timeout_s * SECOND));
> =20
> +	if ((flags & CONSOLE_COUNTDOWN_EXTERN) &&
> +	    console_countdown_timeout_abort)
> +		goto out;
> +
>  	ret =3D 0;
> =20
>   out:
> @@ -62,6 +76,7 @@ int console_countdown(int timeout_s, unsigned flags, =
char *out_key)
>  		printf("\n");
>  	if (key && out_key)
>  		*out_key =3D key;
> +	console_countdown_timeout_abort =3D false;
> =20
>  	return ret;
>  }
> diff --git a/include/console_countdown.h b/include/console_countdown.h
> index cb46964bc..c6c2d5c00 100644
> --- a/include/console_countdown.h
> +++ b/include/console_countdown.h
> @@ -5,7 +5,9 @@
>  #define CONSOLE_COUNTDOWN_ANYKEY (1 << 1)
>  #define CONSOLE_COUNTDOWN_RETURN (1 << 3)
>  #define CONSOLE_COUNTDOWN_CTRLC (1 << 4)
> +#define CONSOLE_COUNTDOWN_EXTERN (1 << 5)
> =20
>  int console_countdown(int timeout_s, unsigned flags, char *out_key);
> +void console_countdown_abort(void);
> =20
>  #endif /* __CONSOLE_COUNTDOWN_H */
>=20

Marc

--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--rfQOqrN1foOlfEKwB6UlebAkBalMaNJ1L--

--E9A3IqSk3KUh1nVHDTxttt7xwu8GmVp4T
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEE4bay/IylYqM/npjQHv7KIOw4HPYFAljBnFkACgkQHv7KIOw4
HPZfXQgAvdRKSWIUWCl/bOTerupE18SfvoSzZBf3sdAU1QJkH0iAseu5sNKFJp/+
yUJKYnv2cZDY/Aciv3CugRfSxbNAB6wC+tq4TLCLmvnh6HHBfpF+ytZRWJZLgQ4I
ObinaBWzSauv4LTmN5MVw1xKgMXJfSIjL37qqPz4hL9dCUU9DEqPt4jb12bU5YrM
zuDi09+IkJqzQC+ZAHeuMdNUNJL6pSOjW5nfebLipnSxYiynWQB/kz89UX7iVyIe
pffycCxbM7wk5KumGn79fr/ZIST4GfNaYgxh7e6HOtauwVnlTpdXLrBA8lnwccMp
3f0kpskrq9q88AqXDr8xpnkrcOR+aQ==
=E6jt
-----END PGP SIGNATURE-----

--E9A3IqSk3KUh1nVHDTxttt7xwu8GmVp4T--


--===============1754876819545408683==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1754876819545408683==--

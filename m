Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1ROUYy-0000tr-9u
 for barebox@lists.infradead.org; Thu, 10 Nov 2011 13:21:05 +0000
Message-ID: <4EBBCFB3.2010804@pengutronix.de>
Date: Thu, 10 Nov 2011 14:20:51 +0100
From: Marc Kleine-Budde <mkl@pengutronix.de>
MIME-Version: 1.0
References: <4EBBAD3A.5060805@pengutronix.de>
 <1320930955-5462-1-git-send-email-lucas.demarchi@profusion.mobi>
In-Reply-To: <1320930955-5462-1-git-send-email-lucas.demarchi@profusion.mobi>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0107291194104783472=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/4] Make fprintf return number of bytes written
To: Lucas De Marchi <lucas.demarchi@profusion.mobi>
Cc: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--===============0107291194104783472==
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="------------enig61A98B11275D53F6E7693753"

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--------------enig61A98B11275D53F6E7693753
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 11/10/2011 02:15 PM, Lucas De Marchi wrote:
> Return number of bytes written, like its siblings function. This also
> removes the warning below on gcc >=3D 4.6.
>=20
> common/console.c:333:7: warning: variable =E2=80=98i=E2=80=99 set but n=
ot used
> [-Wunused-but-set-variable]
>=20
> Signed-off-by: Lucas De Marchi <lucas.demarchi@profusion.mobi>

Acked-by: Marc Kleine-Budde <mkl@pengutronix.de>

> ---
>=20
> v2: use proper indentation
>=20
>  common/console.c        |    4 +++-
>  common/console_simple.c |    4 +++-
>  include/stdio.h         |    2 +-
>  3 files changed, 7 insertions(+), 3 deletions(-)
>=20
> diff --git a/common/console.c b/common/console.c
> index 06e9c29..0d2a33b 100644
> --- a/common/console.c
> +++ b/common/console.c
> @@ -327,7 +327,7 @@ void console_flush(void)
>  }
>  EXPORT_SYMBOL(console_flush);
> =20
> -void fprintf (int file, const char *fmt, ...)
> +int fprintf (int file, const char *fmt, ...)
>  {
>  	va_list args;
>  	uint i;
> @@ -343,6 +343,8 @@ void fprintf (int file, const char *fmt, ...)
> =20
>  	/* Print the string */
>  	fputs (file, printbuffer);
> +
> +	return i;
>  }
>  EXPORT_SYMBOL(fprintf);
> =20
> diff --git a/common/console_simple.c b/common/console_simple.c
> index 7304d8e..1f60e79 100644
> --- a/common/console_simple.c
> +++ b/common/console_simple.c
> @@ -45,7 +45,7 @@ int vprintf (const char *fmt, va_list args)
>  }
>  EXPORT_SYMBOL(vprintf);
> =20
> -void fprintf (int file, const char *fmt, ...)
> +int fprintf (int file, const char *fmt, ...)
>  {
>  	va_list args;
>  	uint i;
> @@ -61,6 +61,8 @@ void fprintf (int file, const char *fmt, ...)
> =20
>  	/* Print the string */
>  	fputs(file, printbuffer);
> +
> +	return i;
>  }
>  EXPORT_SYMBOL(fprintf);
> =20
> diff --git a/include/stdio.h b/include/stdio.h
> index a0d81d3..0c68fa8 100644
> --- a/include/stdio.h
> +++ b/include/stdio.h
> @@ -54,7 +54,7 @@ int	vscnprintf(char *buf, size_t size, const char *fm=
t, va_list args);
>  #define stderr		2
>  #define MAX_FILES	128
> =20
> -void	fprintf(int file, const char *fmt, ...) __attribute__ ((format(__=
printf__, 2, 3)));
> +int	fprintf(int file, const char *fmt, ...) __attribute__ ((format(__p=
rintf__, 2, 3)));
>  int	fputs(int file, const char *s);
>  int	fputc(int file, const char c);
>  int	ftstc(int file);


--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--------------enig61A98B11275D53F6E7693753
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.10 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org/

iEYEARECAAYFAk67z7YACgkQjTAFq1RaXHN4HwCeLcsUBzXOJeRve1rVJ4SaI9MK
iPcAn3sVo9X1Rz+WE4K8SODmEfHhoCrk
=UFzM
-----END PGP SIGNATURE-----

--------------enig61A98B11275D53F6E7693753--


--===============0107291194104783472==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============0107291194104783472==--

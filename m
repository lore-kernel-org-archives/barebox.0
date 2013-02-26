Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1UAIpZ-0001DO-1Q
 for barebox@lists.infradead.org; Tue, 26 Feb 2013 11:36:21 +0000
Message-ID: <512C9E2D.70807@pengutronix.de>
Date: Tue, 26 Feb 2013 12:36:13 +0100
From: Marc Kleine-Budde <mkl@pengutronix.de>
MIME-Version: 1.0
References: <1361877629-10890-1-git-send-email-christian.kapeller@cmotion.eu>
In-Reply-To: <1361877629-10890-1-git-send-email-christian.kapeller@cmotion.eu>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============3846999006560045857=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] bareboxenv: Return proper exit code on failure.
To: Christian Kapeller <christian.kapeller@cmotion.eu>
Cc: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============3846999006560045857==
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="----enig2JSEXJSAOECODGNDDCPMU"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
------enig2JSEXJSAOECODGNDDCPMU
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On 02/26/2013 12:20 PM, Christian Kapeller wrote:
> In case environment loading/saving failed, the calling program
> should be informed about that by returning a non zero exit code.
>=20
> Signed-off-by: Christian Kapeller <christian.kapeller@cmotion.eu>
> ---
>  scripts/bareboxenv.c |   16 ++++++++++++----
>  1 file changed, 12 insertions(+), 4 deletions(-)
>=20
> diff --git a/scripts/bareboxenv.c b/scripts/bareboxenv.c
> index 707d63d..3fd1429 100644
> --- a/scripts/bareboxenv.c
> +++ b/scripts/bareboxenv.c
> @@ -138,7 +138,7 @@ void usage(char *prgname)
>  int main(int argc, char *argv[])
>  {
>  	int opt;
> -	int save =3D 0, load =3D 0, pad =3D 0, fd;
> +	int save =3D 0, load =3D 0, pad =3D 0, err =3D 0, fd;
>  	char *filename =3D NULL, *dirname =3D NULL;
>  	int verbose =3D 0;
> =20
> @@ -191,12 +191,20 @@ int main(int argc, char *argv[])
>  	if (load) {
>  		if (verbose)
>  			printf("loading env from file %s to %s\n", filename, dirname);
> -		envfs_load(filename, dirname, 0);
> +
> +		err =3D envfs_load(filename, dirname, 0);
> +
> +		if(verbose && err)
                 ^^^

space please

> +			printf("loading env failed: %d\n", err);
>  	}
>  	if (save) {
>  		if (verbose)
>  			printf("saving contents of %s to file %s\n", dirname, filename);
> -		envfs_save(filename, dirname);
> +
> +		err =3D envfs_save(filename, dirname);
> +
> +		if(verbose && err)

dito

> +			printf("saving env failed: %d\n", err);
>  	}
> -	exit(0);
> +	exit((err)?1:0);
extra spaces, please: err ? 1 : 0
>  }
>=20
Marc

--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


------enig2JSEXJSAOECODGNDDCPMU
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)
Comment: Using GnuPG with Thunderbird - http://www.enigmail.net/

iEYEARECAAYFAlEsnjAACgkQjTAFq1RaXHNcFwCdEsmjhpu5s1coWKvsRaOfb+Ua
W4kAnRgH1Yyl5xirvVPbo5HC5f+686MS
=Ctr1
-----END PGP SIGNATURE-----

------enig2JSEXJSAOECODGNDDCPMU--


--===============3846999006560045857==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============3846999006560045857==--

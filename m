Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1ZAvGU-0000Vh-4P
 for barebox@lists.infradead.org; Fri, 03 Jul 2015 07:20:03 +0000
References: <CABQt-UkHumKVU+-tEjj2moz_S8vbdeYDtY7CfJqA-qZbrWiyWw@mail.gmail.com>
From: Marc Kleine-Budde <mkl@pengutronix.de>
Message-ID: <5596328F.5080606@pengutronix.de>
Date: Fri, 3 Jul 2015 08:58:23 +0200
MIME-Version: 1.0
In-Reply-To: <CABQt-UkHumKVU+-tEjj2moz_S8vbdeYDtY7CfJqA-qZbrWiyWw@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============7496807368621751157=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] digest: digest doesn't return an error if the signature
 length is incorrect
To: Philippe Leduc <ledphilippe@gmail.com>, barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============7496807368621751157==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="NWx7P4klqpnagp0kEcirKrPGaL3Gi62mI"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--NWx7P4klqpnagp0kEcirKrPGaL3Gi62mI
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 07/03/2015 08:47 AM, Philippe Leduc wrote:
> Hi,
>=20
> I noticed that digest return 0 even if the signature length is
> detected as incorrect. This patch also fix the documentation that
> seems obsolete (I considered that the patch was simply enough to make
> two corrections, but tell me if I should propose two patch).
>=20
>=20
> Subject: [PATCH] digest: digest doesn't return an error if the
> signature length is incorrect
>=20
> fix: digest return no error even if the digest length is wrong
> fix: documentation error (-v -> -s / -V -> -S)
>=20
> Signed-off-by: Philippe Leduc <ledphilippe@gmail.com>
> ---
>  commands/digest.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
>=20
> diff --git a/commands/digest.c b/commands/digest.c
> index 340c07a..5304f32 100644
> --- a/commands/digest.c
> +++ b/commands/digest.c
> @@ -167,6 +167,7 @@ static int do_digest(int argc, char *argv[])
>                 } else if (siglen !=3D digestlen) {
>                         eprintf("%s wrong size %zu, expected %zu\n",
>                                 sigfile, siglen, digestlen);
> +                       ret =3D 1;

Better use COMMAND_ERROR here.

>                         goto err;
>                 }
>         }
> @@ -186,8 +187,8 @@ BAREBOX_CMD_HELP_TEXT("Options:")
>  BAREBOX_CMD_HELP_OPT ("-a <algo>\t",  "hash or signature algorithm to =
use")
>  BAREBOX_CMD_HELP_OPT ("-k <key>\t",   "use supplied <key> (ASCII or
> hex) for MAC")
>  BAREBOX_CMD_HELP_OPT ("-K <file>\t",  "use key from <file> (binary) fo=
r MAC")
> -BAREBOX_CMD_HELP_OPT ("-v <hex>\t",   "verify data against supplied
> <hex> (hash, MAC or signature)")
> -BAREBOX_CMD_HELP_OPT ("-V <file>\t",  "verify data against <file>
> (hash, MAC or signature)")
> +BAREBOX_CMD_HELP_OPT ("-s <hex>\t",   "verify data against supplied
> <hex> (hash, MAC or signature)")
> +BAREBOX_CMD_HELP_OPT ("-S <file>\t",  "verify data against <file>
> (hash, MAC or signature)")
>  BAREBOX_CMD_HELP_END
>=20
>  BAREBOX_CMD_START(digest)

Your patch is line wrapped. Please consider using git send-email to send
your patches.

Marc

--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--NWx7P4klqpnagp0kEcirKrPGaL3Gi62mI
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEcBAEBCgAGBQJVljKPAAoJEP5prqPJtc/HmSQH/2ZOLA8cKA9b+1QS5Icpdb8/
cq+C/rQ9XaKV7ZRX3EsX40xZHLFLaaG5HoLMeeSLia1GSx7/+IrfpI0I5WR1ftQC
AylK9wK3Pj1v8XC+1zuL+wHeCn7febLdfKf06pNd4MmkS3FOUGqUPaBCG02a7Pm/
4M8q+VjytwJTaEnziEZ/t0UdrxUZceZSNL9HwjoVsCQpW7u2P7vP9zEd1sDvn0zZ
EFpuE4EEnfPcvcujA6k4DMBGXXxf9S2F5PDCM+Ht2bmOVCyuMn7eL3s7PiGHApO9
MdTmnaK35byIpXM5Vijtyomd4VTvGAYgXt+5jnN1Mr/WGidW1ZJAO5ysVIZt4mw=
=8GAa
-----END PGP SIGNATURE-----

--NWx7P4klqpnagp0kEcirKrPGaL3Gi62mI--


--===============7496807368621751157==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============7496807368621751157==--

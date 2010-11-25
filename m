Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PLbG1-0003lg-9E
	for barebox@lists.infradead.org; Thu, 25 Nov 2010 12:49:05 +0000
Received: from gallifrey.ext.pengutronix.de
	([2001:6f8:1178:4:5054:ff:fe8d:eefb] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.71)
	(envelope-from <mkl@pengutronix.de>) id 1PLbFx-00031q-Oi
	for barebox@lists.infradead.org; Thu, 25 Nov 2010 13:48:57 +0100
Message-ID: <4CEE5B36.90309@pengutronix.de>
Date: Thu, 25 Nov 2010 13:48:54 +0100
From: Marc Kleine-Budde <mkl@pengutronix.de>
MIME-Version: 1.0
References: <1290688903-24955-1-git-send-email-marek.belisko@open-nandra.com>
In-Reply-To: <1290688903-24955-1-git-send-email-marek.belisko@open-nandra.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============2102374967=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] drivers: mci: Fix compilation warning.
To: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--===============2102374967==
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="------------enig5167A75D535A8F0F6EC6EE14"

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--------------enig5167A75D535A8F0F6EC6EE14
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On 11/25/2010 01:41 PM, Marek Belisko wrote:
> Fix compilation warning:
> drivers/mci/mci-core.c:1002:
> warning: comparison of distinct pointer types lacks a cast
>=20
> Signed-off-by: Marek Belisko <marek.belisko@open-nandra.com>
> ---
>  drivers/mci/mci-core.c |    2 +-
>  1 files changed, 1 insertions(+), 1 deletions(-)
>=20
> diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
> index a8aa486..bc82201 100644
> --- a/drivers/mci/mci-core.c
> +++ b/drivers/mci/mci-core.c
> @@ -999,7 +999,7 @@ static int mci_sd_read(struct device_d *disk_dev, u=
int64_t sector_start,
>  	}
> =20
>  	while (sector_count) {
> -		int now =3D min(sector_count, 32);
> +		int now =3D min(sector_count, (unsigned) 32);

for raw numbers you usually add a prefix "U".

>  		if (sector_start > MAX_BUFFER_NUMBER) {
>  			pr_err("Cannot handle block number %lu. Too large!\n",
>  				(unsigned)sector_start);

cheers, Marc
--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--------------enig5167A75D535A8F0F6EC6EE14
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.10 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org/

iEYEARECAAYFAkzuWzkACgkQjTAFq1RaXHO4bQCfQkBzMfn2a6Q5a/tOA1MJ8k1v
P94An28Q+yl5ssmh/C/ByMFHa1KbBxta
=Z21/
-----END PGP SIGNATURE-----

--------------enig5167A75D535A8F0F6EC6EE14--


--===============2102374967==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============2102374967==--

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eFI1I-0005Zs-WE
 for barebox@lists.infradead.org; Thu, 16 Nov 2017 11:07:47 +0000
Date: Thu, 16 Nov 2017 12:07:20 +0100
From: Michael Grzeschik <mgr@pengutronix.de>
Message-ID: <20171116110720.e54c5dra6g45efa5@pengutronix.de>
References: <20171115222753.28426-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20171115222753.28426-1-andrew.smirnov@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============5249708193114374253=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] fs: Fix can_lseek_backward()
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org


--===============5249708193114374253==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="pnfu55gqf4jyloyf"
Content-Disposition: inline


--pnfu55gqf4jyloyf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Andrey,

On Wed, Nov 15, 2017 at 02:27:53PM -0800, Andrey Smirnov wrote:
> To quote corresponding man page:
>=20
> "... Upon successful completion, lseek() returns the resulting offset
> location as measured in bytes from the beginning of the file."

Ack! I was reading that chapter beforehand but somehow did oversee it
and thought we receive the offset to the last position instead.

Thanks,
Michael

> Which for lseek(fd, 0, SEEK_SET) would be 0, so returning 'ret' as
> final step of the function would mean it'd never return anything but 0
> as well. Change the code to explicitly return '1' to fix the problem.
>=20
> Fixes: 7c3f8d366 ("uimage: fix: add can_lseek_backward and use in uimage_=
open")
> Cc: Michael Grzeschik <m.grzeschik@pengutronix.de>
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>=20
> Sascha:
>=20
> This change should probably also go to master, since without enabling
> TFTP would break 'bootm' for uImages (at least it does on my setup)
>=20
> Thanks,
> Andrey Smirnov
>=20
>  include/fs.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/include/fs.h b/include/fs.h
> index f8a3b8bda..5c5fff870 100644
> --- a/include/fs.h
> +++ b/include/fs.h
> @@ -117,7 +117,7 @@ static inline int can_lseek_backward(int fd)
>  	if (ret < 0)
>  		return 0;
> =20
> -	return ret;
> +	return 1;
>  }
> =20
>  #define drv_to_fs_driver(d) container_of(d, struct fs_driver_d, drv)
> --=20
> 2.13.6
>=20
>=20

--=20
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

--pnfu55gqf4jyloyf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEElXvEUs6VPX6mDPT8C+njFXoeLGQFAloNcWUACgkQC+njFXoe
LGTiahAApnzGtVW/k+pGSX0XryhCeyWBFHNCjPsalgIMhY6tEeDKIwRPW2I46e6B
eGlnJZSS7xWQWjPh3VI5VrwRb52UUnwTNKksQ0I6jR4+UHaY5eFXMIVmzCGwovhx
BFRdEjXwI4Vq4ml569E0bhouw4I6K6bmtm5+pyznCi+nCIHWi/NSB1cLiepNk/6a
fk6ERlXQBzjRsSeUWw7ox5gog5+GwmZfEHMhe3z4hXU5X93YBhYuC/yxJuUYRT1W
jQ4KvMm6Xs1sD5iR3tKQmdCpDoVxEZtk2iCdYWfD6t0L+J8pTcHp42uGeB7Pd2vv
6shpat7V5gWXjZcfbojvfZOY+t1zYyUXpWZMHANCkCfqJlC+D1KBQDHILLISy7Uc
gyaajDNbZYPk9JtnUWjZFP4xcKPZSg2lpvME9OCJHlMYZjLWU3vART8PRCEs2NnZ
R0Ua1yxv6VzPh+3o9jZPXyKM7d6ugT2F+lXHDadFbKYCe5Q1Erxi7v8uWbZi0J/6
LhZunj2wSga1og8OQlyo2zIgueNugze8ST+7ozrcnFDyF/m2RAhBYjOrkfsTxbND
MVeSU+jejI+QDE960+FCMracdBOBTtky3LJzSTmQ25f9tcc2izWnFpqOX9qjrcE0
g+Ztz5UUs7MVHMQystyQMV6MxCXKyWoI4OHOtdQWVeHIHIi/9vA=
=vsdD
-----END PGP SIGNATURE-----

--pnfu55gqf4jyloyf--


--===============5249708193114374253==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============5249708193114374253==--

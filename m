Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z4VMp-0001fS-Br
 for barebox@lists.infradead.org; Mon, 15 Jun 2015 14:28:04 +0000
References: <20150325115140.GD8125@ns203013.ovh.net>
 <1427284580-30218-1-git-send-email-plagnioj@jcrosoft.com>
 <1427284580-30218-4-git-send-email-plagnioj@jcrosoft.com>
From: Marc Kleine-Budde <mkl@pengutronix.de>
Message-ID: <557EE0D6.9040405@pengutronix.de>
Date: Mon, 15 Jun 2015 16:27:34 +0200
MIME-Version: 1.0
In-Reply-To: <1427284580-30218-4-git-send-email-plagnioj@jcrosoft.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0441871713990903414=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 4/9] crypto: hmac: move register to hmac
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>, barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============0441871713990903414==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="HiOrPSn69oKmSgJrx7puWE4DHhSGC75mh"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--HiOrPSn69oKmSgJrx7puWE4DHhSGC75mh
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Sorry for resurrecting this old thread :)

On 03/25/2015 12:56 PM, Jean-Christophe PLAGNIOL-VILLARD wrote:
> As we will use the best sha algo at runtime
>=20
> Add a new init level crypto_initcall to ensure that all the sha present=

> before hmac

Why do we need this initcall?

[...]

> -int digest_hmac_register(struct digest_algo *algo, unsigned int pad_le=
ngth)
> +static int digest_hmac_register(char *name, unsigned int pad_length)
>  {
>  	struct digest_hmac *dh;
> -	char *name;
> =20
> -	if (!algo || !pad_length)
> +	if (!name || !pad_length)
>  		return -EINVAL;
> =20
> -	name =3D algo->base.name;
>  	dh =3D xzalloc(sizeof(*dh));
>  	dh->name =3D xstrdup(name);
>  	dh->pad_length =3D pad_length;
>  	dh->algo =3D hmac_algo;
> -	dh->algo.length =3D algo->length;
>  	dh->algo.base.name =3D asprintf("hmac(%s)", name);
>  	dh->algo.base.driver_name =3D asprintf("hmac(%s)-generic", name);
> -	dh->algo.base.priority =3D algo->base.priority;
> =20
>  	return digest_algo_register(&dh->algo);

We just call digest_algo_register(), which adds us to the list of algos.
Nothing is allocated at this time.

>  }
> +
> +static int digest_hmac_initcall(void)
> +{
> +	if (IS_ENABLED(CONFIG_MD5))
> +		digest_hmac_register("md5", 64);
> +	if (IS_ENABLED(CONFIG_SHA1))
> +		digest_hmac_register("sha1", 64);
> +	if (IS_ENABLED(CONFIG_SHA224))
> +		digest_hmac_register("sha224", 64);
> +	if (IS_ENABLED(CONFIG_SHA256))
> +		digest_hmac_register("sha256", 64);
> +	if (IS_ENABLED(CONFIG_SHA384))
> +		digest_hmac_register("sha384", 128);
> +	if (IS_ENABLED(CONFIG_SHA512))
> +		digest_hmac_register("sha512", 128);
> +
> +	return 0;
> +}
> +crypto_initcall(digest_hmac_initcall);

Marc
--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--HiOrPSn69oKmSgJrx7puWE4DHhSGC75mh
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEcBAEBCgAGBQJVfuDWAAoJEP5prqPJtc/HEX8IAIMV9ykjmtFBSLpn7dIwyTte
npUZAGq/ouCZcjvAJJT6agCKLEMvOBSQJKJCpbJVRhHen7D/E5KWYO3inPzT3c6q
XdlELyPBWkQJRHohZQAyHqdd2JLpTz5i11rR/gt1pXYsiP/vQ3o0Bl1XV2dq+qnr
4C8GF9VpSnxSWfCGlbeWLCRBBL/XX90IideTPoTeiOWh9l+66HMJj9HsJ7ftraXL
xox5ADtVox+V3aZTzw6k7Edadlnm06Hi225jNHZJh3qXcSeGMTuv2xXYUOpc66I3
G76Ki/hM9bL+t8C/yYApJtkYyhqxvtTqb17EU6ZH0nEjePp7ohWUl9sCkQU7JGM=
=9zdJ
-----END PGP SIGNATURE-----

--HiOrPSn69oKmSgJrx7puWE4DHhSGC75mh--


--===============0441871713990903414==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============0441871713990903414==--

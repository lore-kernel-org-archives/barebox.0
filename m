Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YUywt-00027f-3n
 for barebox@lists.infradead.org; Mon, 09 Mar 2015 14:46:29 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:6f8:1178:4:5054:ff:fe8d:eefb] helo=bjornoya.do.blackshift.org)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <mkl@pengutronix.de>) id 1YUywX-0007K5-8S
 for barebox@lists.infradead.org; Mon, 09 Mar 2015 15:46:05 +0100
Received: from [IPv6:2001:6f8:105b:1122:a87d:7344:ab4e:ae52]
 (dyn-2001-06f8-105b-1122-a87d-7344-ab4e-ae52.pool.blackshift.org
 [IPv6:2001:6f8:105b:1122:a87d:7344:ab4e:ae52])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (Client did not present a certificate)
 (Authenticated sender: frogger)
 by bjornoya.do.blackshift.org (Postfix) with ESMTPSA id EB787615DC
 for <barebox@lists.infradead.org>; Mon,  9 Mar 2015 15:46:04 +0100 (CET)
Message-ID: <54FDB21A.3040402@pengutronix.de>
Date: Mon, 09 Mar 2015 15:45:46 +0100
From: Marc Kleine-Budde <mkl@pengutronix.de>
MIME-Version: 1.0
References: <1425912304-9998-1-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1425912304-9998-1-git-send-email-mkl@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============4355874731366646351=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] paramter: The dev_add_param_*() return ERR_PTR(),
 change no-ops to return ERR_PTR(-ENOSYS) instead of NULL
To: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============4355874731366646351==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="dr51IhTxjOSjAIQ9stToKKtOaB6T1Sh8X"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--dr51IhTxjOSjAIQ9stToKKtOaB6T1Sh8X
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 03/09/2015 03:45 PM, Marc Kleine-Budde wrote:
> Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
> ---
>  include/param.h | 18 +++++++++---------
>  1 file changed, 9 insertions(+), 9 deletions(-)
>=20
> diff --git a/include/param.h b/include/param.h
> index 53bee541100e..bd2c0789968a 100644
> --- a/include/param.h
> +++ b/include/param.h
> @@ -97,7 +97,7 @@ static inline struct param_d *dev_add_param(struct de=
vice_d *dev, char *name,
>  		const char *(*get)(struct device_d *, struct param_d *p),
>  		unsigned long flags)
>  {
> -	return 0;
> +	return ERR_PTR(-ENOSYS);

Doh!

I'll send a v2.

Marc

--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--dr51IhTxjOSjAIQ9stToKKtOaB6T1Sh8X
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJU/bIsAAoJECte4hHFiupUTGwQAJGDqTfPQhet1M2zIovKs/os
U0Kn7d5/JE7IGRT0+59IaVnytYjGApTbo2+DX9zICrfJFuBdQ7vDK7b4lpIBd2uH
jZjPiZhXbs2+6N6oiupZNZ6Cnn+RqNP5T3iuK3TSr1+MPw4OtiC9XJ+yuuMgBmmM
Z/J1G6V/l/Prpun0iqRHd2F8Ua3CFkgs3lV0NsOpnweAkVfnl9tiwjenXv10HZQR
wv2InOr5sQkGO3MkeMz8HIFvo8uBPmQoeYfUeMN9942/vsQ3+Z4654OVwNqPtbYa
i5kqiiPiM6zLIHkffKgsIXvJXjor/NanxcW2p3f5f0CpdTrZTHR2YN2EM6mbZa/C
WHe3Hg3u7Rw+vhMIMQZLKwR9ju9UK5cPi7VvM6nwYWjNKn7MF092Zt0tCqEJsPBC
feTUhxWxKm/qyMI6ykpEtRACaKciPolc3WbmgDHURxKwKZ8LjhZxvapiI85kRUve
9ynh6okA3f/ti36umcnEqFSWxtlFrs3lLADOvVPgUtf0Z/eO6TlFRxCcg8iXSnXl
jH5HfWAuSSX16oAcOKF04w7gC3v7VYeHOJAhZznPFPIiLJweJzUnhxA87KDvIc5n
o1mfK1fbHEL8pGA0NAfcfqBqfbxmvGHeS1j35KDL+oot3KoxhI9npCEySmGI1N88
dnPi7dF/I2FsL2b1gaMD
=5EtQ
-----END PGP SIGNATURE-----

--dr51IhTxjOSjAIQ9stToKKtOaB6T1Sh8X--


--===============4355874731366646351==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============4355874731366646351==--

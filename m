Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dV9Tv-0001YS-Ks
 for barebox@lists.infradead.org; Wed, 12 Jul 2017 04:42:37 +0000
Received: from [192.168.1.241] ([31.18.251.132]) by mail.gmx.com (mrgmx003
 [212.227.17.190]) with ESMTPSA (Nemesis) id 0LgISa-1dyhOg2QtA-00nfb8 for
 <barebox@lists.infradead.org>; Wed, 12 Jul 2017 06:42:10 +0200
References: <20170712044028.9309-1-o.rempel@pengutronix.de>
From: Oleksij Rempel <linux@rempel-privat.de>
Message-ID: <fac41be7-028a-6c89-76d8-5c2f4847513a@rempel-privat.de>
Date: Wed, 12 Jul 2017 06:41:59 +0200
MIME-Version: 1.0
In-Reply-To: <20170712044028.9309-1-o.rempel@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============2298349880499910459=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v1] crypto: caam: use dma_alloc_coherent instead of
 dma_alloc
To: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============2298349880499910459==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="qcpVbNN4LvPOc1vIDPltpx14EN7waH7JO"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--qcpVbNN4LvPOc1vIDPltpx14EN7waH7JO
Content-Type: multipart/mixed; boundary="LjAMQXcmwv20HImDr4pjeuW1A8sp9MiAK";
 protected-headers="v1"
From: Oleksij Rempel <linux@rempel-privat.de>
To: barebox@lists.infradead.org
Message-ID: <fac41be7-028a-6c89-76d8-5c2f4847513a@rempel-privat.de>
Subject: Re: [PATCH v1] crypto: caam: use dma_alloc_coherent instead of
 dma_alloc
References: <20170712044028.9309-1-o.rempel@pengutronix.de>
In-Reply-To: <20170712044028.9309-1-o.rempel@pengutronix.de>

--LjAMQXcmwv20HImDr4pjeuW1A8sp9MiAK
Content-Type: text/plain; charset=utf-8
Content-Language: ru
Content-Transfer-Encoding: quoted-printable

oops, please ignore this one.

Am 12.07.2017 um 06:40 schrieb Oleksij Rempel:
> It is a fixup for following patch:
> | commit ef4144b4ab6301d7417af3eb4d79cfc66bf0e731
> | Date:   Wed Mar 22 10:14:37 2017 +0100
> |
> |    crypto: caam - fix RNG buffer cache alignment
>=20
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  drivers/crypto/caam/caamrng.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
>=20
> diff --git a/drivers/crypto/caam/caamrng.c b/drivers/crypto/caam/caamrn=
g.c
> index 31a92731d2..51c267e3d3 100644
> --- a/drivers/crypto/caam/caamrng.c
> +++ b/drivers/crypto/caam/caamrng.c
> @@ -203,8 +203,6 @@ static inline int rng_create_job_desc(struct caam_r=
ng_ctx *ctx, int buf_id)
>  	init_job_desc_shared(desc, ctx->sh_desc_dma, sh_len, HDR_SHARE_DEFER =
|
>  			     HDR_REVERSE);
> =20
> -	bd->addr =3D (dma_addr_t)bd->buf;
> -
>  	append_seq_out_ptr_intlen(desc, bd->addr, RN_BUF_SIZE, 0);
>  #ifdef DEBUG
>  	print_hex_dump(KERN_ERR, "rng job desc@: ", DUMP_PREFIX_OFFSET, 16, 4=
,
> @@ -218,7 +216,7 @@ static int caam_init_buf(struct caam_rng_ctx *ctx, =
int buf_id)
>  	struct buf_data *bd =3D &ctx->bufs[buf_id];
>  	int err;
> =20
> -	bd->buf =3D dma_alloc(RN_BUF_SIZE);
> +	bd->buf =3D dma_alloc_coherent(RN_BUF_SIZE, &bd->addr);
> =20
>  	err =3D rng_create_job_desc(ctx, buf_id);
>  	if (err)
>=20


--=20
Regards,
Oleksij


--LjAMQXcmwv20HImDr4pjeuW1A8sp9MiAK--

--qcpVbNN4LvPOc1vIDPltpx14EN7waH7JO
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF4EAREIAAYFAlllqJwACgkQHwImuRkmbWnuhAEAi/bnwFxVFy14sFD3aFkMceCY
NxCd1iDBiV9qtj0SaV0A/2U4wMpWKCtM5CLeENexVjL1tNLqYt9A/HpF/rr9M91t
=hy/O
-----END PGP SIGNATURE-----

--qcpVbNN4LvPOc1vIDPltpx14EN7waH7JO--


--===============2298349880499910459==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============2298349880499910459==--

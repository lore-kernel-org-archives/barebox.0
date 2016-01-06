Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aGpG5-0008JV-7H
 for barebox@lists.infradead.org; Wed, 06 Jan 2016 14:40:18 +0000
References: <1451981463-23604-1-git-send-email-mkl@pengutronix.de>
 <1451981463-23604-2-git-send-email-mkl@pengutronix.de>
 <20160105165410.GA6132@ravnborg.org>
From: Marc Kleine-Budde <mkl@pengutronix.de>
Message-ID: <568D2733.4040304@pengutronix.de>
Date: Wed, 6 Jan 2016 15:39:47 +0100
MIME-Version: 1.0
In-Reply-To: <20160105165410.GA6132@ravnborg.org>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============4888296516199832709=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/3] crypto: add enum
To: Sam Ravnborg <sam@ravnborg.org>
Cc: barebox@lists.infradead.org, kernel@pengutronix.de

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============4888296516199832709==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="6Vw8TxHFbsKf2MmtQSUM2M6ndiBbO1Ui7"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--6Vw8TxHFbsKf2MmtQSUM2M6ndiBbO1Ui7
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 01/05/2016 05:54 PM, Sam Ravnborg wrote:
> On Tue, Jan 05, 2016 at 09:11:01AM +0100, Marc Kleine-Budde wrote:
>> From: Sascha Hauer <s.hauer@pengutronix.de>
>>
>> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
>> Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
>=20
> The subject and the patch description could use some
> more love and care.

Good idea.

>> diff --git a/crypto/digest.c b/crypto/digest.c
>> index a90e4ff79f89..46600f246ece 100644
>> --- a/crypto/digest.c
>> +++ b/crypto/digest.c
>> @@ -116,7 +116,27 @@ static struct digest_algo *digest_algo_get_by_nam=
e(const char *name)
>>  	list_for_each_entry(tmp, &digests, list) {
>>  		if (strcmp(tmp->base.name, name) !=3D 0)
>>  			continue;
>> -	=09
>> +
>> +		if (tmp->base.priority <=3D priority)
>> +			continue;
>> +
>> +		d =3D tmp;
>> +		priority =3D tmp->base.priority;
>> +	}
>> +
>> +	return d;
>> +}
>> +
>> +static struct digest_algo *digest_algo_get_by_algo(enum hash_algo alg=
o)
>> +{
>> +	struct digest_algo *d =3D NULL;
>> +	struct digest_algo *tmp;
>> +	int priority =3D -1;
>> +
>> +	list_for_each_entry(tmp, &digests, list) {
>> +		if (tmp->base.algo !=3D algo)
>> +			continue;
>> +
>>  		if (tmp->base.priority <=3D priority)
>>  			continue;
>> =20
>> @@ -160,6 +180,27 @@ struct digest *digest_alloc(const char *name)
>>  }
>>  EXPORT_SYMBOL_GPL(digest_alloc);
>> =20
>> +struct digest *digest_alloc_by_algo(enum hash_algo hash_algo)
>> +{
>> +	struct digest *d;
>> +	struct digest_algo *algo;
>> +
>> +	algo =3D digest_algo_get_by_algo(hash_algo);
>> +	if (!algo)
>> +		return NULL;
>> +
>> +	d =3D xzalloc(sizeof(*d));
>> +	d->algo =3D algo;
>> +	d->ctx =3D xzalloc(algo->ctx_length);
>=20
> Neither allocations are checked for failure.

If xzalloc fails barebox will go into OOM and throw a backtrace.

Marc
--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--6Vw8TxHFbsKf2MmtQSUM2M6ndiBbO1Ui7
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEcBAEBCgAGBQJWjSczAAoJEP5prqPJtc/HwgsH+wUZIoyocX4dVJ3hM7RtYRVj
O5iS04kIsbivzC8IWoowtNdcjhdaMGdkgfvuOWcs7ynXlKrcZkdKprEjHhRXIoRe
GMwJnd+YLWYKGF6TDoGLzjVByeMQbW85ZqyQ8t38RU6fWKg6Bj58m+0aEXtscely
rm4mJ1KRcFFOw8Dx4b/P2siL0lZicgGA/PywTzGkU2NzDZHQIUZo7oCu+PaYUjj+
xiQMkVqMJf9xyoRJKIyUps6d+eyhw2LYuT69rfCthWbKwrzzECMjXQuqaTOTcqlf
CD40Qq6EkmJJH9joR9RbVwio6Sq9f6NFV6wtnF46caTC1ffZfD/oeYFEUUDjHiw=
=MX0F
-----END PGP SIGNATURE-----

--6Vw8TxHFbsKf2MmtQSUM2M6ndiBbO1Ui7--


--===============4888296516199832709==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============4888296516199832709==--

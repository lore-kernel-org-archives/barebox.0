Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZopCE-0003pu-3v
 for barebox@lists.infradead.org; Wed, 21 Oct 2015 08:56:35 +0000
References: <1445330352-30153-1-git-send-email-mkl@pengutronix.de>
 <1445330352-30153-9-git-send-email-mkl@pengutronix.de>
 <20151021071314.GZ14476@pengutronix.de>
From: Marc Kleine-Budde <mkl@pengutronix.de>
Message-ID: <56275321.40107@pengutronix.de>
Date: Wed, 21 Oct 2015 10:56:01 +0200
MIME-Version: 1.0
In-Reply-To: <20151021071314.GZ14476@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1874173645565071016=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2 8/8] state: backend_raw: add hamc support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============1874173645565071016==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="ApkVXhRi0KMEt8iX1t0tauHvvwMh847OW"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--ApkVXhRi0KMEt8iX1t0tauHvvwMh847OW
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 10/21/2015 09:13 AM, Sascha Hauer wrote:
>> +static int state_backend_raw_file_init_digest(struct state *state, st=
ruct state_backend_raw *backend_raw)
>> +{
>> +	struct digest *digest;
>> +	const char *algo;
>> +	const unsigned char *key;
>> +	int key_len, ret;
>> +
>> +	ret =3D of_property_read_string(state->root, "algo", &algo);
>=20
> This needs an update to Documentation/devicetree/bindings/barebox/bareb=
ox,state.rst

ok

>> +	if (ret =3D=3D -EINVAL)	/* -EINVAL =3D=3D does not exist */
>> +		return 0;
>=20
> -EINVAL is such a widespread error value. Maybe better explicitly test
> for existence with of_find_property?

ok

>> +	else if (ret)
>> +		return ret;
>> +
>> +	ret =3D keystore_get_secret(state->name, &key, &key_len);
>> +	if (ret =3D=3D -ENOENT)	/* -ENOENT =3D=3D does not exist */
>> +		return -EPROBE_DEFER;
>> +	else if (ret)
>> +		return ret;
>> +
>> +	digest =3D digest_alloc(algo);
>> +	if (!digest) {
>> +		dev_info(&state->dev, "algo %s not found - probe deferred\n", algo)=
;
>> +		return -EPROBE_DEFER;
>> +	}
>> +
>> +	ret =3D digest_set_key(digest, key, key_len);
>> +	if (ret) {
>> +		digest_free(digest);
>> +		return ret;
>> +	}
>> +
>> +	backend_raw->backend.digest =3D digest;
>> +	backend_raw->size_full =3D digest_length(digest);
>> +
>> +	return 0;
>> +}
>> +
>>  /*
>>   * state_backend_raw_file - create a raw file backend store for a sta=
te instance
>>   *
>> @@ -1534,8 +1627,14 @@ int state_backend_raw_file(struct state *state,=
 const char *of_path,
>>  		return -EINVAL;
>> =20
>>  	backend_raw =3D xzalloc(sizeof(*backend_raw));
>> -	backend =3D &backend_raw->backend;
>> =20
>> +	ret =3D state_backend_raw_file_init_digest(state, backend_raw);
>> +	if (ret) {
>> +		free(backend_raw);
>> +		return ret;
>> +	}
>=20
> Maybe better make this configurable with correct dependencies
> (CONFIG_CRYPTO_KEYSTORE, CONFIG_DIGEST) rather than depending on the
> user selecting the implicit dependencies manually?

There are noops so that it compile even if KEYSTORE and DIGEST is not
selected.

Marc
--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--ApkVXhRi0KMEt8iX1t0tauHvvwMh847OW
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEcBAEBCgAGBQJWJ1MkAAoJEP5prqPJtc/HaEQH/2XQZXnBAfacon7PyjpShUmD
fvntNnc8s52O51M1lY4SnOURTzgAi10+ggrKdTGNxhlHlw59e214AE35xphk4mD0
ti73o+tVhkcFSyhKpIgalDmB9sV50MUkVXsmP986YkHDwisGErrqC6nhT8y1ph27
BCQeqx9y4WipGUAGXP4c44nw1YwoKeSeMuBg7muGWCJAL/HZ3JBtE4VWtadJcXhf
BkSNRreFrpKswYCnih60BVygdKdHbPfWMUBbH73g4L/Xi753ckfM2P+OTIgbEP4O
I+dvIQBLJLWAl3qWij151OPOvEx7S/npO3P4an1ha/8zFfZhblJeT20wTHIxsNw=
=E7Jb
-----END PGP SIGNATURE-----

--ApkVXhRi0KMEt8iX1t0tauHvvwMh847OW--


--===============1874173645565071016==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1874173645565071016==--

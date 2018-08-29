Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fuuv8-0003CX-Aw
 for barebox@lists.infradead.org; Wed, 29 Aug 2018 07:29:44 +0000
References: <20180827151428.3032-1-mkl@pengutronix.de>
 <20180827151428.3032-6-mkl@pengutronix.de>
 <20180829071538.xlxwaqvgfdpupppr@pengutronix.de>
From: Marc Kleine-Budde <mkl@pengutronix.de>
Message-ID: <00108338-e1f4-f25a-79fa-070342c2cb3e@pengutronix.de>
Date: Wed, 29 Aug 2018 09:29:25 +0200
MIME-Version: 1.0
In-Reply-To: <20180829071538.xlxwaqvgfdpupppr@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============7177246840396837398=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 5/5] scripts imx-image: add support for newer versions of
 "cst"
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============7177246840396837398==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="L3HiNqByOhJrjaHXDZMAaO3GsMGI7dc8e"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--L3HiNqByOhJrjaHXDZMAaO3GsMGI7dc8e
Content-Type: multipart/mixed; boundary="ODr55iokjQBgSmVxZg5jmQreFo4JDnjQq";
 protected-headers="v1"
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <00108338-e1f4-f25a-79fa-070342c2cb3e@pengutronix.de>
Subject: Re: [PATCH 5/5] scripts imx-image: add support for newer versions of
 "cst"
References: <20180827151428.3032-1-mkl@pengutronix.de>
 <20180827151428.3032-6-mkl@pengutronix.de>
 <20180829071538.xlxwaqvgfdpupppr@pengutronix.de>
In-Reply-To: <20180829071538.xlxwaqvgfdpupppr@pengutronix.de>

--ODr55iokjQBgSmVxZg5jmQreFo4JDnjQq
Content-Type: text/plain; charset=utf-8
Content-Language: de-DE
Content-Transfer-Encoding: quoted-printable

On 08/29/2018 09:15 AM, Sascha Hauer wrote:
> On Mon, Aug 27, 2018 at 05:14:28PM +0200, Marc Kleine-Budde wrote:
>> Older versions of "cst" want to read the CSF frm STDIN, while newer ve=
rsions
>> want to read the CSF from a file. Sadly, the "-i" option doesn't under=
stand
>> "-i -" to read from STDIN, so we give it "/dev/stdin" instead.
>>
>> Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
>> ---
>>  scripts/imx/imx-image.c | 16 +++++++++++++++-
>>  1 file changed, 15 insertions(+), 1 deletion(-)
>>
>> diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
>> index 452a544bc3eb..17d504586967 100644
>> --- a/scripts/imx/imx-image.c
>> +++ b/scripts/imx/imx-image.c
>> @@ -558,7 +558,21 @@ static int hab_sign(struct config_data *data)
>>  		}
>>  	}
>> =20
>> -	ret =3D asprintf(&command, "%s -o %s", cst, csffile);
>> +	/*
>> +	 * Older versions of "cst" want to read the CSF frm STDIN,
>> +	 * while newer versions want to read the CSF from a
>> +	 * file. Sadly, the "-i" option doesn't understand "-i -" to
>> +	 * read from STDIN, so we give it "/dev/stdin" instead.
>> +	 */
>> +	ret =3D asprintf(&command,
>> +		       "if %s | grep 'Input CSF text filename'; then"
>> +		       "	%s -o %s -i /dev/stdin;"
>> +		       "else"
>> +		       "	%s -o %s;"
>> +		       "fi",
>> +		       cst,
>> +		       cst, csffile,
>> +		       cst, csffile);
>=20
> Could you separate the cst calling convention detection from the actual=

> call, so effectively do the if/else in C rather than shell? That would
> give us a place to add a debug printf and say which way we actually cal=
l
> the cst tool and it will be slightly less magical when something goes
> wrong.

Makes sense. Do the "cst | grep" in one shell and evaluate the return
value, do the if else in C and then do the proper shell call?

Marc

--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--ODr55iokjQBgSmVxZg5jmQreFo4JDnjQq--

--L3HiNqByOhJrjaHXDZMAaO3GsMGI7dc8e
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEENrCndlB/VnAEWuH5k9IU1zQoZfEFAluGS1UACgkQk9IU1zQo
ZfGkrAf/VF0lmAnByq7u83pfP/2TaNAOeD+GO9XhpkYK9PP090u4v//9Fc8iIGu9
1dPmgSYUIspQaflhhKrwtqGPePLm7bH2sNEh9lgflDB8hdL08NMEkW5LCRDDuikw
yOiF6A071ID8gkpSJU9+6LPj1ydTqEEbuNfp0Jyn3PtjYboWLXgMH7JAdEKAQxrw
kXVyG2u/G3rdBoWyrdBxEd11okf8wIJeUmAn5qwuYfC0fsfezZoKsWdr/kAUXG7V
KAA7PMGNyPd0UmAoURqkqcGsmbH9zsiIqaiBqdbFjuWmwBsvuJAn9P9DRoq+/gef
5VGIGcc6Hg5f82/XMYM1zyi7eCzZ6g==
=ZTNe
-----END PGP SIGNATURE-----

--L3HiNqByOhJrjaHXDZMAaO3GsMGI7dc8e--


--===============7177246840396837398==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============7177246840396837398==--

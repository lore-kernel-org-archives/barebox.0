Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cosuf-0006v4-MO
 for barebox@lists.infradead.org; Fri, 17 Mar 2017 14:31:33 +0000
Received: from [192.168.1.222] ([31.18.251.158]) by mail.gmx.com (mrgmx103
 [212.227.17.168]) with ESMTPSA (Nemesis) id 0MRGvT-1ce4DH1MXX-00UXfy for
 <barebox@lists.infradead.org>; Fri, 17 Mar 2017 15:31:04 +0100
References: <20170316053146.5954-1-o.rempel@pengutronix.de>
 <20170316053146.5954-3-o.rempel@pengutronix.de>
 <20170317123040.2jyk3gij2z4v2rgd@pengutronix.de>
From: Oleksij Rempel <linux@rempel-privat.de>
Message-ID: <72cf75e7-ea1b-11f1-570d-b66d6bb283f2@rempel-privat.de>
Date: Fri, 17 Mar 2017 15:30:43 +0100
MIME-Version: 1.0
In-Reply-To: <20170317123040.2jyk3gij2z4v2rgd@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============4703515076393146303=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2 2/3] lib: random: get_random_bytes from HWRNG if present
To: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============4703515076393146303==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="OulLaLA7mrC8fjIwx2TN9IJ5hqecIdXoJ"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--OulLaLA7mrC8fjIwx2TN9IJ5hqecIdXoJ
Content-Type: multipart/mixed; boundary="qsh4HGiqEN2hGaMJPNbcDbdglBSKQMx99"
From: Oleksij Rempel <linux@rempel-privat.de>
To: barebox@lists.infradead.org
Message-ID: <72cf75e7-ea1b-11f1-570d-b66d6bb283f2@rempel-privat.de>
Subject: Re: [PATCH v2 2/3] lib: random: get_random_bytes from HWRNG if
 present
References: <20170316053146.5954-1-o.rempel@pengutronix.de>
 <20170316053146.5954-3-o.rempel@pengutronix.de>
 <20170317123040.2jyk3gij2z4v2rgd@pengutronix.de>
In-Reply-To: <20170317123040.2jyk3gij2z4v2rgd@pengutronix.de>

--qsh4HGiqEN2hGaMJPNbcDbdglBSKQMx99
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Am 17.03.2017 um 13:30 schrieb Sascha Hauer:
> On Thu, Mar 16, 2017 at 06:31:45AM +0100, Oleksij Rempel wrote:
>> From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
>>
>> Instead of generating pseudo random numbers, get random bytes
>> from an optional HW generator, if enabled and registered.
>>
>> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
>> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
>> ---
>>  lib/random.c | 19 +++++++++++++++++++
>>  1 file changed, 19 insertions(+)
>>
>> diff --git a/lib/random.c b/lib/random.c
>> index 210fea994..42c0f83b7 100644
>> --- a/lib/random.c
>> +++ b/lib/random.c
>> @@ -1,5 +1,6 @@
>>  #include <common.h>
>>  #include <stdlib.h>
>> +#include <linux/hw_random.h>
>> =20
>>  static unsigned int random_seed;
>> =20
>> @@ -22,6 +23,24 @@ void get_random_bytes(void *_buf, int len)
>>  {
>>  	char *buf =3D _buf;
>> =20
>> +	if (IS_ENABLED(CONFIG_HWRNG)) {
>> +		struct hwrng *rng;
>> +		int bytes;
>> +
>> +		rng =3D hwrng_get_first();
>> +		if (!IS_ERR(rng)) {
>> +			while (len) {
>> +				bytes =3D hwrng_get_data(rng, _buf, len, 1);
>> +				if (!bytes)
>> +					goto sw_fallback;
>=20
> hwrng_get_data() looks like it could return a negative error code.

hm.. good point.


--=20
Regards,
Oleksij


--qsh4HGiqEN2hGaMJPNbcDbdglBSKQMx99--

--OulLaLA7mrC8fjIwx2TN9IJ5hqecIdXoJ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iF4EAREIAAYFAljL8x0ACgkQHwImuRkmbWkwwAD/V4Tp/we7B1Gc6YXXmADlqPtB
qpq05LIxWJ78Z/A5plcA/iM4sOUBtmMSydOdVVlwUglYukqzKxiNePwOiDJES/zs
=t/vM
-----END PGP SIGNATURE-----

--OulLaLA7mrC8fjIwx2TN9IJ5hqecIdXoJ--


--===============4703515076393146303==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============4703515076393146303==--

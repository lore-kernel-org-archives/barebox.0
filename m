Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YWNr0-0006tj-IV
 for barebox@lists.infradead.org; Fri, 13 Mar 2015 11:34:11 +0000
Message-ID: <5502CB15.4070306@pengutronix.de>
Date: Fri, 13 Mar 2015 12:33:41 +0100
From: Marc Kleine-Budde <mkl@pengutronix.de>
MIME-Version: 1.0
References: <1426171199-2729-1-git-send-email-jlu@pengutronix.de>
 <1426171199-2729-4-git-send-email-jlu@pengutronix.de>
 <20150312181934.GV30554@ns203013.ovh.net>
 <1426238884.13791.85.camel@pengutronix.de>
 <20150313100538.GB20624@ns203013.ovh.net>
In-Reply-To: <20150313100538.GB20624@ns203013.ovh.net>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1379946498562010620=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [RFC 3/4] FIT: add FIT image support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>, =?UTF-8?Q?Jan_L=c3=bcbbe?= <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============1379946498562010620==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="ak5HoJr4E2chPijd45WEnF584K2FWvXWk"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--ak5HoJr4E2chPijd45WEnF584K2FWvXWk
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 03/13/2015 11:05 AM, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 10:28 Fri 13 Mar     , Jan L=C3=BCbbe wrote:
>> On Do, 2015-03-12 at 19:19 +0100, Jean-Christophe PLAGNIOL-VILLARD wro=
te:
>>> please do not send a new version except for fix
>>>
>>> I'm going to re-integrate it with the keystore & co
>>
>> Could you describe your keystore design?
>=20
> I'll send the patch series soon
>=20
> code is better than 1000s of words
>=20
> with DER support and the fit
>>
>>> and sha1,rsa2048 is considered weak in term of security
>>> and worse md4/md5
>>>
>>> for barebox I would only use
>>> at least sha256 with rs2048 or sha512 with rsa4096
>>
>> Yes, of course. These were only used as an example and it's trivial to=

>> switch to other hash algos or RSA key sizes. Also, the FIT format can
>> easily be extended to support ECC/Curve25519.
>=20
> very slow vs rsa, but as we will use a generic framework we will just n=
eed to
> add the algo
>=20
> if you can break rsa4096, the chance you can break ECC are high too

If you want to open the box, today you would probably not break
rsa2048/sha1 (unless you have huge calculation power) but look for
implementation weaknesses, like bugs or side channel attacks.

>> In some cases, where the SoC's ROM code only supports RSA2048 with SHA=
1,
>> using stronger settings in Barebox doesn't increase security. So there=

>> we want to use the same settings as the ROM code.
>=20
> agreed but I refuse to allow it unless we have no choice
> and emit a warning
>=20
> and even I'll prefer to use stonger, yes this will increase the securit=
y.
> As a secure boot is as strong as it's weak link
>=20
> but this will not reduce it either

Adding unneeded complexity might not the best move here.

Marc

--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--ak5HoJr4E2chPijd45WEnF584K2FWvXWk
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJVAssYAAoJECte4hHFiupUJboP/1GuBx7zUb8C2602vhwnjkoK
orcj+LnTSRuAMpm9R3aUOjhX04m7c+sbS/VGdho+hkfv5R+nnZjFvF2MzNzJl7FN
XCd2XtjFBztolBPvltMSpTgIvGlGfDTLL5BrpVNA5+8RIFMM0SsLkFpr5opT06F0
MQSepnsFdGYyFPc6HTQzTFR/873QW/jtPdMy/z4Au5Y2HfDdaASwR5AY6EeiHcE8
CGIymk2aWrqaYBqzcuiErYQbIZLht7GvmZkpig6BPvU4AQc4qZ7LPx6Q9dyuZ9oF
902LKIWWcDkHo+U/SDXrywwnL/MmLi6o957afRd74YJ97My415bZmknY4AC3MABU
2amWebDOsFJUzORlU4pYj6kHip2bshqUgIJEW5Hfm17jFHWYkDSSkYeiqNE2RYdk
3M/uFulrLX1dy749Ry8IHW+/4o5uiQ9GaEozEndiNx+W1Hi6+i0MHGgvvS15I5Vt
vJFH0FN3NsSQGjkQ6r6DvCh6kAg6qmOT3KGtkplMXW+H/atRbXkQMKZDx6/URlbv
w2I6H/H5BNprw0BxLhv9zxWLGr4iWlY5w5JonONN1kurp+LoPtUGwnPjtogINvdZ
IiW1RTUUTTcZ8tdoHkcYWTgjFfvVJBsN5ZsRte2Wsybm3eF6jbIuU81xPwLIZfDL
XrzpFWlrQSC+FAqLzpsN
=4Bs4
-----END PGP SIGNATURE-----

--ak5HoJr4E2chPijd45WEnF584K2FWvXWk--


--===============1379946498562010620==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1379946498562010620==--

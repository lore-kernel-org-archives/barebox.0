Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZFLVR-0002NQ-1R
 for barebox@lists.infradead.org; Wed, 15 Jul 2015 12:09:45 +0000
References: <1436940123-25118-1-git-send-email-s.hauer@pengutronix.de>
 <55A63FB1.2020804@pengutronix.de> <20150715120620.GW18700@pengutronix.de>
From: Marc Kleine-Budde <mkl@pengutronix.de>
Message-ID: <55A64D6E.1000408@pengutronix.de>
Date: Wed, 15 Jul 2015 14:09:18 +0200
MIME-Version: 1.0
In-Reply-To: <20150715120620.GW18700@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============2918352295812321916=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/2] scripts: imx-image: Do not pad image
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============2918352295812321916==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="iexiIecHFkR83QwvJdgQoqgEODpMn68qp"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--iexiIecHFkR83QwvJdgQoqgEODpMn68qp
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 07/15/2015 02:06 PM, Sascha Hauer wrote:
> On Wed, Jul 15, 2015 at 01:10:41PM +0200, Marc Kleine-Budde wrote:
>> On 07/15/2015 08:02 AM, Sascha Hauer wrote:
>>> We have to pad the load size to the next 4k boundary, but we don't
>>> need to pad the image itself since we do not care what data the ROM
>>> actually loads.
>>>
>>> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
>>
>> NACK - We do for the HABv4 case.
>=20
> Hm, I just wanted to make that optional, the first option letter that
> came to my mind was -p for padding. Shortly afterwards I noticed this a=
lready exists
> and is for: "-p           prepare image for signing". Can we attach the=

> padding to this option?

sure - I'll test with my HAB usecase after you send me a patch.

Marc

--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--iexiIecHFkR83QwvJdgQoqgEODpMn68qp
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEcBAEBCgAGBQJVpk1uAAoJEP5prqPJtc/HBhcH/15Vgm1THH4B6TitD45RcX4V
jZax2GbCWi2O1/7h9/YCEecH4Bb7SSw7zKWDWqkO9+nMM11zTHPqTqm9SIHk6mU5
BYu0BuSX+PZLQNwBZYeFYLkzf2WOeI9pZxkij91rRYDuaZF3dtsQBrI9+21RTJh1
d0xmvPlD5iMkaLDnssl4Vk2gMZ7kKEQl40Xxyvw8qQTCuIMTSO59r/b7Nw2k9vzd
oKTLrGPV1OlvhJPk/CcC03ktGeBaio2ZMbzLSYOXrYtasFcpoAnnfj99Fv2Jo/QW
iaNpvfVbT6MSRSCZnwOBK4+lcKn65uL/HIvnUxgR5r/LxgLdpEtk6DEvtr3q8V8=
=R9BN
-----END PGP SIGNATURE-----

--iexiIecHFkR83QwvJdgQoqgEODpMn68qp--


--===============2918352295812321916==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============2918352295812321916==--

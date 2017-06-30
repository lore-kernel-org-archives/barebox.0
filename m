Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from arcturus.kleine-koenig.org ([2a01:4f8:d12:1f44::2])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dQrsy-0000b4-39
 for barebox@lists.infradead.org; Fri, 30 Jun 2017 09:06:55 +0000
References: <20170627190317.19253-1-uwe@kleine-koenig.org>
 <20170627194002.GB675@sill.h.stcim.de>
 <20170630063547.cji5g7inho5efioo@pengutronix.de>
From: =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <uwe@kleine-koenig.org>
Message-ID: <4d6d133a-7d6e-4bb7-2c06-8d68b0dbd734@kleine-koenig.org>
Date: Fri, 30 Jun 2017 11:06:11 +0200
MIME-Version: 1.0
In-Reply-To: <20170630063547.cji5g7inho5efioo@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============3831813916183556177=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] ARM: imx: add support for Udoo Neo full
To: Sascha Hauer <s.hauer@pengutronix.de>, Stefan Lengfeld <contact@stefanchrist.eu>
Cc: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============3831813916183556177==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="lq0LO2N2Rd57TnSi7p1QK2a11CH6M2XA9"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--lq0LO2N2Rd57TnSi7p1QK2a11CH6M2XA9
Content-Type: multipart/mixed; boundary="2R9n6EJrhVC5vp6EvCS5KktBx9hghThd0";
 protected-headers="v1"
From: =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <uwe@kleine-koenig.org>
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Stefan Lengfeld <contact@stefanchrist.eu>
Cc: barebox@lists.infradead.org
Message-ID: <4d6d133a-7d6e-4bb7-2c06-8d68b0dbd734@kleine-koenig.org>
Subject: Re: [PATCH] ARM: imx: add support for Udoo Neo full
References: <20170627190317.19253-1-uwe@kleine-koenig.org>
 <20170627194002.GB675@sill.h.stcim.de>
 <20170630063547.cji5g7inho5efioo@pengutronix.de>
In-Reply-To: <20170630063547.cji5g7inho5efioo@pengutronix.de>

--2R9n6EJrhVC5vp6EvCS5KktBx9hghThd0
Content-Type: text/plain; charset=iso-8859-15
Content-Transfer-Encoding: quoted-printable

Hello Sascha,

On 06/30/2017 08:35 AM, Sascha Hauer wrote:
> Adding this information is a good idea. In this case the values come
> from:
>=20
> /*
>  * These values are taken from:
>  * repository: https://github.com/UDOOboard/uboot-imx
>  * branch: udoo/2015.04.imx
>  * file: board/udoo/udoo_neo/udoo_neo_basic.cfg
>  */
>=20
> I was about to apply Uwes patch along with this comment, but I just
> realized that the values are from udoo_neo_basic whereas the patch
> seems to support the udoo_neo_full. The udoo neo full has slightly
> different calibration values in the branch above, but probably they
> work on both boards. Uwe, do you know which hardware we actually have
> and support?

The patch I submitted is tested only on a udoo neo full. Does this
answer your question?

Best regards
Uwe



--2R9n6EJrhVC5vp6EvCS5KktBx9hghThd0--

--lq0LO2N2Rd57TnSi7p1QK2a11CH6M2XA9
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAllWFIYACgkQwfwUeK3K
7Ak7swf9HLIVirj2mNc5wkInKR4SIfSfAuRHd272u2sg31a2vQW+SLe0ZWegm/Ro
0CZ5lI2KCBocUfTd7LkMIIvsnKyfbWy1ekKEDAVN7iul2h8FtNMeDKGYQMt/B1je
coOhxBZEX7juZn+mcHfMaBovWrJI41Vs3NZnAJAzvWzIbbNt7otj2RuXo+xuJj77
4YlSho29/sMiMUw5sOdPslVWY6Dt+TC8qHsn5hSPbDk4o83wKU7uuiy9oJrO5ppW
JtlsmWPuCrdeOsR92B0022aEXbWBsoD7twTWwRbMYzsRu7Z4mB1uAxCBJndaBoOc
CX2bsQCyyJQADgNJE2MK8JSvyOCqMA==
=xNDO
-----END PGP SIGNATURE-----

--lq0LO2N2Rd57TnSi7p1QK2a11CH6M2XA9--


--===============3831813916183556177==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============3831813916183556177==--

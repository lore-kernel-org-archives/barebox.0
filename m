Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iblhH-0005OP-Ap
 for barebox@lists.infradead.org; Mon, 02 Dec 2019 13:25:04 +0000
References: <20191202102449.23535-1-jbe@pengutronix.de>
 <20191202130736.xgs53nadr5uvokea@pengutronix.de>
From: Marc Kleine-Budde <mkl@pengutronix.de>
Message-ID: <fa5ac462-27f0-d9c5-e771-1c6775616f05@pengutronix.de>
Date: Mon, 2 Dec 2019 14:24:54 +0100
MIME-Version: 1.0
In-Reply-To: <20191202130736.xgs53nadr5uvokea@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============4762990306931913432=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/2] HABv4: remove useless error message
To: Roland Hieber <rhi@pengutronix.de>, Juergen Borleis <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============4762990306931913432==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="NWzIn8e4bGswo2W0EI9LkZ3cGNc184aup"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--NWzIn8e4bGswo2W0EI9LkZ3cGNc184aup
Content-Type: multipart/mixed; boundary="AV6Cf75f0Yf8TdMz54jov20sgbnHVzGbQ";
 protected-headers="v1"
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: Roland Hieber <rhi@pengutronix.de>, Juergen Borleis <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <fa5ac462-27f0-d9c5-e771-1c6775616f05@pengutronix.de>
Subject: Re: [PATCH 1/2] HABv4: remove useless error message
References: <20191202102449.23535-1-jbe@pengutronix.de>
 <20191202130736.xgs53nadr5uvokea@pengutronix.de>
In-Reply-To: <20191202130736.xgs53nadr5uvokea@pengutronix.de>

--AV6Cf75f0Yf8TdMz54jov20sgbnHVzGbQ
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: quoted-printable

On 12/2/19 2:07 PM, Roland Hieber wrote:
> On Mon, Dec 02, 2019 at 11:24:48AM +0100, Juergen Borleis wrote:
>> This change removes the stupid error message at the end of the generat=
ed
>=20
> I think there was some reason behind that code, so it is probably not
> stupid, and you've run into an edge case that never happened before (at=

> least I've never seen this on any of my boards when using HABv4).

The last time, I've seen this messages was before implementing:

81e2b508e785 i.MX habv4: habv4_get_status(): display warning events, too

So Roland is probably right, you've hit a corner case, that's not
correctly handled.

> The code goes back until the first incarnaction of HABv4 in commit
> 29abc10d44c2 - Marc, do you still know more details why it was done thi=
s
> way?

This was part of the patches I picked up from fsl, see commit message
for more details:

29abc10d44c2 habv4: add High Assurance Boot v4

Albeit giving an incorrect error message, it showed that there were
warnings events on the new mx6 silicon revisions that were not handled
before 81e2b508e785.

Marc
--=20
Pengutronix e.K.                 | Marc Kleine-Budde           |
Embedded Linux                   | https://www.pengutronix.de  |
Vertretung West/Dortmund         | Phone: +49-231-2826-924     |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-5555 |


--AV6Cf75f0Yf8TdMz54jov20sgbnHVzGbQ--

--NWzIn8e4bGswo2W0EI9LkZ3cGNc184aup
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEmvEkXzgOfc881GuFWsYho5HknSAFAl3lEKYACgkQWsYho5Hk
nSCoIggAs0uucxajuAv1gavibXciKb9Yq6DulVe+KrzV4M0XgJO3r+SQBGVJo6Ar
DgiR62KMNBd1vxWp0Ute35To84rnjiYw9y2L4bb6Yto1q326CLuq+Fg8v5bSWzWl
l1ao9LnWk3d09XiqCgg4HzFTNl+sIxbopMJQsenBgaHZa9+/GP3meOtCsCFBw9Ka
NW2kjLBEk5uTZu4izyzW1IBXH2zfJSTFAvtrSnaUvIMZvksmBYMH2mXdb/pkEEJC
iQQRe5K6kH1egTENVH5xiBTvsOsjkVB2Ej5ChjpDbTfXjF/bJO1TH/NhQnrFL0E4
BzTGKQYn/JDaN75lOqqIKdIJixSXpA==
=Tq0V
-----END PGP SIGNATURE-----

--NWzIn8e4bGswo2W0EI9LkZ3cGNc184aup--


--===============4762990306931913432==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============4762990306931913432==--

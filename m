Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iblty-0003ZP-VY
 for barebox@lists.infradead.org; Mon, 02 Dec 2019 13:38:14 +0000
References: <20191202102449.23535-1-jbe@pengutronix.de>
 <20191202130736.xgs53nadr5uvokea@pengutronix.de>
 <fa5ac462-27f0-d9c5-e771-1c6775616f05@pengutronix.de>
 <20191202133319.roswgihg42cw6kox@pengutronix.de>
From: Marc Kleine-Budde <mkl@pengutronix.de>
Message-ID: <0728fef2-133d-f74e-421f-df3c5e2cf7b9@pengutronix.de>
Date: Mon, 2 Dec 2019 14:38:03 +0100
MIME-Version: 1.0
In-Reply-To: <20191202133319.roswgihg42cw6kox@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============8626011848397289921=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/2] HABv4: remove useless error message
To: Roland Hieber <rhi@pengutronix.de>
Cc: barebox@lists.infradead.org, Juergen Borleis <jbe@pengutronix.de>

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============8626011848397289921==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="NN3T8L7TmKuBpOXuEdCQov07Q9RO8IHkO"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--NN3T8L7TmKuBpOXuEdCQov07Q9RO8IHkO
Content-Type: multipart/mixed; boundary="Meep82ecvfMUcNqkpN0YSbQl2tg6v3Lmz";
 protected-headers="v1"
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: Roland Hieber <rhi@pengutronix.de>
Cc: Juergen Borleis <jbe@pengutronix.de>, barebox@lists.infradead.org
Message-ID: <0728fef2-133d-f74e-421f-df3c5e2cf7b9@pengutronix.de>
Subject: Re: [PATCH 1/2] HABv4: remove useless error message
References: <20191202102449.23535-1-jbe@pengutronix.de>
 <20191202130736.xgs53nadr5uvokea@pengutronix.de>
 <fa5ac462-27f0-d9c5-e771-1c6775616f05@pengutronix.de>
 <20191202133319.roswgihg42cw6kox@pengutronix.de>
In-Reply-To: <20191202133319.roswgihg42cw6kox@pengutronix.de>

--Meep82ecvfMUcNqkpN0YSbQl2tg6v3Lmz
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: quoted-printable

On 12/2/19 2:33 PM, Roland Hieber wrote:
> On Mon, Dec 02, 2019 at 02:24:54PM +0100, Marc Kleine-Budde wrote:
>> On 12/2/19 2:07 PM, Roland Hieber wrote:
>>> On Mon, Dec 02, 2019 at 11:24:48AM +0100, Juergen Borleis wrote:
>>>> This change removes the stupid error message at the end of the gener=
ated
>>>
>>> I think there was some reason behind that code, so it is probably not=

>>> stupid, and you've run into an edge case that never happened before (=
at
>>> least I've never seen this on any of my boards when using HABv4).
>>
>> The last time, I've seen this messages was before implementing:
>>
>> 81e2b508e785 i.MX habv4: habv4_get_status(): display warning events, t=
oo
>>
>> So Roland is probably right, you've hit a corner case, that's not
>> correctly handled.
>>
>>> The code goes back until the first incarnaction of HABv4 in commit
>>> 29abc10d44c2 - Marc, do you still know more details why it was done t=
his
>>> way?
>>
>> This was part of the patches I picked up from fsl, see commit message
>> for more details:
>>
>> 29abc10d44c2 habv4: add High Assurance Boot v4
>>
>> Albeit giving an incorrect error message, it showed that there were
>> warnings events on the new mx6 silicon revisions that were not handled=

>> before 81e2b508e785.
>=20
> So that means the code is no longer needed now, and J=C3=BCrgens patch =
does
> the right thing?

If J=C3=BCrgen sees this not totally correct error message, it means ther=
e's
something wrong and/or we don't understand the HAB ROM code completely.

If J=C3=BCrgen doesn't see this error message, then we don't trigger an
unhandled corner case and the error message should be changed that
something went wrong.

Marc

--=20
Pengutronix e.K.                 | Marc Kleine-Budde           |
Embedded Linux                   | https://www.pengutronix.de  |
Vertretung West/Dortmund         | Phone: +49-231-2826-924     |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-5555 |


--Meep82ecvfMUcNqkpN0YSbQl2tg6v3Lmz--

--NN3T8L7TmKuBpOXuEdCQov07Q9RO8IHkO
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEmvEkXzgOfc881GuFWsYho5HknSAFAl3lE7sACgkQWsYho5Hk
nSCAlAf/b3/COYN57xAb/IozBpkpHHSTDL/S05cZyoUiHy1ZrhhesEi3NKUxlWMK
2ugq5uP+9AVRC0pJfw7O4IM6tjW072uOs1AgCNCjnjssuob6SeCGyqj1UEnjFKDI
GMxSyr101lpjZqPPV56tOW6Y8OtaFDX4LtAoou2duaMR9dR8pFRRvtHgs1MrenBE
Bp2CkkTHuVi1njr3rXfoFLUMwyPILX9gsgSHEP0epHivwBg457YMdJG0FFiwoILT
K5Ge79vXw+ZfR/4qA21ELbH03QYr27iV75+svEROrdvfQTkfnb1vg5sxt27ieNH4
YIsFj9kQuJjUDGLzhNeFboVbWnM+ew==
=/uuL
-----END PGP SIGNATURE-----

--NN3T8L7TmKuBpOXuEdCQov07Q9RO8IHkO--


--===============8626011848397289921==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============8626011848397289921==--

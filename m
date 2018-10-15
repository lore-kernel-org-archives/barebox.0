Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gByWK-0003Ph-Gd
 for barebox@lists.infradead.org; Mon, 15 Oct 2018 08:46:38 +0000
References: <20181004070400.12338-1-Denis.Osterland@diehl.com>
 <20181005065537.21844-1-Denis.Osterland@diehl.com>
 <20181010075129.u67xfq247pmn7sfb@pengutronix.de>
 <f20161e0-4c3b-9cd1-539b-dfd444085e24@pengutronix.de>
 <1539592904.5886.15.camel@diehl.com>
From: Marc Kleine-Budde <mkl@pengutronix.de>
Message-ID: <84bd5f0d-9fcd-f454-183c-2166e5707a87@pengutronix.de>
Date: Mon, 15 Oct 2018 10:46:16 +0200
MIME-Version: 1.0
In-Reply-To: <1539592904.5886.15.camel@diehl.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0499512989114626628=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2] hab: Print events on info command.
To: Denis OSTERLAND <denis.osterland@diehl.com>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============0499512989114626628==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="8HOlMaOX71kfAsE0zDMURqjkcQWLXq64g"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--8HOlMaOX71kfAsE0zDMURqjkcQWLXq64g
Content-Type: multipart/mixed; boundary="OyzpU5RaxyzU1WC8P2CGRf7FFOh6bTXzr";
 protected-headers="v1"
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: Denis OSTERLAND <denis.osterland@diehl.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Message-ID: <84bd5f0d-9fcd-f454-183c-2166e5707a87@pengutronix.de>
Subject: Re: [PATCH v2] hab: Print events on info command.
References: <20181004070400.12338-1-Denis.Osterland@diehl.com>
 <20181005065537.21844-1-Denis.Osterland@diehl.com>
 <20181010075129.u67xfq247pmn7sfb@pengutronix.de>
 <f20161e0-4c3b-9cd1-539b-dfd444085e24@pengutronix.de>
 <1539592904.5886.15.camel@diehl.com>
In-Reply-To: <1539592904.5886.15.camel@diehl.com>

--OyzpU5RaxyzU1WC8P2CGRf7FFOh6bTXzr
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: quoted-printable

On 10/15/2018 10:41 AM, Denis OSTERLAND wrote:
>> The faulting zero page problem doesn't occur on mx25 and mx28 as the H=
AB
>> ROM doesn't live at 0x0:
>>
>> #define HABV4_RVT_IMX28 0xffff8af8
>>
>> int imx25_hab_get_status(void)
>> {
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return imx_habv3_get_s=
tatus(readl(IOMEM(0x780018d4)));
>> }
>> =C2=A0
>> Marc
>>
>=20
> Thanks for the info.
> This becomes a problem when MMU is enabled again.

I think we have a 1-to-1 mapping by default, modulo the zero page.

> I think this will require explicit mapping.
> I am not sure if it is possible to access the ABI through mapped addres=
ses.

Probably not, I assume the code is not position independent.

> Is it possible to force mapping at exact this addresses?

Marc

--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--OyzpU5RaxyzU1WC8P2CGRf7FFOh6bTXzr--

--8HOlMaOX71kfAsE0zDMURqjkcQWLXq64g
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEENrCndlB/VnAEWuH5k9IU1zQoZfEFAlvEU9gACgkQk9IU1zQo
ZfFKtQgApydp+71x1ICO7LmFO/FIns7rk6WnqbzNALOOk/KKhbw0LkwlcmQVpYIa
558WNbkSPV2tj+bI1k/nnCS3CUX2ka0TmT28usKZ1BDlm9fK7ldtbv6gh4XF9ogj
IRSfMbixwLK0Uk+GE2OMtFU0+uGG102Sc2V+1xsbSA1kYpMGVTIWZ1lUrV4nCrJk
ih8HxZJqfVAg6oCQHu02G5nJ2EutPlQcYTvFqbBy5z0+Kaj1GGQppF3l75L2k0gY
1FPyk1C9gmgMH6jzzeBpYDYVa6+I7MkPY+Knhh2W4Hj3cQxSd+uQNJ8oInvNSySm
NdLC2GsBQwKHrsuHYcu3cVncmpCKKQ==
=Ti8g
-----END PGP SIGNATURE-----

--8HOlMaOX71kfAsE0zDMURqjkcQWLXq64g--


--===============0499512989114626628==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============0499512989114626628==--

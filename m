Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aRF6c-0006QS-9c
 for barebox@lists.infradead.org; Thu, 04 Feb 2016 08:17:34 +0000
References: <1454570724-12034-1-git-send-email-u.oelmann@pengutronix.de>
From: Marc Kleine-Budde <mkl@pengutronix.de>
Message-ID: <56B30900.5040905@pengutronix.de>
Date: Thu, 4 Feb 2016 09:17:04 +0100
MIME-Version: 1.0
In-Reply-To: <1454570724-12034-1-git-send-email-u.oelmann@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============9020805467010980556=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] docs: fix typos
To: =?UTF-8?Q?Ulrich_=c3=96lmann?= <u.oelmann@pengutronix.de>, barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============9020805467010980556==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="CfqOtI76TP9fCwK0QLei7k7BPQBC3vNFS"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--CfqOtI76TP9fCwK0QLei7k7BPQBC3vNFS
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 02/04/2016 08:25 AM, Ulrich =C3=96lmann wrote:
> Signed-off-by: Ulrich =C3=96lmann <u.oelmann@pengutronix.de>
> ---
>  Documentation/devicetree/bindings/barebox/barebox,state.rst | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/Documentation/devicetree/bindings/barebox/barebox,state.rs=
t b/Documentation/devicetree/bindings/barebox/barebox,state.rst
> index d1b0627..5643edc 100644
> --- a/Documentation/devicetree/bindings/barebox/barebox,state.rst
> +++ b/Documentation/devicetree/bindings/barebox/barebox,state.rst
> @@ -43,7 +43,7 @@ Variable nodes
> =20
>  These are subnodes of a state node each describing a single
>  variable. The node name may end with ``@<ADDRESS>``, but the suffix is=

> -sripped from the variable name.
> +ripped from the variable name.

It should read "stripped"

> =20
>  State variables have a type. Currenty supported types are: ``uint8``,
>  ``uint32``, ``enum32``, ``mac`` address or ``string``. Variable length=

>=20

Marc

--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--CfqOtI76TP9fCwK0QLei7k7BPQBC3vNFS
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEcBAEBCgAGBQJWswkCAAoJED07qiWsqSVqMHIIAJU4iC0y+DgwWm6rBJekLQ68
UQ+1FtnxgWwXWm7DlfFguXpPONKRdqkc2JJb2dDzhR+53p0+g7/sd3nHAIie8FRh
3RsX4m/xF/nSrHxj25WjxkcSLDITx6coETVPyYnrKsaJFoOoWdrbvxZEORyQLtmM
lxRQYHHkX0rAEaiRdIP727GWaRM+C8UyPL8DYym6lBgb35wNX7fGrMNiYqmHWFK/
m8VC+6SUppQEnlsO1XqZv3dvTQ4pE6DLh3FtJ9ZCgn00b2gFrCrx+1dRAhGQoA7A
0871n1+09pD0dH1qVTkhbQ2k6M2QPAsjEnTacT3xXvbHwedejGbifeES3HGqwg0=
=R2AZ
-----END PGP SIGNATURE-----

--CfqOtI76TP9fCwK0QLei7k7BPQBC3vNFS--


--===============9020805467010980556==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============9020805467010980556==--

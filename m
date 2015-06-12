Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z3LkF-0006ow-Od
 for barebox@lists.infradead.org; Fri, 12 Jun 2015 09:59:28 +0000
References: <1434102821-10555-1-git-send-email-s.hauer@pengutronix.de>
 <1434102821-10555-3-git-send-email-s.hauer@pengutronix.de>
From: Marc Kleine-Budde <mkl@pengutronix.de>
Message-ID: <557AAD62.5040108@pengutronix.de>
Date: Fri, 12 Jun 2015 11:58:58 +0200
MIME-Version: 1.0
In-Reply-To: <1434102821-10555-3-git-send-email-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============9095161570783270930=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 3/6] video: Add PWM backlight support
To: Sascha Hauer <s.hauer@pengutronix.de>, Barebox List <barebox@lists.infradead.org>

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============9095161570783270930==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="sfX9sKIwP3HFeEsJCECnr4KogpiAIBAxg"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--sfX9sKIwP3HFeEsJCECnr4KogpiAIBAxg
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 06/12/2015 11:53 AM, Sascha Hauer wrote:
> +static=C2=B7int=C2=B7backlight_pwm_set(struct=C2=B7backlight_device=C2=
=B7*backlight,
> +=C2=BB =C2=BB int=C2=B7brightness)
> +{
> +=C2=BB struct=C2=B7pwm_backlight=C2=B7*pwm_backlight=C2=B7=3D=C2=B7con=
tainer_of(backlight,
> +=C2=BB =C2=BB =C2=BB struct=C2=B7pwm_backlight,=C2=B7backlight);
> +=C2=BB unsigned=C2=B7long=C2=B7long=C2=B7duty=C2=B7=3D=C2=B7=C2=B7pwm_=
backlight->period;
> +=C2=BB unsigned=C2=B7int=C2=B7max=C2=B7=3D=C2=B7pwm_backlight->backlig=
ht.brightness_max;
> +
> +=C2=B7=C2=B7=C2=B7=C2=B7=C2=B7=C2=B7=C2=B7=C2=B7duty=C2=B7*=3D=C2=B7br=
ightness;
> +=C2=B7=C2=B7=C2=B7=C2=B7=C2=B7=C2=B7=C2=B7=C2=B7do_div(duty,=C2=B7max)=
;

indent with tab instead of space here.

Marc

--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--sfX9sKIwP3HFeEsJCECnr4KogpiAIBAxg
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEcBAEBCgAGBQJVeq1iAAoJEP5prqPJtc/HMB8H/jS42Noc//IdR23PkvgDI3Uy
DLGC0POtRIcfVH1maBp77icAZSXE029GOLXoovkTwlXNcZy96ahKsIrsqmpVqaDN
hB1I1rHeY0Hu9yMFMqgUM3wIXdrQnJ5Gc6b8u8bMHMs0X58gH/Ud3dGyqRR8WuEY
Lzvvrs+x5PPQ5QD4KuXxtEEcRzdtnJ5Xpn0wKJp1XeHczqNK81GKt6BdcHVPm1vZ
JLbCuPniIUFkeLrF9viOKDLXnjH5Vlqy0KNy40ltYncSH/KHxy09X3AL6PdpEhFV
HKHJMHjrGJuikNI7YB1bFWZBjvN7spuOd615XUpp/+Ycavi9344RjIgkuiEa2Zc=
=Ahir
-----END PGP SIGNATURE-----

--sfX9sKIwP3HFeEsJCECnr4KogpiAIBAxg--


--===============9095161570783270930==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============9095161570783270930==--

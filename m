Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlqeH-0006TD-KW
 for barebox@lists.infradead.org; Thu, 18 Jun 2020 09:15:55 +0000
Date: Thu, 18 Jun 2020 11:15:50 +0200
From: Michael Grzeschik <mgr@pengutronix.de>
Message-ID: <20200618091550.GT21325@pengutronix.de>
References: <20200618091102.30150-1-a.fatoum@pengutronix.de>
 <20200618091102.30150-10-a.fatoum@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20200618091102.30150-10-a.fatoum@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1155015538839126655=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 09/15] ARM: i.MX6UL: dts: remove defunct override of
 pico-hobbit memory node
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org


--===============1155015538839126655==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="gSSGYPGSs0dvYOj7"
Content-Disposition: inline


--gSSGYPGSs0dvYOj7
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jun 18, 2020 at 11:10:56AM +0200, Ahmad Fatoum wrote:
>Prior to 8226f7f90973 ("of: base: parse all available memory nodes"),
>barebox first looked at a /memory node, then at a node with a
>device_type =3D "memory" property when probing available memory banks from
>device tree. Linux instead only considered nodes with device_type =3D
>"memory". The imx6ul-pico-hobbit predates the change in barebox behavior,
>so it's unclear what is gained from dropping device_type =3D "memory" as
>barebox used to parse the node by name anyway and Linux only saw the new
>fixed up node.
>
>Since then the Linux device tree has been split into a SoM and carrier
>board device tree and the node name is now called memory@80000000 with
>a size of 0 in the reg property. Because it's already used for boards
>with differing memory size, we assume this will remain so and thus we
>just drop the defunct barebox memory node override.
>
>Cc: Michael Grzeschik <m.grzeschik@pengutronix.de>
>Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>---
> arch/arm/dts/imx6ul-pico-hobbit.dts | 4 ----
> 1 file changed, 4 deletions(-)
>
>diff --git a/arch/arm/dts/imx6ul-pico-hobbit.dts b/arch/arm/dts/imx6ul-pic=
o-hobbit.dts
>index 2f37b724b6e1..0c543de8c916 100644
>--- a/arch/arm/dts/imx6ul-pico-hobbit.dts
>+++ b/arch/arm/dts/imx6ul-pico-hobbit.dts
>@@ -9,10 +9,6 @@
> 			device-path =3D &environment_usdhc1;
> 		};
> 	};
>-
>-	memory {
>-		/delete-property/ device_type;
>-	};
> };
>
> &usdhc1 {
>--=20
>2.27.0

Ack

--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

--gSSGYPGSs0dvYOj7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEElXvEUs6VPX6mDPT8C+njFXoeLGQFAl7rML4ACgkQC+njFXoe
LGSDLBAAm7g4US3b6826Naw7TVAsj6np6NjSq9rPWj3pFLFzrS3oDdcYX+fmIBit
9Slk2kYwdLYlic2wERIKtC5o3XRy0Wc+e/jclHtHaKhaC3/dwgtZ9vD1UTXDiM9z
gV7bzCI8J2Toi/97XY31QOy3kyKMx5Lj9R1hc5lxLeqbSaY8HOLakGpMt+DvWk/G
mxAaH/v2MGkArwGt5Aden7/Jao9FXn9aqaNcX8aym8DkWCMhQ7SK6W0sjJ/nuUUs
yNuy0k972Sq6VWGHOfIcc5g43p2CU45Q9bNm620PtpSDM+Dm/0gQX9Qrjw9RI+Ns
C+WjaXjs7vkYUA/92pGW4N3hk24MHiwFSn9I0qwc3Qv2Sp4/PjYHN2LwXkJ7LFR4
KFvCJholBrcFMdu/t0Pqy07InEPD0gndrb9D9csHiEN6xD94vqi2YsoGXy1g5+NY
lb36MC45SrJz3qxnun8OG43NsYFArJIyKTUFzMBCT9+PQW5D754GDEqqDGdd81+1
TL9Jpfjx7EvqHiu5yER3vSYMipPsp9Xv9ogn8TypCyd4owBts44sA/v6lOWbK+vy
KoV44ehGp2ORL5T1cVeSasa5+hpN8Zu+tV2Tox275qN+YTWPOx0RMsW5UaGSnp87
vG8lt4eyhsH24WO8HcHIwoEzgokTfEpcFBrJyAy46pzAyUA0gRw=
=1lin
-----END PGP SIGNATURE-----

--gSSGYPGSs0dvYOj7--


--===============1155015538839126655==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1155015538839126655==--

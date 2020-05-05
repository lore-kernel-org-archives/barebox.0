Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVtZy-0004K1-Hr
 for barebox@lists.infradead.org; Tue, 05 May 2020 09:09:32 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mgr@pengutronix.de>) id 1jVtZr-0005uh-MT
 for barebox@lists.infradead.org; Tue, 05 May 2020 11:09:23 +0200
Received: from mgr by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mgr@pengutronix.de>) id 1jVtZr-0004X2-DO
 for barebox@lists.infradead.org; Tue, 05 May 2020 11:09:23 +0200
Date: Tue, 5 May 2020 11:09:23 +0200
From: Michael Grzeschik <mgr@pengutronix.de>
Message-ID: <20200505090923.GO7200@pengutronix.de>
References: <20200504075022.28234-1-m.grzeschik@pengutronix.de>
 <20200504075022.28234-2-m.grzeschik@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20200504075022.28234-2-m.grzeschik@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0151269216382624496=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/5] net: cpsw: fix cpsw_slave_regs register offsets
To: barebox@lists.infradead.org


--===============0151269216382624496==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Pk/CTwBz1VvfPIDp"
Content-Disposition: inline


--Pk/CTwBz1VvfPIDp
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

I forgot something.

On Mon, May 04, 2020 at 09:50:18AM +0200, Michael Grzeschik wrote:
>The cpsw_slave_regs struct also start with max_blks register, so here we
>also have to skip the first two bytes like for .host_port_reg_ofs

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>

>---
> drivers/net/cpsw.c | 4 ++--
> 1 file changed, 2 insertions(+), 2 deletions(-)
>
>diff --git a/drivers/net/cpsw.c b/drivers/net/cpsw.c
>index c3cc43cc5b..d745737aa3 100644
>--- a/drivers/net/cpsw.c
>+++ b/drivers/net/cpsw.c
>@@ -1015,7 +1015,7 @@ static struct cpsw_data cpsw1_data =3D {
> 	.cpdma_reg_ofs		=3D 0x100,
> 	.state_ram_ofs		=3D 0x200,
> 	.ale_reg_ofs		=3D 0x600,
>-	.slave_ofs		=3D 0x050,
>+	.slave_ofs		=3D 0x058,
> 	.slave_size		=3D 0x040,
> 	.sliver_ofs		=3D 0x700,
> 	/* FIXME: mdio_reg_ofs and cppi_ram_ofs missing */
>@@ -1026,7 +1026,7 @@ static struct cpsw_data cpsw2_data =3D {
> 	.cpdma_reg_ofs		=3D 0x800,
> 	.state_ram_ofs		=3D 0xa00,
> 	.ale_reg_ofs		=3D 0xd00,
>-	.slave_ofs		=3D 0x200,
>+	.slave_ofs		=3D 0x208,
> 	.slave_size		=3D 0x100,
> 	.sliver_ofs		=3D 0xd80,
> 	.mdio_reg_ofs		=3D 0x1000,
>--=20
>2.26.2
>
>
>_______________________________________________
>barebox mailing list
>barebox@lists.infradead.org
>http://lists.infradead.org/mailman/listinfo/barebox
>

--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

--Pk/CTwBz1VvfPIDp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEElXvEUs6VPX6mDPT8C+njFXoeLGQFAl6xLUAACgkQC+njFXoe
LGRvNw//WWFWZ4velmEHTDXyi9PttBHvvhisVveeXiPxgocEpseQNhpkvzrh/qGm
j98iQW+bOqWTcdbQPQjTFxghB7ygzCJXxdwscZKzqeemKDOyqPeL7l6rcQgrHo+m
/IR3dYaqdEKrJ+m5pglwRBEf48smCB2vR53Vv2y7F5lBY/hX90p8T5N5zV7AFXcp
sTnWt9NE/zX+4I12pCinRn1Py8bgiDe8IASbeSQ6nA/m/zv979xcQRzKegzjXiEV
UiavZmrcO1SPUcor0hxHt7FXAj+O1RPHkv15swyLyiEycHISCWQ+5yIfQJAK+OIT
wm4DjQ6Fnw38ctPH4s+zYXSif1zG+7KjzjsZIQq7C3DIZFbeRkkAvUM2wuixZXbw
1xN7Lsaa29VjL+93Q3K+5iJ8s9dmErG7754F5hHeBaBkJ8HWwFtuXF4wCI3ojOPa
YMirfy1WhpKTYegLjEFDtimhGX32L1K8u1RZaOtGrboM0ypF4+p56JHyfvfHz6sY
lGb9FVFG6Eaj5XprqsneBd5UeXRC+LowQT6dy5OABbjtG9iiQiJmyF7FrMc4BdUm
HvgkpBj1XqXkgpvHMAbhHLvj82WlijMeXL5mhO1xvSUZctvOer3TjaZijhh4RQ8s
t9+SnF5LdWMDI4ougJif6KAAgGp48LB3kuCpLyIqk0u0VHmD0zk=
=cGcx
-----END PGP SIGNATURE-----

--Pk/CTwBz1VvfPIDp--


--===============0151269216382624496==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============0151269216382624496==--

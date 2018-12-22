Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.15.19])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gadKv-0002Zl-1N
 for barebox@lists.infradead.org; Sat, 22 Dec 2018 09:12:46 +0000
From: Oleksij Rempel <linux@rempel-privat.de>
Message-ID: <ec676ac6-39e7-8962-7eb5-e73f62938900@rempel-privat.de>
Date: Sat, 22 Dec 2018 10:12:28 +0100
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0687733345620347869=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: MIPS multiimabe is brocken after "Images: Add image size to built
 images"
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>, Sascha Hauer <s.hauer@pengutronix.de>

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============0687733345620347869==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="2ITmMr4qDjR3GoJHc9FBduJKog5PsiqPZ"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--2ITmMr4qDjR3GoJHc9FBduJKog5PsiqPZ
Content-Type: multipart/mixed; boundary="vqmucp7ubOrYQTeTsFovkQqDLMG9RHYrl";
 protected-headers="v1"
From: Oleksij Rempel <linux@rempel-privat.de>
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>,
 Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <ec676ac6-39e7-8962-7eb5-e73f62938900@rempel-privat.de>
Subject: MIPS multiimabe is brocken after "Images: Add image size to built
 images"

--vqmucp7ubOrYQTeTsFovkQqDLMG9RHYrl
Content-Type: text/plain; charset=utf-8
Content-Language: ru
Content-Transfer-Encoding: quoted-printable

Hi Sascha,

i can't build MIPS images after this patch:

commit 3abeee3e45224c73245e32cb614c241cd195f1c4 (bb/master)
Author: Sascha Hauer <s.hauer@pengutronix.de>
Date:   Mon Dec 17 12:09:23 2018 +0100

    Images: Add image size to built images

    This brings back the image size written into the built images which g=
ot
    lost in the conversion to using piggydata in the PBL images.

    Fixes: 5a1a5ed253 ("ARM: images: use piggydata")

    Reported-by: Teresa Remmet <t.remmet@phytec.de>
    Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
    Tested-by: Teresa Remmet <t.remmet@phytec.de>


--=20
Regards,
Oleksij


--vqmucp7ubOrYQTeTsFovkQqDLMG9RHYrl--

--2ITmMr4qDjR3GoJHc9FBduJKog5PsiqPZ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEpENFL0P3hvQ7p0DDdQOiSHVI77QFAlwd//0ACgkQdQOiSHVI
77T+qQf9G2D0P8sOKI6OSpHjRfdH2xz68EtBCGtG9xKlXjpD1OBMqYedsx5MAmZy
QVCyoMErLHovEokSYixrBTHIa9qhzM3lDykZPzi4dxQD/oLEXCWrDRRduugGrVQs
mIr2KroPALQg9Ymag/EcVpy2vDd+x6MOwVIvAA+wBQOtV2YT4031Yy0cveIfdWUC
ELUxo7+hon3jmhu60m0TAzve1atHKn0NiM3+rHma6t3Cvtn9gBj4bKiQ4KjMZj90
VTVOrmP65WATz9ss2Btpw9q2Hg4S6oq12EAcAjoAohnss8EItHED4H7E8rjiygl/
xtEpjeld6t+Nuf9xQ6WEQ+5nWTro3g==
=8oRv
-----END PGP SIGNATURE-----

--2ITmMr4qDjR3GoJHc9FBduJKog5PsiqPZ--


--===============0687733345620347869==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============0687733345620347869==--

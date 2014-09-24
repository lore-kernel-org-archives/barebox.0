Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-f43.google.com ([209.85.220.43])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XWsAd-0007He-3b
 for barebox@lists.infradead.org; Wed, 24 Sep 2014 19:24:11 +0000
Received: by mail-pa0-f43.google.com with SMTP id kx10so9343944pab.30
 for <barebox@lists.infradead.org>; Wed, 24 Sep 2014 12:23:49 -0700 (PDT)
From: Ryan Du Bois <rdub@kamama.com>
Date: Wed, 24 Sep 2014 12:23:45 -0700
Message-Id: <2F9C706F-8EBC-453B-8BA1-116680C7926A@kamama.com>
Mime-Version: 1.0 (Mac OS X Mail 7.3 \(1878.6\))
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============3190725126850031742=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: nvidia jetson tk1 help
To: barebox@lists.infradead.org


--===============3190725126850031742==
Content-Type: multipart/signed; boundary="Apple-Mail=_1B0090EC-BEF2-4D92-8CE5-8C1491234E7E"; protocol="application/pgp-signature"; micalg=pgp-sha512


--Apple-Mail=_1B0090EC-BEF2-4D92-8CE5-8C1491234E7E
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hey There,

I'm having trouble getting barebox to boot on an Nvidia Jetson TK1.  I'm =
using the tegra-v7_defconfig, and trying to load it to the board via the =
tegrarcm tool.

Has anyone done this before who might have a recipe that works?

Thanks!
--
+Ryan Du Bois
rdub@kamama.com


--Apple-Mail=_1B0090EC-BEF2-4D92-8CE5-8C1491234E7E
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iQEcBAEBCgAGBQJUIxpBAAoJEK4Z1vjpzDGStLcIANHFe2W6vZcrA8Vl0v3UpZ/6
cNe+Psm8MPv9RCpPdxc3qN5DUeRA8MRvVYU4tponDlLG3JlAoYYk1irBZrygA/py
2g5cWiU5ag+OkcCaHYE8TXTsc/7pD2+oZNVmZ7t3M0ZeTNMOBIYSG2IFiptz0cXp
yvOcckCjQOlY7MJOFjgPnzPshi/dTG5FyEZpsVop9KNvV+AFeqxIaRHys+DzzCQP
5M1gEsAjfubq111K8wJH5Mcw6U4OOwSTkrFtmsXwlNqxNCYqylwHzxURkUtVc0ep
Jv46SY88yAi+CEgy+KECpuh7dx1SXdZWM/QLizluNFJA0ubFVv4SNzlHHib6ANA=
=1Xjg
-----END PGP SIGNATURE-----

--Apple-Mail=_1B0090EC-BEF2-4D92-8CE5-8C1491234E7E--


--===============3190725126850031742==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============3190725126850031742==--

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dsiYJ-0005bm-Do
 for barebox@lists.infradead.org; Fri, 15 Sep 2017 04:48:34 +0000
Received: from [192.168.1.241] ([31.18.251.132]) by mail.gmx.com (mrgmx003
 [212.227.17.190]) with ESMTPSA (Nemesis) id 0MX1dc-1dyAca0kJY-00W1s0 for
 <barebox@lists.infradead.org>; Fri, 15 Sep 2017 06:48:04 +0200
References: <20170915023353.GA6298@ubuntu>
From: Oleksij Rempel <fishor@gmx.net>
Message-ID: <26a79b9c-8c1f-a4d4-5bfa-9804289f0209@gmx.net>
Date: Fri, 15 Sep 2017 06:47:53 +0200
MIME-Version: 1.0
In-Reply-To: <20170915023353.GA6298@ubuntu>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============2186762172637622271=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Load environment variables earlier
To: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============2186762172637622271==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="a45Pbem7kd8lnW3E8N6M95AWsqPpOCToG"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--a45Pbem7kd8lnW3E8N6M95AWsqPpOCToG
Content-Type: multipart/mixed; boundary="5PDptSFRhpNXSBhcbr9KkTJKD4nXg1sW8";
 protected-headers="v1"
From: Oleksij Rempel <fishor@gmx.net>
To: barebox@lists.infradead.org
Message-ID: <26a79b9c-8c1f-a4d4-5bfa-9804289f0209@gmx.net>
Subject: Re: Load environment variables earlier
References: <20170915023353.GA6298@ubuntu>
In-Reply-To: <20170915023353.GA6298@ubuntu>

--5PDptSFRhpNXSBhcbr9KkTJKD4nXg1sW8
Content-Type: text/plain; charset=utf-8
Content-Language: ru
Content-Transfer-Encoding: quoted-printable

Am 15.09.2017 um 04:33 schrieb zjh:
>  think the environment variables should be loaded before the device is =
registered,
>  so when the device is registered, it can be initialized according to t=
he environment variable.

Please take look at drivers/usb/gadget/f_fastboot.c. it is already using
env variables.


--5PDptSFRhpNXSBhcbr9KkTJKD4nXg1sW8--

--a45Pbem7kd8lnW3E8N6M95AWsqPpOCToG
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iG4EAREIABYFAlm7W34PHGZpc2hvckBnbXgubmV0AAoJEB8CJrkZJm1p1NEBAIMH
beUuQFq1rKRsM29UcGTC4NkV3zxQ2JnSxR41xRLXAQCND0j+VVF1HX5JEWobDInU
AmDNyntD2HhUdqXFskwMWQ==
=Mmhv
-----END PGP SIGNATURE-----

--a45Pbem7kd8lnW3E8N6M95AWsqPpOCToG--


--===============2186762172637622271==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============2186762172637622271==--

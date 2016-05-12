Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-in-17.arcor-online.net ([151.189.21.57])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b0wNo-0001nF-CL
 for barebox@lists.infradead.org; Thu, 12 May 2016 19:34:53 +0000
Received: from mail-in-17-z2.arcor-online.net (mail-in-17-z2.arcor-online.net
 [151.189.8.34]) by mx.arcor.de (Postfix) with ESMTP id 3r5NTv65MczXww
 for <barebox@lists.infradead.org>; Thu, 12 May 2016 21:34:27 +0200 (CEST)
Received: from mail-in-05.arcor-online.net (mail-in-05.arcor-online.net
 [151.189.21.45])
 by mail-in-17-z2.arcor-online.net (Postfix) with ESMTP id CC1C910C410
 for <barebox@lists.infradead.org>; Thu, 12 May 2016 21:34:27 +0200 (CEST)
Received: from [192.168.178.23] (p549AD728.dip0.t-ipconnect.de [84.154.215.40])
 (Authenticated sender: giorgio.nicole@arcor.de)
 by mail-in-05.arcor-online.net (Postfix) with ESMTPA id 3r5NTv2c2nznSx
 for <barebox@lists.infradead.org>; Thu, 12 May 2016 21:34:27 +0200 (CEST)
From: Giorgio <giorgio.nicole@arcor.de>
Message-ID: <5c4dfe40-5338-cdbe-f96d-a5275f75872b@arcor.de>
Date: Thu, 12 May 2016 21:34:21 +0200
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============2490378713026673949=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: variables with random values
To: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============2490378713026673949==
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="Bvj9sJrRTDTQuwsLL41qJW2c2dDOJmoGF"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--Bvj9sJrRTDTQuwsLL41qJW2c2dDOJmoGF
Content-Type: multipart/mixed; boundary="LijeWDw57buFG275OXA4fEB4JMoQqmBnh"
From: Giorgio <giorgio.nicole@arcor.de>
To: barebox@lists.infradead.org
Message-ID: <5c4dfe40-5338-cdbe-f96d-a5275f75872b@arcor.de>
Subject: variables with random values

--LijeWDw57buFG275OXA4fEB4JMoQqmBnh
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi,

I'm writing a shell script within barebox to assist an embedded board
initialization process. Some commands in the script do firmware
download with tftp; to allow initializing more than one board at
a time I need to assign every board a random ip address; I would
like to have a shell variable that every time it is dereferenced
it results in a new random (8 bits) value so I could write:

eth0.ipaddr=3D10.$RND.$RND.$RND

Is there a way to do something similar in barebox ?

giorgio



--LijeWDw57buFG275OXA4fEB4JMoQqmBnh--

--Bvj9sJrRTDTQuwsLL41qJW2c2dDOJmoGF
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2
Comment: Using GnuPG with Thunderbird - http://www.enigmail.net/

iEYEARECAAYFAlc02sIACgkQYqbc2h3T5VBc4ACfVHA4IVqskzNQoI/dySpJHwna
hnEAmwbewDlO75agQnSSugeFZUQy4KjX
=WaJr
-----END PGP SIGNATURE-----

--Bvj9sJrRTDTQuwsLL41qJW2c2dDOJmoGF--


--===============2490378713026673949==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============2490378713026673949==--

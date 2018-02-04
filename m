Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx009.vodafonemail.xion.oxcs.net ([153.92.174.39])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eiJDm-0001se-47
 for barebox@lists.infradead.org; Sun, 04 Feb 2018 12:16:36 +0000
Received: from vsmx002.vodafonemail.xion.oxcs.net (unknown [192.168.75.192])
 by mta-6-out.mta.xion.oxcs.net (Postfix) with ESMTP id 698DED9BF04
 for <barebox@lists.infradead.org>; Sun,  4 Feb 2018 12:16:14 +0000 (UTC)
Received: from [192.168.178.23] (unknown [84.154.197.86])
 by mta-6-out.mta.xion.oxcs.net (Postfix) with ESMTPA id 125E2199C80
 for <barebox@lists.infradead.org>; Sun,  4 Feb 2018 12:16:09 +0000 (UTC)
From: Giorgio Dal Molin <giorgio.nicole@arcor.de>
Message-ID: <7694566d-60bb-27be-7026-4aa2b7670db7@arcor.de>
Date: Sun, 4 Feb 2018 13:16:02 +0100
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============3222952162288828086=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: barebox support for the TI IDK board
To: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============3222952162288828086==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="NeKbJ05vJfMhsg2uOjFhtsrAtvbFAFP3w"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--NeKbJ05vJfMhsg2uOjFhtsrAtvbFAFP3w
Content-Type: multipart/mixed; boundary="jaktNwkRFRASiRiVhvl973isOF3Wm6hnG";
 protected-headers="v1"
From: Giorgio Dal Molin <giorgio.nicole@arcor.de>
To: barebox@lists.infradead.org
Message-ID: <7694566d-60bb-27be-7026-4aa2b7670db7@arcor.de>
Subject: barebox support for the TI IDK board

--jaktNwkRFRASiRiVhvl973isOF3Wm6hnG
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi,

I've recently received the Industrial Development Kit TMDXIDK5728
from Texas Instruments, with the AM5728 soc on it, and would like to
boot a linux kernel with barebox.
I had a look through the barebox git repo and found the dts and dtsi
files for the IDK board, ported from the linux kernel repo.

My question is: is this board/soc really supported by barebox ?

giorgio


--jaktNwkRFRASiRiVhvl973isOF3Wm6hnG--

--NeKbJ05vJfMhsg2uOjFhtsrAtvbFAFP3w
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Comment: Using GnuPG with Thunderbird - http://www.enigmail.net/

iQIzBAEBCAAdFiEE9QinPTH0TNNuN3rvP2UgThicmOcFAlp2+YgACgkQP2UgThic
mOe0HRAAoJW4i92GJmd0fElu+ZdGbrCq+Rz8J7NTGrqFbrMuI3Ozl33wqlpSeKbU
JdPp9Kw3CdrAyB1lxZ2XQy+SMQs4k1ukVYMZdm46lJt2S+LHd4T/sa+CEcoGm7u2
URx2IxtAkbSReKmnYPZDBGjzq+SwiP3UzS/dGgOvlJ6a2/ma5Nx7K7OVqunJaxbn
eBpQlhwonFTDUxAMpUfuRVFO7NPBXGsbHsZkbamrcNsZ4hhOhA8aaCpqvKZoMh/e
+2Zug1rQj45cZ9vZ6PZof2nZMacyvFvQ7fhHg5GveEF4NJ0CdY/bdriQzN0mxPHh
Rroof6Zdnl0dEYjlxqt3vbDoeUVv7h+KApEPCYA9tUPsdWXu8RoZuI74TOzcmp7s
O9TCovcdse2rJYITkriHWnuUxU9+8IX5fxC1sMbf6uttXrPMl4GdS2T66VIQ5d0g
Ju86vgFWB3HduQL+dCJnDpm/BnicpAvWbBP3T/+1Jb9RELe2QDdo53FvNqOILJ/y
gPDaECwLQwNt8DESUH7rwSrJD2lLWi5pQleJfPXraNIwQLexY6+IUe9RElo/BTy9
3G8wab7nEfbDk8mKkZdcpV7YxfDCBXaECpIgQOXRbLJpZ0TFj+b5Bzou2JnvjjCG
JWE+PlwHKJBLTWlwnjV8Lb9gXatZfi3jcmlC/POHAlFnjFwzmUk=
=M2a2
-----END PGP SIGNATURE-----

--NeKbJ05vJfMhsg2uOjFhtsrAtvbFAFP3w--


--===============3222952162288828086==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============3222952162288828086==--

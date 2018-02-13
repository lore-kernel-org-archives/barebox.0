Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vsmx012.vodafonemail.xion.oxcs.net ([153.92.174.90])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1elipO-0004KA-G4
 for barebox@lists.infradead.org; Tue, 13 Feb 2018 22:13:32 +0000
Received: from vsmx004.vodafonemail.xion.oxcs.net (unknown [192.168.75.198])
 by mta-8-out.mta.xion.oxcs.net (Postfix) with ESMTP id E2B138CDB08
 for <barebox@lists.infradead.org>; Tue, 13 Feb 2018 22:13:06 +0000 (UTC)
Received: from [192.168.178.23] (unknown [84.154.203.160])
 by mta-8-out.mta.xion.oxcs.net (Postfix) with ESMTPA id 6EE56CDF93
 for <barebox@lists.infradead.org>; Tue, 13 Feb 2018 22:13:04 +0000 (UTC)
From: Giorgio Dal Molin <giorgio.nicole@arcor.de>
Message-ID: <ba32e817-48b6-9266-ffd7-d2397d103f7a@arcor.de>
Date: Tue, 13 Feb 2018 23:12:54 +0100
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============7973844648992484026=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: barebox for a ti am335x based board
To: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============7973844648992484026==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="OIJQWq2E85NM1dS5QPLRt4kGPEjB7B1eo"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--OIJQWq2E85NM1dS5QPLRt4kGPEjB7B1eo
Content-Type: multipart/mixed; boundary="KDngIqF9vnNmUd1fIKw1hxamUfILiHahB";
 protected-headers="v1"
From: Giorgio Dal Molin <giorgio.nicole@arcor.de>
To: barebox@lists.infradead.org
Message-ID: <ba32e817-48b6-9266-ffd7-d2397d103f7a@arcor.de>
Subject: barebox for a ti am335x based board

--KDngIqF9vnNmUd1fIKw1hxamUfILiHahB
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi all,

I'm trying to add board code for an am335x based HW project.
I had a look at similar boards like 'boards/phytec-som-am335x'
or 'boards/beaglebone'.
I understand that I need two images: the (little) MLO and the
(bigger) barebox.

What it's not really clear is how the MLO loads and starts the
barebox.

Moreover I saw there's always a call to:

 am33xx_save_bootinfo((void *)bootinfo);

in the MLO lowlevel entry function; I suspect the argument
'bootinfo' is the register r0 left by the function __barebox_arm_head()
but I cannot really understand the logic behind it.

giorgio


--KDngIqF9vnNmUd1fIKw1hxamUfILiHahB--

--OIJQWq2E85NM1dS5QPLRt4kGPEjB7B1eo
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Comment: Using GnuPG with Thunderbird - http://www.enigmail.net/

iQIzBAEBCAAdFiEE9QinPTH0TNNuN3rvP2UgThicmOcFAlqDYu4ACgkQP2UgThic
mOcc7xAAsJTVYIdZEUt4NwTLauj3RxcNfuOQ8ktvhNnWT+h0I8+g6WHo66Czp+iq
lCmv10rGtQxxWBdzclS/ODkYtxO98CM+4nBrBNCm3XnuhhIyHm5C0Rapc38yi4GA
AXT1Y+T4FHbIKOBExPqZpDSGz1xA2IkVzVBASmVy9SwBaW2lTUE2bL4ohEALzjfe
kOiZzZYZwkl56ejcsl3tiesgquvnvy0rrH/Y2nZZenPl0SlvYKPPFMt2n4RxXT6o
c8Zq1Uv1HVgXKFC7JpuT7u7PZvUC3UJCnbUtSB822J34pZIJF5kCGA/Vi9bCLCvl
CC7+o7nB2unne34Q4NpacbSBnwJndX7dmPorYvH5IMsHVxEBnnVbhv6TOLk0flSl
Rjbsgjh0L5aXNe4HeMh/RLALc02NAwcuNgHGCtlQj7bJ99dU2ddHFd1+74amD1oH
CGlC1nUlJEVslJZFio0Ls49wgtQurODiDxmQL4PXN9tF/hLAgnp0WI4jlnsHumR1
Se7aA7POaX3Zt/JFRGdTsGlg5BYEEGYFTfnKB7o7uHfMkykbgm0EcoYE2R2lzWxV
YWNdx8XcJYJle0rewM59KmMKjWLUQRzo1XVsv82zdXaebnh/vdrEjgzW5v6Ir01s
eoqj+rjvAduKGaCmiFZ8ZR2Fde/tPMO+s4eSOHdTXmOmnVqbfpo=
=nK+U
-----END PGP SIGNATURE-----

--OIJQWq2E85NM1dS5QPLRt4kGPEjB7B1eo--


--===============7973844648992484026==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============7973844648992484026==--

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vsmx011.vodafonemail.xion.oxcs.net ([153.92.174.89])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fzpMc-0003wJ-HK
 for barebox@lists.infradead.org; Tue, 11 Sep 2018 20:34:24 +0000
Received: from vsmx003.vodafonemail.xion.oxcs.net (unknown [192.168.75.197])
 by mta-5-out.mta.xion.oxcs.net (Postfix) with ESMTP id DEC913E07CA
 for <barebox@lists.infradead.org>; Tue, 11 Sep 2018 20:34:01 +0000 (UTC)
Received: from [192.168.178.23] (unknown [37.9.189.115])
 by mta-7-out.mta.xion.oxcs.net (Postfix) with ESMTPA id 9E3633009E2
 for <barebox@lists.infradead.org>; Tue, 11 Sep 2018 20:33:59 +0000 (UTC)
From: Giorgio Dal Molin <giorgio.nicole@arcor.de>
Message-ID: <25ad4979-9e11-45a4-7e17-efa903435574@arcor.de>
Date: Tue, 11 Sep 2018 22:33:52 +0200
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1387142639929400769=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: problems writing an fs image to a disk partition
To: Barebox List <barebox@lists.infradead.org>

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============1387142639929400769==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="IfBOingLdjJ6ZHW5VW4FDnqQRKJdBq0gk"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--IfBOingLdjJ6ZHW5VW4FDnqQRKJdBq0gk
Content-Type: multipart/mixed; boundary="afLYrB5VphzR7wxgQzt4zKcODWyM4V4A0";
 protected-headers="v1"
From: Giorgio Dal Molin <giorgio.nicole@arcor.de>
To: Barebox List <barebox@lists.infradead.org>
Message-ID: <25ad4979-9e11-45a4-7e17-efa903435574@arcor.de>
Subject: problems writing an fs image to a disk partition

--afLYrB5VphzR7wxgQzt4zKcODWyM4V4A0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi,

today I've tried barebox v2018.09.0 on an EFI system.
It basically runs but I have problems when writing an fs image file
to a disk partition:

 > cp rootfs.img /dev/disk1.userland

barebox v2018.09.0 returns a 'no space left on device' error.

First of all I must ask if this is still the proper way to
write a content to a disk partition.

In case this should still work as expected here is a pseudo
backtrace of how the error happens on my system:

commands/cp.c:do_cp() ret =3D copy_file(argv[i], argv[argc - 1], verbose)=
;
lib/libfile.c:copy_file() dstfd =3D open(dst, mode);
fs/fs.c:open() error =3D fsdrv->truncate(&fsdev->dev, f, 0);
fs/devfs.c: devfs_truncate()

in the call to devfs_truncate() I see cdev->ops->truncate =3D=3D NULL
and f->fsdev->dev.num_resources =3D=3D 0 and this makes the function
return -ENOSPC.

Hope the report helps identify a problem.

giorgio


--afLYrB5VphzR7wxgQzt4zKcODWyM4V4A0--

--IfBOingLdjJ6ZHW5VW4FDnqQRKJdBq0gk
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Comment: Using GnuPG with Thunderbird - https://www.enigmail.net/

iQIzBAEBCAAdFiEE9QinPTH0TNNuN3rvP2UgThicmOcFAluYJrYACgkQP2UgThic
mOcelA//WDaCqZLUjGyeCr0fJauOzVau+g2lFEw/gy91JoVoRRUOBQvnQJeIIE+R
MUV3IsAbW21YMoZA7YfGAHfLK/3cbQBQFTXdTccZVdCDkxq02UcAIdlHavc6tzMs
FUCuXn4UDNmzy69a1QofcgqOyFXtDeB3pfyFeSPUwvt5tjDCI/9uDYeRiEp3eb9/
5aRfIT1HZPjb8jOPNGcHOv5ZMpweF/sjXlezOYg2d5PJEqWJnLBwNIv2hIXgmUbj
eVLZ4KpERlyGNPC3oN/IsUTzH6ao4CvpOT4zsKuC3GMtrCyHIr4Izsze0WH8/hhE
0g/5Krl8sJF0tG5cU3m9fKZGRvlQ/kveBDSt7FKrtbev+PCg1QigI5XMkBEMrHdx
9eM8+xqZScmGdzNL05Iz3byBVF++8xoRR5XCE9+d7kpICbZmCozMK2Ox06U54q+A
l7/R7xmYqZuDLdb2bRsG+zyfpdsJxKTDi3eIyrZ39HSRYPpyt4zeQ/g0HHfIzgL2
2SWTw3xDECLwwWVmtfAfS93f2uybCHRGtvr4mzTxn/9uLH2AkEpPfzt7JQRk1UIM
vpYC+Sw6x5InP3Ter4uXeR57ZMgu2fE7aO+Ei7X4fQ5ve+Jlc93snSskYxJiwNSN
Ax/DDYAyHLj4NeLRZxSsFMpEcpf3p+cdO1Pu9Wz6B+g/iXJlb6A=
=vj9q
-----END PGP SIGNATURE-----

--IfBOingLdjJ6ZHW5VW4FDnqQRKJdBq0gk--


--===============1387142639929400769==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1387142639929400769==--

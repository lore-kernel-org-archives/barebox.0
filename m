Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout02.posteo.de ([185.67.36.66])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g19mO-0000Pc-HK
 for barebox@lists.infradead.org; Sat, 15 Sep 2018 12:34:30 +0000
Received: from submission (posteo.de [89.146.220.130]) 
 by mout02.posteo.de (Postfix) with ESMTPS id 6509320FF7
 for <barebox@lists.infradead.org>; Sat, 15 Sep 2018 14:34:03 +0200 (CEST)
Received: from customer (localhost [127.0.0.1])
 by submission (posteo.de) with ESMTPSA id 42CBdk1rKsz9rxQ
 for <barebox@lists.infradead.org>; Sat, 15 Sep 2018 14:34:02 +0200 (CEST)
From: Dennis Menschel <menschel-d@posteo.de>
Message-ID: <df6edf8c-d15a-5e7b-58ad-6fc32ad56590@posteo.de>
Date: Sat, 15 Sep 2018 14:33:51 +0200
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============5855830665618479668=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Booting AM335x MLO from network no longer works
To: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============5855830665618479668==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="VzjYWCqOXzA1pa9KhcchdTXobBhVmmJxS"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--VzjYWCqOXzA1pa9KhcchdTXobBhVmmJxS
Content-Type: multipart/mixed; boundary="DgRqkkxjzDgmBrSj2nfTHhytKzHSJ9Vw5";
 protected-headers="v1"
From: Dennis Menschel <menschel-d@posteo.de>
To: barebox@lists.infradead.org
Message-ID: <df6edf8c-d15a-5e7b-58ad-6fc32ad56590@posteo.de>
Subject: Booting AM335x MLO from network no longer works

--DgRqkkxjzDgmBrSj2nfTHhytKzHSJ9Vw5
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi,

while upgrading to a recent version of barebox, I've encountered the
problem that booting an AM335x board via network does no longer work.
The MLO fails to chain-load barebox.bin, it doesn't even send a request
to the TFTP-Server to retrieve the main bootloader file.

Working through the Git history, I've been able to pinpoint the problem
as follows (using output from "git describe"):

- On the topic branch which introduced the bug, v2017.11.0-11-g946bc95a4
was the last working version.

- From v2017.11.0-12-gab84733e5 up to v2017.11.0-14-g6b4a38d00, the MLO
neither produces any outputs on the UART0 nor chain-loads barebox.bin.

- Since version v2017.11.0-15-g528298b70, the MLO produces the following
output:

> barebox 2017.11.0 #1 Wed Sep 12 07:23:48 UTC 2018
>
>
> Board: Phytec phyCORE AM335x
> cpsw 4a100000.ethernet: detected phy mask 0x1
> mdio_bus: miibus0: probed
> eth0: got preset MAC address: c4:f3:12:e7:cb:9c
> booting from NET
> eth0: got preset MAC address: c4:f3:12:e7:cb:9c
> eth0: 100Mbps full duplex link detected
> eth0: DHCP client bound to address 192.168.4.52
> bootfile not found.
> booting failed

The master branch includes the problem as of v2017.12.0-90-g3dbe78ab5,
so that the first official release with this behavior has been v2018.01.0=
=2E

The bug still persists in v2018.09.0.

The board-specific MLO I've been using is this:
barebox-am33xx-phytec-phycore-r2-mlo-512mb.img

Let me know if you need further information in order to reproduce and/or
fix the problem.

Thanks in advance, and best regards,
Dennis Menschel


--DgRqkkxjzDgmBrSj2nfTHhytKzHSJ9Vw5--

--VzjYWCqOXzA1pa9KhcchdTXobBhVmmJxS
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEKwQPicxrN8xaviY2uiJe+Ii1ddAFAluc/DQACgkQuiJe+Ii1
ddBe+A/9ECnadqtuk1R041dttopP+akCK09J80kthzYHeZxF/80zql1GPCWg007w
pPxvN1r+XytxxobE9hiOR0XjMVFQqW2i3VLBIFWQ0y/qlDC11Im4Tn9MzSHdZrKR
rzS5AD490ilN0yHXA1Mz2gd3EhZqLOW+jG0/QssmVUynEe+f/yfpTSmDjsZSKhix
GHdOtURRw+feB3vpTEgGtcU6Zd3leCsFSDQ+KlNj3vpvOqDLr+Z61zAD/GrT/45+
hXcZNlgLpbTAAMCpjSuWf/CznNMORl3CLwNm84v7ZoG7Tb929qhXMfGCBRMoy6fh
LOD+OltxrBYLF1hixQdl0vss9rwDrLu12na55Mtq/6uKPdtzbOvlBzhwWhs/mQZy
QJsmk34uDN6ubNduAoYC2Mf6KAhRYNjlD4dqWR6l4Jjdu908ziKU1o3uqG+0RWvH
Z+9NdxDNikjQgiKVHV0ZwqTzVSH52zx+nBF9CqJ9dw2oG0Ub3+YWzi8T+ReRl2Vp
UlijluNH8Sn1zrKOfzleB9ZA0n9SL2gvvUvskCLNMbsT9kO5D6JKidGHgu5rcg43
dShwXCs0NhBzb+PFDR22yDWbEmA+xIDDYP+5qq1+JNNeq3VG0dPFJhk4ypgkre1r
1BKBhMdnZEuLq88LxQ+n/oKfPAVvWqZ3CfHDDODGJ4B19+Wmxws=
=jMKF
-----END PGP SIGNATURE-----

--VzjYWCqOXzA1pa9KhcchdTXobBhVmmJxS--


--===============5855830665618479668==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============5855830665618479668==--

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from col0-omc2-s2.col0.hotmail.com ([65.55.34.76])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UAXRB-0007RE-RK
 for barebox@lists.infradead.org; Wed, 27 Feb 2013 03:12:10 +0000
Message-ID: <COL123-DS8D9B04B0AA3EF6F54B64BA2FD0@phx.gbl>
From: "Nathan" <naroyce@hotmail.com>
Date: Tue, 26 Feb 2013 21:11:53 -0600
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1974475172405276807=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: UBOOT2 JMP
To: barebox@lists.infradead.org

This is a multi-part message in MIME format.

--===============1974475172405276807==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0010_01CE1465.E6E14B20"

This is a multi-part message in MIME format.

------=_NextPart_000_0010_01CE1465.E6E14B20
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

=E2=80=9CUBOOT2 JMP =E2=80=9D is what displays during bootup using =
VirtualBox.
This is after compiling with:
export ARCH=3Dx86
make generic_defconfig
make
fdisk /dev/sdb...partition...mkfs.ext2 /dev/sdb1
./scripts/setupmbr/setupmbr =E2=80=93s 32 =E2=80=93m ./barebox.bin =
=E2=80=93d /dev/sdb

I think there may be something I=E2=80=99m missing after =
=E2=80=9Csetupmbr=E2=80=9D or I need to change a config value after =
setting =E2=80=9Cgeneric_defconfig=E2=80=9D.
My end goal is to use barebox on my ODroid. I was =
=E2=80=9Csomewhat=E2=80=9D familiar with syslinux but learned it =
doesn=E2=80=99t support ARM. I learned that Samsung Exynos in the ODroid =
uses UBoot and that barebox is the next evolution of uboot. I=E2=80=99m =
hoping it will be forward compatible (uboot in SoC calls barebox in MBR =
of SD which calls my linux kernel in SD partition).
------=_NextPart_000_0010_01CE1465.E6E14B20
Content-Type: text/html;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<HTML><HEAD></HEAD>
<BODY dir=3Dltr>
<DIV dir=3Dltr>
<DIV style=3D"FONT-FAMILY: 'Arial'; COLOR: #000000; FONT-SIZE: 10pt">
<DIV>=E2=80=9CUBOOT2 JMP =E2=80=9D is what displays during bootup using =
VirtualBox.</DIV>
<DIV>This is after compiling with:</DIV>
<DIV>export ARCH=3Dx86</DIV>
<DIV>make generic_defconfig</DIV>
<DIV>make</DIV>
<DIV>fdisk /dev/sdb...partition...mkfs.ext2 /dev/sdb1</DIV>
<DIV>./scripts/setupmbr/setupmbr =E2=80=93s 32 =E2=80=93m ./barebox.bin =
=E2=80=93d /dev/sdb</DIV>
<DIV>&nbsp;</DIV>
<DIV>I think there may be something I=E2=80=99m missing after =
=E2=80=9Csetupmbr=E2=80=9D or I need to=20
change a config value after setting =
=E2=80=9Cgeneric_defconfig=E2=80=9D.</DIV>
<DIV>My end goal is to use barebox on my ODroid. I was =
=E2=80=9Csomewhat=E2=80=9D familiar with=20
syslinux but learned it doesn=E2=80=99t support ARM. I learned that =
Samsung Exynos in=20
the ODroid uses UBoot and that barebox is the next evolution of uboot. =
I=E2=80=99m=20
hoping it will be forward compatible (uboot in SoC calls barebox in MBR =
of SD=20
which calls my linux kernel in SD =
partition).</DIV></DIV></DIV></BODY></HTML>

------=_NextPart_000_0010_01CE1465.E6E14B20--



--===============1974475172405276807==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1974475172405276807==--

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h156m-0005Uq-0Z
 for barebox@lists.infradead.org; Tue, 05 Mar 2019 08:07:29 +0000
References: <20190218075202.10091-1-o.rempel@pengutronix.de>
 <20190218075202.10091-2-o.rempel@pengutronix.de>
 <20190304190504.kmazotkohbssz2vn@chr>
From: Oleksij Rempel <linux@rempel-privat.de>
Message-ID: <5cf53330-bfa9-5004-1c13-d60363047312@rempel-privat.de>
Date: Tue, 5 Mar 2019 09:07:19 +0100
MIME-Version: 1.0
In-Reply-To: <20190304190504.kmazotkohbssz2vn@chr>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============6553241373811981864=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v1 2/4] MIPS: relocation: add relocation support
To: Peter Mamonov <pmamonov@gmail.com>, Oleksij Rempel <o.rempel@pengutronix.de>
Cc: antonypavlov@gmail.com, barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============6553241373811981864==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="9Lrn7IiwCpqemXVBZco6QeYUjjLLT0D5V"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--9Lrn7IiwCpqemXVBZco6QeYUjjLLT0D5V
Content-Type: multipart/mixed; boundary="KK0yelKMQacUyKmKhk2m2AFb93TRGkhIb";
 protected-headers="v1"
From: Oleksij Rempel <linux@rempel-privat.de>
To: Peter Mamonov <pmamonov@gmail.com>,
 Oleksij Rempel <o.rempel@pengutronix.de>
Cc: antonypavlov@gmail.com, barebox@lists.infradead.org
Message-ID: <5cf53330-bfa9-5004-1c13-d60363047312@rempel-privat.de>
Subject: Re: [PATCH v1 2/4] MIPS: relocation: add relocation support
References: <20190218075202.10091-1-o.rempel@pengutronix.de>
 <20190218075202.10091-2-o.rempel@pengutronix.de>
 <20190304190504.kmazotkohbssz2vn@chr>
In-Reply-To: <20190304190504.kmazotkohbssz2vn@chr>

--KK0yelKMQacUyKmKhk2m2AFb93TRGkhIb
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Am 04.03.19 um 20:05 schrieb Peter Mamonov:
> Hi, Oleksij,
>=20
> On Mon, Feb 18, 2019 at 08:52:00AM +0100, Oleksij Rempel wrote:
>> From: Oleksij Rempel <linux@rempel-privat.de>
>>
>> this patch i a port of following patch from u-boot with some additiona=
l
>> integration changes and fixes of original code:
>> | Subject: [PATCH] MIPS: Stop building position independent code
>> |
>> | U-Boot has up until now built with -fpic for the MIPS architecture,
>> | producing position independent code which uses indirection through a=

>> | global offset table, making relocation fairly straightforward as it
>> | simply involves patching up GOT entries.
>> |
>> | Using -fpic does however have some downsides. The biggest of these i=
s
>> | that generated code is bloated in various ways. For example, functio=
n
>> | calls are indirected through the GOT & the t9 register:
>> |
>> |   8f998064   lw     t9,-32668(gp)
>> |   0320f809   jalr   t9
>> |
>> | Without -fpic the call is simply:
>> |
>> |   0f803f01   jal    be00fc04 <puts>
>> |
>> | This is more compact & faster (due to the lack of the load & the
>> | dependency the jump has on its result). It is also easier to read &
>> | debug because the disassembly shows what function is being called,
>> | rather than just an offset from gp which would then have to be looke=
d up
>> | in the ELF to discover the target function.
>> |
>> | Another disadvantage of -fpic is that each function begins with a
>> | sequence to calculate the value of the gp register, for example:
>> |
>> |   3c1c0004   lui    gp,0x4
>> |   279c3384   addiu  gp,gp,13188
>> |   0399e021   addu   gp,gp,t9
>> |
>> | Without using -fpic this sequence no longer appears at the start of =
each
>> | function, reducing code size considerably.
>> |
>> | This patch switches U-Boot from building with -fpic to building with=

>> | -fno-pic, in order to gain the benefits described above. The cost of=

>> | this is an extra step during the build process to extract relocation=

>> | data from the ELF & write it into a new .rel section in a compact
>> | format, plus the added complexity of dealing with multiple types of
>> | relocation rather than the single type that applied to the GOT. The
>> | benefit is smaller, cleaner, more debuggable code. The relocate_code=
()
>> | function is reimplemented in C to handle the new relocation scheme,
>> | which also makes it easier to read & debug.
>> |
>> | Taking maltael_defconfig as an example the size of u-boot.bin built
>> | using the Codescape MIPS 2016.05-06 toolchain (gcc 4.9.2, binutils
>> | 2.24.90) shrinks from 254KiB to 224KiB.
>> |
>> | Signed-off-by: Paul Burton <paul.burton@imgtec.com>
>>
>> Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
>> ---
>>
>> [...]
>>
>> diff --git a/arch/mips/Makefile b/arch/mips/Makefile
>> index 5fbd51ceee..5eccf18fe4 100644
>> --- a/arch/mips/Makefile
>> +++ b/arch/mips/Makefile
>> @@ -11,7 +11,7 @@ endif
>> =20
>>  CPPFLAGS +=3D -D__MIPS__ -fno-strict-aliasing -fno-merge-constants
>> =20
>> -cflags-y +=3D -G 0 -mno-abicalls -fno-pic -pipe
>> +cflags-y +=3D -G 0 -mno-abicalls -pipe
>=20
> The patch you've ported from das u-boot removes `-fpic` flag, yet your =
patch=20
> removes `-fno-pic`, i.e. it does the opposite thing.

Good point, this part of the change has no influence. With or without thi=
s flag, noPIC code is
build.	I'll put it back to avoid confusion.


--=20
Regards,
Oleksij


--KK0yelKMQacUyKmKhk2m2AFb93TRGkhIb--

--9Lrn7IiwCpqemXVBZco6QeYUjjLLT0D5V
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEpENFL0P3hvQ7p0DDdQOiSHVI77QFAlx+LjcACgkQdQOiSHVI
77SDLAf/XFymrXMGTqkNxT2pF+JxQCjFxHfBnG5hYKOSyuC4M/mVfd0PIR1sCThV
anqTnABEfwcTHLwV6UrXmrFF/rBQYuxriHYnrpQkogLMuBsgEeYwnagerI3iMldX
NpMJRgC07y0klwXl2yXIUyHbV1Cwz7g5NvkFAOLmNDIQ61yIsL5OEWwiPYW/lfSd
VziWGsu48TyUdfMxM+0OGjkT6czx2bZZNezgb3tFFpXHwPi1YWGEu2FKTbcv3kfz
wDNDXTCIGJ54ptYLjWMf9oy8+b9BcLC9OS89kVh+iwxdBg1s36FHLVVCmGTqTTbA
QFFuyWL3GXqtAxE55j7AFaH1o7kgrA==
=Oj4b
-----END PGP SIGNATURE-----

--9Lrn7IiwCpqemXVBZco6QeYUjjLLT0D5V--


--===============6553241373811981864==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============6553241373811981864==--

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eOH2H-0004aN-TM
 for barebox@lists.infradead.org; Mon, 11 Dec 2017 05:53:56 +0000
References: <20171209095938.30160-1-linux@rempel-privat.de>
 <20171209095938.30160-4-linux@rempel-privat.de>
 <20171209195448.aab27cc3fc8eb0cd1de05611@gmail.com>
From: Oleksij Rempel <linux@rempel-privat.de>
Message-ID: <73ee3115-bff4-7a0f-e8b0-cc14db2d1b86@rempel-privat.de>
Date: Mon, 11 Dec 2017 06:53:25 +0100
MIME-Version: 1.0
In-Reply-To: <20171209195448.aab27cc3fc8eb0cd1de05611@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0342253541803542468=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v1 4/4] MIPS: add support for DPTechnics DPT-Module v1
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============0342253541803542468==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="WcDu0v9nlXQbllvm9QXl1ek0DRHC9mPnR"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--WcDu0v9nlXQbllvm9QXl1ek0DRHC9mPnR
Content-Type: multipart/mixed; boundary="sxja9oquDNX6clTCrg6vMJwXiV0SOG7kU";
 protected-headers="v1"
From: Oleksij Rempel <linux@rempel-privat.de>
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <73ee3115-bff4-7a0f-e8b0-cc14db2d1b86@rempel-privat.de>
Subject: Re: [PATCH v1 4/4] MIPS: add support for DPTechnics DPT-Module v1
References: <20171209095938.30160-1-linux@rempel-privat.de>
 <20171209095938.30160-4-linux@rempel-privat.de>
 <20171209195448.aab27cc3fc8eb0cd1de05611@gmail.com>
In-Reply-To: <20171209195448.aab27cc3fc8eb0cd1de05611@gmail.com>

--sxja9oquDNX6clTCrg6vMJwXiV0SOG7kU
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Am 09.12.2017 um 17:54 schrieb Antony Pavlov:
> On Sat,  9 Dec 2017 10:59:38 +0100
> Oleksij Rempel <linux@rempel-privat.de> wrote:
>=20
>> This product can be found here:
>> https://dptechnics.com/en/products/dpt-module-v1.html
>>
>> Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
>> ---
>>  arch/mips/Makefile                                 |  1 +
>>  arch/mips/boards/dptechnics-dpt-module/Makefile    |  1 +
>>  arch/mips/boards/dptechnics-dpt-module/board.c     |  8 ++
>>  .../include/board/board_pbl_start.h                | 20 +++++
>>  arch/mips/configs/dptechnics-dpt-module_defconfig  | 89 +++++++++++++=
+++++++++
>>  arch/mips/dts/ar9331-dptechnics-dpt-module.dts     | 31 ++++++++
>>  arch/mips/mach-ath79/Kconfig                       |  7 ++
>>  7 files changed, 157 insertions(+)
>>  create mode 100644 arch/mips/boards/dptechnics-dpt-module/Makefile
>>  create mode 100644 arch/mips/boards/dptechnics-dpt-module/board.c
>>  create mode 100644 arch/mips/boards/dptechnics-dpt-module/include/boa=
rd/board_pbl_start.h
>>  create mode 100644 arch/mips/configs/dptechnics-dpt-module_defconfig
>>  create mode 100644 arch/mips/dts/ar9331-dptechnics-dpt-module.dts
>>
>> diff --git a/arch/mips/Makefile b/arch/mips/Makefile
>> index dd5ceea20..b965a9c17 100644
>> --- a/arch/mips/Makefile
>> +++ b/arch/mips/Makefile
>> @@ -79,6 +79,7 @@ machine-$(CONFIG_MACH_MIPS_AR231X)	:=3D ar231x
>>  board-$(CONFIG_BOARD_NETGEAR_WG102)	:=3D netgear-wg102
>> =20
>>  machine-$(CONFIG_MACH_MIPS_ATH79)	:=3D ath79
>> +board-$(CONFIG_BOARC_DPTECHNICS_DPT_MODULE)	:=3D dptechnics-dpt-modul=
e
>>  board-$(CONFIG_BOARD_TPLINK_MR3020)	:=3D tplink-mr3020
>>  board-$(CONFIG_BOARD_TPLINK_WDR4300)	:=3D tplink-wdr4300
>>  board-$(CONFIG_BOARD_BLACK_SWIFT)	:=3D black-swift
>> diff --git a/arch/mips/boards/dptechnics-dpt-module/Makefile b/arch/mi=
ps/boards/dptechnics-dpt-module/Makefile
>> new file mode 100644
>> index 000000000..dcfc2937d
>> --- /dev/null
>> +++ b/arch/mips/boards/dptechnics-dpt-module/Makefile
>> @@ -0,0 +1 @@
>> +obj-y +=3D board.o
>> diff --git a/arch/mips/boards/dptechnics-dpt-module/board.c b/arch/mip=
s/boards/dptechnics-dpt-module/board.c
>> new file mode 100644
>> index 000000000..7ec7ef8a5
>> --- /dev/null
>> +++ b/arch/mips/boards/dptechnics-dpt-module/board.c
>> @@ -0,0 +1,8 @@
>> +#include <common.h>
>> +#include <init.h>
>> +
>> +static int dummy_init(void)
>> +{
>> +	return 0;
>> +}
>> +postcore_initcall(dummy_init);
>=20
>=20
> Do we really need this dummy_init()?

No, but other ways we need to fix the build system. And right now i have
no time for that :(

--=20
Regards,
Oleksij


--sxja9oquDNX6clTCrg6vMJwXiV0SOG7kU--

--WcDu0v9nlXQbllvm9QXl1ek0DRHC9mPnR
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJaLh1VAAoJEOKJofQ1GlGz/W8QAI6PfvuG2GObywmoYQv5yRA0
YSiInhkbRf1AmP1M3S8vHf9sc7sToGOzClcBnKKn2s1q4w/i44vukPL5tztNT1r5
C6cg/i9DcPeFAOAFxZgR71dPE9xj9rCe5FiKuP7kz/CV//ju1HUonRMZjpIx8W78
BfRQ0Z/ASjSaHA3oR+H8c+jR8G2E8LV3Joec8zv6OD7DvQF7fBYTUpkijdef3ZF4
8wvVAdwjZdSQchmcK35vqODftigSfjEOFLM0qVka91U2pB0xGTRxzAb6nzAwnbrO
04VY8lfsRGzrZWwZM3YDrGL/A4e9hAnmx1+/fSe/VmJcWPdmFNEbkNpfMzaDyhgi
i7BHT7/TN+fSJoP3DkN/0m+xmfcVQvkO44cO93tZ4CyhBQ8qni2wgkO2E2tzR6q2
t8egZuBnHCw6wFRLXgwIH7GA5J6GP6oE/oDoRFxS8VOPlVxkLSfVeN9dy/y0PK1Z
L2KpXgZBfhkv9U9CQ7/t6xo0sNPXlAYN5ZfoVE0OjepEvZ8NuClFWBNLVDlsZFm8
5wGFiKQg8JWAr23j/2bJtNv/Y4xFiIzBqJx6nXBI+rEb8tREVHDYFpgNAmCcmLYd
kQfu4GQhPccwPn2JDle7D8HL91dghjU5l3DJBwWQtYu6Va2zrCe1wHfevmdrK6vA
eILJikJ/SjT8xVWLzW5G
=UWEh
-----END PGP SIGNATURE-----

--WcDu0v9nlXQbllvm9QXl1ek0DRHC9mPnR--


--===============0342253541803542468==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============0342253541803542468==--

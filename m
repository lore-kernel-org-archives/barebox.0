Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eOeYT-0004jn-R4
 for barebox@lists.infradead.org; Tue, 12 Dec 2017 07:00:45 +0000
References: <20171209095938.30160-1-linux@rempel-privat.de>
 <20171209095938.30160-4-linux@rempel-privat.de>
 <20171209195448.aab27cc3fc8eb0cd1de05611@gmail.com>
 <73ee3115-bff4-7a0f-e8b0-cc14db2d1b86@rempel-privat.de>
 <20171212065023.lm3byrk22lc2lflu@pengutronix.de>
From: Oleksij Rempel <linux@rempel-privat.de>
Message-ID: <3108b20e-2f7c-19a2-3f4e-9c8660ba75dd@rempel-privat.de>
Date: Tue, 12 Dec 2017 08:00:07 +0100
MIME-Version: 1.0
In-Reply-To: <20171212065023.lm3byrk22lc2lflu@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============3297740629864666027=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v1 4/4] MIPS: add support for DPTechnics DPT-Module v1
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============3297740629864666027==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="QJMDPpcHuqhFF0mrs4WxJVMlaGisaPd1u"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--QJMDPpcHuqhFF0mrs4WxJVMlaGisaPd1u
Content-Type: multipart/mixed; boundary="NtBkPGefU2eTbc3EJu5APU0o5gQbWWBRr";
 protected-headers="v1"
From: Oleksij Rempel <linux@rempel-privat.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <3108b20e-2f7c-19a2-3f4e-9c8660ba75dd@rempel-privat.de>
Subject: Re: [PATCH v1 4/4] MIPS: add support for DPTechnics DPT-Module v1
References: <20171209095938.30160-1-linux@rempel-privat.de>
 <20171209095938.30160-4-linux@rempel-privat.de>
 <20171209195448.aab27cc3fc8eb0cd1de05611@gmail.com>
 <73ee3115-bff4-7a0f-e8b0-cc14db2d1b86@rempel-privat.de>
 <20171212065023.lm3byrk22lc2lflu@pengutronix.de>
In-Reply-To: <20171212065023.lm3byrk22lc2lflu@pengutronix.de>

--NtBkPGefU2eTbc3EJu5APU0o5gQbWWBRr
Content-Type: text/plain; charset=utf-8
Content-Language: ru
Content-Transfer-Encoding: quoted-printable

Am 12.12.2017 um 07:50 schrieb Sascha Hauer:
> On Mon, Dec 11, 2017 at 06:53:25AM +0100, Oleksij Rempel wrote:
>> Am 09.12.2017 um 17:54 schrieb Antony Pavlov:
>>> On Sat,  9 Dec 2017 10:59:38 +0100
>>> Oleksij Rempel <linux@rempel-privat.de> wrote:
>>>
>>>> This product can be found here:
>>>> https://dptechnics.com/en/products/dpt-module-v1.html
>>>>
>>>> Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
>>>> ---
>>>>  arch/mips/Makefile                                 |  1 +
>>>>  arch/mips/boards/dptechnics-dpt-module/Makefile    |  1 +
>>>>  arch/mips/boards/dptechnics-dpt-module/board.c     |  8 ++
>>>>  .../include/board/board_pbl_start.h                | 20 +++++
>>>>  arch/mips/configs/dptechnics-dpt-module_defconfig  | 89 +++++++++++=
+++++++++++
>>>>  arch/mips/dts/ar9331-dptechnics-dpt-module.dts     | 31 ++++++++
>>>>  arch/mips/mach-ath79/Kconfig                       |  7 ++
>>>>  7 files changed, 157 insertions(+)
>>>>  create mode 100644 arch/mips/boards/dptechnics-dpt-module/Makefile
>>>>  create mode 100644 arch/mips/boards/dptechnics-dpt-module/board.c
>>>>  create mode 100644 arch/mips/boards/dptechnics-dpt-module/include/b=
oard/board_pbl_start.h
>>>>  create mode 100644 arch/mips/configs/dptechnics-dpt-module_defconfi=
g
>>>>  create mode 100644 arch/mips/dts/ar9331-dptechnics-dpt-module.dts
>>>>
>>>> diff --git a/arch/mips/Makefile b/arch/mips/Makefile
>>>> index dd5ceea20..b965a9c17 100644
>>>> --- a/arch/mips/Makefile
>>>> +++ b/arch/mips/Makefile
>>>> @@ -79,6 +79,7 @@ machine-$(CONFIG_MACH_MIPS_AR231X)	:=3D ar231x
>>>>  board-$(CONFIG_BOARD_NETGEAR_WG102)	:=3D netgear-wg102
>>>> =20
>>>>  machine-$(CONFIG_MACH_MIPS_ATH79)	:=3D ath79
>>>> +board-$(CONFIG_BOARC_DPTECHNICS_DPT_MODULE)	:=3D dptechnics-dpt-mod=
ule
>>>>  board-$(CONFIG_BOARD_TPLINK_MR3020)	:=3D tplink-mr3020
>>>>  board-$(CONFIG_BOARD_TPLINK_WDR4300)	:=3D tplink-wdr4300
>>>>  board-$(CONFIG_BOARD_BLACK_SWIFT)	:=3D black-swift
>>>> diff --git a/arch/mips/boards/dptechnics-dpt-module/Makefile b/arch/=
mips/boards/dptechnics-dpt-module/Makefile
>>>> new file mode 100644
>>>> index 000000000..dcfc2937d
>>>> --- /dev/null
>>>> +++ b/arch/mips/boards/dptechnics-dpt-module/Makefile
>>>> @@ -0,0 +1 @@
>>>> +obj-y +=3D board.o
>>>> diff --git a/arch/mips/boards/dptechnics-dpt-module/board.c b/arch/m=
ips/boards/dptechnics-dpt-module/board.c
>>>> new file mode 100644
>>>> index 000000000..7ec7ef8a5
>>>> --- /dev/null
>>>> +++ b/arch/mips/boards/dptechnics-dpt-module/board.c
>>>> @@ -0,0 +1,8 @@
>>>> +#include <common.h>
>>>> +#include <init.h>
>>>> +
>>>> +static int dummy_init(void)
>>>> +{
>>>> +	return 0;
>>>> +}
>>>> +postcore_initcall(dummy_init);
>>>
>>>
>>> Do we really need this dummy_init()?
>>
>> No, but other ways we need to fix the build system. And right now i ha=
ve
>> no time for that :(
>=20
> Are you sure you need the dummy_init()? I just gave it a test and I
> indeed needed a C file to get it through the linker, but that C file
> can equally well be empty.

Ok, i'll try it.

--=20
Regards,
Oleksij


--NtBkPGefU2eTbc3EJu5APU0o5gQbWWBRr--

--QJMDPpcHuqhFF0mrs4WxJVMlaGisaPd1u
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJaL353AAoJEOKJofQ1GlGzt/oQAJVk0jl/Sq/Hh8bi5CqPKCg1
kuA4Y9zF6dN052M0RIdCG2c/m+VDEbf5bwrB2L0G25GoupNiwrz23tjZK/kvqMRT
5O3Y3Qik+RaefBiOnjB5G38t5DUOzQ3jqZS15TkrHkFfFUXAO30aLl12V/JRvCUq
TF77oZ6pZMHfoOHmMoNrl8u5nwkGN6aw7sjrlqyYg0t8NX3DgKE0DCqhP2hvw1R0
aPwGV78oxA3v0txNw+IqfZPhik9DKlQuax88+Z5S9RpmfrFkEpXjAEGDZ69+w59z
f0QSJuBqfl6NbfjCHydeuZqhEbiwsRJzwDQuq+Owgo5nr9wXPj6XronKd47M5Xrd
rLKoNQqIZSJdeYPBQleLOlKA4Wh+Kc1hCWx8EWYDYeZ7M6S5kV0MYd7j/ncxrhot
yinRVaZzZ/iR1qGoj+2Ndd6+10IQzWJS0ZjOMg3wrr7rIrAqD8CUMBS9MxI4+s/M
gDFGkhcX0DGrPkQYYpis+MsdxVday6DwSE6eY3SXqIG4lZDhkVJWHg1kFDF26A8t
p6IC4+GHj3+m81o/VkIAFu7Tti4nUMrAeekyaiiRwLJYj61nJOh/DCsisVDlcAbw
z5xSjoUedNCAUzbo59x2uHeIp/gNtq5ah7uVXokPPkhvWJyoDrUWwWlNZjxyUxfi
UtEzzqHE7xZNAdE6lHNk
=+uN/
-----END PGP SIGNATURE-----

--QJMDPpcHuqhFF0mrs4WxJVMlaGisaPd1u--


--===============3297740629864666027==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============3297740629864666027==--

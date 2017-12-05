Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eMBdX-0002LB-Qk
 for barebox@lists.infradead.org; Tue, 05 Dec 2017 11:43:45 +0000
References: <20171201125251.23520-1-linux@rempel-privat.de>
 <20171201125251.23520-2-linux@rempel-privat.de>
 <20171205080053.huki75jfaghn2gc3@pengutronix.de>
From: Oleksij Rempel <linux@rempel-privat.de>
Message-ID: <3f88e076-19a0-d806-678e-08671774eb6d@rempel-privat.de>
Date: Tue, 5 Dec 2017 12:43:07 +0100
MIME-Version: 1.0
In-Reply-To: <20171205080053.huki75jfaghn2gc3@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============7478412830557664049=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v1 2/4] MIPS: add generic QCA AR9331 board
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============7478412830557664049==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="A4LhD2EisvxmR2oN0SO3BgcqWc2rCl709"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--A4LhD2EisvxmR2oN0SO3BgcqWc2rCl709
Content-Type: multipart/mixed; boundary="OBNpvSRVWaUncMM9vqLgwOlHmfLRUO7NM";
 protected-headers="v1"
From: Oleksij Rempel <linux@rempel-privat.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <3f88e076-19a0-d806-678e-08671774eb6d@rempel-privat.de>
Subject: Re: [PATCH v1 2/4] MIPS: add generic QCA AR9331 board
References: <20171201125251.23520-1-linux@rempel-privat.de>
 <20171201125251.23520-2-linux@rempel-privat.de>
 <20171205080053.huki75jfaghn2gc3@pengutronix.de>
In-Reply-To: <20171205080053.huki75jfaghn2gc3@pengutronix.de>

--OBNpvSRVWaUncMM9vqLgwOlHmfLRUO7NM
Content-Type: text/plain; charset=utf-8
Content-Language: ru
Content-Transfer-Encoding: quoted-printable

Am 05.12.2017 um 09:00 schrieb Sascha Hauer:
> On Fri, Dec 01, 2017 at 01:52:49PM +0100, Oleksij Rempel wrote:
>> this board may cover most of existing ar9331 boards
>>
>> Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
>> ---
>>  arch/mips/Makefile                                 |  1 +
>>  arch/mips/boards/qca-ar9331-generic/Makefile       |  1 +
>>  arch/mips/boards/qca-ar9331-generic/board.c        |  8 ++++
>>  .../include/board/board_pbl_start.h                | 46 +++++++++++++=
+++++++++
>>  arch/mips/mach-ath79/Kconfig                       |  7 ++++
>>  5 files changed, 63 insertions(+)
>>  create mode 100644 arch/mips/boards/qca-ar9331-generic/Makefile
>>  create mode 100644 arch/mips/boards/qca-ar9331-generic/board.c
>>  create mode 100644 arch/mips/boards/qca-ar9331-generic/include/board/=
board_pbl_start.h
>>
>> diff --git a/arch/mips/Makefile b/arch/mips/Makefile
>> index dd5ceea20..c40ae6604 100644
>> --- a/arch/mips/Makefile
>> +++ b/arch/mips/Makefile
>> @@ -79,6 +79,7 @@ machine-$(CONFIG_MACH_MIPS_AR231X)	:=3D ar231x
>>  board-$(CONFIG_BOARD_NETGEAR_WG102)	:=3D netgear-wg102
>> =20
>>  machine-$(CONFIG_MACH_MIPS_ATH79)	:=3D ath79
>> +board-$(CONFIG_BOARC_QCA_AR9331_GENERIC)	:=3D qca-ar9331-generic
>>  board-$(CONFIG_BOARD_TPLINK_MR3020)	:=3D tplink-mr3020
>>  board-$(CONFIG_BOARD_TPLINK_WDR4300)	:=3D tplink-wdr4300
>>  board-$(CONFIG_BOARD_BLACK_SWIFT)	:=3D black-swift
>> diff --git a/arch/mips/boards/qca-ar9331-generic/Makefile b/arch/mips/=
boards/qca-ar9331-generic/Makefile
>> new file mode 100644
>> index 000000000..dcfc2937d
>> --- /dev/null
>> +++ b/arch/mips/boards/qca-ar9331-generic/Makefile
>> @@ -0,0 +1 @@
>> +obj-y +=3D board.o
>> diff --git a/arch/mips/boards/qca-ar9331-generic/board.c b/arch/mips/b=
oards/qca-ar9331-generic/board.c
>> new file mode 100644
>> index 000000000..7ec7ef8a5
>> --- /dev/null
>> +++ b/arch/mips/boards/qca-ar9331-generic/board.c
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
> Why this?

After some discussion we decided to drop this patchset.

--=20
Regards,
Oleksij


--OBNpvSRVWaUncMM9vqLgwOlHmfLRUO7NM--

--A4LhD2EisvxmR2oN0SO3BgcqWc2rCl709
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJaJoZMAAoJEOKJofQ1GlGzX6wP/Ak4EQeRtoJH6enPiExwA2xw
4nYynY/2xjOzKu1EVbl8Nltok2ZCCPeZFm1HCY0eHFYy0Uo8+hXZyZHWHmpwfAPe
rg4/ZhAzBS2gE17qHBA5nP6ghV9oKQOejLvjP6ARyAjq+ClNBP8ksnW9EumzLOYY
blTDyrHN2WRPuCzN2NtjqzhKgt9IC+FI6Tfe4V5JuxCO/UtufYVd2YgZH0hvYVXp
ceyuAPcSBpLyyDzUTN5tho06k/VhnOEb9AlnI4ZNME9A8IJwpW3D4JxxhVPQmJ9z
+0Mz0R31tAglGCcqXuAiApEt+yXDxdytTZ7NqrTAV99fsYt3n0sv8/sZ9hMNSYwk
BdrZCJSw8O0yU4dPPMxnr9IRATRPNPXs/vZYpMh+BHl9iRcHNDgSUhs33EHvvqEU
bh4vb5go+rNKmqhcixH0xJN9ThdDM7eKtLJnSBUYxrnQNhSWYwpAHn20jW2xAjS0
eI2w46pk3eUO5DY2qa0/2M9RTmZjdp0Jb+mkvIyRnQgae1hK4eknRuuhySctbect
BV76+WuCFGbncLnU+RwP9+wQeEOddV5Jcf3a1D5+WniOv6V2+N74zw35y3oyU2/V
0KcZS8MBQjAMwjyFS80uhYWF9A8odWYs1j8yan31M+JWXUi92fZ4VQ1nTlrMBpmF
L2RSDyerDbFuugMr9rbQ
=OU0l
-----END PGP SIGNATURE-----

--A4LhD2EisvxmR2oN0SO3BgcqWc2rCl709--


--===============7478412830557664049==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============7478412830557664049==--

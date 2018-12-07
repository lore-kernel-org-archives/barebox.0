Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.15.19])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gVAH1-00013V-Hk
 for barebox@lists.infradead.org; Fri, 07 Dec 2018 07:10:09 +0000
References: <20181127091935.2992-1-o.rempel@pengutronix.de>
 <20181127091935.2992-9-o.rempel@pengutronix.de>
 <20181205115031.d90c15ad4703eba8f8be818d@gmail.com>
From: Oleksij Rempel <fishor@gmx.net>
Message-ID: <a749dfd0-031f-ba2d-f30a-b94769f04dbe@gmx.net>
Date: Fri, 7 Dec 2018 08:09:50 +0100
MIME-Version: 1.0
In-Reply-To: <20181205115031.d90c15ad4703eba8f8be818d@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0088716412865610352=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v3 08/10] MIPS: port all mach* to multiimage
To: Antony Pavlov <antonynpavlov@gmail.com>, Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============0088716412865610352==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="XkoMqKUECGg3Ci3x79ZrPanauh5LTsF9Z"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--XkoMqKUECGg3Ci3x79ZrPanauh5LTsF9Z
Content-Type: multipart/mixed; boundary="rztWFABjuFZXKlEHO64KRbXSUzWKpCHjH";
 protected-headers="v1"
From: Oleksij Rempel <fishor@gmx.net>
To: Antony Pavlov <antonynpavlov@gmail.com>,
 Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <a749dfd0-031f-ba2d-f30a-b94769f04dbe@gmx.net>
Subject: Re: [PATCH v3 08/10] MIPS: port all mach* to multiimage
References: <20181127091935.2992-1-o.rempel@pengutronix.de>
 <20181127091935.2992-9-o.rempel@pengutronix.de>
 <20181205115031.d90c15ad4703eba8f8be818d@gmail.com>
In-Reply-To: <20181205115031.d90c15ad4703eba8f8be818d@gmail.com>

--rztWFABjuFZXKlEHO64KRbXSUzWKpCHjH
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi Anthony,

i would be happy if you can say:
- this set is no go, because...
or:
- right now, I can't test it and if it caused some regression they will
be fixed in separate patches...

Am 05.12.18 um 09:50 schrieb Antony Pavlov:
> On Tue, 27 Nov 2018 10:19:33 +0100
> Oleksij Rempel <o.rempel@pengutronix.de> wrote:
>=20
>=20
> ...
>=20
>> diff --git a/arch/mips/boards/8devices-lima/include/board/board_pbl_st=
art.h b/arch/mips/boards/8devices-lima/lowlevel.S
>> similarity index 78%
>> rename from arch/mips/boards/8devices-lima/include/board/board_pbl_sta=
rt.h
>> rename to arch/mips/boards/8devices-lima/lowlevel.S
>> index e95aa49256..a619747f39 100644
>> --- a/arch/mips/boards/8devices-lima/include/board/board_pbl_start.h
>> +++ b/arch/mips/boards/8devices-lima/lowlevel.S
>> @@ -15,51 +15,39 @@
>>   *
>>   */
>> =20
>> -#include <mach/debug_ll_ar9344.h>
>> +#define BOARD_PBL_START start_8devices_lima
>> +
>> +#include <mach/debug_ll.h>
>> +#include <asm/asm.h>
>>  #include <asm/pbl_macros.h>
>>  #include <mach/pbl_macros.h>
>>  #include <mach/pbl_ll_init_qca4531.h>
>>  #include <asm/pbl_nmon.h>
>> =20
>> -	.macro	board_pbl_start
>> -	.set	push
>> -	.set	noreorder
>> +ENTRY_FUNCTION(BOARD_PBL_START)
>> =20
>>  	mips_barebox_10h
>> =20
>> -	debug_ll_ar9344_init
>> -
>> -	debug_ll_outc '1'
>> +	debug_ll_ath79_init
>> =20
>=20
> I suppose there is a problem with simultaneous debug_ll support for AR9=
344 and AR9331 in one binary.
> the Kconfig DEBUG_AR9331_UART and DEBUG_AR9344_UART options are mutuall=
y exclusive.
>=20
> Your approach makes it possible to build barebox binary image for AR933=
1 board with debug_ll code for AR9344
> and vice versa.
>=20
>>  	hornet_mips24k_cp0_setup
>> -	debug_ll_outc '2'
>> =20
>>  	/* test if we are in the SRAM */
>>  	pbl_blt 0xbd000000 1f t8
>=20
> "if $pc < 0xbd000000 then jump to 1f"
>=20
>> -	debug_ll_outc '3'
>>  	b skip_flash_test
>>  	nop
>>  1:
>>  	/* test if we are in the flash */
>>  	pbl_blt 0xbf000000 skip_pll_ram_config t8
>=20
> "if $pc < 0xbf000000 then jump to skip_pll_ram_config"
>=20
>=20
> The code checks that $pc is less than 0xbd000000 if true then the code =
checks
> that $pc is less than 0xbf000000. The second check is redundant!
>=20
>=20
>=20
>> -	debug_ll_outc '4'
>>  skip_flash_test:
>> =20
>>  	pbl_qca4531_ddr2_550_550_init
>> =20
>> -	debug_ll_outc '5'
>>  	/* Initialize caches... */
>>  	mips_cache_reset
>> =20
>>  	/* ... and enable them */
>>  	dcache_enable
>>  skip_pll_ram_config:
>> -	debug_ll_outc '6'
>> -	debug_ll_outnl
>> -
>> -	mips_nmon
>> -
>> -	copy_to_link_location	pbl_start
>> =20
>> -	.set	pop
>> -	.endm
>> +ENTRY_FUNCTION_END(BOARD_PBL_START, qca4531_8devices_lima)
>=20



--rztWFABjuFZXKlEHO64KRbXSUzWKpCHjH--

--XkoMqKUECGg3Ci3x79ZrPanauh5LTsF9Z
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEpENFL0P3hvQ7p0DDdQOiSHVI77QFAlwKHL4ACgkQdQOiSHVI
77RWPwf/Ra7siMbbxNOvEvLWtd5PstYaYm40un7iHe3K9Iwx5fcwMIMRtXpLK/Lj
9MPLJCMAlUZ5F7P19e6YYH5fnmgaSDXlfWAdNmMw9lle+2L6MGMPxXITqfYCZVyo
+C3cpv5WhfD4Jj0bL6TPnHrzIYWJZw6mF5zGA/YzO3WT0gQ/YDF+dUw6epUez1Bf
hPnse9qbrok0De6lberQPuh1dcxgR0dUK0gzO9t4fCPBt4Jvv1uWGUoK6ujdae0N
+f0UPT11i7xKlORAjZLH2nhEdSLwfAiFkNH+odogRwnahzOyHRA/v1UY5Gqryt7b
Oe/8uDQW10GvDSMEwA0jFoZzxqtRZQ==
=hgEJ
-----END PGP SIGNATURE-----

--XkoMqKUECGg3Ci3x79ZrPanauh5LTsF9Z--


--===============0088716412865610352==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============0088716412865610352==--

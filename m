Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q9C7m-0003gl-Uc
	for barebox@lists.infradead.org; Mon, 11 Apr 2011 08:05:32 +0000
Message-ID: <4DA2B645.4000909@pengutronix.de>
Date: Mon, 11 Apr 2011 10:05:25 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
MIME-Version: 1.0
References: <1302258240-18284-1-git-send-email-mkl@pengutronix.de>
	<1302258240-18284-3-git-send-email-mkl@pengutronix.de>
	<20110409132344.GB7285@pengutronix.de>
In-Reply-To: <20110409132344.GB7285@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0240684194=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/2] mxs: add support for mx28-evk
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--===============0240684194==
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="------------enig3B9835E1C131B6F90A8D880A"

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--------------enig3B9835E1C131B6F90A8D880A
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On 04/09/2011 03:23 PM, Sascha Hauer wrote:
> On Fri, Apr 08, 2011 at 12:24:00PM +0200, Marc Kleine-Budde wrote:
>> This patch adds support for tje mx28-evk board. NAND support is still =
lacking,
>> so we use still the bootlets as the first stage boot loader.
>>
>> Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
>> ---
>>  arch/arm/Makefile                              |    1 +
>>  arch/arm/boards/freescale-mx28-evk/Makefile    |    1 +
>>  arch/arm/boards/freescale-mx28-evk/config.h    |   16 +
>>  arch/arm/boards/freescale-mx28-evk/env/config  |   67 ++++
>>  arch/arm/boards/freescale-mx28-evk/mx28-evk.c  |  378 +++++++++++++++=
+++++++
>>  arch/arm/boards/freescale-mx28-evk/tx28-stk5.c |  410 +++++++++++++++=
+++++++++
>=20
> Looks like you copied a bit too much from the karo board.

doh!

>=20
>> +
>> +console_initcall(mx28_evk_console_init);
>> +
>> +/**
>> +@page mx28_evk KARO's MX28_EVK CPU module
>> +
>> +@section mx28_evk_cpu_card The CPU module
>> +
>> +http://www.karo-electronics.de/
>> +
>> +This CPU card is based on a Freescale i.MX28 CPU. The card is shipped=
 with:
>> +
>> +- 128 MiB synchronous dynamic RAM (DDR2 type), 200 MHz support
>> +- 128 MiB NAND K9F1G08U0A (3.3V type)
>> +- PCA9554 GPIO expander
>> +- DS1339 RTC
>> +- LAN8710 Phy
>> +
>> +@section mx28_evk_basboards Supported baseboards
>> +
>> +Supported baseboards are:
>> +- KARO's Starterkit 5
>> +
>> +@section mx28_evk_stk5_howto How to get barebox for 'KARO's Starterki=
t 5'
>> +
>> +Using the default configuration:
>> +
>> +@verbatim
>> +make ARCH=3Darm mx28_evkstk5_defconfig
>> +@endverbatim
>> +
>> +Build the binary image:
>> +
>> +@verbatim
>> +make ARCH=3Darm CROSS_COMPILE=3Darmv5compiler
>> +@endverbatim
>> +
>> +@note replace the armv5compiler with your ARM v5 cross compiler.
>> +
>> +@note To use the result, you also need the following resources from F=
reescale:
>> +- the 'bootlets' archive
>> +- the 'elftosb2' encryption tool
>> +- in the case you want to start @b barebox from an attached SD card t=
he
>> +  'sdimage' tool from Freescale's 'uuc' archive.
>> +
>> +@section mx28_evk_mlayout Memory layout when barebox is running:
>> +
>> +- 0x40000000 start of SDRAM
>> +- 0x40000100 start of kernel's boot parameters
>> +  - below malloc area: stack area
>> +  - below barebox: malloc area
>> +- 0x47000000 start of @b barebox
>=20
> Please either correct this or remove it.

I'll remove it

Marc

--=20
Pengutronix e.K.                  | Marc Kleine-Budde           |
Industrial Linux Solutions        | Phone: +49-231-2826-924     |
Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


--------------enig3B9835E1C131B6F90A8D880A
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.10 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org/

iEYEARECAAYFAk2itkgACgkQjTAFq1RaXHNQmQCcDhXLcB39b5++mbvceNLhEBA8
XIQAnRRaA+0GWX96ls8TAwrfdhH+uozI
=7zaj
-----END PGP SIGNATURE-----

--------------enig3B9835E1C131B6F90A8D880A--


--===============0240684194==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============0240684194==--

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.15.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fU6KG-0005Tk-A4
 for barebox@lists.infradead.org; Sat, 16 Jun 2018 08:12:50 +0000
References: <20180606075912.2470-1-o.rempel@pengutronix.de>
 <20180606075912.2470-3-o.rempel@pengutronix.de>
 <alpine.DEB.2.20.1806151813280.24953@blala.de>
From: Oleksij Rempel <linux@rempel-privat.de>
Message-ID: <2501be2e-229b-73cc-2d72-5a6392000707@rempel-privat.de>
Date: Sat, 16 Jun 2018 10:12:25 +0200
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.20.1806151813280.24953@blala.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============5169744525717218277=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v4 2/3] add basic ELF parser
To: Alexander Kurz <akurz@blala.de>, Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============5169744525717218277==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="rmI9gMzFYfyI1VKcNlWxHa8aKfasye7Zh"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--rmI9gMzFYfyI1VKcNlWxHa8aKfasye7Zh
Content-Type: multipart/mixed; boundary="qfM6qyBZGkvfUVMAh6yLjc5mvnG0HDaEi";
 protected-headers="v1"
From: Oleksij Rempel <linux@rempel-privat.de>
To: Alexander Kurz <akurz@blala.de>, Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <2501be2e-229b-73cc-2d72-5a6392000707@rempel-privat.de>
Subject: Re: [PATCH v4 2/3] add basic ELF parser
References: <20180606075912.2470-1-o.rempel@pengutronix.de>
 <20180606075912.2470-3-o.rempel@pengutronix.de>
 <alpine.DEB.2.20.1806151813280.24953@blala.de>
In-Reply-To: <alpine.DEB.2.20.1806151813280.24953@blala.de>

--qfM6qyBZGkvfUVMAh6yLjc5mvnG0HDaEi
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: quoted-printable

Am 15.06.2018 um 20:20 schrieb Alexander Kurz:
> Hi Oleksij,
> when compiling for some random arm platform, next currently rasises thi=
s
> warning: (BOOTM) selects ELF which has unmet direct dependencies (MIPS)=

>=20
> Neither ELF nor BOOTM are MIPS specific.

OK, thx. I have missed that.

> This issue was resolved with v3, and with v4 it's back?

v3 and v4 are same in this file. Probably I didn't noticed this warning.

> Regards, Alexander
>=20
> On Wed, 6 Jun 2018, Oleksij Rempel wrote:
>=20
>> This parser is needed for kernel boot support on MIPS
>> and can potentially reused on other platforms.
>>
>> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ...
>> diff --git a/common/Kconfig b/common/Kconfig
>> index b7000c4d7..b9adc4c39 100644
>> --- a/common/Kconfig
>> +++ b/common/Kconfig
>> @@ -46,6 +46,10 @@ config BLOCK
>>  config BLOCK_WRITE
>>  	bool
>> =20
>> +config ELF
>> +	bool
>> +	depends on MIPS
>> +
>>  config FILETYPE
>>  	bool
>> =20
>> @@ -548,6 +552,7 @@ config TIMESTAMP
>>  	  automatically enabled when you select CFG_CMD_DATE .
>> =20
>>  menuconfig BOOTM
>> +	select ELF
>>  	select UIMAGE
>>  	default y if COMMAND_SUPPORT
>>  	bool "bootm support"
>=20
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
>=20


--=20
Regards,
Oleksij


--qfM6qyBZGkvfUVMAh6yLjc5mvnG0HDaEi--

--rmI9gMzFYfyI1VKcNlWxHa8aKfasye7Zh
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEAREIAB0WIQRXepfNdOKCSzfa+2sfAia5GSZtaQUCWyTGaQAKCRAfAia5GSZt
aXF6AQCFH6eswrv0QxtmXkpMM4ugKjrLz7rxbKKvLvL7+DZPCgD+LHsqWKxgEFf+
xqFZ/UVQ7/wSOZM/3TL2pGO+slpgVSA=
=D7QW
-----END PGP SIGNATURE-----

--rmI9gMzFYfyI1VKcNlWxHa8aKfasye7Zh--


--===============5169744525717218277==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============5169744525717218277==--

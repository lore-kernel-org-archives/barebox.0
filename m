Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dT9k2-00057D-Tn
 for barebox@lists.infradead.org; Thu, 06 Jul 2017 16:35:01 +0000
Received: from [192.168.1.100] ([31.18.251.132]) by mail.gmx.com (mrgmx102
 [212.227.17.168]) with ESMTPSA (Nemesis) id 0M8pKi-1dYcr610Tk-00C7Qo for
 <barebox@lists.infradead.org>; Thu, 06 Jul 2017 18:34:32 +0200
References: <20170706140042.5029-1-o.rempel@pengutronix.de>
 <20170706140042.5029-3-o.rempel@pengutronix.de>
 <1499350371.23968.4.camel@pengutronix.de>
From: Oleksij Rempel <linux@rempel-privat.de>
Message-ID: <56c7ef37-f608-6a9c-6a0f-4a0b8677f40f@rempel-privat.de>
Date: Thu, 6 Jul 2017 18:34:30 +0200
MIME-Version: 1.0
In-Reply-To: <1499350371.23968.4.camel@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============4728347854818463935=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v1 3/3] regulator: pfuze: provide power over standby
 handler
To: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============4728347854818463935==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="XpPh7UxAXs1MsbjHM5P7vA1ubwhRJaxM0"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--XpPh7UxAXs1MsbjHM5P7vA1ubwhRJaxM0
Content-Type: multipart/mixed; boundary="VqrD256bgGUp4jKKRJWJfFMJJfAjLf71t";
 protected-headers="v1"
From: Oleksij Rempel <linux@rempel-privat.de>
To: barebox@lists.infradead.org
Message-ID: <56c7ef37-f608-6a9c-6a0f-4a0b8677f40f@rempel-privat.de>
Subject: Re: [PATCH v1 3/3] regulator: pfuze: provide power over standby
 handler
References: <20170706140042.5029-1-o.rempel@pengutronix.de>
 <20170706140042.5029-3-o.rempel@pengutronix.de>
 <1499350371.23968.4.camel@pengutronix.de>
In-Reply-To: <1499350371.23968.4.camel@pengutronix.de>

--VqrD256bgGUp4jKKRJWJfFMJJfAjLf71t
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: quoted-printable

Am 06.07.2017 um 16:12 schrieb Lucas Stach:
> Am Donnerstag, den 06.07.2017, 16:00 +0200 schrieb Oleksij Rempel:
>> This patch is providing an optional power off handler
>> which will configure standby state of the PMIC to disable all power li=
nes.
>>
>> In my power consumption test on RIoTBoard, I got the following results=
:
>> power off without this patch:   320 mA
>> power off with this patch:      2   mA
>> suspend to ram:                 40  mA
>=20
> You probably haven't measured suspend to ram with barebox, right? ;)

Oops... yeas :)

>>
>> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
>> ---
>>  drivers/regulator/pfuze.c | 87 ++++++++++++++++++++++++++++++++++++++=
+++++++++
>>  1 file changed, 87 insertions(+)
>>
>> diff --git a/drivers/regulator/pfuze.c b/drivers/regulator/pfuze.c
>> index 2a5fb715ce..94fa03ff15 100644
>> --- a/drivers/regulator/pfuze.c
>> +++ b/drivers/regulator/pfuze.c
>> @@ -26,10 +26,53 @@
>> =20
>>  #include <i2c/i2c.h>
>> =20
>> +#include <poweroff.h>
>> +#include <mach/imx6.h>
>> +
> This introduces a build dependency of the PFUZE driver to the i.MX6
> architecture. While I think this is fine, as it keeps things
> straight-forward and the PFUZE is unlikely to be used on other SoCs,
> this needs at least a "depends on ARCH_IMX6" in the Kconfig entry.

Ok.
--=20
Regards,
Oleksij


--VqrD256bgGUp4jKKRJWJfFMJJfAjLf71t--

--XpPh7UxAXs1MsbjHM5P7vA1ubwhRJaxM0
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iF4EAREIAAYFAlleZpYACgkQHwImuRkmbWnWlQD+OcZumKIgBjMfOw8juXAIAXeb
g4QD2IcSyfWb2sNQArsA/RDT/VVnLMQuzelHRV2EUU2jzpL3XFMp621FpZ4DjZlW
=sUFb
-----END PGP SIGNATURE-----

--XpPh7UxAXs1MsbjHM5P7vA1ubwhRJaxM0--


--===============4728347854818463935==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============4728347854818463935==--

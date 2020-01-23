Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuaVe-0006vC-M9
 for barebox@lists.infradead.org; Thu, 23 Jan 2020 11:18:52 +0000
References: <20200121114421.24401-1-ceggers@arri.de>
 <20200122082115.tgwaf72ootkmkf5s@pengutronix.de>
 <1607136.7P1be9KPAr@n95hx1g2>
 <20200122195416.32acs5tzb5qlyufy@pengutronix.de>
From: Marc Kleine-Budde <mkl@pengutronix.de>
Message-ID: <518be9d3-a348-2126-db0a-3482db2127b0@pengutronix.de>
Date: Thu, 23 Jan 2020 12:18:44 +0100
MIME-Version: 1.0
In-Reply-To: <20200122195416.32acs5tzb5qlyufy@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============7664508493444648837=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/3] watchdog: Select CONFIG_PARAMETER
To: Sascha Hauer <s.hauer@pengutronix.de>, Christian Eggers <ceggers@arri.de>
Cc: barebox@lists.infradead.org, ceggers@gmx.de

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============7664508493444648837==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="0K6oimHCxgUJkc9Iaqk8ovECsFFdMIIxz"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--0K6oimHCxgUJkc9Iaqk8ovECsFFdMIIxz
Content-Type: multipart/mixed; boundary="zIEs1YUHQX6ztgkqyrWrIzbeODaT1UmaH";
 protected-headers="v1"
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, Christian Eggers <ceggers@arri.de>
Cc: barebox@lists.infradead.org, ceggers@gmx.de
Message-ID: <518be9d3-a348-2126-db0a-3482db2127b0@pengutronix.de>
Subject: Re: [PATCH 1/3] watchdog: Select CONFIG_PARAMETER
References: <20200121114421.24401-1-ceggers@arri.de>
 <20200122082115.tgwaf72ootkmkf5s@pengutronix.de>
 <1607136.7P1be9KPAr@n95hx1g2>
 <20200122195416.32acs5tzb5qlyufy@pengutronix.de>
In-Reply-To: <20200122195416.32acs5tzb5qlyufy@pengutronix.de>

--zIEs1YUHQX6ztgkqyrWrIzbeODaT1UmaH
Content-Type: text/plain; charset=utf-8
Content-Language: de-DE
Content-Transfer-Encoding: quoted-printable

On 1/22/20 8:54 PM, Sascha Hauer wrote:
> On Wed, Jan 22, 2020 at 10:39:07AM +0100, Christian Eggers wrote:
>> Hi Sascha,
>>
>> Am Mittwoch, 22. Januar 2020, 09:21:15 CET schrieb Sascha Hauer:
>>> Hi Christian,
>>>
>>>> diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig
>>>> index 45dd41a2a..34b7fea39 100644
>>>> --- a/drivers/watchdog/Kconfig
>>>> +++ b/drivers/watchdog/Kconfig
>>>> @@ -4,6 +4,7 @@ config WATCHDOG_IMX_RESET_SOURCE
>>>>
>>>>  menuconfig WATCHDOG
>>>>
>>>>     bool "Watchdog support"
>>>>
>>>> +   select PARAMETER
>>>
>>> I think this goes into the wrong direction. With CONFIG_PARAMETER
>>> enabled we get support for adjusting device parameters from the shell=
=2E
>>> In environments without shell support parameter support is not needed=
=2E
>>> For example the watchdog C API doesn't need parameter support and is
>>> still usable.
>>>
>>> The static inline wrappers for dev_add_param_* should return NULL
>>> instead of returning ERR_PTR(-ENOSYS).
>>
>> initially I came to the same result. But previous commits to param.h w=
ent in
>> the opposite direction:
>>
>>> 03b59bdb64 ("paramter: The dev_add_param_*() return ERR_PTR(), change=

>>> no-ops") to return ERR_PTR(-ENOSYS) instead of NULL
>=20
> Shouldn't have merged this one as it lacks an explanation why this has
> been done. Marc, do you have an idea what the motivation for this patch=

> was?

Sorry, I don't remember....

Marc

--=20
Pengutronix e.K.                 | Marc Kleine-Budde           |
Embedded Linux                   | https://www.pengutronix.de  |
Vertretung West/Dortmund         | Phone: +49-231-2826-924     |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-5555 |


--zIEs1YUHQX6ztgkqyrWrIzbeODaT1UmaH--

--0K6oimHCxgUJkc9Iaqk8ovECsFFdMIIxz
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEmvEkXzgOfc881GuFWsYho5HknSAFAl4pgRQACgkQWsYho5Hk
nSC7VwgAscsAbKLxIh4zczG+OUpPh+vi7M+RbaB91+CYT/c22fY3ax1FZvxPadJV
VV92X2pAxqqGS5zPojQ0j6ETjH4yrCR5KysIEqTyVqF/iIyuVzp8JdHDXRWGGQv1
G0Ax0GX00Pa/ArDL1h8qf4I+BQs+95LZ1fuAKgRd6yXDk+9dPqufwPlg6qWIEHsa
XrVQgwErgn2YPVuX4xEa6rTmKweo1DlzfOn3o574xO0RdimyK06N+6BZWt3U9jJS
AlC35DX7yrb0CVIcldMIoz4S6Pyt/jxPcCXNu+q/XB+5KiRFuumPbD/LusPGSM9C
aC/XeuJMvahN5nvaUeQnAtR5z/eRKg==
=5J5w
-----END PGP SIGNATURE-----

--0K6oimHCxgUJkc9Iaqk8ovECsFFdMIIxz--


--===============7664508493444648837==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============7664508493444648837==--

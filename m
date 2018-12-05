Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gUcMU-0005MN-6L
 for barebox@lists.infradead.org; Wed, 05 Dec 2018 18:57:36 +0000
References: <20181204215001.7862-1-linux@rempel-privat.de>
 <20181205130915.la5barnff7hfcyej@pengutronix.de>
From: Oleksij Rempel <linux@rempel-privat.de>
Message-ID: <e19089d7-4397-e1aa-a01f-639ab95f6305@rempel-privat.de>
Date: Wed, 5 Dec 2018 19:57:14 +0100
MIME-Version: 1.0
In-Reply-To: <20181205130915.la5barnff7hfcyej@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============4633676530280781712=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v1] drivers: net: phy: convert drivers to spdx
To: Roland Hieber <r.hieber@pengutronix.de>
Cc: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============4633676530280781712==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="7EMLNRVQ9Eh9ZD06yPvbgQMOvG5DlWxgE"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--7EMLNRVQ9Eh9ZD06yPvbgQMOvG5DlWxgE
Content-Type: multipart/mixed; boundary="r3H6XgjRHokLDzomrwpGOI5oqZKI2FlDQ";
 protected-headers="v1"
From: Oleksij Rempel <linux@rempel-privat.de>
To: Roland Hieber <r.hieber@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <e19089d7-4397-e1aa-a01f-639ab95f6305@rempel-privat.de>
Subject: Re: [PATCH v1] drivers: net: phy: convert drivers to spdx
References: <20181204215001.7862-1-linux@rempel-privat.de>
 <20181205130915.la5barnff7hfcyej@pengutronix.de>
In-Reply-To: <20181205130915.la5barnff7hfcyej@pengutronix.de>

--r3H6XgjRHokLDzomrwpGOI5oqZKI2FlDQ
Content-Type: text/plain; charset=utf-8
Content-Language: ru
Content-Transfer-Encoding: quoted-printable

Am 05.12.18 um 14:09 schrieb Roland Hieber:
> On Tue, Dec 04, 2018 at 10:50:01PM +0100, Oleksij Rempel wrote:
>> Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
>> ---
>>  drivers/net/phy/ar8327.c        |  6 +-----
>>  drivers/net/phy/at803x.c        |  6 +-----
>>  drivers/net/phy/davicom.c       |  7 +------
>>  drivers/net/phy/lxt.c           |  6 +-----
>>  drivers/net/phy/mdio-bitbang.c  |  5 +----
>>  drivers/net/phy/mdio-gpio.c     |  5 +----
>>  drivers/net/phy/mdio-mux-gpio.c | 14 +-------------
>>  drivers/net/phy/mdio-mux.c      | 11 +----------
>>  drivers/net/phy/mdio-mvebu.c    | 12 +-----------
>>  drivers/net/phy/mdio_bus.c      |  7 +------
>>  drivers/net/phy/micrel.c        |  6 +-----
>>  drivers/net/phy/national.c      |  6 +-----
>>  drivers/net/phy/phy.c           |  7 +------
>>  drivers/net/phy/smsc.c          |  6 +-----
>>  14 files changed, 14 insertions(+), 90 deletions(-)
>>
>> diff --git a/drivers/net/phy/ar8327.c b/drivers/net/phy/ar8327.c
>> index e9ac3d49e..5f3a2e2cf 100644
>> --- a/drivers/net/phy/ar8327.c
>> +++ b/drivers/net/phy/ar8327.c
>> @@ -1,10 +1,6 @@
>> +// SPDX-License-Identifier: GPL-2.0-or-later
>>  /*
>>   * Copyright (C) 2017 Oleksij Rempel <linux@rempel-privat.de>
>> - *
>> - * This program is free software; you can redistribute  it and/or mod=
ify it
>> - * under  the terms of  the GNU General  Public License as published =
by the
>> - * Free Software Foundation;  either version 2 of the  License, or (a=
t your
>> - * option) any later version.
>>   */
>> =20
>>  #include <common.h>
>> diff --git a/drivers/net/phy/at803x.c b/drivers/net/phy/at803x.c
>> index de5bf200c..b43cb0d23 100644
>> --- a/drivers/net/phy/at803x.c
>> +++ b/drivers/net/phy/at803x.c
>> @@ -1,14 +1,10 @@
>> +// SPDX-License-Identifier: GPL-2.0-or-later
>>  /*
>>   * drivers/net/phy/at803x.c
>>   *
>>   * Driver for Atheros 803x PHY
>>   *
>>   * Author: Matus Ujhelyi <ujhelyi.m@gmail.com>
>> - *
>> - * This program is free software; you can redistribute  it and/or mod=
ify it
>> - * under  the terms of  the GNU General  Public License as published =
by the
>> - * Free Software Foundation;  either version 2 of the  License, or (a=
t your
>> - * option) any later version.
>>   */
>> =20
>>  #include <common.h>
>> diff --git a/drivers/net/phy/davicom.c b/drivers/net/phy/davicom.c
>> index 8a784b1e5..febaffa52 100644
>> --- a/drivers/net/phy/davicom.c
>> +++ b/drivers/net/phy/davicom.c
>> @@ -1,3 +1,4 @@
>> +// SPDX-License-Identifier: GPL-2.0-or-later
>>  /*
>>   * drivers/net/phy/davicom.c
>>   *
>> @@ -6,12 +7,6 @@
>>   * Author: Andy Fleming
>>   *
>>   * Copyright (c) 2004 Freescale Semiconductor, Inc.
>> - *
>> - * This program is free software; you can redistribute  it and/or mod=
ify it
>> - * under  the terms of  the GNU General  Public License as published =
by the
>> - * Free Software Foundation;  either version 2 of the  License, or (a=
t your
>> - * option) any later version.
>> - *
>>   */
>> =20
>>  #include <common.h>
>> diff --git a/drivers/net/phy/lxt.c b/drivers/net/phy/lxt.c
>> index 9e5ddbb42..b661ae731 100644
>> --- a/drivers/net/phy/lxt.c
>> +++ b/drivers/net/phy/lxt.c
>> @@ -1,14 +1,10 @@
>> +// SPDX-License-Identifier: GPL-2.0-or-later
>>  /*
>>   * drivers/net/phy/lxt.c
>>   *
>>   * Driver for Intel LXT PHYs
>>   *
>>   * base on Andy Fleming's linux lxt.c driver
>> - *
>> - * This program is free software; you can redistribute  it and/or mod=
ify it
>> - * under  the terms of  the GNU General  Public License as published =
by the
>> - * Free Software Foundation;  either version 2 of the  License, or (a=
t your
>> - * option) any later version.
>>   */
>> =20
>>  #include <common.h>
>> diff --git a/drivers/net/phy/mdio-bitbang.c b/drivers/net/phy/mdio-bit=
bang.c
>> index 4f610e375..839a7d1eb 100644
>> --- a/drivers/net/phy/mdio-bitbang.c
>> +++ b/drivers/net/phy/mdio-bitbang.c
>> @@ -1,3 +1,4 @@
>> +// SPDX-License-Identifier: GPL-2.0-only
>>  /*
>>   * Bitbanged MDIO support.
>>   *
>> @@ -11,10 +12,6 @@
>>   *
>>   * 2005 (c) MontaVista Software, Inc.
>>   * Vitaly Bordug <vbordug@ru.mvista.com>
>> - *
>> - * This file is licensed under the terms of the GNU General Public Li=
cense
>> - * version 2. This program is licensed "as is" without any warranty o=
f any
>> - * kind, whether express or implied.
>>   */
>> =20
>>  #include <common.h>
>> diff --git a/drivers/net/phy/mdio-gpio.c b/drivers/net/phy/mdio-gpio.c=

>> index a846fb28e..affa31ae2 100644
>> --- a/drivers/net/phy/mdio-gpio.c
>> +++ b/drivers/net/phy/mdio-gpio.c
>> @@ -1,3 +1,4 @@
>> +// SPDX-License-Identifier: GPL-2.0-only
>>  /*
>>   * GPIO based MDIO bitbang driver.
>>   * Supports OpenFirmware.
>> @@ -18,10 +19,6 @@
>>   *
>>   * 2005 (c) MontaVista Software, Inc.
>>   * Vitaly Bordug <vbordug@ru.mvista.com>
>> - *
>> - * This file is licensed under the terms of the GNU General Public Li=
cense
>> - * version 2. This program is licensed "as is" without any warranty o=
f any
>> - * kind, whether express or implied.
>>   */
>> =20
>>  #define DEBUG
>> diff --git a/drivers/net/phy/mdio-mux-gpio.c b/drivers/net/phy/mdio-mu=
x-gpio.c
>> index 221353cbc..a36782c0b 100644
>> --- a/drivers/net/phy/mdio-mux-gpio.c
>> +++ b/drivers/net/phy/mdio-mux-gpio.c
>> @@ -1,3 +1,4 @@
>> +// SPDX-License-Identifier: GPL-2.0-only
>>  /*
>>   * Copyright (c) 2017 Zodiac Inflight Innovation
>>   * Author: Andrey Smirnov <andrew.smirnov@gmail.com>
>> @@ -5,19 +6,6 @@
>>   * Based on analogous code from Linux kernel
>>   *
>>   * Copyright (C) 2011, 2012 Cavium, Inc.
>> - *
>> - * This program is free software; you can redistribute it and/or modi=
fy
>> - * it under the terms of the GNU General Public License version 2
>> - * as published by the Free Software Foundation.
>> - *
>> - * This program is distributed in the hope that it will be useful,
>> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
>> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>> - * GNU General Public License for more details.
>> - * This file is subject to the terms and conditions of the GNU Genera=
l Public
>> - * License.  See the file "COPYING" in the main directory of this arc=
hive
>> - * for more details.
>> - *
>>   */
>>  #include <common.h>
>>  #include <driver.h>
>> diff --git a/drivers/net/phy/mdio-mux.c b/drivers/net/phy/mdio-mux.c
>> index 1f57d86c6..aa63cbde9 100644
>> --- a/drivers/net/phy/mdio-mux.c
>> +++ b/drivers/net/phy/mdio-mux.c
>> @@ -1,3 +1,4 @@
>> +// SPDX-License-Identifier: GPL-2.0-only
>>  /*
>>   * Copyright (c) 2017 Zodiac Inflight Innovation
>>   * Author: Andrey Smirnov <andrew.smirnov@gmail.com>
>> @@ -5,16 +6,6 @@
>>   * Based on analogous code from Linux kernel
>>   *
>>   * Copyright (C) 2011, 2012 Cavium, Inc.
>> - *
>> - * This program is free software; you can redistribute it and/or modi=
fy
>> - * it under the terms of the GNU General Public License version 2
>> - * as published by the Free Software Foundation.
>> - *
>> - * This program is distributed in the hope that it will be useful,
>> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
>> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>> - * GNU General Public License for more details.
>> - *
>>   */
>>  #include <common.h>
>>  #include <linux/mdio-mux.h>
>> diff --git a/drivers/net/phy/mdio-mvebu.c b/drivers/net/phy/mdio-mvebu=
=2Ec
>> index 460e2b413..6d3bdf15c 100644
>> --- a/drivers/net/phy/mdio-mvebu.c
>> +++ b/drivers/net/phy/mdio-mvebu.c
>> @@ -1,3 +1,4 @@
>> +// SPDX-License-Identifier: GPL-2.0-only
>>  /*
>>   * Marvell MVEBU SoC MDIO interface driver
>>   *
>> @@ -8,17 +9,6 @@
>>   * based on mvmdio driver from Linux
>>   *   Copyright (C) 2012 Marvell
>>   *     Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
>> - *
>> - * Since the MDIO interface of Marvell network interfaces is shared
>> - * between all network interfaces, having a single driver allows to
>> - * handle concurrent accesses properly (you may have four Ethernet
>> - * ports, but they in fact share the same SMI interface to access
>> - * the MDIO bus). This driver is currently used by the mvneta and
>> - * mv643xx_eth drivers.
>=20
> I think this paragraph can stay.

Uff... thx!

>>   * Support added for SMSC LAN8187 and LAN8700 by steve.glendinning@sh=
awell.net
>>   *
>>   */
>> --=20
>=20
> The rest looks consistent to me.
>=20
> Reviewed-by: Roland Hieber <r.hieber@pengutronix.de>
>=20
>  - Roland
>=20


--=20
Regards,
Oleksij


--r3H6XgjRHokLDzomrwpGOI5oqZKI2FlDQ--

--7EMLNRVQ9Eh9ZD06yPvbgQMOvG5DlWxgE
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEpENFL0P3hvQ7p0DDdQOiSHVI77QFAlwIH4oACgkQdQOiSHVI
77SX4wgAvtmicED3b/Ay/tl3Pystp8Kjn3W5WFl3xV7Wb3BrmjpBzBB5U/0XX+np
uXE5XfRuZmJe7IFMRsmJ1ysme7ExVemPgaF7gpvdBsK5ELHlrf+p8SVeBeujoHfV
32pC6LmeOTS2zu09iF2RIzq68zpRLl8X91YlGHJY8TuZhJ44Zf7kDdpxTfYSofW3
Ul48cS8JOQL5L7/vqvnHeU0YEXcyOARTScX+x1AkMBTpbV3AFQn+xbPdWQ9T9DAU
cqHeR86ansfkQAsRaupYNO4ufuRb2z52yHWQ117FEg/yL2+vUEND6qkC3D1DW6el
pItlvxf86SWsMqjmmyQ2tRyV9zEGrg==
=tWQS
-----END PGP SIGNATURE-----

--7EMLNRVQ9Eh9ZD06yPvbgQMOvG5DlWxgE--


--===============4633676530280781712==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============4633676530280781712==--

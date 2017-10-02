Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dyvNy-000126-0R
 for barebox@lists.infradead.org; Mon, 02 Oct 2017 07:43:32 +0000
References: <20170928231249.4158-1-antonynpavlov@gmail.com>
 <20170928231249.4158-2-antonynpavlov@gmail.com>
 <6767ad4e-80b7-2c69-49ff-ecfb64ab19e0@rempel-privat.de>
 <20170930145755.9a68a3fffe61c58eda5c7263@gmail.com>
From: Oleksij Rempel <linux@rempel-privat.de>
Message-ID: <a29251d2-b2a8-52f9-d510-74ee1890f048@rempel-privat.de>
Date: Mon, 2 Oct 2017 09:43:02 +0200
MIME-Version: 1.0
In-Reply-To: <20170930145755.9a68a3fffe61c58eda5c7263@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1914405357316809546=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [RFC v4 01/10] Add initial RISC-V architecture support
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============1914405357316809546==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="SEbrvD4KHwcOQrf0WaIhnLBTw3lRI06Aa"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--SEbrvD4KHwcOQrf0WaIhnLBTw3lRI06Aa
Content-Type: multipart/mixed; boundary="SSfn1wAwonNKC5bq0sssTHJtVpJo5lW8I";
 protected-headers="v1"
From: Oleksij Rempel <linux@rempel-privat.de>
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <a29251d2-b2a8-52f9-d510-74ee1890f048@rempel-privat.de>
Subject: Re: [RFC v4 01/10] Add initial RISC-V architecture support
References: <20170928231249.4158-1-antonynpavlov@gmail.com>
 <20170928231249.4158-2-antonynpavlov@gmail.com>
 <6767ad4e-80b7-2c69-49ff-ecfb64ab19e0@rempel-privat.de>
 <20170930145755.9a68a3fffe61c58eda5c7263@gmail.com>
In-Reply-To: <20170930145755.9a68a3fffe61c58eda5c7263@gmail.com>

--SSfn1wAwonNKC5bq0sssTHJtVpJo5lW8I
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: quoted-printable

Hi,

Am 30.09.2017 um 13:57 schrieb Antony Pavlov:
> On Fri, 29 Sep 2017 14:07:09 +0200
> Oleksij Rempel <linux@rempel-privat.de> wrote:
>=20
>> Hi,
>>
>> hm... mostly looks identical with existing arch
>=20
> What do you mean when you say "existing arch"?

it is a note for me. I just compared it with MIPS
> ...
>=20
>> Am 29.09.2017 um 01:12 schrieb Antony Pavlov:
> ...
>>> diff --git a/arch/riscv/boot/start.S b/arch/riscv/boot/start.S
>>> new file mode 100644
>>> index 000000000..2fd00f63d
>>> --- /dev/null
>>> +++ b/arch/riscv/boot/start.S
>>> @@ -0,0 +1,74 @@
>>> +/*
>>> + * Startup Code for MIPS CPU

Beside here is a copy paste ^^^ artefact :)

>>> + * based on coreboot/src/arch/riscv/bootblock.S
>>> + *
>>> + * Copyright (C) 2016 Antony Pavlov <antonynpavlov@gmail.com>
>>> + *

--=20
Regards,
Oleksij


--SSfn1wAwonNKC5bq0sssTHJtVpJo5lW8I--

--SEbrvD4KHwcOQrf0WaIhnLBTw3lRI06Aa
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iF4EAREIAAYFAlnR7gcACgkQHwImuRkmbWn3bAD6AjmCKMcwJreyeVwgNf/Od0o7
Xsqs+9yjChmkD8RlkscA/iN6rh60yatVfPJYKdOTaOSfhcTssYv26MQoeOxX+/Nb
=XkHx
-----END PGP SIGNATURE-----

--SEbrvD4KHwcOQrf0WaIhnLBTw3lRI06Aa--


--===============1914405357316809546==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1914405357316809546==--

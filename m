Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fAWuv-0004pu-1W
 for barebox@lists.infradead.org; Mon, 23 Apr 2018 08:33:47 +0000
References: <20180420080114.9148-1-gp@high-consulting.de>
 <51213c28-0443-3ba7-d161-d79dfaa3acdb@rempel-privat.de>
 <20180423081348.hylbpdraydokxvt4@pengutronix.de>
From: Oleksij Rempel <o.rempel@pengutronix.de>
Message-ID: <8fbdaa19-13bc-9b27-7b69-ca3ca50872cf@pengutronix.de>
Date: Mon, 23 Apr 2018 10:33:22 +0200
MIME-Version: 1.0
In-Reply-To: <20180423081348.hylbpdraydokxvt4@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============2336886747780653715=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v1] Crypt and decrypt files using password in keystore.
To: Sascha Hauer <s.hauer@pengutronix.de>, Oleksij Rempel <linux@rempel-privat.de>
Cc: barebox@lists.infradead.org, Gerd Pauli <gp@high-consulting.de>

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============2336886747780653715==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="Ek0e12ekhANCNtGqobAZJZydo99qbOy2b"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--Ek0e12ekhANCNtGqobAZJZydo99qbOy2b
Content-Type: multipart/mixed; boundary="y6uLkioLFV0VjKAcfwZlneg6RarsLCtk0";
 protected-headers="v1"
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Oleksij Rempel <linux@rempel-privat.de>
Cc: barebox@lists.infradead.org, Gerd Pauli <gp@high-consulting.de>
Message-ID: <8fbdaa19-13bc-9b27-7b69-ca3ca50872cf@pengutronix.de>
Subject: Re: [PATCH v1] Crypt and decrypt files using password in keystore.
References: <20180420080114.9148-1-gp@high-consulting.de>
 <51213c28-0443-3ba7-d161-d79dfaa3acdb@rempel-privat.de>
 <20180423081348.hylbpdraydokxvt4@pengutronix.de>
In-Reply-To: <20180423081348.hylbpdraydokxvt4@pengutronix.de>

--y6uLkioLFV0VjKAcfwZlneg6RarsLCtk0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable



On 23.04.2018 10:13, Sascha Hauer wrote:
> On Sun, Apr 22, 2018 at 10:27:11AM +0200, Oleksij Rempel wrote:
>> Hi Gerd,
>>
>> please use scripts/checkpatch.pl
>>
>> currently i get
>> total: 2020 errors, 0 warnings, 2020 lines checked
>>
>> We use kernel coding style. Please read it:
>> https://www.kernel.org/doc/html/v4.16/process/coding-style.html
>>
>> Am 20.04.2018 um 10:01 schrieb Gerd Pauli:
>>> Adds ccryptlib library in crypto which implements a
>>> stream cipher based on the block cipher Rijndael,
>>> the candidate for the AES standard.
>>> Compatible with the ccrypt tool in linux
>>> from Peter Selinger.
>>>
>>> Usage: ccrypt [-e|-d] -k KEYNAME_IN_KEYSTORE SRC DST
>>>
>>> Signed-off-by: Gerd Pauli <gp@high-consulting.de>
>>> ---
>>>  commands/Kconfig    |   17 +
>>>  commands/Makefile   |    1 +
>>>  commands/ccrypt.c   |  249 +++++++++
>>>  crypto/Kconfig      |    7 +
>>>  crypto/Makefile     |    1 +
>>>  crypto/ccryptlib.c  | 1467 +++++++++++++++++++++++++++++++++++++++++=
++++++++++
>>>  include/ccryptlib.h |  102 ++++
>>>  7 files changed, 1844 insertions(+)
>>>  create mode 100644 commands/ccrypt.c
>>>  create mode 100644 crypto/ccryptlib.c
>>>  create mode 100644 include/ccryptlib.h
>>>
>>> diff --git a/commands/Kconfig b/commands/Kconfig
>>> index 951a86963..b6911246a 100644
>>> --- a/commands/Kconfig
>>> +++ b/commands/Kconfig
>>> @@ -2137,6 +2137,23 @@ config CMD_SEED
>>>  	help
>>>  	  Seed the pseudo random number generator (PRNG)
>>> =20
>>> +config CMD_CCRYPT
>>> +        tristate
>>> +        prompt "ccrypt"
>>> +        select CRYPTO_CCRYPTLIB
>>> +        select CRYPTO_KEYSTORE
>>> +        help
>>> +          encrypting/decrypting a character stream
>>> +          ccrypt implements a stream cipher based on the block ciphe=
r
>>> +          Rijndael.
>>
>>> +          Usage: ccrypt [-ed] [-K name] srcfile dstfile
>>> +
>>> +          Options:
>>> +                        -e            encrypt srcfile to dstfile
>>> +                        -d            decrypt srcfile to dstfile
>>> +                        -k name       use key with name from keystor=
e
>>> +
>>
>> usage help should be provided by the command, not within Kconfig
>=20
> Indeed we have the help provided in the Kconfig text for all commands
> that were present at that change. I don't really think it's worth
> continuing this though.
>=20
>>> + * This program is free software; you can redistribute it and/or
>>> + * modify it under the terms of the GNU General Public License as
>>> + * published by the Free Software Foundation; either version 2 of
>>> + * the License, or (at your option) any later version.
>>> + *=20
>>> + * This program is distributed in the hope that it will be useful,
>>> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
>>> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>>> + * GNU General Public License for more details.   =20
>>> + */
>>> +
>>> +/* ccrypt implements a stream cipher based on the block cipher
>>> +   Rijndael  */
>>> +
>>> +/* needs library ccryptlib and keystore from barebox */
>>
>> no need for this comment, needed headers are already included
>>
>>> +#include <common.h>
>>> +#include <command.h>
>>> +#include <libfile.h>
>>> +#include <getopt.h>
>>> +#include <fcntl.h>
>>> +#include <fs.h>
>>> +#include <ccryptlib.h>
>>
>> i prefer headers sorted alphabetically. this helps to reduce
>> patch conflicts.
>=20
> And I prefer the reverse christmas tree ordering ;)
>=20
> To be honest, I don't care about the ordering at all, but at least as
> long as we haven't agreed on some ordering and written it down somewher=
e
> we shouldn't enforce any ordering for patch submitters.

ok.

by applying old patches, i made experience that "append as last in the
list" will mostly end as patch conflict in comparison to "add in
alphabetically ordered list". May it is worth to start this practice.


--y6uLkioLFV0VjKAcfwZlneg6RarsLCtk0--

--Ek0e12ekhANCNtGqobAZJZydo99qbOy2b
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEpENFL0P3hvQ7p0DDdQOiSHVI77QFAlrdmlsACgkQdQOiSHVI
77TrZAgAiRMx7FkqDAlxxVR/sLghHUJTUcuJ1NhH4uNvWyAjIWgcIfBOECHOoQxW
DvPQBwO6rbc0mYuD54T+j42ZcII5NzGkoW5rG26JmZq40eYttP+BmnRZj31mw/28
ctw78BII4/jZFZYm8OT7OANG7ZP4M4CD4k26U78AChPW844yLSzoJXyYSJ83ZEct
VC8Blv7vmQ3y8qWWOnvBYLJDuyzYJAkqGf8Jk/H5Os8kmSHGAh16BvVrHciMmDUh
nMP0IDBLVzTkrO3UTr8Li93zR3m3pBLsjqwh4job92kYd5NmbtIcckTDMugwED03
JC0aXb4niYxQCAVx4V4e3ItNML9Wxw==
=366x
-----END PGP SIGNATURE-----

--Ek0e12ekhANCNtGqobAZJZydo99qbOy2b--


--===============2336886747780653715==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============2336886747780653715==--

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fKmhs-0000s1-MY
 for barebox@lists.infradead.org; Mon, 21 May 2018 15:26:42 +0000
Received: from [192.168.1.100] ([31.18.254.8]) by mail.gmx.com (mrgmx003
 [212.227.17.190]) with ESMTPSA (Nemesis) id 0Lu874-1gKgkR3Cz8-011Vsy for
 <barebox@lists.infradead.org>; Mon, 21 May 2018 17:26:25 +0200
References: <20180521115438.26493-1-pmamonov@gmail.com>
 <20180521115438.26493-7-pmamonov@gmail.com>
 <20180521150429.GA12008@ravnborg.org>
From: Oleksij Rempel <linux@rempel-privat.de>
Message-ID: <3b52a9f7-7e66-ecc6-7812-f7384b26e90d@rempel-privat.de>
Date: Mon, 21 May 2018 17:26:25 +0200
MIME-Version: 1.0
In-Reply-To: <20180521150429.GA12008@ravnborg.org>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============2904037199380335159=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2 06/12] common.h: fix IOMEM() for MIPS64
To: barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============2904037199380335159==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="Mxr3Awub2k7agIawr1YQ1bqWq1Fo1ZKhs"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--Mxr3Awub2k7agIawr1YQ1bqWq1Fo1ZKhs
Content-Type: multipart/mixed; boundary="kgPGXmHDdXXzsrZxkLBhpGYfgOsl38cFb";
 protected-headers="v1"
From: Oleksij Rempel <linux@rempel-privat.de>
To: barebox@lists.infradead.org
Message-ID: <3b52a9f7-7e66-ecc6-7812-f7384b26e90d@rempel-privat.de>
Subject: Re: [PATCH v2 06/12] common.h: fix IOMEM() for MIPS64
References: <20180521115438.26493-1-pmamonov@gmail.com>
 <20180521115438.26493-7-pmamonov@gmail.com>
 <20180521150429.GA12008@ravnborg.org>
In-Reply-To: <20180521150429.GA12008@ravnborg.org>

--kgPGXmHDdXXzsrZxkLBhpGYfgOsl38cFb
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: quoted-printable

Am 21.05.2018 um 17:04 schrieb Sam Ravnborg:
> On Mon, May 21, 2018 at 02:54:32PM +0300, Peter Mamonov wrote:
>> Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
>> ---
>>  include/common.h | 4 ++++
>>  1 file changed, 4 insertions(+)
>>
>> diff --git a/include/common.h b/include/common.h
>> index 60e5005b8..4b3bcae40 100644
>> --- a/include/common.h
>> +++ b/include/common.h
>> @@ -142,7 +142,11 @@ void barebox_set_hostname_no_overwrite(const char=
 *);
>>  #if defined(CONFIG_MIPS)
>>  #include <asm/addrspace.h>
>> =20
>> +#ifdef CONFIG_64BIT
>> +#define IOMEM(addr)	((void __force __iomem *)PHYS_TO_XKSEG_UNCACHED(a=
ddr))
>> +#else
>>  #define IOMEM(addr)	((void __force __iomem *)CKSEG1ADDR(addr))
>> +#endif
>>  #else
>>  #define IOMEM(addr)	((void __force __iomem *)(addr))
>>  #endif
>=20
> Another way to handle this would be to move the definition of IOMEM to =
asm/common.h
> and then in this file define IOMEM only if not already defined.
>=20
> Then we could avoid this MIPS specific stuff in the middle of a common =
file.

I would prefer
arch/mips/include/asm/io.h

for example in kernel we have:
arch/arm/include/asm/io.h:165:#define IOMEM(x)
arch/hexagon/include/asm/io.h:38:#define IOMEM(x)

--=20
Regards,
Oleksij


--kgPGXmHDdXXzsrZxkLBhpGYfgOsl38cFb--

--Mxr3Awub2k7agIawr1YQ1bqWq1Fo1ZKhs
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEAREIAB0WIQRXepfNdOKCSzfa+2sfAia5GSZtaQUCWwLlIQAKCRAfAia5GSZt
aedqAP4902HRe0yZA/ulBluCcxR4YkI00YqQNc9sZNwXQkyYYgD9GV+4EoSjQXg5
gf+ldw+wRekb9DFkvqmU+fP44hbhj0Q=
=5uwp
-----END PGP SIGNATURE-----

--Mxr3Awub2k7agIawr1YQ1bqWq1Fo1ZKhs--


--===============2904037199380335159==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============2904037199380335159==--

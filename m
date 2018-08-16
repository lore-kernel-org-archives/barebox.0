Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx009.vodafonemail.xion.oxcs.net ([153.92.174.39])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fqPrK-0005ar-Da
 for barebox@lists.infradead.org; Thu, 16 Aug 2018 21:31:12 +0000
References: <20180815134659.32553-1-s.hauer@pengutronix.de>
 <20180815134937.ylp6k7ibo67rft5p@pengutronix.de>
 <CAHQ1cqHTmB_p1kO9YmYyipA35JYS13sdhvhP4V+NcW=Li8kyTw@mail.gmail.com>
From: Giorgio Dal Molin <giorgio.nicole@arcor.de>
Message-ID: <cb2a94ad-11f8-2e53-0110-9adb60d837ce@arcor.de>
Date: Thu, 16 Aug 2018 23:30:41 +0200
MIME-Version: 1.0
In-Reply-To: <CAHQ1cqHTmB_p1kO9YmYyipA35JYS13sdhvhP4V+NcW=Li8kyTw@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============6773137456432324036=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] ARM: MMU: fix wrong dma_flush_range in arm_create_pte()
To: Andrey Smirnov <andrew.smirnov@gmail.com>, barebox@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============6773137456432324036==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="v6FAQAKoHvuERejisc4lAvaWDs6yHxwVG"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--v6FAQAKoHvuERejisc4lAvaWDs6yHxwVG
Content-Type: multipart/mixed; boundary="5I7EdEYaErOJeIYH8waGD7w4rtGcGuUPG";
 protected-headers="v1"
From: Giorgio Dal Molin <giorgio.nicole@arcor.de>
To: Andrey Smirnov <andrew.smirnov@gmail.com>, barebox@lists.infradead.org
Message-ID: <cb2a94ad-11f8-2e53-0110-9adb60d837ce@arcor.de>
Subject: Re: [PATCH] ARM: MMU: fix wrong dma_flush_range in arm_create_pte()
References: <20180815134659.32553-1-s.hauer@pengutronix.de>
 <20180815134937.ylp6k7ibo67rft5p@pengutronix.de>
 <CAHQ1cqHTmB_p1kO9YmYyipA35JYS13sdhvhP4V+NcW=Li8kyTw@mail.gmail.com>
In-Reply-To: <CAHQ1cqHTmB_p1kO9YmYyipA35JYS13sdhvhP4V+NcW=Li8kyTw@mail.gmail.com>

--5I7EdEYaErOJeIYH8waGD7w4rtGcGuUPG
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi,

On 8/15/18 6:55 PM, Andrey Smirnov wrote:
> On Wed, Aug 15, 2018 at 6:49 AM Sascha Hauer <s.hauer@pengutronix.de> w=
rote:
>>
>> On Wed, Aug 15, 2018 at 03:46:59PM +0200, Sascha Hauer wrote:
>>> Since 7ba0f2d299 arm_create_pte() flushes the page table entries itse=
lf
>>> and it's no longer done in arch_remap_range(). Unfortunately it does
>>> not flush the modified 1st level page table entry, but instead the ba=
se
>>> of the page table. Fix it up.
>>>
>>> Fixes: 7ba0f2d299 ARM: mmu: fix cache flushing when replacing a secti=
on with a PTE
>>
>> Since the patch breaking it was the reason for creating v2018.07.1, th=
is
>> will be a reason for creating v2018.07.2 (and also v2018.08.1)
>>
>> I noticed misbehaviour when trying to sue network on a i.MX53 based
>> board, here we got tronsmission timeouts. These are fixed with this pa=
tch
>>
>=20
> Heh, you beat me to it by a couple of hours! I came up with the same
> patch debugging networking (and various others) issues on i.MX51 last
> night and was about to submit it.
>=20
> Thanks,
> Andrey Smirnov
>=20
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
>=20

I can also confirm this network problem on an imx7d soc.

Tomorrow I will test the patch.

giorgio


--5I7EdEYaErOJeIYH8waGD7w4rtGcGuUPG--

--v6FAQAKoHvuERejisc4lAvaWDs6yHxwVG
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Comment: Using GnuPG with Thunderbird - https://www.enigmail.net/

iQIzBAEBCAAdFiEE9QinPTH0TNNuN3rvP2UgThicmOcFAlt17QcACgkQP2UgThic
mOeQXBAAzimtHRS177S64Sr+qnUg2qbK+/79vvW2cFhhAy0Thc+pHwNwtFH2B4bN
pEo5wigMpN8ZVGpTJq0AZhjE968LzMLWqR3wYdNaW4aEY9Wlol6QTwkfQmXPaVeR
ptLPMKLHnFWh4TbQKHCNCWMkTqT7UFjIRxKze/KnxuK2gp0XT2oNFXCfmNz4TqjV
8/JDhy597uxbkwwy4ADcR838jvfVK8YCxmXkYU2a1IM8e6AoBnlxijDE3l4cdndZ
Eao3Mzk7O5kJWo6/WwFTLi5SWf8CW5z3ZlOqLdUWNYAipJGHmuUQNHbE4ox5oXpC
hk+Jn9mWW4SLDn/5ikhy6HQUv8VC7wYVcTobm+ZegGZ/nnozKLUTYTcYAExboRIA
+8L7H1N1VmtdMH1Snuqzz60Ylplqn0PQUh5vx1CPbxhEDqkpxkcFe71B89cVx9EA
w17Ej0pZgkkvVfct/gr3yhbSoxvWy+6t6SlS1XvFSafdOmJXMuVhmqpA5dXYSzAg
SVDDpaIV19VydkfetTFnnCDsMbpXoFUeQVYuNN9JtOvqugbW/CdGuvhcIwVcP6+d
jgC+60lLtFrJElkC4X1TLE6Su+jC4ALIC3nZfjIS5qmTTvb0a53QVKU1F9lSf46b
67IwXqFKBfF6Mde7L6GOeas/UL3vpyxCaN1BzV3U3cdjaoQKGk4=
=bykT
-----END PGP SIGNATURE-----

--v6FAQAKoHvuERejisc4lAvaWDs6yHxwVG--


--===============6773137456432324036==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============6773137456432324036==--

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.15.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhVoK-00030V-MS
 for barebox@lists.infradead.org; Sat, 06 Jun 2020 10:12:22 +0000
References: <20200508170411.26841-1-cleger@kalray.eu>
 <20200509145142.roleuli4nuccngfz@pengutronix.de>
 <20200509165110.bl5xsqcpqckvqay6@pengutronix.de>
 <773934153.1746354.1589052295027.JavaMail.zimbra@kalray.eu>
 <20200510043141.377gvmlruxwsggrm@pengutronix.de>
 <479337908.1774429.1589110291429.JavaMail.zimbra@kalray.eu>
From: Oleksij Rempel <linux@rempel-privat.de>
Message-ID: <f8408a24-e26e-a8bd-0525-f6312942aceb@rempel-privat.de>
Date: Sat, 6 Jun 2020 12:11:59 +0200
MIME-Version: 1.0
In-Reply-To: <479337908.1774429.1589110291429.JavaMail.zimbra@kalray.eu>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1052745922961992094=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v4 0/7] elf: add better bootm support
To: =?UTF-8?Q?Cl=c3=a9ment_Leger?= <cleger@kalray.eu>, Oleksij Rempel <o.rempel@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============1052745922961992094==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="eOVfvJWyh89ZZNSveCmkO60lWjQfqCdSC"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--eOVfvJWyh89ZZNSveCmkO60lWjQfqCdSC
Content-Type: multipart/mixed; boundary="4Q0GZWNv0MflpU0BmQnOqYJbAzTMl8IUb"

--4Q0GZWNv0MflpU0BmQnOqYJbAzTMl8IUb
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi Clement,

This changes are needed to make your patch partially work on my system:
https://github.com/olerem/barebox/commit/90ad4f3cd8cbcfd361ff780bcfce1573=
ae73053d

I found following issues:
- the elf->list was not initiated
- my system has only 64MiB RAM and only 8MiB is available for barebox
alloc. Since you patch is reading complete file in to alloc, i was not
able to start kernel which was already copied to alloc by:
cp /mnt/tftp/kernel .
This is still not fixed, but with some sanity checks the user is
notified about it.
- lseek(fd, 0, SEEK_SET); is not working on tftp mount point. This was
the reason why elf header actually passed check, but had a trash in
elf->buf later.

On systems with limited amount of RAM, it would be better to read the
header and request RAM regions on first stand, and then directly read
them from file in to the requested regions.

And there is one more thing, by using "dryrun" function (boot(m) -d), i
would expect to be able to see reserved regions with "iomem" command.
Currently it is not the case.

Am 10.05.20 um 13:31 schrieb Cl=C3=A9ment Leger:
> Hi Oleksij,
>=20
> ----- On 10 May, 2020, at 06:31, Oleksij Rempel o.rempel@pengutronix.de=
 wrote:
>=20
>> Hi Clement,
>>
>> just in case it makes a difference. I load this file over tftp (boot
>> net)
>=20
> I manage to load your elf file on kvx using bootm (I do not have net bo=
ot)
> and here is what I get:
>=20
> --------------------------------------------
> Board: KONIC 200 (K200)
> malloc space: 0x110306050 -> 0x200000000 (size 3.7 GiB)
> export: No such file or directory
>=20
> Hit any to stop autoboot:    3
> barebox:/ bootm env/ore-linux-dpt-module=20
> Entry Point:  80980000
>=20
> Loading ELF 'env/ore-linux-dpt-module'
> Loading phdr to 0x0000000080980000 (2740416 bytes)
> ...
> --------------------------------------------
>=20
> So one segment is loaded which is correct according to readelf.
> elf file is correct and can be loaded using bootm.
>=20
> Could you try loading it using bootm directly ?
> This will confirm if it's related to net boot or not (although I don't
> know what are the underlying differences).
>=20
> Thanks,
>=20
> Cl=C3=A9ment
>=20
>>
>> On Sat, May 09, 2020 at 09:24:55PM +0200, Cl=C3=A9ment Leger wrote:
>>> Hi Oleksij,
>>>
>>> ----- On 9 May, 2020, at 18:51, Oleksij Rempel o.rempel@pengutronix.d=
e wrote:
>>>
>>>> On Sat, May 09, 2020 at 04:51:42PM +0200, Oleksij Rempel wrote:
>>>>> Hi Clement,
>>>>>
>>>>> suddenly it is still exploding. I'll try to investigate the reason.=

>>>>
>>>> common/elf.c:
>>>>  load_elf_image_phdr()
>>>>    elf_hdr_e_phnum() <-- returns 0
>>>>    for (i =3D 0; i < elf_hdr_e_phnum(elf, buf) ; ++i) {
>>>>      ... so we will never get here.
>>>>
>>>> Probably we should add a sanity check here and be more verbose in th=
is
>>>> case.
>>>
>>> There is something odd because your elf is correct and has 2 program
>>> headers. So this should not be a problem (but a sanity check makes
>>> sense !).
>>>
>>> I suspect that the elf size computation is wrong with your elf file
>>> and leads to incompletely loaded elf file but I tried to compute
>>> it using the sequence of code used in barebox and everything seems ok=
=2E
>>> Maybe there is something with the endianess/elfclass going wrong.
>>> I tried again on kvx to be sure I did not made a mistake but it works=

>>> and the elf entry address is correctly used.
>>> I'll try to add handling for different endianess and load your elf
>>> file on kvx to debug that.
>>>
>>>>
>>>> here is my elf image:
>>>> https://github.com/olerem/barebox/blob/new-elf/ore-linux-dpt-module
>>>
>>> I succeeded in building Distrokit images but I can't get it under bar=
ebox.
>>> There is only 4M oof RAM and each time I tries to modify it, it won't=
 boot
>>> anymore.
>>> I tried integrating the kernel (and your eore-linux-dpt-module elf) i=
n
>>> the environment but it also won't boot. Do you have any idea on how t=
o
>>> do it ?
>>> Even if the kernel won't start under qemu , at least I'll be able to
>>> understand what is wrong.
>>>
>>> Thanks for testing,
>>>
>>> Cl=C3=A9ment
>>>
>>>>
>>>>> On Fri, May 08, 2020 at 07:04:04PM +0200, Clement Leger wrote:
>>>>>> Currently, when booting an elf file using "bootm /dev/mtdx", bootm=
 will
>>>>>> simply pass the file to the bootm and the read done on it will rea=
d the
>>>>>> entire flash partition. This series starts by some cleanup and the=
n add an
>>>>>> elf_open function to load the elf file size only based on the elf =
header.
>>>>>> A special handling for the elf file is also added in bootm data to=
 allow
>>>>>> using directly the elf file structure. Finally the mips bootm is m=
odified
>>>>>> to use bootm_load_os directly instead of manual elf loading.
>>>>>>
>>>>>> Compilation for both mips and arm has been tested but run on qemu-=
malta was not
>>>>>> possible. Changing the MALLOC_SIZE to allow loading a kernel alway=
s lead to a
>>>>>> non-bootable system. Changes have been tested on kvx architecture =
for which
>>>>>> bootm support has been added and will be submitted.
>>>>>>
>>>>>> Changes v3 -> v4
>>>>>>  - Fix init of elf entry address to be used by bootm_load_elf
>>>>>>
>>>>>> Changes v2 -> v3
>>>>>>  - Integrate elf loading in bootm_load_os
>>>>>>  - Add patch to remove now unused elf_load_image/elf_release_image=

>>>>>>  - Use malloc instead of xmalloc and check return value
>>>>>>
>>>>>> Changes v1 -> v2
>>>>>>  - Add BOOTM_ELF config to select elf support and add checks in co=
de
>>>>>>  - Add an elf_get_mem_size function to avoid computing elf size in=
 bootm.c
>>>>>>  - Use xmalloc and read_full in elf_open instead of xzalloc/read
>>>>>>  - Fix data->elf NULL reset
>>>>>>  - Remove elf struct entirely from mips bootm code
>>>>>>
>>>>>> Clement Leger (7):
>>>>>>   common: elf: add computation of elf boundaries
>>>>>>   common: elf: fix warning on 32 bits architectures
>>>>>>   common: elf: split init to be reused from other function
>>>>>>   common: elf: add elf_open, elf_close and elf_load
>>>>>>   common: bootm: add support for elf file loading
>>>>>>   mips: lib: bootm: use bootm elf loading capabilities
>>>>>>   common: elf: remove elf_load_image/elf_release_image
>>>>>>
>>>>>>  arch/mips/lib/bootm.c |  31 +++++-------
>>>>>>  common/Kconfig        |   8 +++
>>>>>>  common/bootm.c        |  33 +++++++++++++
>>>>>>  common/elf.c          | 111 +++++++++++++++++++++++++++++++++++--=
-----
>>>>>>  include/bootm.h       |   3 ++
>>>>>>  include/elf.h         |  16 +++++-
>>>>>>  6 files changed, 163 insertions(+), 39 deletions(-)
>>>>>>
>>>>>> --
>>>>>> 2.17.1
>>>>>>
>>>>>>
>>>>>> _______________________________________________
>>>>>> barebox mailing list
>>>>>> barebox@lists.infradead.org
>>>>>> http://lists.infradead.org/mailman/listinfo/barebox
>>>>>>
>>>>>
>>>>> --
>>>>> Pengutronix e.K.                           |                       =
      |
>>>>> Steuerwalder Str. 21                       | http://www.pengutronix=
=2Ede/  |
>>>>> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917=
-0    |
>>>>> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917=
-5555 |
>>>>
>>>>
>>>>
>>>> --
>>>> Pengutronix e.K.                           |                        =
     |
>>>> Steuerwalder Str. 21                       | http://www.pengutronix.=
de/  |
>>>> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-=
0    |
>>>> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-=
5555 |
>>>
>>> _______________________________________________
>>> barebox mailing list
>>> barebox@lists.infradead.org
>>> http://lists.infradead.org/mailman/listinfo/barebox
>>
>> --
>> Pengutronix e.K.                           |                          =
   |
>> Steuerwalder Str. 21                       | http://www.pengutronix.de=
/  |
>> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0 =
   |
>> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-55=
55 |
>=20
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
>=20


--=20
Regards,
Oleksij


--4Q0GZWNv0MflpU0BmQnOqYJbAzTMl8IUb--

--eOVfvJWyh89ZZNSveCmkO60lWjQfqCdSC
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEpENFL0P3hvQ7p0DDdQOiSHVI77QFAl7ba/UACgkQdQOiSHVI
77SloggAqJCgtU4OGi56d/ZvTGzCOfXyqn6QJFrbnT7qUHxF1w4FvEmc4G9Boezo
SXjCm5ZYfjLDaotp3kZIEqNoDxoBhfRij0RvqNOJk2+w3b+rM+X7nmcHS3J/FwFB
MD3BxBG5EteZ1jbpZZW06PXjnI/MIUBZGdhZ/Pxdbhg9Cjdi4fRcEj0sAdkJnMuh
ehiX4TubKrGzjDovhB9Ulg+VtX9OkjhnVzEqw1HJe9nQ6t22Ho3ythOG0ewISLoX
Cz4ymve+JU4Ze6P46bfmAxOPwAep7EtYx2MC2Cj5YPQTZ4/PinCPxHXoCoiDt8HH
pB+4xh3mPxOvSCcwXjuXlEkzuJhVWQ==
=6O64
-----END PGP SIGNATURE-----

--eOVfvJWyh89ZZNSveCmkO60lWjQfqCdSC--


--===============1052745922961992094==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1052745922961992094==--

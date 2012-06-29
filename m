Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yw0-f48.google.com ([209.85.213.48])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SkWsL-0007BI-Vm
 for barebox@lists.infradead.org; Fri, 29 Jun 2012 08:48:27 +0000
Received: by yhfq46 with SMTP id q46so2243234yhf.21
 for <barebox@lists.infradead.org>; Fri, 29 Jun 2012 01:48:23 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20120629072517.GZ1623@pengutronix.de>
References: <1340908354-17895-1-git-send-email-antonynpavlov@gmail.com>
 <1340908354-17895-2-git-send-email-antonynpavlov@gmail.com>
 <20120629072517.GZ1623@pengutronix.de>
Date: Fri, 29 Jun 2012 12:48:23 +0400
Message-ID: <CAA4bVAFvVWiGq6vC=ay_UrNbxe8cCwu=_gCC7roZ7oxF_UQWRA@mail.gmail.com>
From: Antony Pavlov <antonynpavlov@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2 1/5] byteorder: fix {BIG,LITTLE}_ENDIAN defines
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 29 June 2012 11:25, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> On Thu, Jun 28, 2012 at 10:32:30PM +0400, Antony Pavlov wrote:
>> In the Linux kernel sources the only one byteorder macro
>> can be defined (__BIG_ENDIAN or __LITTLE_ENDIAN) at a time.
>>
>> In barebox we have the __BIG_ENDIAN and __LITTLE_ENDIAN macros
>> defined simultaneously introduced in
>>
>> =A0 =A0 commit 9ad1fe64abb12baac918ec177d9a52bbf2980d16
>> =A0 =A0 Author: Baruch Siach <baruch@tkos.co.il>
>> =A0 =A0 Date: =A0 Sun Jun 27 08:46:05 2010 +0300
>>
>> =A0 =A0 =A0 byteorder: add missing {BIG,LITTLE}_ENDIAN defines
>>
>> =A0 =A0 =A0 This fixes build warnings when testing __BYTE_ORDER
>> =A0 =A0 =A0 of the other kin
>>
>> But in arch/mips/lib/libgcc.h (from Linux) we have
>>
>> =A0#ifdef __BIG_ENDIAN
>> =A0struct DWstruct {
>> =A0 =A0 =A0 =A0 =A0int high, low;
>> =A0};
>> =A0#elif defined(__LITTLE_ENDIAN)
>> =A0struct DWstruct {
>> =A0 =A0 =A0 =A0 =A0int low, high;
>> =A0};
>> =A0#else
>> =A0#error I feel sick.
>> =A0#endif
>>
>> This means that regardless of current byteorder the big-endian
>> DWstruct will be selected. By turn this breaks the __lshrdi3()
>> function and the clocksource code on little-endian MIPS.
>>
>> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
>> ---
>> =A0drivers/ata/disk_ata_drive.c =A0 =A0 =A0| =A0 =A02 +-
>> =A0drivers/nor/cfi_flash.c =A0 =A0 =A0 =A0 =A0 | =A0 =A06 +++---
>> =A0include/cramfs/cramfs_fs.h =A0 =A0 =A0 =A0| =A0 =A04 ++--
>> =A0include/envfs.h =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =A0 16 ++++++++=
++++----
>> =A0include/linux/byteorder/generic.h | =A0 =A07 -------
>> =A0include/usb/usb.h =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =A0 =A02 +-
>> =A06 files changed, 19 insertions(+), 18 deletions(-)
>>
>> diff --git a/drivers/ata/disk_ata_drive.c b/drivers/ata/disk_ata_drive.c
>> index 4602af3..d5c5837 100644
>> --- a/drivers/ata/disk_ata_drive.c
>> +++ b/drivers/ata/disk_ata_drive.c
>> @@ -231,7 +231,7 @@ static void __maybe_unused ata_dump_id(uint16_t *id)
>> =A0 */
>> =A0static void ata_fix_endianess(uint16_t *buf, unsigned wds)
>> =A0{
>> -#if __BYTE_ORDER =3D=3D __BIG_ENDIAN
>> +#ifdef __BIG_ENDIAN
>> =A0 =A0 =A0 unsigned u;
>>
>> =A0 =A0 =A0 for (u =3D 0; u < wds; u++)
>> diff --git a/drivers/nor/cfi_flash.c b/drivers/nor/cfi_flash.c
>> index 654e647..02340e6 100644
>> --- a/drivers/nor/cfi_flash.c
>> +++ b/drivers/nor/cfi_flash.c
>> @@ -82,7 +82,7 @@ static void flash_add_byte (struct flash_info *info, c=
fiword_t * cword, uchar c)
>> =A0 =A0 =A0 =A0 =A0 =A0 =A0 return;
>> =A0 =A0 =A0 }
>>
>> -#if __BYTE_ORDER =3D=3D __BIG_ENDIAN
>> +#ifdef __BIG_ENDIAN
>> =A0 =A0 =A0 *cword =3D (*cword << 8) | c;
>> =A0#else
>>
>> @@ -167,7 +167,7 @@ static void flash_printqry (struct cfi_qry *qry)
>> =A0uchar flash_read_uchar (struct flash_info *info, uint offset)
>> =A0{
>> =A0 =A0 =A0 uchar *cp =3D flash_make_addr(info, 0, offset);
>> -#if __BYTE_ORDER =3D=3D __LITTLE_ENDIAN
>> +#ifdef __LITTLE_ENDIAN
>> =A0 =A0 =A0 return flash_read8(cp);
>> =A0#else
>> =A0 =A0 =A0 return flash_read8(cp + info->portwidth - 1);
>> @@ -195,7 +195,7 @@ static ulong flash_read_long (struct flash_info *inf=
o, flash_sect_t sect, uint o
>> =A0 =A0 =A0 =A0 =A0 =A0 =A0 debug ("addr[%x] =3D 0x%x\n", x, flash_read8=
(addr + x));
>> =A0 =A0 =A0 }
>> =A0#endif
>> -#if __BYTE_ORDER =3D=3D __LITTLE_ENDIAN
>> +#ifdef __LITTLE_ENDIAN
>> =A0 =A0 =A0 retval =3D ((flash_read8(addr) << 16) |
>> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 (flash_read8(addr + info->portwidth) << =
24) |
>> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 (flash_read8(addr + 2 * info->portwidth)=
) |
>> diff --git a/include/cramfs/cramfs_fs.h b/include/cramfs/cramfs_fs.h
>> index af2940b..a7e9504 100644
>> --- a/include/cramfs/cramfs_fs.h
>> +++ b/include/cramfs/cramfs_fs.h
>> @@ -88,7 +88,7 @@ struct cramfs_super {
>> =A0#error "No byte order defined in __BYTE_ORDER"
>> =A0#endif
>>
>> -#if __BYTE_ORDER =3D=3D __LITTLE_ENDIAN
>> +#ifdef __LITTLE_ENDIAN
>> =A0#define CRAMFS_16(x) (x)
>> =A0#define CRAMFS_24(x) (x)
>> =A0#define CRAMFS_32(x) (x)
>> @@ -96,7 +96,7 @@ struct cramfs_super {
>> =A0#define CRAMFS_GET_OFFSET(x) ((x)->offset)
>> =A0#define CRAMFS_SET_OFFSET(x,y) =A0 =A0 =A0 ((x)->offset =3D (y))
>> =A0#define CRAMFS_SET_NAMELEN(x,y) ((x)->namelen =3D (y))
>> -#elif __BYTE_ORDER =3D=3D__BIG_ENDIAN
>> +#elif defined(__BIG_ENDIAN)
>> =A0#ifdef __KERNEL__
>> =A0#define CRAMFS_16(x) swab16(x)
>> =A0#define CRAMFS_24(x) ((swab32(x)) >> 8)
>> diff --git a/include/envfs.h b/include/envfs.h
>> index 67b8902..cb1c648 100644
>> --- a/include/envfs.h
>> +++ b/include/envfs.h
>> @@ -38,6 +38,11 @@ struct envfs_super {
>> =A0#error "No byte order defined in __BYTE_ORDER"
>> =A0#endif
>>
>> +#if __BYTE_ORDER !=3D __LITTLE_ENDIAN && __BYTE_ORDER !=3D __BIG_ENDIAN
>> +#error "__BYTE_ORDER must be __LITTLE_ENDIAN or __BIG_ENDIAN"
>> +#endif
>
> On Big Endian systems __LITTLE_ENDIAN is undefined and this results in:
>
> In file included from common/environment.c:37:
> include/envfs.h:41:21: warning: "__LITTLE_ENDIAN" is not defined

You are right.

>> +
>> +#ifdef __LITTLE_ENDIAN
>
> As said, this file is included from scripts/bareboxenv.c which is
> compiled for userspace. __LITTLE_ENDIAN will always be defined in
> userspace.

But it included from common/environment.c too!

Moreover, in my company there is Processor Core Testing Department.
These folks like to rebuild full MIPS Linux distribution on our
big-endian MIPS system natively just for testing purposes. So, I have
a chance to build MIPS barebox on big-endian system :))

>
> --
> Pengutronix e.K. =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 |
> Industrial Linux Solutions =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | http://www.p=
engutronix.de/ =A0|
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0 =A0=
 =A0|
> Amtsgericht Hildesheim, HRA 2686 =A0 =A0 =A0 =A0 =A0 | Fax: =A0 +49-5121-=
206917-5555 |



-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

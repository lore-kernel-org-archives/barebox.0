Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.orpheo.org ([176.31.189.100] helo=orpheo.org)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Y3PQu-0001hh-4m
 for barebox@lists.infradead.org; Tue, 23 Dec 2014 13:23:29 +0000
Message-ID: <54996CB8.6070302@ophrys.net>
Date: Tue, 23 Dec 2014 14:23:04 +0100
From: Victorien Vedrine <victorien.vedrine@ophrys.net>
MIME-Version: 1.0
References: <1419268822-30204-1-git-send-email-victorien.vedrine@ophrys.net>
 <20141222200523.GB28003@pengutronix.de>
In-Reply-To: <20141222200523.GB28003@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="windows-1252"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v3] partitions: dos: Fix support of extended partition
 type 0x05
To: =?windows-1252?Q?Uwe_Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org


photo resizedforemaillogo_zpsa47b7a0d.jpg <http://orpheogroup.com>
*Victorien Vedrine - R&D engineer*
OPHRYS Syst=E8mes
6, rue Val=E9rien Perrin
F-38170 SEYSSINET-PARISET
Tel +33 (0)4 38 12 40 66
Fax +33 (0)4 76 96 22 34
victorien.vedrine@ophrys.net <mailto:victorien.vedrine@ophrys.net>
http://www.orpheogroup.com <http://orpheogroup.com>
Le 22/12/2014 21:05, Uwe Kleine-K=F6nig a =E9crit :
> On Mon, Dec 22, 2014 at 06:20:22PM +0100, Victorien Vedrine wrote:
>> From: victorien<victorien.vedrine@ophrys.net>
>>
>> Signed-off-by: Victorien Vedrine<victorien.vedrine@ophrys.net>
>> ---
>>   common/partitions/dos.c | 8 ++++----
>>   1 file changed, 4 insertions(+), 4 deletions(-)
>>
>> diff --git a/common/partitions/dos.c b/common/partitions/dos.c
>> index 37addfd..f02c822 100644
>> --- a/common/partitions/dos.c
>> +++ b/common/partitions/dos.c
>> @@ -205,11 +205,11 @@ static void dos_partition(void *buf, struct block_=
device *blk,
>>   			pd->used_entries++;
>>   			/*
>>   			 * Partitions of type 0x05 and 0x0f (and some more)
>> -			 * contain extended partitions. Only check for type 0x0f
>> -			 * here as this is the easiest to parse and common
>> -			 * enough.
>> +			 * contain extended partitions. Only check for type
>> +			 * 0x05 and 0x0f.
> the now removed comment implies that partitions of type 0x05 and 0x0f
> are to be handled differently. With your change however they are handled
> identically. Is this correct? Might be worth to explain in the commit
> log.
I made some research and the difference is that 0x0f partition is LBA =

and can start after the cylinder 1023.
I check on linux source code (3.14), and they consider that the 2 kinds =

of partition is identical :
On /include/linux/genhd.h file :

    enum {
    /* These three have identical behaviour; use the second one if DOS
    FDISK gets
        confused about extended/logical partitions starting past
    cylinder 1023. */
         DOS_EXTENDED_PARTITION =3D 5,
         LINUX_EXTENDED_PARTITION =3D 0x85,
         WIN98_EXTENDED_PARTITION =3D 0x0f,

         SUN_WHOLE_DISK =3D DOS_EXTENDED_PARTITION,

         LINUX_SWAP_PARTITION =3D 0x82,
         LINUX_DATA_PARTITION =3D 0x83,
         LINUX_LVM_PARTITION =3D 0x8e,
         LINUX_RAID_PARTITION =3D 0xfd,    /* autodetect RAID partition */

         SOLARIS_X86_PARTITION =3D    LINUX_SWAP_PARTITION,
         NEW_SOLARIS_X86_PARTITION =3D 0xbf,

         DM6_AUX1PARTITION =3D 0x51,    /* no DDO:  use xlated geom */
         DM6_AUX3PARTITION =3D 0x53,    /* no DDO:  use xlated geom */
         DM6_PARTITION =3D    0x54,        /* has DDO: use xlated geom &
    offset */
         EZD_PARTITION =3D    0x55,        /* EZ-DRIVE */

         FREEBSD_PARTITION =3D 0xa5,    /* FreeBSD Partition ID */
         OPENBSD_PARTITION =3D 0xa6,    /* OpenBSD Partition ID */
         NETBSD_PARTITION =3D 0xa9,    /* NetBSD Partition ID */
         BSDI_PARTITION =3D 0xb7,        /* BSDI Partition ID */
         MINIX_PARTITION =3D 0x81,        /* Minix Partition ID */
         UNIXWARE_PARTITION =3D 0x63,    /* Same as GNU_HURD and SCO Unix */
    };

I did some test with different SD Card size and table of partition and I =

don't see problem.
Now I'm in holidays but when I'm back I'll continue to check this point =

to determine if more modifications are necessary.

>>   			 */
>> -			if (pentry.dos_partition_type =3D=3D 0x0f) {
>> +			if (pentry.dos_partition_type =3D=3D 0x0f ||
>> +				pentry.dos_partition_type =3D=3D 0x05) {
> There are two schools for indention in this case. Either use two tabs
> more than the line above, or align the continuation at the opening
> brace.
>
> Are you using vim? Then add "filetype indent on" to your .vimrc and
> depending on the way you want to handle the above case also add
>
> 	set cinoptions=3D(,:
>
> for aligning with the opening brace, or
>
> 	set cinoptions=3D:
>
> for the two tab preference.
Sorry, It's the first time I'm contribute to a project and I don't take =

enough car about that. I'll modify that.

Thanks for your help
Best regards

Victorien
> Best regards
> Uwe


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

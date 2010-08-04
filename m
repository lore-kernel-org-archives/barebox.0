Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 63.mail-out.ovh.net ([91.121.185.56])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OgYiZ-0006CV-KJ
	for barebox@lists.infradead.org; Wed, 04 Aug 2010 07:48:54 +0000
Message-ID: <4C591B60.7090204@eukrea.com>
Date: Wed, 04 Aug 2010 09:48:48 +0200
From: =?ISO-8859-15?Q?Eric_B=E9nard?= <eric@eukrea.com>
MIME-Version: 1.0
References: <1280483395-9043-1-git-send-email-eric@eukrea.com>
	<20100804074253.GS14113@pengutronix.de>
In-Reply-To: <20100804074253.GS14113@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-15"; Format="flowed"
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] cfi_flash_intel: support 1024b buffer write
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

Le 04/08/2010 09:42, Sascha Hauer a =E9crit :
> On Fri, Jul 30, 2010 at 11:49:55AM +0200, Eric B=E9nard wrote:
>> newer Numonyx Strataflash P3x have 1024b buffer, thus, it's possible
>> to write a buffer size of 0x200 which the actual flash_write_cmd
>> doesn't permit as it's limited to a uchar parameter.
>
> So I guess these chips have 16 data lines?
>
actual flash_write_cmd is also used on chips with 16 data lines (like =

P30 or P33 Numonyx).

>
 >Unfortunately this won't work when two of these are parallel. You'd have
> to duplicate the command for the upper 16 bit.
>
Does actual flash_write_cmd works when 2 chips are parallel ?

Eric

> Sascha
>
>>
>> Signed-off-by: Eric B=E9nard<eric@eukrea.com>
>> ---
>>   drivers/nor/cfi_flash.c       |   11 +++++++++++
>>   drivers/nor/cfi_flash.h       |    1 +
>>   drivers/nor/cfi_flash_intel.c |    5 ++++-
>>   3 files changed, 16 insertions(+), 1 deletions(-)
>>
>> diff --git a/drivers/nor/cfi_flash.c b/drivers/nor/cfi_flash.c
>> index fa5e5ee..6f45da6 100644
>> --- a/drivers/nor/cfi_flash.c
>> +++ b/drivers/nor/cfi_flash.c
>> @@ -886,6 +886,17 @@ void flash_write_cmd (struct flash_info *info, flas=
h_sect_t sect, uint offset, u
>>   	flash_write_word(info, cword, addr);
>>   }
>>
>> +void flash_write_cmd16 (struct flash_info *info, flash_sect_t sect, uin=
t offset, ushort cmd)
>> +{
>> +
>> +	uchar *addr;
>> +	cfiword_t cword;
>> +
>> +	addr =3D flash_make_addr (info, sect, offset);
>> +	cword.w =3D cmd;
>> +	flash_write_word(info, cword, addr);
>> +}
>> +
>>   int flash_isequal (struct flash_info *info, flash_sect_t sect, uint of=
fset, uchar cmd)
>>   {
>>   	cfiptr_t cptr;
>> diff --git a/drivers/nor/cfi_flash.h b/drivers/nor/cfi_flash.h
>> index 057e56c..d7e6ea2 100644
>> --- a/drivers/nor/cfi_flash.h
>> +++ b/drivers/nor/cfi_flash.h
>> @@ -189,6 +189,7 @@ extern struct cfi_cmd_set cfi_cmd_set_amd;
>>
>>   int flash_isset (struct flash_info *info, flash_sect_t sect, uint offs=
et, uchar cmd);
>>   void flash_write_cmd (struct flash_info *info, flash_sect_t sect, uint=
 offset, uchar cmd);
>> +void flash_write_cmd16 (struct flash_info * info, flash_sect_t sect, ui=
nt offset, ushort cmd);
>>   flash_sect_t find_sector (struct flash_info *info, ulong addr);
>>   int flash_status_check (struct flash_info *info, flash_sect_t sector,
>>   			       uint64_t tout, char *prompt);
>> diff --git a/drivers/nor/cfi_flash_intel.c b/drivers/nor/cfi_flash_intel=
.c
>> index 4344760..96bf33f 100644
>> --- a/drivers/nor/cfi_flash_intel.c
>> +++ b/drivers/nor/cfi_flash_intel.c
>> @@ -71,7 +71,10 @@ static int intel_flash_write_cfibuffer (struct flash_=
info *info, ulong dest, con
>>   	/* reduce the number of loops by the width of the port	*/
>>   	cnt =3D len>>  (info->portwidth - 1);
>>
>> -	flash_write_cmd (info, sector, 0, (uchar) cnt - 1);
>> +	if (cnt>=3D 0x100)
>> +		flash_write_cmd16 (info, sector, 0, (ushort) cnt - 1);
>> +	else
>> +		flash_write_cmd (info, sector, 0, (uchar) cnt - 1);
>>   	while (cnt-->  0) {
>>   		if (bankwidth_is_1(info)) {
>>   			*dst.cp++ =3D *src.cp++;
>> --
>> 1.6.3.3
>>
>>
>


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

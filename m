Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-f172.google.com ([209.85.212.172])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YLOW5-0004j4-IP
 for barebox@lists.infradead.org; Wed, 11 Feb 2015 04:03:10 +0000
Received: by mail-wi0-f172.google.com with SMTP id z2so19431935wiv.5
 for <barebox@lists.infradead.org>; Tue, 10 Feb 2015 20:02:47 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <54DAB0AA.7090402@atmel.com>
References: <1423578481-25230-1-git-send-email-dbrainard@brainardinsight.com>
 <54DAB0AA.7090402@atmel.com>
Date: Tue, 10 Feb 2015 21:02:46 -0700
Message-ID: <CA+nEJinrt4TiRhESHZOepq-qyTq+Tj+wuMJfSv0Lxfjv2erEvA@mail.gmail.com>
From: Doug Brainard <dbrainard@brainardinsight.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/2] SAMA5D4EK - Now mostly supports booting Android from
 NAND.
To: Bo Shen <voice.shen@atmel.com>
Cc: barebox@lists.infradead.org

Sorry, this was more me not understanding "git send-email" the first
time and how to keep it only sending the latest commit.

Doug


On Tue, Feb 10, 2015 at 6:30 PM, Bo Shen <voice.shen@atmel.com> wrote:
> Hi Doug Brainard,
>
> On 02/10/2015 10:28 PM, Doug Brainard wrote:
>>
>> ---
>>   arch/arm/boards/sama5d4ek/env/config | 14 +++++++-------
>>   1 file changed, 7 insertions(+), 7 deletions(-)
>
>
> As this file will be totally discard in patch 2/2. So, I think no need to
> add this patch. And also it change the default boot setting to Android only.
>
>
>> diff --git a/arch/arm/boards/sama5d4ek/env/config
>> b/arch/arm/boards/sama5d4ek/env/config
>> index 1007345..ee86c07 100644
>> --- a/arch/arm/boards/sama5d4ek/env/config
>> +++ b/arch/arm/boards/sama5d4ek/env/config
>> @@ -11,16 +11,16 @@ ip=dhcp
>>   #eth0.serverip=a.b.c.d
>>
>>   # can be either 'nfs', 'tftp', 'nor' or 'nand'
>> -kernel_loc=nfs
>> +kernel_loc=nand
>>   # can be either 'net', 'nor', 'nand' or 'initrd'
>> -rootfs_loc=net
>> +rootfs_loc=nand
>>   # can be either 'nfs', 'tftp', 'nand' or empty
>> -oftree_loc=nfs
>> +oftree_loc=nand
>>
>>   # can be either 'jffs2' or 'ubifs'
>>   rootfs_type=ubifs
>>   rootfsimage=root.$rootfs_type
>> -ubiroot=rootfs
>> +ubiroot=system
>>
>>   # The image type of the kernel. Can be uimage, zimage, raw, or raw_lzo
>>   kernelimage=zImage
>> @@ -29,14 +29,14 @@ kernelimage=zImage
>>   #kernelimage=Image.lzo
>>
>>   nand_device=atmel_nand
>>
>> -nand_parts="256k(at91bootstrap),512k(barebox)ro,256k(bareboxenv),256k(bareboxenv2),256k(spare),512k(oftree),6M(kernel),-(rootfs)"
>> -rootfs_mtdblock_nand=7
>>
>> +nand_parts="256k(at91bootstrap),512k(barebox)ro,256k(bareboxenv),256k(bareboxenv2),256k(spare),512k(oftree),6M(kernel),8M(recovery),176M(system),304M(userdata),-(cache)"
>> +rootfs_mtdblock_nand=10
>>
>>
>> m25p80_parts="64k(bootstrap),384k(barebox),256k(bareboxenv),256k(bareboxenv2),128k(oftree),-(updater)"
>>
>>   autoboot_timeout=3
>>
>> -bootargs="console=ttyS0,115200"
>> +bootargs="console=ttyS0,115200 ubi.mtd=8 ubi.mtd=9 init=/init
>> androidboot.hardware=sama5-pda androidboot.lcd=wvga"
>>
>>   # set a fancy prompt (if support is compiled in)
>>   PS1="\e[1;32mbarebox@\e[1;31m\h:\w\e[0m\n# "
>>
>
> Best Regards,
> Bo Shen

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

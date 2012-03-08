Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtprelay02.ispgateway.de ([80.67.18.14])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1S5bdm-00044f-8g
 for barebox@lists.infradead.org; Thu, 08 Mar 2012 11:36:15 +0000
Message-ID: <4F5899EF.8010801@ronetix.at>
Date: Thu, 08 Mar 2012 13:37:19 +0200
From: RONETIX - Asen Dimov <dimov@ronetix.at>
MIME-Version: 1.0
References: <1330618889-11482-1-git-send-email-dimov@ronetix.at>
 <1330707323-8021-1-git-send-email-dimov@ronetix.at>
 <20120302171851.GD12248@game.jcrosoft.org>
In-Reply-To: <20120302171851.GD12248@game.jcrosoft.org>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2 1/4] pm9g45: boot from NAND
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

Hi Jean-Christophe,

On 03/02/2012 07:18 PM, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 18:55 Fri 02 Mar     , Asen Chavdarov Dimov wrote:
>> - change the kernel and rootfs locations
>> - correct the NAND mtd partitions
>> - fix the DDR RAM location(so BareBox load address)
>> - expect the root file system type to be UBIFS
>>
>> Signed-off-by: Asen Chavdarov Dimov<dimov@ronetix.at>
>> ---
>> since v1:
>> 	this patch I gorgot to send, so it pops-up now
>> ---
>>   arch/arm/boards/pm9g45/env/config |    8 +-
>>   arch/arm/configs/pm9g45_defconfig |  339 +++++++++++++++++++++++++++++++++---
> please use savedefconfig to generate the defconfig
done.
>>   2 files changed, 314 insertions(+), 33 deletions(-)
>>
>> diff --git a/arch/arm/boards/pm9g45/env/config b/arch/arm/boards/pm9g45/env/config
>> index 3dea724..1858292 100644
>> --- a/arch/arm/boards/pm9g45/env/config
>> +++ b/arch/arm/boards/pm9g45/env/config
>> @@ -11,9 +11,9 @@ ip=dhcp
>>   #eth0.serverip=a.b.c.d
>>
>>   # can be either 'nfs', 'tftp' or 'nand'
>> -kernel_loc=tftp
>> +kernel_loc=nand
>>   # can be either 'net', 'nand' or 'initrd'
>> -rootfs_loc=net
>> +rootfs_loc=nand
>>
>>   # can be either 'jffs2' or 'ubifs'
>>   rootfs_type=ubifs
>> @@ -25,8 +25,8 @@ kernelimage=uImage
>>   #kernelimage=Image.lzo
>>
>>   nand_device=atmel_nand
>> -nand_parts="256k(barebox)ro,64k(bareboxenv),1536k(kernel),-(root)"
>> -rootfs_mtdblock_nand=3
>> +nand_parts="128k(bootstrap)ro,256k(barebox)ro,1664k(bareboxenv),3M(kernel.bb),-(root)"
> use kerenel not kernel.bb
In the "defaultenv/bin/boot"  it is mentioned "/dev/nand0.kernel.bb" and 
many boards are using
".bb" suffix.
> why env the 1664k?
To align the kernel to start at 2MiB offset.
> Best Regards,
> J.
>
Regards,
Asen


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from s250.sam-solutions.net ([217.21.49.219])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WMygQ-0002xe-AH
 for barebox@lists.infradead.org; Mon, 10 Mar 2014 11:47:51 +0000
Message-ID: <531DA3DD.20507@sam-solutions.net>
Date: Mon, 10 Mar 2014 14:37:01 +0300
From: Dmitry Lavnikevich <d.lavnikevich@sam-solutions.net>
MIME-Version: 1.0
References: <5319AA25.5050803@sam-solutions.net>
 <20140310072003.GH17250@pengutronix.de>
In-Reply-To: <20140310072003.GH17250@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/5] mtd: Update internal API to support 64-bit device size
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Grigory Milev <G.Milev@sam-solutions.com>, "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hello Sascha,

eyah, I've had some problems sending mails with git send-email
through my proxy so tried to use thunderbird to pass patches outside.
Which apparently did some improvisation on them :)

Anyway, I have fixed my sendmail and will resend patches soon.

Best regards,
Lavnikevich Dmitry

On 03/10/14 10:20, Sascha Hauer wrote:
> Hi Dmitry,
>
> On Fri, Mar 07, 2014 at 02:14:45PM +0300, Dmitry Lavnikevich wrote:
>> MTD internal API presently uses 32-bit values to represent device
>> size. This patch updates them to 64-bits but leaves the external API
>> unchanged.
>>
>> In general, changing from 32-bit to 64-bit values cause little
>> or no changes to the majority of the code with the following
>> exceptions:
>>    - printk message formats;
>>    - division and modulus of 64-bit values (mtd_div_by_wb,
>>      mtd_div_by_eb may be used in some of such cases).
>>
>> Was tested on phyFLEX i.MX6.
>>
>> Signed-off-by: Dmitry Lavnikevich <d.lavnikevich@sam-solutions.com>
>> Signed-off-by: Grigory Milev <g.milev@sam-solutions.com>
> Your patches look all good. Unfortunately I can't apply them because
> your mailer wraps lines.
>
>> diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
>> index 6db1c6d..7efb03c 100644
>> --- a/drivers/mtd/core.c
>> +++ b/drivers/mtd/core.c
>> @@ -397,7 +397,7 @@ int add_mtd_device(struct mtd_info *mtd, char
>> *devname, int device_id)
>>   	mtd->cdev.mtd = mtd;
>>    	if (IS_ENABLED(CONFIG_PARAMETER)) {
>> -		dev_add_param_int_ro(&mtd->class_dev, "size", mtd->size, "%u");
>> +		dev_add_param_int_ro(&mtd->class_dev, "size", mtd->size, "%llu");
>>   		dev_add_param_int_ro(&mtd->class_dev, "erasesize",
>> mtd->erasesize, "%u");
> For example here.
>
>>   	flash->mtd.read = m25p80_read;
>>   diff --git a/drivers/mtd/devices/mtd_dataflash.c
> Here is one space too much before 'diff'
>
>> diff --git a/include/linux/mtd/mtd-abi.h b/include/linux/mtd/mtd-abi.h
>> index 11d51e2..c1ba55b 100644
>> --- a/include/linux/mtd/mtd-abi.h
>> +++ b/include/linux/mtd/mtd-abi.h
>> @@ -9,6 +9,8 @@
>>    #ifndef DOXYGEN_SHOULD_SKIP_THIS
>>   +#include <asm-generic/div64.h>
>> +
> Here also is one space too much.
>
> Could you try resending it using git-send-email?
>
> Sascha
>


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

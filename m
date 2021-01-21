Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from cpanel.siel.si ([46.19.9.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l2Yzj-0001uM-OG
 for barebox@lists.infradead.org; Thu, 21 Jan 2021 12:23:24 +0000
References: <20210120125107.736121-1-andrej.picej@norik.com>
 <20210120125107.736121-4-andrej.picej@norik.com>
 <20210121091128.GG19063@pengutronix.de>
From: Andrej Picej <andrej.picej@norik.com>
Message-ID: <435bb8a9-96b8-4a09-1a42-19cc77e42ebf@norik.com>
Date: Thu, 21 Jan 2021 13:23:16 +0100
MIME-Version: 1.0
In-Reply-To: <20210121091128.GG19063@pengutronix.de>
Content-Language: en-US
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
Subject: Re: [PATCH 3/3] ARM: i.MX: xload-gpmi-nand: apply errata 007117
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

yes, unfortunately we have. We applied this just because we experienced 
hangs in device booting tests. After this patch the NAND booting 
problems went away. The booting failed during DMA page reading.
I just tested this again and after excluding the changes in this patch 
the device fails at executing DMA commands. The boot fails in 
approximately one out of 10 boots.

Best regards,
Andrej

On 21. 01. 21 10:11, Sascha Hauer wrote:
> On Wed, Jan 20, 2021 at 01:51:07PM +0100, Andrej Picej wrote:
>> During raw NAND booting, GPMI/BCH clock generation might fail due to
>> improper clock gating conditions and consequently booting from NAND will
>> fail. This is caused by silicon errata ERR007117. Apply errata fix
>> workaround before GPMI NAND xload to prevent this from occurring.
>>
>> Signed-off-by: Primoz Fiser <primoz.fiser@norik.com>
>> Signed-off-by: Andrej Picej <andrej.picej@norik.com>
>> ---
>>   arch/arm/mach-imx/xload-gpmi-nand.c | 62 +++++++++++++++++++++++++++++
>>   1 file changed, 62 insertions(+)
>>
>> diff --git a/arch/arm/mach-imx/xload-gpmi-nand.c b/arch/arm/mach-imx/xload-gpmi-nand.c
>> index 04f799604..4be6d1890 100644
>> --- a/arch/arm/mach-imx/xload-gpmi-nand.c
>> +++ b/arch/arm/mach-imx/xload-gpmi-nand.c
>> @@ -20,6 +20,8 @@
>>   #include <mach/xload.h>
>>   #include <mach/imx-nand-bcb.h>
>>   #include <linux/mtd/rawnand.h>
>> +#include <mach/imx6-regs.h>
>> +#include <mach/clock-imx6.h>
>>   
>>   /*
>>    * MXS DMA hardware command.
>> @@ -256,6 +258,63 @@ struct mxs_nand_info {
>>   	unsigned long nand_size;
>>   };
>>   
>> +/**
>> + * It was discovered that xloading barebox from NAND sometimes fails. Observed
>> + * behaviour is similar to silicon errata ERR007117 for i.MX6.
> 
> Have you really seen this behaviour? I wonder because the ROM has
> already loaded the initial code that is just running from NAND, so it
> surprises me that we still have to apply clock fixes.
> 
> Sascha
> 

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-io0-x241.google.com ([2607:f8b0:4001:c06::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f9Htz-0003Dp-Mm
 for barebox@lists.infradead.org; Thu, 19 Apr 2018 22:19:41 +0000
Received: by mail-io0-x241.google.com with SMTP id q84-v6so8412310iod.10
 for <barebox@lists.infradead.org>; Thu, 19 Apr 2018 15:19:28 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1524065010.3528.9.camel@pengutronix.de>
References: <20180414175024.9962-1-andrew.smirnov@gmail.com>
 <20180414175024.9962-3-andrew.smirnov@gmail.com>
 <1524065010.3528.9.camel@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 19 Apr 2018 15:19:27 -0700
Message-ID: <CAHQ1cqFpxiSpAVAyXZEp-UbXH39dHSzibzTfjpkHtNd-0bopnw@mail.gmail.com>
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
Subject: Re: [PATCH 02/10] ARM: i.MX: Add infrastructure to record SoC reset
 reason
To: Philipp Zabel <p.zabel@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Wed, Apr 18, 2018 at 8:23 AM, Philipp Zabel <p.zabel@pengutronix.de> wrote:
> On Sat, 2018-04-14 at 10:50 -0700, Andrey Smirnov wrote:
>> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
>> ---
>>  arch/arm/mach-imx/imx.c                       | 49 +++++++++++++++++++++++++++
>>  arch/arm/mach-imx/include/mach/reset-reason.h | 17 ++++++++++
>>  2 files changed, 66 insertions(+)
>>  create mode 100644 arch/arm/mach-imx/include/mach/reset-reason.h
>>
>> diff --git a/arch/arm/mach-imx/imx.c b/arch/arm/mach-imx/imx.c
>> index 9400105c6..e860e298a 100644
>> --- a/arch/arm/mach-imx/imx.c
>> +++ b/arch/arm/mach-imx/imx.c
>> @@ -14,8 +14,11 @@
>>  #include <common.h>
>>  #include <of.h>
>>  #include <init.h>
>> +#include <io.h>
>>  #include <mach/revision.h>
>> +#include <mach/reset-reason.h>
>>  #include <mach/generic.h>
>> +#include <reset_source.h>
>>
>>  static int __imx_silicon_revision = IMX_CHIP_REV_UNKNOWN;
>>
>> @@ -147,3 +150,49 @@ static int imx_init(void)
>>       return ret;
>>  }
>>  postcore_initcall(imx_init);
>> +
>> +void imx_set_reset_reason(void __iomem *srsr)
>> +{
>> +     enum reset_src_type type = RESET_UKWN;
>> +     const u32 reg = readl(srsr);
>> +
>> +     /*
>> +      * SRSR register captures ALL reset event that occured since
>> +      * POR, so we need to clear it to make sure we only caputre
>> +      * the latest one.
>> +      */
>> +     writel(reg, srsr);
>
> What if, say, both a watchdog and the tempsense reset have triggered
> since last POR (or since last clearing of SRSR)?
> In that case we'll report RESET_UKWN *and* throw away the SRSR
> information here.
>

I am assuming we are talking about the fact that "reg" is decoded
using switch statement, as opposed to doing bitmaksing (like VFxxx
code does). I got the code form U-Boot and that is how it's doing the
decoding, but you are right it is going to be problematic for use-case
you describe.

I'll switch the code to do bitmaksing instead.

Thanks,
Andrey Smrinov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

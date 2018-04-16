Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-it0-x243.google.com ([2607:f8b0:4001:c0b::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f84BD-00006g-Cq
 for barebox@lists.infradead.org; Mon, 16 Apr 2018 13:28:24 +0000
Received: by mail-it0-x243.google.com with SMTP id 71-v6so11530030ith.2
 for <barebox@lists.infradead.org>; Mon, 16 Apr 2018 06:28:13 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20180416071304.2gm2b6noqof3kokw@pengutronix.de>
References: <20180414175024.9962-1-andrew.smirnov@gmail.com>
 <20180414175024.9962-4-andrew.smirnov@gmail.com>
 <20180416071304.2gm2b6noqof3kokw@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 16 Apr 2018 06:28:11 -0700
Message-ID: <CAHQ1cqHjLt+UczgWu+_Pe3NLWZM6QWu_M07Odj_5++puaMNs3w@mail.gmail.com>
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
Subject: Re: [PATCH 03/10] ARM: i.MX6: Record reset reason as a part of startup
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Mon, Apr 16, 2018 at 12:13 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> Hi Andrey,
>
> On Sat, Apr 14, 2018 at 10:50:17AM -0700, Andrey Smirnov wrote:
>> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
>> ---
>>  arch/arm/mach-imx/imx6.c                      | 4 +++-
>>  arch/arm/mach-imx/include/mach/reset-reason.h | 2 ++
>>  2 files changed, 5 insertions(+), 1 deletion(-)
>>
>> diff --git a/arch/arm/mach-imx/imx6.c b/arch/arm/mach-imx/imx6.c
>> index 14a1cba5a..3d81c2785 100644
>> --- a/arch/arm/mach-imx/imx6.c
>> +++ b/arch/arm/mach-imx/imx6.c
>> @@ -19,6 +19,7 @@
>>  #include <mach/imx6.h>
>>  #include <mach/generic.h>
>>  #include <mach/revision.h>
>> +#include <mach/reset-reason.h>
>>  #include <mach/imx6-anadig.h>
>>  #include <mach/imx6-regs.h>
>>  #include <mach/generic.h>
>> @@ -151,6 +152,7 @@ int imx6_init(void)
>>  {
>>       const char *cputypestr;
>>       u32 mx6_silicon_revision;
>> +     void __iomem *src = IOMEM(MX6_SRC_BASE_ADDR);
>>
>>       imx6_init_lowlevel();
>>
>> @@ -195,7 +197,7 @@ int imx6_init(void)
>>       }
>>
>>       imx_set_silicon_revision(cputypestr, mx6_silicon_revision);
>> -
>> +     imx_set_reset_reason(src + IMX6_SRC_SRSR);
>
> This will get overwritten by the watchdog driver if enabled.
>

I am not sure I see how. Imx_watchdog_detect_reset_source() reports
reset sources with the same priority as this code, so
reset_source_set_priority() should bail out early without changing
anything in that case.

Regardless, even if it were true, I think that behavior is perfectly
OK. First of all, startup log will still be present, which is IMHO
pretty useful. Second, the platforms that doen't use/rely on built-in
watchdog would benefit from this.

Another thing we can do is add code to respect "reset-source-priority"
to imxwd.c, so that people could ajdust what reset source info they
want to see via DT.

Let me know what you think.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

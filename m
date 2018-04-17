Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-io0-x242.google.com ([2607:f8b0:4001:c06::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f8Sdg-0007LY-9I
 for barebox@lists.infradead.org; Tue, 17 Apr 2018 15:35:25 +0000
Received: by mail-io0-x242.google.com with SMTP id a7so6974340ioc.12
 for <barebox@lists.infradead.org>; Tue, 17 Apr 2018 08:35:13 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20180417064925.4uwscnbqgnw2zu27@pengutronix.de>
References: <20180414175024.9962-1-andrew.smirnov@gmail.com>
 <20180414175024.9962-4-andrew.smirnov@gmail.com>
 <20180416071304.2gm2b6noqof3kokw@pengutronix.de>
 <CAHQ1cqHjLt+UczgWu+_Pe3NLWZM6QWu_M07Odj_5++puaMNs3w@mail.gmail.com>
 <20180417064925.4uwscnbqgnw2zu27@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 17 Apr 2018 08:35:12 -0700
Message-ID: <CAHQ1cqE+jzfOoFNkXpUX_eqjN=whM9EGYFA1OYo59gFbDiSYWQ@mail.gmail.com>
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

On Mon, Apr 16, 2018 at 11:49 PM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> On Mon, Apr 16, 2018 at 06:28:11AM -0700, Andrey Smirnov wrote:
>> On Mon, Apr 16, 2018 at 12:13 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
>> > Hi Andrey,
>> >
>> > On Sat, Apr 14, 2018 at 10:50:17AM -0700, Andrey Smirnov wrote:
>> >> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
>> >> ---
>> >>  arch/arm/mach-imx/imx6.c                      | 4 +++-
>> >>  arch/arm/mach-imx/include/mach/reset-reason.h | 2 ++
>> >>  2 files changed, 5 insertions(+), 1 deletion(-)
>> >>
>> >> diff --git a/arch/arm/mach-imx/imx6.c b/arch/arm/mach-imx/imx6.c
>> >> index 14a1cba5a..3d81c2785 100644
>> >> --- a/arch/arm/mach-imx/imx6.c
>> >> +++ b/arch/arm/mach-imx/imx6.c
>> >> @@ -19,6 +19,7 @@
>> >>  #include <mach/imx6.h>
>> >>  #include <mach/generic.h>
>> >>  #include <mach/revision.h>
>> >> +#include <mach/reset-reason.h>
>> >>  #include <mach/imx6-anadig.h>
>> >>  #include <mach/imx6-regs.h>
>> >>  #include <mach/generic.h>
>> >> @@ -151,6 +152,7 @@ int imx6_init(void)
>> >>  {
>> >>       const char *cputypestr;
>> >>       u32 mx6_silicon_revision;
>> >> +     void __iomem *src = IOMEM(MX6_SRC_BASE_ADDR);
>> >>
>> >>       imx6_init_lowlevel();
>> >>
>> >> @@ -195,7 +197,7 @@ int imx6_init(void)
>> >>       }
>> >>
>> >>       imx_set_silicon_revision(cputypestr, mx6_silicon_revision);
>> >> -
>> >> +     imx_set_reset_reason(src + IMX6_SRC_SRSR);
>> >
>> > This will get overwritten by the watchdog driver if enabled.
>> >
>>
>> I am not sure I see how. Imx_watchdog_detect_reset_source() reports
>> reset sources with the same priority as this code, so
>> reset_source_set_priority() should bail out early without changing
>> anything in that case.
>
> I wasn't aware there is a priority mechanism involved. Indeed the
> behaviour seems to be correct. Maybe we should even higher the priority
> of imx_set_reset_reason()? This information seems the more accurate one,
> so it should be used, and we shouldn't depend on the order of execution.
>

I think if I add support for "reset-source-priority" to imxwd.c and
set it up to use the value less then RESET_SOURCE_DEFAULT_PRIORITY by
default we can get both what you describe and allow users to override
the behavior and prioritize reset source provided by watchdog driver.

Let me know if this sounds like a bad idea.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

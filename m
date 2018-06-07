Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-it0-x242.google.com ([2607:f8b0:4001:c0b::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fQuZW-0000fM-6y
 for barebox@lists.infradead.org; Thu, 07 Jun 2018 13:04:52 +0000
Received: by mail-it0-x242.google.com with SMTP id v83-v6so12530188itc.3
 for <barebox@lists.infradead.org>; Thu, 07 Jun 2018 06:03:11 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1528376402.15027.9.camel@pengutronix.de>
References: <20180607094235.29848-1-l.stach@pengutronix.de>
 <20180607094235.29848-2-l.stach@pengutronix.de>
 <CAHQ1cqG3LVu9KKTvve7b_QHrnXzyBnC9SCbQ2WECiLVdqq_rVg@mail.gmail.com>
 <1528376402.15027.9.camel@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 7 Jun 2018 06:03:10 -0700
Message-ID: <CAHQ1cqFmc9N=Do8zMjESAa-3=m-nVo=6ZDMgXmmFLEL2tbH+xA@mail.gmail.com>
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
Subject: Re: [PATCH 2/2] ARM: throw out no-MMU vector base fixup when ARMv7
 isn't selected
To: Lucas Stach <l.stach@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Thu, Jun 7, 2018 at 6:00 AM, Lucas Stach <l.stach@pengutronix.de> wrote:
> Am Donnerstag, den 07.06.2018, 05:53 -0700 schrieb Andrey Smirnov:
>> > On Thu, Jun 7, 2018 at 2:42 AM, Lucas Stach <l.stach@pengutronix.de> wrote:
>> > May save some code space, but more importantly fixes the ARMv8 build.
>> >
>>
>> Does http://lists.infradead.org/pipermail/barebox/2018-May/033184.html
>> not work in your case?
>
> I just hadn't noticed this patch, when I wrote this one. So we can
> drop this one if yours get merged.
>

Ah, good to know. I was worried I was missing some use-case.

Thanks,
Andrey Smirnov

> Regards,
> Lucas
>
>>
>> > > > Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
>> > ---
>> >  arch/arm/cpu/no-mmu.c | 3 ++-
>> >  1 file changed, 2 insertions(+), 1 deletion(-)
>> >
>> > diff --git a/arch/arm/cpu/no-mmu.c b/arch/arm/cpu/no-mmu.c
>> > index 7268fa9b9d78..eff4cdcba4be 100644
>> > --- a/arch/arm/cpu/no-mmu.c
>> > +++ b/arch/arm/cpu/no-mmu.c
>> > @@ -37,7 +37,8 @@ static int nommu_v7_vectors_init(void)
>> >         void *vectors;
>> >         u32 cr;
>> >
>> > -       if (cpu_architecture() < CPU_ARCH_ARMv7)
>> > +       if (!IS_ENABLED(CONFIG_CPU_32v7) ||
>> > +           (cpu_architecture() < CPU_ARCH_ARMv7))
>> >                 return 0;
>> >
>> >         /*
>> > --
>> > 2.17.1
>> >
>> >
>> > _______________________________________________
>> > barebox mailing list
>> > barebox@lists.infradead.org
>> > http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

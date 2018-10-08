Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g9XbJ-00086f-6V
 for barebox@lists.infradead.org; Mon, 08 Oct 2018 15:37:42 +0000
Received: by mail-wr1-x442.google.com with SMTP id y16so21341348wrw.3
 for <barebox@lists.infradead.org>; Mon, 08 Oct 2018 08:37:30 -0700 (PDT)
MIME-Version: 1.0
References: <20181008063542.18709-1-andrew.smirnov@gmail.com>
 <20181008063542.18709-3-andrew.smirnov@gmail.com>
 <20181008081702.2gu6aywkiw4sqlk7@pengutronix.de>
In-Reply-To: <20181008081702.2gu6aywkiw4sqlk7@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 8 Oct 2018 08:37:17 -0700
Message-ID: <CAHQ1cqE4M0SGSXY9=MV4edoMgWD88jSj7s9f4ATZYGQXHrtBPw@mail.gmail.com>
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
Subject: Re: [PATCH 02/16] clocksource: Add ARM global timer support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Mon, Oct 8, 2018 at 1:17 AM Sascha Hauer <s.hauer@pengutronix.de> wrote:
>
> On Sun, Oct 07, 2018 at 11:35:28PM -0700, Andrey Smirnov wrote:
> > Port corresponding Linux kernel driver. Currently VFxxx SoC is the
> > intended consumer because it doesn't include common i.MX GPT block
> > used as clocksource by other i.MX SoCs.
> >
> > Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> > ---
> >  drivers/clocksource/Kconfig            |   4 +
> >  drivers/clocksource/Makefile           |   1 +
> >  drivers/clocksource/arm_global_timer.c | 113 +++++++++++++++++++++++++
> >  3 files changed, 118 insertions(+)
> >  create mode 100644 drivers/clocksource/arm_global_timer.c
> >
> > diff --git a/drivers/clocksource/Kconfig b/drivers/clocksource/Kconfig
> > index 3d63f7ff1..2be5a76b3 100644
> > --- a/drivers/clocksource/Kconfig
> > +++ b/drivers/clocksource/Kconfig
> > @@ -70,3 +70,7 @@ config CLOCKSOURCE_ARMV8_TIMER
> >       bool
> >       default y
> >       depends on ARM && CPU_64v8
> > +
> > +config CLOCKSOURCE_ARM_GLOBAL_TIMER
> > +        def_bool y
> > +     depends on ARM
>
> Can you add a 'select' of this option to the VFxxx Kconfig instead?
> Having this on all Arm systems is not so nice.
>

Sure, no problem, will do in v2.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

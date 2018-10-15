Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gCAP1-0005Xn-B0
 for barebox@lists.infradead.org; Mon, 15 Oct 2018 21:27:52 +0000
Received: by mail-wr1-x441.google.com with SMTP id 63-v6so22969388wra.11
 for <barebox@lists.infradead.org>; Mon, 15 Oct 2018 14:27:40 -0700 (PDT)
MIME-Version: 1.0
References: <20181015022125.24020-1-andrew.smirnov@gmail.com>
 <20181015022125.24020-3-andrew.smirnov@gmail.com>
 <20181015204633.GA17344@ravnborg.org>
In-Reply-To: <20181015204633.GA17344@ravnborg.org>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 15 Oct 2018 14:27:25 -0700
Message-ID: <CAHQ1cqFC5yGxAvQVw9Jtp1J1b2ZXurAJQ4_2wdXZF7qdX+mo6w@mail.gmail.com>
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
Subject: Re: [PATCH v3 02/22] clocksource: Add ARM global timer support
To: Sam Ravnborg <sam@ravnborg.org>
Cc: Barebox List <barebox@lists.infradead.org>

On Mon, Oct 15, 2018 at 1:46 PM Sam Ravnborg <sam@ravnborg.org> wrote:
>
> Hi Andrey.
>
> On Sun, Oct 14, 2018 at 07:21:05PM -0700, Andrey Smirnov wrote:
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
> > index 3d63f7ff1..6a6c9362a 100644
> > --- a/drivers/clocksource/Kconfig
> > +++ b/drivers/clocksource/Kconfig
> > @@ -70,3 +70,7 @@ config CLOCKSOURCE_ARMV8_TIMER
> >       bool
> >       default y
> >       depends on ARM && CPU_64v8
> > +
> > +config CLOCKSOURCE_ARM_GLOBAL_TIMER
> > +        bool
> > +     depends on ARM && CPU_V7
>
> Mix of space and tab in the above.
>

Will fix in v4.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

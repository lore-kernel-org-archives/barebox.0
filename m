Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-it0-x244.google.com ([2607:f8b0:4001:c0b::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fTfbi-0003eh-Ex
 for barebox@lists.infradead.org; Fri, 15 Jun 2018 03:41:05 +0000
Received: by mail-it0-x244.google.com with SMTP id u4-v6so1063487itg.0
 for <barebox@lists.infradead.org>; Thu, 14 Jun 2018 20:40:52 -0700 (PDT)
MIME-Version: 1.0
References: <20180614062751.29856-1-andrew.smirnov@gmail.com>
 <20180614062751.29856-4-andrew.smirnov@gmail.com>
 <20180614130429.91a594f7a7b0b747f6205cee@gmail.com>
In-Reply-To: <20180614130429.91a594f7a7b0b747f6205cee@gmail.com>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 14 Jun 2018 20:40:39 -0700
Message-ID: <CAHQ1cqGzshN=PuzXgU+K1CpbSxLa-2fif+g8WLrnYCXe0egNqA@mail.gmail.com>
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
Subject: Re: [PATCH v6 03/10] clock: Use udelay() to implement mdelay()
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>

On Thu, Jun 14, 2018 at 3:04 AM Antony Pavlov <antonynpavlov@gmail.com> wrote:
>
> On Wed, 13 Jun 2018 23:27:44 -0700
> Andrey Smirnov <andrew.smirnov@gmail.com> wrote:
>
> > Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> > ---
> >  common/clock.c | 8 +++++---
> >  1 file changed, 5 insertions(+), 3 deletions(-)
> >
> > diff --git a/common/clock.c b/common/clock.c
> > index f98176dd5..dab6e979f 100644
> > --- a/common/clock.c
> > +++ b/common/clock.c
> > @@ -206,9 +206,11 @@ EXPORT_SYMBOL(udelay);
> >
> >  void mdelay(unsigned long msecs)
> >  {
> > -     uint64_t start = get_time_ns();
> > -
> > -     while(!is_timeout(start, msecs * MSECOND));
> > +     /*
> > +      * Parens around division below are needed to pervent ARM/EABI
>                                                       ^^^^^^^  prevent?
>

Yeah, will fix in v7.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

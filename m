Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h7Dru-0003wY-C8
 for barebox@lists.infradead.org; Fri, 22 Mar 2019 06:41:35 +0000
Received: by mail-wr1-x442.google.com with SMTP id q1so1072135wrp.0
 for <barebox@lists.infradead.org>; Thu, 21 Mar 2019 23:41:29 -0700 (PDT)
MIME-Version: 1.0
References: <20190313094202.14901-1-s.hauer@pengutronix.de>
 <20190313094202.14901-5-s.hauer@pengutronix.de>
 <CAHQ1cqFa97quXr6AW12AJKSbQ4+pN_TG71dNG83RrHVDBGSs8Q@mail.gmail.com>
 <20190320081607.prrfhjc7cgrzskns@pengutronix.de>
In-Reply-To: <20190320081607.prrfhjc7cgrzskns@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 21 Mar 2019 23:41:16 -0700
Message-ID: <CAHQ1cqGwj+JybkwKhH9AK51NOpeaoGyfk+cW7-med+bM0H1FBw@mail.gmail.com>
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
Subject: Re: [PATCH 04/15] ARM: Add arm64 pbl udelay
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Wed, Mar 20, 2019 at 1:16 AM Sascha Hauer <s.hauer@pengutronix.de> wrote:
>
> On Tue, Mar 19, 2019 at 11:12:19AM -0700, Andrey Smirnov wrote:
> > On Wed, Mar 13, 2019 at 3:27 AM Sascha Hauer <s.hauer@pengutronix.de> wrote:
> > >
> > > PBL often needs a way to udelay execution. Since we have a generic timer
> > > in ARMv8 we can implement a generic udelay.
> > >
> >
> > Now that get_cntpct() and get_cntfrq() are implemented for ARMv7 we
> > can probably extend this to both ARMv8 and ARMv7.
>
> Yes, we could do this. The problem is that this works only on ARMv7
> cores that have this timer. What about the others? PBL code that depends
> on udelay() can then only run on these cores. Arguably we already have
> this problem when I introduce the symbol for ARMv8, but it probably gets
> worse when we start using udelay in more places in PBL.
> Any idea for a way to implement a udelay for the older cores?
>

Yeah, throwing ARMv4 and ARMv5 into the mix does complicate this. The
only solution that I can think of so far, would be to keep udealy() a
static inline, header-only function and then strategically include
that header in places that we know are ARMv7 only. As for ARMv4 and
v5, I can't think of a universal way of implementing a delay function,
so there's probably not much that we can do there.

Anyway, my original message was just a suggestion, having this
function even for just ARMv8 is an improvement already.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

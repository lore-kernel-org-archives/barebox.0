Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from f282.mail.ru ([94.100.178.224])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UUKI6-0006EU-EF
 for barebox@lists.infradead.org; Mon, 22 Apr 2013 17:12:35 +0000
From: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
Mime-Version: 1.0
Date: Mon, 22 Apr 2013 21:12:30 +0400
Message-ID: <1366650750.163970243@f282.mail.ru>
In-Reply-To: <20130422170358.GN32299@pengutronix.de>
References: <1366439718-31495-1-git-send-email-shc_work@mail.ru>
 <20130422170358.GN32299@pengutronix.de>
Reply-To: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
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
Subject: =?UTF-8?B?UmVbMl06IFtQQVRDSF0gY2xvY2tzb3VyY2U6IEFkZCBwb2ludGVyIHRvIGNs?=
 =?UTF-8?B?b2Nrc291cmNlIHN0cnVjdHVyZSBpbiByZWFkIGZ1bmN0aW9u?=
To: =?UTF-8?B?U2FzY2hhIEhhdWVy?= <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

> On Sat, Apr 20, 2013 at 10:35:18AM +0400, Alexander Shiyan wrote:
> > This patch adds pointer to clocksource structure in read function.
> > For avoid name collisions, clocksource names for all drivers was
> > changed to be unique.
> > 
> > Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> > ---
> >  arch/arm/mach-at91/at91rm9200_time.c  |  8 ++++----
> >  arch/arm/mach-at91/at91sam926x_time.c |  8 ++++----
> >  arch/arm/mach-ep93xx/clocksource.c    |  8 ++++----
> >  arch/arm/mach-imx/clocksource.c       | 10 +++++-----
> >  arch/arm/mach-mxs/clocksource-imx23.c | 12 +++++++-----
> >  arch/arm/mach-mxs/clocksource-imx28.c |  2 +-
> >  arch/arm/mach-netx/clocksource.c      |  8 ++++----
> >  arch/arm/mach-omap/dmtimer0.c         |  2 +-
> >  arch/arm/mach-omap/s32k_clksource.c   |  2 +-
> >  arch/arm/mach-pxa/clocksource.c       |  8 ++++----
> >  arch/arm/mach-samsung/s3c-timer.c     |  8 ++++----
> >  arch/arm/mach-tegra/clock.c           |  8 ++++----
> >  arch/arm/mach-versatile/core.c        |  2 +-
> >  arch/blackfin/lib/clock.c             |  8 ++++----
> >  arch/mips/lib/csrc-r4k.c              |  8 ++++----
> >  arch/mips/mach-xburst/csrc-jz4750.c   |  2 +-
> >  arch/nios2/lib/clock.c                |  8 ++++----
> >  arch/openrisc/lib/clock.c             |  9 +++++----
> >  arch/ppc/mach-mpc5xxx/time.c          |  8 ++++----
> >  arch/ppc/mach-mpc85xx/time.c          | 10 +++++-----
> >  arch/sandbox/board/clock.c            |  8 ++++----
> >  arch/x86/mach-i386/pit_timer.c        |  8 ++++----
> >  common/clock.c                        |  2 +-
> >  drivers/clocksource/amba-sp804.c      |  2 +-
> >  drivers/clocksource/arm_smp_twd.c     |  2 +-
> >  drivers/clocksource/bcm2835.c         |  2 +-
> >  drivers/clocksource/clps711x.c        |  2 +-
> >  drivers/clocksource/nomadik.c         |  2 +-
> >  include/clock.h                       |  2 +-
> >  29 files changed, 86 insertions(+), 83 deletions(-)
> > 
> > diff --git a/arch/arm/mach-at91/at91rm9200_time.c b/arch/arm/mach-at91/at91rm9200_time.c
> > index 1b73a51..8f36c9f 100644
> > --- a/arch/arm/mach-at91/at91rm9200_time.c
> > +++ b/arch/arm/mach-at91/at91rm9200_time.c
> > @@ -40,7 +40,7 @@
> >   * the updates as seen by the CPU don't seem to be strictly monotonic.
> >   * Waiting until we read the same value twice avoids glitching.
> >   */
> > -uint64_t at91rm9200_clocksource_read(void)
> > +uint64_t at91rm9200_clocksource_read(struct clocksource *cs)
> 
> I also do not find this change useful. I mean, if we had a reason to
> use multiple clock sources, then this would be the way to go of course,
> but just doing it for the sake of more be beauttiful code, no.

Yes, I know this change is too early for now. We can discuss about it.
Main direction (as I say before), is just attempt to reuse code from
boards. Just a start. No necessary a apply this now, lets discuss about it.

---
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

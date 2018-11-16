Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gNYkS-0000pU-48
 for barebox@lists.infradead.org; Fri, 16 Nov 2018 07:41:06 +0000
Date: Fri, 16 Nov 2018 08:40:51 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181116074051.a4czijozsdywhqhf@pengutronix.de>
References: <20181115141552.26386-1-s.hauer@pengutronix.de>
 <CAHQ1cqEekk=+pCJRz3SgrdC5XS4grnwuQDpmcgXHcTmcw0ocdg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHQ1cqEekk=+pCJRz3SgrdC5XS4grnwuQDpmcgXHcTmcw0ocdg@mail.gmail.com>
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
Subject: Re: [PATCH] ARM: i.MX: When SRSR shows wdog then lookup reset source
 in wdog
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>

On Thu, Nov 15, 2018 at 08:16:09AM -0800, Andrey Smirnov wrote:
> On Thu, Nov 15, 2018 at 6:15 AM Sascha Hauer <s.hauer@pengutronix.de> wrote:
> >
> > On i.MX6 when the watchdog has resetted the system then the SRSR
> > register correctly shows that the watchdog has resetted the system.
> > This is not the desired result though, a "reset" in barebox or "reboot"
> > in Linux should result in "RST" as reset source. So instead of making
> > the SRSR register value overwrite the reset source read from the
> > watchdog registers, interpret the SRSR value corresponding to watchdog
> > reset as "lookup details in the watchdog registers".
> >
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > Cc: Andrey Smirnov <andrew.smirnov@gmail.com>
> > ---
> >  arch/arm/mach-imx/imx.c  |  6 +++---
> >  drivers/watchdog/imxwd.c | 10 +++++++---
> >  2 files changed, 10 insertions(+), 6 deletions(-)
> >
> > diff --git a/arch/arm/mach-imx/imx.c b/arch/arm/mach-imx/imx.c
> > index ad227663dd..f87dd76c75 100644
> > --- a/arch/arm/mach-imx/imx.c
> > +++ b/arch/arm/mach-imx/imx.c
> > @@ -204,9 +204,9 @@ void imx_set_reset_reason(void __iomem *srsr,
> >          * sure we'll always override info from watchdog driver.
> >          */
> >         reset_source_set_priority(type,
> > -                                 RESET_SOURCE_DEFAULT_PRIORITY + 1);
> > +                                 RESET_SOURCE_DEFAULT_PRIORITY);
> >         reset_source_set_instance(type, instance);
> >
> > -       pr_info("i.MX reset reason %s (SRSR: 0x%08x)\n",
> > -               reset_source_name(), reg);
> > +       pr_debug("i.MX reset reason %s (SRSR: 0x%08x)\n",
> > +                reset_source_name(), reg);
> 
> Can we keep this at pr_info level?

There are other places setting the reset source like the watchdog
introduced here and the da9053 driver which is used on some Phytec
boards. I think it's confusing that we get the message the reset reason
is something and when you look at $global.system.reset later it's
something else.

I'll leave the pr_info in for now, but I think this leaves room for
improvements.

Sascha


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f8iNJ-0006fn-A5
 for barebox@lists.infradead.org; Wed, 18 Apr 2018 08:23:44 +0000
Date: Wed, 18 Apr 2018 10:23:21 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180418082321.gvm5mhznphwqgl7y@pengutronix.de>
References: <20180414175024.9962-1-andrew.smirnov@gmail.com>
 <20180414175024.9962-4-andrew.smirnov@gmail.com>
 <20180416071304.2gm2b6noqof3kokw@pengutronix.de>
 <CAHQ1cqHjLt+UczgWu+_Pe3NLWZM6QWu_M07Odj_5++puaMNs3w@mail.gmail.com>
 <20180417064925.4uwscnbqgnw2zu27@pengutronix.de>
 <CAHQ1cqE+jzfOoFNkXpUX_eqjN=whM9EGYFA1OYo59gFbDiSYWQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHQ1cqE+jzfOoFNkXpUX_eqjN=whM9EGYFA1OYo59gFbDiSYWQ@mail.gmail.com>
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
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>

On Tue, Apr 17, 2018 at 08:35:12AM -0700, Andrey Smirnov wrote:
> On Mon, Apr 16, 2018 at 11:49 PM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> > On Mon, Apr 16, 2018 at 06:28:11AM -0700, Andrey Smirnov wrote:
> >> On Mon, Apr 16, 2018 at 12:13 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> >> >> @@ -151,6 +152,7 @@ int imx6_init(void)
> >> >>  {
> >> >>       const char *cputypestr;
> >> >>       u32 mx6_silicon_revision;
> >> >> +     void __iomem *src = IOMEM(MX6_SRC_BASE_ADDR);
> >> >>
> >> >>       imx6_init_lowlevel();
> >> >>
> >> >> @@ -195,7 +197,7 @@ int imx6_init(void)
> >> >>       }
> >> >>
> >> >>       imx_set_silicon_revision(cputypestr, mx6_silicon_revision);
> >> >> -
> >> >> +     imx_set_reset_reason(src + IMX6_SRC_SRSR);
> >> >
> >> > This will get overwritten by the watchdog driver if enabled.
> >> >
> >>
> >> I am not sure I see how. Imx_watchdog_detect_reset_source() reports
> >> reset sources with the same priority as this code, so
> >> reset_source_set_priority() should bail out early without changing
> >> anything in that case.
> >
> > I wasn't aware there is a priority mechanism involved. Indeed the
> > behaviour seems to be correct. Maybe we should even higher the priority
> > of imx_set_reset_reason()? This information seems the more accurate one,
> > so it should be used, and we shouldn't depend on the order of execution.
> >
> 
> I think if I add support for "reset-source-priority" to imxwd.c and
> set it up to use the value less then RESET_SOURCE_DEFAULT_PRIORITY by
> default we can get both what you describe and allow users to override
> the behavior and prioritize reset source provided by watchdog driver.
> 
> Let me know if this sounds like a bad idea.

It doesn't sound like a bad idea, I'm just not convinced it's a good
idea ;)

Reading the SRC registers seems to give us more accurate informations
than reading the watchdog. Provided this is true I don't see a reason to
make the priority configurable. If it was only for i.MX6/7 I would say,
we could remove the reset source detection from the watchdog driver
entirely, but we need the informations from the driver on older SoCs.

Anyway, before making this configurable I think it's better to wait
until somebody to show up who really needs this (and thus can explain
the reasons), rather than to just add it in case it might be useful.

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

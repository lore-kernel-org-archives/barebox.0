Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hBOxD-0004el-Ut
 for barebox@lists.infradead.org; Tue, 02 Apr 2019 19:20:17 +0000
Date: Tue, 2 Apr 2019 21:20:11 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20190402192011.GB5916@ravnborg.org>
References: <20190401101822.7392-1-a.fatoum@pengutronix.de>
 <20190401101822.7392-6-a.fatoum@pengutronix.de>
 <20190402173810.GB18142@ravnborg.org>
 <5cee40c5-5473-d878-befc-bf758a7c849c@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5cee40c5-5473-d878-befc-bf758a7c849c@pengutronix.de>
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
Subject: Re: [PATCH v3 05/15] ARM: at91: watchdog: implement at91_wdt_disable
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Apr 02, 2019 at 08:39:56PM +0200, Ahmad Fatoum wrote:
> Hello Sam,
> 
> On 2/4/19 19:38, Sam Ravnborg wrote:
> > Hi Ahmad.
> > 
> > On Mon, Apr 01, 2019 at 12:18:13PM +0200, Ahmad Fatoum wrote:
> >> Low level init code might want to disable the watchdog in PBL.
> >> Provide a helper to do so.
> >>
> >> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> >> ---
> >>  arch/arm/mach-at91/include/mach/at91_wdt.h | 16 ++++++++++++++++
> >>  1 file changed, 16 insertions(+)
> >>
> >> diff --git a/arch/arm/mach-at91/include/mach/at91_wdt.h b/arch/arm/mach-at91/include/mach/at91_wdt.h
> >> index 36d37b9d2d64..d295d35d1b5c 100644
> >> --- a/arch/arm/mach-at91/include/mach/at91_wdt.h
> >> +++ b/arch/arm/mach-at91/include/mach/at91_wdt.h
> >> @@ -35,4 +35,20 @@
> >>  #define		AT91_WDT_WDUNF		(1 << 0)		/* Watchdog Underflow */
> >>  #define		AT91_WDT_WDERR		(1 << 1)		/* Watchdog Error */
> >>  
> >> +#ifndef __ASSEMBLY__
> >> +// SPDX-License-Identifier: BSD-1-Clause
> >> +/*
> >> + * Copyright (c) 2006, Atmel Corporation
> >> + */
> >> +
> >> +#include <asm-generic/io.h>
> >> +
> >> +static inline void at91_wdt_disable(void __iomem *wdt_base)
> > 
> > As we are copying a lot of code from at91bootstrap could
> > we then use the same name for this function:
> > driver/at91_wdt.c:void at91_disable_wdt(void)
> 
> ${arch}_${subsystem}_${function} seems to be the usual naming scheme
> for "globals". Why differ? I don't see the utility of copying
> the at91bootstrap name.

Yeah, keep it in line with barebox is better.
It was more a something I stumbled upon comment.

Here you can also add my:
Reviewed-by: Sam Ravnborg <sam@ravnborg.org>

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

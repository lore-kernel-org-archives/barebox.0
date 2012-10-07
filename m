Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp21.mail.ru ([94.100.176.174])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TKni7-00032I-Gw
 for barebox@lists.infradead.org; Sun, 07 Oct 2012 10:03:48 +0000
Date: Sun, 7 Oct 2012 14:03:37 +0400
From: Alexander Shiyan <shc_work@mail.ru>
Message-Id: <20121007140337.b778f85b.shc_work@mail.ru>
In-Reply-To: <20121005121204.GP1322@pengutronix.de>
References: <1349354221-28409-3-git-send-email-shc_work@mail.ru>
 <20121005121204.GP1322@pengutronix.de>
Mime-Version: 1.0
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 3/3] ARM: Add CLPS711X architecture
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, 5 Oct 2012 14:12:04 +0200
Sascha Hauer <s.hauer@pengutronix.de> wrote:

...
> > +void __naked __bare_init board_init_lowlevel(void)
> > +{
...
> > +	/* Enable SDQM pins */
> > +	tmp = readl(SYSCON3);
> > +	tmp &= ~SYSCON3_ENPD67;
> > +	writel(tmp, SYSCON3);
> > +
> > +	/* Setup Refresh Rate (64ms 8K Blocks) */
> > +	writel(SDRAM_REFRESH_RATE, SDRFPR);
> > +
> > +	/* Setup SDRAM (32MB, 16Bit*2, CAS=3) */
> > +	writel(SDCONF_CASLAT_3 | SDCONF_SIZE_256 | SDCONF_WIDTH_16 |
> > +	       SDCONF_CLKCTL | SDCONF_ACTIVE, SDCONF);
> 
> This is board specific, right? Then this should be done in a board file.
> BTW board_init_lowlevel no longer exists. Rename this function to reset
> and call common_reset() on entry.
We should setup SDRAM before relocate code to it. In the board code we are
alredy work in the RAM. So, we can not do this in board file.
In any case in this proc we are setup maximux SDRAM size, then in board file
we are calculate real memory size and setup it for bb & kernel.

...
> > +/*
> > + * Simple CLPS711X serial driver
> > + *
> > + * (C) Copyright 2012 Alexander Shiyan <shc_work@mail.ru>
> > + *
> > + * This program is free software; you can redistribute it and/or
> > + * modify it under the terms of the GNU General Public License as
> > + * published by the Free Software Foundation; either version 2 of
> > + * the License, or (at your option) any later version.
> > + */
> > +
> > +#include <common.h>
> > +#include <init.h>
> > +#include <io.h>
> > +#include <linux/clk.h>
> > +
> > +#include <mach/clps711x.h>
> 
> Please drop this include and specify the registers as offsets to the
> base address here.
It is very strange for me. You mean that we should separate all definitions?

-- 
Alexander Shiyan <shc_work@mail.ru>

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

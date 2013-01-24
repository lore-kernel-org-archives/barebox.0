Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 10.mo3.mail-out.ovh.net ([87.98.165.232]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TyP24-0005KM-UZ
 for barebox@lists.infradead.org; Thu, 24 Jan 2013 15:48:06 +0000
Received: from mail417.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id B7FCAFF9661
 for <barebox@lists.infradead.org>; Thu, 24 Jan 2013 17:01:53 +0100 (CET)
Date: Thu, 24 Jan 2013 16:46:42 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130124154642.GV26329@game.jcrosoft.org>
References: <1358767657-3062-1-git-send-email-fabio.porcedda@gmail.com>
 <20130121135721.GF26329@game.jcrosoft.org>
 <CAHkwnC8GJJzV_=wdOjtCPvfKYszC-EaZrHiHL3z+3JZnVwhZpA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHkwnC8GJJzV_=wdOjtCPvfKYszC-EaZrHiHL3z+3JZnVwhZpA@mail.gmail.com>
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
Subject: Re: [PATCH v2] ARM: at91: Add Telit EVK-PRO3 board support
To: Fabio Porcedda <fabio.porcedda@gmail.com>
Cc: barebox@lists.infradead.org

> >> diff --git a/arch/arm/boards/evk-pro3/init.c b/arch/arm/boards/evk-pro3/init.c
> >> new file mode 100644
> >> index 0000000..6998610
> >> --- /dev/null
> >> +++ b/arch/arm/boards/evk-pro3/init.c
> >> @@ -0,0 +1,185 @@
> >> +/*
> >> + * Copyright (C) 2007 Sascha Hauer, Pengutronix
> >> + * Copyright (C) 2013 Fabio Porcedda <fabio.porcedda@gmail.com>, Telit
> >> + *
> >> + * This program is free software; you can redistribute it and/or
> >> + * modify it under the terms of the GNU General Public License as
> >> + * published by the Free Software Foundation; either version 2 of
> >> + * the License, or (at your option) any later version.
> >> + *
> >> + * This program is distributed in the hope that it will be useful,
> >> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> >> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> >> + * GNU General Public License for more details.
> >> + */
> >> +
> >> +#include <asm/armlinux.h>
> >> +#include <common.h>
> >> +#include <gpio.h>
> >> +#include <init.h>
> >> +#include <linux/clk.h>
> >> +#include <mach/at91_rstc.h>
> >> +#include <mach/at91sam9_smc.h>
> >> +#include <mach/board.h>
> >> +#include <mach/io.h>
> >> +#include <nand.h>
> >> +
> >> +#define BOOTSTRAP_SIZE 0x3C0000
> > ???
> >
> > so big?
> 
> I managed to reduce it to 0xC0000 in patch v3.
> 
> If possible I want to use your barebox at91 bootstrap support to get
> rid of the proprietary bootstrap.
yes I'm looking for a funding to finish it

I get a WIP here that work with on 9g20, 9263 and 9260

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

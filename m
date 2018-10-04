Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g8ANQ-00073Z-8p
 for barebox@lists.infradead.org; Thu, 04 Oct 2018 20:37:41 +0000
Received: by mail-wr1-x442.google.com with SMTP id g15-v6so8698265wru.9
 for <barebox@lists.infradead.org>; Thu, 04 Oct 2018 13:37:27 -0700 (PDT)
MIME-Version: 1.0
References: <20180926013418.26920-1-andrew.smirnov@gmail.com>
 <20180926013418.26920-4-andrew.smirnov@gmail.com>
 <20180927070551.GV4097@pengutronix.de>
In-Reply-To: <20180927070551.GV4097@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 4 Oct 2018 13:37:14 -0700
Message-ID: <CAHQ1cqEEVfM_A=w8XebXPkaV+Z9AoLGymfCfBV8bXE4dPg1F-w@mail.gmail.com>
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
Subject: Re: [PATCH 3/6] i.MX7D: DCD: Create shared DDR configuration header
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Thu, Sep 27, 2018 at 12:05 AM Sascha Hauer <s.hauer@pengutronix.de> wrote:
>
> On Tue, Sep 25, 2018 at 06:34:15PM -0700, Andrey Smirnov wrote:
> > Create a shared DDR configuration header based on configuration used
> > by i.MX7D SabreSD board.
> >
> > Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> > ---
> >  .../flash-header-mx7-sabresd.imxcfg           | 79 +------------------
> >  .../flash-header/imx7d-ddr-default.imxcfg     | 78 ++++++++++++++++++
> >  2 files changed, 79 insertions(+), 78 deletions(-)
> >  create mode 100644 arch/arm/mach-imx/include/mach/flash-header/imx7d-ddr-default.imxcfg
> >
> > diff --git a/arch/arm/mach-imx/include/mach/flash-header/imx7d-ddr-default.imxcfg b/arch/arm/mach-imx/include/mach/flash-header/imx7d-ddr-default.imxcfg
> > new file mode 100644
> > index 000000000..e98f055ee
> > --- /dev/null
> > +++ b/arch/arm/mach-imx/include/mach/flash-header/imx7d-ddr-default.imxcfg
> > @@ -0,0 +1,78 @@
> > +/*
> > + * Copyright (C) 2016 NXP Semiconductors
> > + *
> > + * SPDX-License-Identifier:  GPL-2.0
> > + *
> > + * Refer docs/README.imxmage for more details about how-to configure
> > + * and create imximage boot image
> > + *
> > + * The syntax is taken as close as possible with the kwbimage
> > + *
> > + * Taken from upstream U-Boot git://git.denx.de/u-boot.git, commit
> > + * 1a8150d4b16fbafa6f1d207ddb85eda7dc399e2d
> > + */
> > +
> > +#include <mach/imx7-ddr-regs.h>
> > +
> > +wm 32 0x30340004 0x4F400005
> > +
> > +wm 32 0x30391000 0x00000002
> > +
> > +wm 32 MX7_DDRC_MSTR 0x01040001
>
> How default is this default header? It looks like it only works for the
> exact DDR type and size like used on the i.MX7D SabreSD board. Many boards
> are more or less copied from the eval boards, so having a common DDR
> setup header is a good thing, but calling this "default" sounds a bit
> strong. How about replacing "default" with "sabresd"?

Sounds good. Will do in v2.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

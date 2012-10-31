Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TTfxJ-0001dT-VA
 for barebox@lists.infradead.org; Wed, 31 Oct 2012 21:36:10 +0000
Date: Wed, 31 Oct 2012 22:36:08 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121031213608.GR1641@pengutronix.de>
References: <1351613312-4506-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1351613312-4506-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH v3 1/3] ARM: Add CLPS711X architecture
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Tue, Oct 30, 2012 at 08:08:30PM +0400, Alexander Shiyan wrote:
> This patch adds new architecture (CLPS711X) into barebox.
> The core-logic functionality of the device is built around an ARM720T
> processor running at clock speeds up to 90 MHz.
> 

[...]

> +++ b/arch/arm/mach-clps711x/reset.c
> @@ -0,0 +1,20 @@
> +/*
> + * Copyright (C) 2012 Alexander Shiyan <shc_work@mail.ru>
> + *
> + * This program is free software; you can redistribute it and/or
> + * modify it under the terms of the GNU General Public License as
> + * published by the Free Software Foundation; either version 2 of
> + * the License, or (at your option) any later version.
> + */
> +
> +#include <common.h>
> +#include <asm/barebox-arm-head.h>
> +
> +void __noreturn reset_cpu(unsigned long addr)
> +{
> +	common_reset();

Oops. Naming the entry functions 'reset' really was a bad idea of mine.
common_reset() really is for the entry functions and should probably
rather be named common_entry(). It has nothing to do with preparing for
resetting the cpu.

> +
> +	asm("mov pc, #0");

Or is it because you do not have a real reset function and have to jump
through zero instead? Still common_reset() shouldn't be necessary. What
you may have to do here is to make sure the MMU is disabled and caches
are flushed.

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

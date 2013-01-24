Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 19.mo3.mail-out.ovh.net ([178.32.98.231]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TyP74-0000DN-Te
 for barebox@lists.infradead.org; Thu, 24 Jan 2013 15:53:17 +0000
Received: from mail417.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 243BEFF8483
 for <barebox@lists.infradead.org>; Thu, 24 Jan 2013 17:07:04 +0100 (CET)
Date: Thu, 24 Jan 2013 16:51:52 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130124155152.GW26329@game.jcrosoft.org>
References: <1359038535-6051-1-git-send-email-fabio.porcedda@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1359038535-6051-1-git-send-email-fabio.porcedda@gmail.com>
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
Subject: Re: [PATCH v3] ARM: at91: Add Telit EVK-PRO3 board support
To: Fabio Porcedda <fabio.porcedda@gmail.com>
Cc: barebox@lists.infradead.org

> diff --git a/arch/arm/boards/telit-evk-pro3/init.c b/arch/arm/boards/telit-evk-pro3/init.c
> new file mode 100644
> index 0000000..06e6508
> --- /dev/null
> +++ b/arch/arm/boards/telit-evk-pro3/init.c
> @@ -0,0 +1,178 @@
> +/*
> + * Copyright (C) 2007 Sascha Hauer, Pengutronix
> + * Copyright (C) 2013 Fabio Porcedda <fabio.porcedda@gmail.com>, Telit
> + *
> + * This program is free software; you can redistribute it and/or
> + * modify it under the terms of the GNU General Public License as
> + * published by the Free Software Foundation; either version 2 of
> + * the License, or (at your option) any later version.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + */
> +
> +#include <asm/armlinux.h>
> +#include <common.h>
> +#include <gpio.h>
> +#include <init.h>
> +#include <linux/clk.h>
> +#include <mach/at91_rstc.h>
> +#include <mach/at91sam9_smc.h>
> +#include <mach/board.h>
> +#include <mach/io.h>
> +#include <nand.h>
> +
> +#define BOOTSTRAP_SIZE 0xC0000
this is really wired

on 9260 you have anly 4KiB of sram so you bootstrap will be 4KiB MAX

and as on 9260 the ROM code does not manage the bbt or even ECC correction

you just need to reserve the first block of the NAND for it

except this

Acked-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

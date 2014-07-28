Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XBe8B-0006R0-4Q
 for barebox@lists.infradead.org; Mon, 28 Jul 2014 06:09:55 +0000
Date: Mon, 28 Jul 2014 08:09:32 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140728060932.GW23235@pengutronix.de>
References: <1406454448-10645-1-git-send-email-antonynpavlov@gmail.com>
 <1406454448-10645-3-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1406454448-10645-3-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH 2/9] ARM: add very initial support for Canon DIGIC chips
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Sun, Jul 27, 2014 at 01:47:21PM +0400, Antony Pavlov wrote:
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> +++ b/arch/arm/mach-digic/core.c
> @@ -0,0 +1,24 @@
> +/*
> + * Copyright (C) 2013 Antony Pavlov <antonynpavlov@gmail.com>
> + *
> + * This file is part of barebox.
> + * See file CREDITS for list of people who contributed to this project.
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License version 2
> + * as published by the Free Software Foundation.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + */
> +
> +#include <common.h>
> +
> +void __noreturn reset_cpu(unsigned long ignored)
> +{
> +	unreachable();
> +}
> +EXPORT_SYMBOL(reset_cpu);

You shouldn't use unreachable here. unreachable is to suppress control
flow warnings when a code path is not reachable. The code above is
indeed reachable. A plain printf("%s: not implemented\n", __func__);
while(1); should do.

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

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WcseV-0004Vw-Ed
 for barebox@lists.infradead.org; Wed, 23 Apr 2014 08:35:36 +0000
Date: Wed, 23 Apr 2014 10:35:13 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140423083513.GD5858@pengutronix.de>
References: <1397642260-32606-1-git-send-email-antonynpavlov@gmail.com>
 <1397642260-32606-2-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1397642260-32606-2-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH 1/5] ARM: initial support for RC Module UEMD SoCs
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Apr 16, 2014 at 01:57:36PM +0400, Antony Pavlov wrote:
> This commit adds minimal support for the UEMD SoCs
> from RC Module (http://www.module.ru).
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> diff --git a/arch/arm/mach-uemd/reset.c b/arch/arm/mach-uemd/reset.c
> new file mode 100644
> index 0000000..df23e47
> --- /dev/null
> +++ b/arch/arm/mach-uemd/reset.c
> @@ -0,0 +1,24 @@
> +/*
> + * Copyright (C) 2014 Antony Pavlov <antonynpavlov@gmail.com>
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
> +void __noreturn reset_cpu(ulong addr)
> +{
> +	unreachable();

unreachable is for marking positions in the code which are unreachable
but the compiler does not know it. reset_cpu() *is* reachable, so
unreachable is wrong here. How about just calling hang() here?

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

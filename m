Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hBadG-0001PW-SQ
 for barebox@lists.infradead.org; Wed, 03 Apr 2019 07:48:33 +0000
Date: Wed, 3 Apr 2019 09:48:19 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190403074819.25jlmnnp2xhs7yuw@pengutronix.de>
References: <20190401101822.7392-1-a.fatoum@pengutronix.de>
 <20190401101822.7392-9-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190401101822.7392-9-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH v3 08/15] ARM: at91: import low level DDRAMC
 initialization code from at91bootstrap
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, sam@ravnborg.org

On Mon, Apr 01, 2019 at 12:18:16PM +0200, Ahmad Fatoum wrote:
> This commit imports DDRAMC initialization routines for use in PBL from
> https://github.com/linux4sam/at91bootstrap/blob/v3.8.12/driver/ddramc.c
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/arm/mach-at91/Makefile              |   1 +
>  arch/arm/mach-at91/ddramc.c              | 507 +++++++++++++++++++++++
>  arch/arm/mach-at91/include/mach/ddramc.h |  36 ++
>  3 files changed, 544 insertions(+)
>  create mode 100644 arch/arm/mach-at91/ddramc.c
>  create mode 100644 arch/arm/mach-at91/include/mach/ddramc.h
> 
> diff --git a/arch/arm/mach-at91/Makefile b/arch/arm/mach-at91/Makefile
> index 25a7916c34e4..f4eb412a2397 100644
> --- a/arch/arm/mach-at91/Makefile
> +++ b/arch/arm/mach-at91/Makefile
> @@ -1,6 +1,7 @@
>  obj-y += setup.o
>  pbl-y += at91_pmc_ll.o
>  pbl-$(CONFIG_CLOCKSOURCE_ATMEL_PIT) += early_udelay.o
> +pbl-y += ddramc.o
>  
>  ifeq ($(CONFIG_COMMON_CLK_OF_PROVIDER),)
>  obj-y += clock.o
> diff --git a/arch/arm/mach-at91/ddramc.c b/arch/arm/mach-at91/ddramc.c
> new file mode 100644
> index 000000000000..a67c8266af4b
> --- /dev/null
> +++ b/arch/arm/mach-at91/ddramc.c
> @@ -0,0 +1,507 @@
> +// SPDX-License-Identifier: BSD-1-Clause
> +/*
> + * Copyright (c) 2007, Stelian Pop <stelian.pop@leadtechdesign.com>
> + * Copyright (c) 2007 Lead Tech Design <www.leadtechdesign.com>
> + */
> +
> +#include <linux/kconfig.h>
> +#include <asm/system.h>
> +#include <mach/at91_ddrsdrc.h>
> +#include <mach/ddramc.h>
> +#include <mach/early_udelay.h>
> +
> +void at91_ddram_initialize(unsigned long base_address,
> +			   unsigned long ram_address,
> +			   struct at91_ddramc_register *ddramc_config)

The base_address argument should be of type void __iomem *.
Same for the other functions.

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

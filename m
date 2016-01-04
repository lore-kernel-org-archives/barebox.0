Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aG1Qr-0002UA-NJ
 for barebox@lists.infradead.org; Mon, 04 Jan 2016 09:28:06 +0000
Date: Mon, 4 Jan 2016 10:27:43 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160104092743.GF13058@pengutronix.de>
References: <1451627918-31967-1-git-send-email-andrew.smirnov@gmail.com>
 <1451627918-31967-3-git-send-email-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1451627918-31967-3-git-send-email-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 3/6] ARM: Fix exception table setup in MMU-less mode
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Dec 31, 2015 at 09:58:35PM -0800, Andrey Smirnov wrote:
> Add code necessary for correct initialization of exception vector
> table when MMU is disabled.
> 
> Note: Please be aware that non ARMv7 implementation of this
> functionality was not fully tested due to the lack of any such
> hardware. It should theoretically work, but only testing that I did
> was to test place_vector_table() failure path (the best I could do on
> a i.MX6)
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  arch/arm/cpu/Makefile |   6 +++
>  arch/arm/cpu/no-mmu.c | 120 ++++++++++++++++++++++++++++++++++++++++++++++++++
>  2 files changed, 126 insertions(+)
>  create mode 100644 arch/arm/cpu/no-mmu.c
> 
> diff --git a/arch/arm/cpu/Makefile b/arch/arm/cpu/Makefile
> index 418bcab..f708e8f 100644
> --- a/arch/arm/cpu/Makefile
> +++ b/arch/arm/cpu/Makefile
> @@ -11,6 +11,12 @@ obj-$(CONFIG_CMD_ARM_MMUINFO) += mmuinfo.o
>  obj-$(CONFIG_OFDEVICE) += dtb.o
>  obj-$(CONFIG_MMU) += mmu.o cache.o mmu-early.o
>  pbl-$(CONFIG_MMU) += mmu-early.o
> +
> +ifeq ($(CONFIG_MMU),)
> +obj-y += no-mmu.o
> +pbl-y += no-mmu.o
> +endif
> +
>  obj-$(CONFIG_CPU_32v4T) += cache-armv4.o
>  pbl-$(CONFIG_CPU_32v4T) += cache-armv4.o
>  obj-$(CONFIG_CPU_32v5) += cache-armv5.o
> diff --git a/arch/arm/cpu/no-mmu.c b/arch/arm/cpu/no-mmu.c
> new file mode 100644
> index 0000000..591cc2c
> --- /dev/null
> +++ b/arch/arm/cpu/no-mmu.c
> @@ -0,0 +1,120 @@
> +/*
> + * Copyright (c) 2015 Zodiac Inflight Innovation
> + * Author: Andrey Smirnov <andrew.smirnov@gmail.com>
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
> +#define pr_fmt(fmt)	"nommu: " fmt
> +
> +#include <common.h>
> +#include <dma-dir.h>
> +#include <init.h>
> +#include <mmu.h>
> +#include <errno.h>
> +#include <linux/sizes.h>
> +#include <asm/memory.h>
> +#include <asm/barebox-arm.h>
> +#include <asm/system.h>
> +#include <asm/cache.h>
> +#include <memory.h>
> +#include <asm/system_info.h>
> +#include <debug_ll.h>
> +
> +
> +#define __exceptions_size (__exceptions_stop - __exceptions_start)
> +
> +#if __LINUX_ARM_ARCH__ >= 7
> +

This does not work. In arch/arm/Makefile we have:

arch-$(CONFIG_CPU_32v7)         :=-D__LINUX_ARM_ARCH__=7 $(call cc-option,-march=armv7-a,-march=armv5t -Wa$(comma)-march=armv7-a)
arch-$(CONFIG_CPU_32v6)         :=-D__LINUX_ARM_ARCH__=6 $(call cc-option,-march=armv6,-march=armv5t -Wa$(comma)-march=armv6)
arch-$(CONFIG_CPU_32v5)         :=-D__LINUX_ARM_ARCH__=5 $(call cc-option,-march=armv5te,-march=armv4t)
arch-$(CONFIG_CPU_32v4T)        :=-D__LINUX_ARM_ARCH__=4 -march=armv4t

We can build barebox with support for multiple ARM architectures, in this
case __LINUX_ARM_ARCH__ is set to the smallest supported ARM architecture.

You can encapsulate this code in a #ifdef CONFIG_CPU_32v7 to make sure
it's only compiled when ARMv7 support is enabled. Then we still can not
be sure that we actually run on ARMv7, we'll need an additional runtime
check for:

	if (cpu_architecture() >= CPU_ARCH_ARMv7)

> +static struct resource *place_vector_table(void)
> +{
> +	int i;
> +	struct resource *vectors = NULL;
> +	resource_size_t addr[2] = { 0x00000000, 0xFFFF0000 };
> +
> +	for (i = 0; i < ARRAY_SIZE(addr); i++) {
> +		vectors = request_sdram_region("exceptions",
> +					       addr[i],
> +					       __exceptions_size);
> +		if (vectors)
> +			break;
> +	}
> +
> +	return vectors;
> +}
> +
> +static int nommu_v4_vectors_init(void)
> +{
> +	u32 cr;
> +	struct resource *vectors;
> +
> +	vectors = place_vector_table();
> +	if (!vectors) {
> +		pr_crit("Critical Error: Can't place exception vector table\n");
> +		return 0;
> +	}

Several SoCs do not have SDRAM at 0x0 and 0xFFFF0000, so on these SoCs
we would always see this message and have no chance to fix it.

Given that the < ARMv7 path is untested anyway I suggest to just skip it
and require MMU support to get exception support (unless someone has a
hardware to test this on).

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

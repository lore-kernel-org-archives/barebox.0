Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.4.pengutronix.de ([92.198.50.35])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cVwDD-0004tU-2X
 for barebox@lists.infradead.org; Tue, 24 Jan 2017 08:12:21 +0000
Date: Tue, 24 Jan 2017 09:09:43 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170124080943.mkjwtzpsoghg57ns@pengutronix.de>
References: <20170123055735.1277-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170123055735.1277-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH] i.MX: vf610: Add support for ZII VF610 Dev Family
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

Hi Andrey,

On Sun, Jan 22, 2017 at 09:57:34PM -0800, Andrey Smirnov wrote:
> Add support for ZII VF610 Dev based designs such as:
> 
>     - VF610 Dev, revision B
>     - VF610 Dev, revision C
>     - CFU1, revision A
>     - SPU3, revision A
>     - SCU4 AIB, revision C
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
> 
> Sascha, this patch is rebased on 'next' instead of 'master' so that
> you won't have to resolve conflicts with RDU2 patches in 'next'. Let
> me know if you'd rather have it rebased on 'master'.

It's fine to base on next in this case.

> +struct named_signal {
> +	unsigned int gpio;
> +	const char *name;
> +	int value;
> +};
> +
> +static int expose_signals(const struct named_signal *signals,
> +			      size_t signal_num)
> +{
> +	int ret, i;
> +
> +	for (i = 0; i < signal_num; i++) {
> +		const struct named_signal *signal = &signals[i];
> +
> +		if (signal->value < 0)
> +			ret = gpio_direction_input(signal->gpio);
> +		else
> +			ret = gpio_direction_output(signal->gpio, signal->value);
> +
> +		if (ret) {
> +			pr_err("Failed to configure \"%s\"\n", signal->name);
> +			return ret;
> +		}

This looks like gpio_request_array(). Could you use this instead?

> index 0000000..4465632
> --- /dev/null
> +++ b/arch/arm/boards/zii-vf610-dev/lowlevel.c
> @@ -0,0 +1,132 @@
> +#include <common.h>
> +#include <linux/sizes.h>
> +#include <mach/generic.h>
> +#include <asm/barebox-arm-head.h>
> +#include <asm/barebox-arm.h>
> +#include <mach/vf610-regs.h>
> +#include <mach/clock-vf610.h>
> +#include <mach/iomux-vf610.h>
> +#include <debug_ll.h>
> +
> +#if defined(CONFIG_DEBUG_LL)
> +#	if !defined(CONFIG_DEBUG_VF610_UART)
> +#		warning "CONFIG_DEBUG_LL is enabled but CONFIG_DEBUG_VF610_UART is not"
> +#	else
> +#		if CONFIG_DEBUG_IMX_UART_PORT != 1
> +#			warning "CONFIG_DEBUG_LL output is not drirected to port 1"
> +#		endif
> +#	endif
> +#endif

Just because this board is enabled doesn't mean the user is actually
currently interested in this board. He might want to enable
CONFIG_DEBUG_LL for another board, still he is warned about an invalid
config here. This is not good.

You could drop the DEBUG_LL support and instead go to PBL console
support. See arch/arm/boards/freescale-mx6-sabrelite/lowlevel.c
for a good example. Basically it means you call this right after entry:

	arm_early_mmu_cache_invalidate();
        relocate_to_current_adr();
        setup_c();
        barrier();

From here on you have a valid C environment (And thus don't need to work
around switch/case with wrong LUTs) and can also call:

	pbl_set_putc(xxx_uart_putc, uart);

after that you can use printf like functions to print messages.

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

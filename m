Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TJfnP-000351-KX
 for barebox@lists.infradead.org; Thu, 04 Oct 2012 07:24:36 +0000
Date: Thu, 4 Oct 2012 09:24:32 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121004072432.GG1322@pengutronix.de>
References: <1349334093-9769-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1349334093-9769-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/1] arm: add generic smp twd timer
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Thu, Oct 04, 2012 at 09:01:33AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> on Cortex A9 and Cortex A5 we have a generic timer which we can use as
> clocksource
> 
> Limit the timer frequency to < 25Mhz
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  arch/arm/cpu/Kconfig           |    3 ++
>  arch/arm/cpu/Makefile          |    1 +
>  arch/arm/cpu/smp_twd.c         |   93 ++++++++++++++++++++++++++++++++++++++++
>  arch/arm/include/asm/smp_twd.h |   23 ++++++++++
>  4 files changed, 120 insertions(+)
>  create mode 100644 arch/arm/cpu/smp_twd.c
>  create mode 100644 arch/arm/include/asm/smp_twd.h
> 
> diff --git a/arch/arm/cpu/Kconfig b/arch/arm/cpu/Kconfig
> index f55e862..a7a1cdb 100644
> --- a/arch/arm/cpu/Kconfig
> +++ b/arch/arm/cpu/Kconfig
> @@ -94,3 +94,6 @@ config CACHE_L2X0
>  	bool "Enable L2x0 PrimeCell"
>  	depends on MMU && ARCH_HAS_L2X0
>  
> +config ARM_SMP_TWD
> +	bool
> +	depends on CPU_V7
> diff --git a/arch/arm/cpu/Makefile b/arch/arm/cpu/Makefile
> index f7ab276..c5cbdfb 100644
> --- a/arch/arm/cpu/Makefile
> +++ b/arch/arm/cpu/Makefile
> @@ -18,5 +18,6 @@ pbl-$(CONFIG_CPU_32v6) += cache-armv6.o
>  obj-$(CONFIG_CPU_32v7) += cache-armv7.o
>  pbl-$(CONFIG_CPU_32v7) += cache-armv7.o
>  obj-$(CONFIG_CACHE_L2X0) += cache-l2x0.o
> +obj-$(CONFIG_ARM_SMP_TWD) += smp_twd.o
>  
>  pbl-y += start-pbl.o
> diff --git a/arch/arm/cpu/smp_twd.c b/arch/arm/cpu/smp_twd.c

I was thinking about a drivers/clocksource directory. Maybe this would
be a good opportunity to start it?

> +#include <common.h>
> +#include <init.h>
> +#include <clock.h>
> +#include <io.h>
> +#include <driver.h>
> +#include <errno.h>
> +#include <linux/clk.h>
> +#include <linux/err.h>
> +
> +#include <asm/smp_twd.h>

Please put the register includes either into the file or next to the
file.

> +
> +static __iomem void *twd_base;
> +static struct clk *twd_clk;
> +
> +static uint64_t smp_twd_read(void)
> +{
> +	return ~readl(twd_base + TWD_TIMER_COUNTER);
> +}
> +
> +static struct clocksource smp_twd_clksrc = {
> +	.read	= smp_twd_read,
> +	.shift	= 20,
> +	.mask	= CLOCKSOURCE_MASK(32),
> +};
> +
> +#define SMP_TWD_MAX_FREQ (25 *1000 * 1000)
> +
> +void __clocksource_updatefreq_scale(struct clocksource *cs, u32 scale, u32 freq);

This is unused.

> +
> +static int smp_twd_probe(struct device_d *dev)
> +{
> +	u32 tick_rate;
> +	u32 val;
> +	int ret;
> +	u32 presc = 0;
> +
> +	twd_clk = clk_get_sys("smp_twd", NULL);

clk_get

> +	if (IS_ERR(twd_clk)) {
> +		ret = PTR_ERR(twd_clk);
> +		pr_err("smp_twd: clock not found: %d\n", ret);

dev_err, or maybe even dev_dbg. No need to increase the image size for
this.

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

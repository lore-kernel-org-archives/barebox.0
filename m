Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itYhd-0007FX-FS
 for barebox@lists.infradead.org; Mon, 20 Jan 2020 15:11:02 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>) id 1itYhc-0004v9-3b
 for barebox@lists.infradead.org; Mon, 20 Jan 2020 16:10:56 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
References: <20200115102650.11739-1-cleger@kalray.eu>
 <20200115102650.11739-6-cleger@kalray.eu>
Message-ID: <f34584e3-f756-f756-f75f-39813587f40d@pengutronix.de>
Date: Mon, 20 Jan 2020 16:10:56 +0100
MIME-Version: 1.0
In-Reply-To: <20200115102650.11739-6-cleger@kalray.eu>
Content-Language: en-US
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
Subject: Re: [PATCH 5/5] watchdog: k1c: Add k1c watchdog support
To: barebox@lists.infradead.org

On 1/15/20 11:26 AM, Clement Leger wrote:
> Add a watchdog for k1c architecture based on core watchdog.
> 
> Signed-off-by: Clement Leger <cleger@kalray.eu>
> ---
>  arch/k1c/configs/generic_defconfig |   3 +
>  drivers/watchdog/Kconfig           |   7 +++
>  drivers/watchdog/Makefile          |   1 +
>  drivers/watchdog/k1c_wdt.c         | 126 +++++++++++++++++++++++++++++++++++++
>  4 files changed, 137 insertions(+)
>  create mode 100644 drivers/watchdog/k1c_wdt.c
> 
> diff --git a/arch/k1c/configs/generic_defconfig b/arch/k1c/configs/generic_defconfig
> index 0821030f6..6c8d676df 100644
> --- a/arch/k1c/configs/generic_defconfig
> +++ b/arch/k1c/configs/generic_defconfig
> @@ -5,6 +5,9 @@ CONFIG_CLOCKSOURCE_K1C=y
>  CONFIG_CMD_CMP=y
>  CONFIG_CMD_OF_DUMP=y
>  CONFIG_CMD_POWEROFF=y
> +CONFIG_CMD_WD=y
>  CONFIG_CONSOLE_RATP=y
>  CONFIG_DRIVER_SERIAL_NS16550=y
>  CONFIG_PINCTRL_SINGLE=y
> +CONFIG_WATCHDOG=y
> +CONFIG_WATCHDOG_K1C=y
> diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig
> index 45dd41a2a..17a850de6 100644
> --- a/drivers/watchdog/Kconfig
> +++ b/drivers/watchdog/Kconfig
> @@ -70,6 +70,13 @@ config WATCHDOG_ORION
>  	help
>  	  Add support for watchdog on the Marvall Armada XP
>  
> +config WATCHDOG_K1C
> +	bool "K1C Core watchdog"
> +	select RESET_CONTROLLER

This seems only used for struct reset_control *rst, which you
don't use anywhere.

> +	depends on K1C
> +	help
> +	  Add support for the K1C core watchdog.
> +
>  config WATCHDOG_BCM2835
>  	bool "Watchdog for BCM283x SoCs"
>  	depends on ARCH_BCM283X
> diff --git a/drivers/watchdog/Makefile b/drivers/watchdog/Makefile
> index 63efc2a87..bbf5e8767 100644
> --- a/drivers/watchdog/Makefile
> +++ b/drivers/watchdog/Makefile
> @@ -8,6 +8,7 @@ obj-$(CONFIG_WATCHDOG_DW) += dw_wdt.o
>  obj-$(CONFIG_WATCHDOG_JZ4740) += jz4740.o
>  obj-$(CONFIG_WATCHDOG_IMX_RESET_SOURCE) += imxwd.o
>  obj-$(CONFIG_WATCHDOG_IMX) += imxwd.o
> +obj-$(CONFIG_WATCHDOG_K1C) += k1c_wdt.o
>  obj-$(CONFIG_WATCHDOG_ORION) += orion_wdt.o
>  obj-$(CONFIG_ARCH_BCM283X) += bcm2835_wdt.o
>  obj-$(CONFIG_RAVE_SP_WATCHDOG) += rave-sp-wdt.o
> diff --git a/drivers/watchdog/k1c_wdt.c b/drivers/watchdog/k1c_wdt.c
> new file mode 100644
> index 000000000..23b6cbf33
> --- /dev/null
> +++ b/drivers/watchdog/k1c_wdt.c
> @@ -0,0 +1,126 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +/*
> + * Copyright (C) 2018 Kalray Inc.
> + */
> +
> +#include <common.h>
> +#include <init.h>
> +#include <io.h>
> +#include <of.h>
> +#include <restart.h>
> +#include <watchdog.h>
> +
> +#include <linux/clk.h>
> +#include <linux/err.h>
> +
> +#include <asm/sfr.h>
> +
> +#define to_dw_wdt(wdd)	container_of(wdd, struct dw_wdt, wdd)

used no where

> +
> +struct k1c_wdt {
> +	uint64_t clk_rate;
> +	struct watchdog wdd;
> +	struct restart_handler restart;
> +	struct reset_control *rst;
> +};
> +
> +static void k1c_watchdog_disable(void)
> +{
> +	k1c_sfr_clear_bit(K1C_SFR_TCR, K1C_SFR_TCR_WUI_SHIFT);
> +	k1c_sfr_clear_bit(K1C_SFR_TCR, K1C_SFR_TCR_WCE_SHIFT);
> +}
> +
> +static int k1c_wdt_set_timeout(struct watchdog *wdd, unsigned int timeout)
> +{
> +	struct k1c_wdt *wdt = container_of(wdd, struct k1c_wdt, wdd);
> +	uint64_t cycle_timeout = wdt->clk_rate * timeout;
> +
> +	/* Disable watchdog */
> +	if (timeout == 0) {
> +		k1c_watchdog_disable();
> +		return 0;
> +	}
> +
> +	k1c_sfr_set(K1C_SFR_WDV, cycle_timeout);
> +	k1c_sfr_set(K1C_SFR_WDR, 0);
> +
> +	/* Start watchdog counting */
> +	k1c_sfr_set_bit(K1C_SFR_TCR, K1C_SFR_TCR_WUI_SHIFT);
> +	k1c_sfr_set_bit(K1C_SFR_TCR, K1C_SFR_TCR_WCE_SHIFT);
> +
> +	return 0;
> +}
> +
> +static void __noreturn k1c_wdt_restart_handle(struct restart_handler *rst)
> +{
> +	struct k1c_wdt *k1c_wdt;
> +
> +	k1c_wdt = container_of(rst, struct k1c_wdt, restart);
> +
> +	k1c_wdt->wdd.set_timeout(&k1c_wdt->wdd, 1);

Do you do the same under Linux as well? This means you can't differentiate
between watchdog and normal resets.

> +
> +	mdelay(1000);
> +
> +	hang();
> +}
> +
> +static int count;
> +
> +static int k1c_wdt_drv_probe(struct device_d *dev)
> +{
> +	struct watchdog *wdd;
> +	struct clk *clk;
> +	struct k1c_wdt *k1c_wdt;
> +	int ret;
> +
> +	if (count != 0) {
> +		dev_warn(dev, "Tried to register core watchdog twice\n");
> +		return -EINVAL;
> +	}
> +	count++;
> +
> +	k1c_wdt = xzalloc(sizeof(*k1c_wdt));
> +	clk = clk_get(dev, NULL);
> +	if (IS_ERR(clk))
> +		return PTR_ERR(clk);
> +
> +	k1c_wdt->clk_rate = clk_get_rate(clk);
> +	clk_put(clk);
> +
> +	wdd = &k1c_wdt->wdd;
> +	wdd->name = "k1c_wdt";
> +	wdd->hwdev = dev;
> +	wdd->set_timeout = k1c_wdt_set_timeout;
> +
> +	/* Be sure that interrupt is disabled */
> +	k1c_sfr_clear_bit(K1C_SFR_TCR, K1C_SFR_TCR_WIE_SHIFT);
> +
> +	k1c_watchdog_disable();
> +
> +	ret = watchdog_register(wdd);
> +	if (ret)
> +		return -EINVAL;
> +
> +	k1c_wdt->restart.name = "k1c_wdt";
> +	k1c_wdt->restart.priority = 50;

Maybe add a comment on why you set a lower than default priority?

> +	k1c_wdt->restart.restart = k1c_wdt_restart_handle;
> +
> +	ret = restart_handler_register(&k1c_wdt->restart);
> +	if (ret)
> +		dev_warn(dev, "cannot register restart handler\n");
> +
> +	return 0;
> +
> +}
> +
> +static struct of_device_id k1c_wdt_of_match[] = {
> +	{ .compatible = "kalray,k1c-core-watchdog", },
> +	{ /* sentinel */ }
> +};
> +
> +static struct driver_d k1c_wdt_driver = {
> +	.name		= "k1c-wdt",
> +	.probe		= k1c_wdt_drv_probe,
> +	.of_compatible	= DRV_OF_COMPAT(k1c_wdt_of_match),
> +};
> +device_platform_driver(k1c_wdt_driver);
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | https://www.pengutronix.de/ |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

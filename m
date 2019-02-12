Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gtOG9-0006jl-Ox
 for barebox@lists.infradead.org; Tue, 12 Feb 2019 02:57:23 +0000
Received: by mail-wr1-x442.google.com with SMTP id i12so1027268wrw.0
 for <barebox@lists.infradead.org>; Mon, 11 Feb 2019 18:57:21 -0800 (PST)
MIME-Version: 1.0
References: <1549898200-32688-1-git-send-email-t.remmet@phytec.de>
 <1549898200-32688-2-git-send-email-t.remmet@phytec.de>
In-Reply-To: <1549898200-32688-2-git-send-email-t.remmet@phytec.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 11 Feb 2019 18:57:08 -0800
Message-ID: <CAHQ1cqGq51BYSwNZ+8YDWHxgeBTEkpVBMguu5_P-SiqkBRoDXg@mail.gmail.com>
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
Subject: Re: [PATCH 1/7] drivers: bus: Add ti-sysc bus driver
To: Teresa Remmet <t.remmet@phytec.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Mon, Feb 11, 2019 at 7:16 AM Teresa Remmet <t.remmet@phytec.de> wrote:
>
> Adds minimal support for the sysc interconnect target module found
> on many TI SoCs. With this device tree includes have been rearagned.
> We need the driver to probe the child devices of the bus.
>
> Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
> ---
>  drivers/bus/Kconfig   |  7 +++++++
>  drivers/bus/Makefile  |  1 +
>  drivers/bus/ti-sysc.c | 45 +++++++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 53 insertions(+)
>  create mode 100644 drivers/bus/ti-sysc.c
>
> diff --git a/drivers/bus/Kconfig b/drivers/bus/Kconfig
> index 202df59762e8..7d35a663fdb5 100644
> --- a/drivers/bus/Kconfig
> +++ b/drivers/bus/Kconfig
> @@ -6,6 +6,13 @@ config BUS_OMAP_GPMC
>         depends on OMAP_GPMC
>         bool "TI OMAP/AM33xx GPMC support"
>
> +config TI_SYSC
> +       depends on ARCH_OMAP
> +       bool "TI sysc interconnect target module driver"
> +       help
> +          Generic driver for Texas Instruments interconnect target module
> +          found on many TI SoCs.
> +
>  config IMX_WEIM
>         depends on ARCH_IMX
>         bool "i.MX WEIM driver"
> diff --git a/drivers/bus/Makefile b/drivers/bus/Makefile
> index 4b7aa888aba8..ba5cee40636b 100644
> --- a/drivers/bus/Makefile
> +++ b/drivers/bus/Makefile
> @@ -1,3 +1,4 @@
>  obj-$(CONFIG_BUS_OMAP_GPMC)    += omap-gpmc.o
>  obj-$(CONFIG_IMX_WEIM)         += imx-weim.o
>  obj-$(CONFIG_MVEBU_MBUS)       += mvebu-mbus.o
> +obj-$(CONFIG_TI_SYSC)          += ti-sysc.o
> diff --git a/drivers/bus/ti-sysc.c b/drivers/bus/ti-sysc.c
> new file mode 100644
> index 000000000000..b42ee7c895c7
> --- /dev/null
> +++ b/drivers/bus/ti-sysc.c
> @@ -0,0 +1,45 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * Copyright (C) 2019 Phytec Messtechnik GmbH, Teresa Remmet <t.remmet@phytec.de>
> + */
> +
> +#include <common.h>
> +#include <init.h>
> +#include <of.h>
> +#include <linux/err.h>
> +
> +static const struct of_device_id sysc_match_table[] = {
> +       { .compatible = "simple-bus", },
> +       { /* sentinel */ },
> +};
> +
> +static int ti_sysc_probe(struct device_d *dev)
> +{
> +       int ret;
> +
> +       ret = of_platform_populate(dev->device_node, sysc_match_table, dev);

Is sysc_match_table really necessary? AFAIK that argument can be NULL
unless on of the child nodes needs to be treated like a platform bus
as well.

> +       if (ret)
> +               dev_err(dev, "%s fail to create devices.\n",
> +                                       dev->device_node->full_name);
> +       return ret;
> +};
> +
> +static struct of_device_id ti_sysc_dt_ids[] = {
> +       { .compatible = "ti,sysc-omap4",},
> +       { .compatible = "ti,sysc-omap4-simple",},
> +       { .compatible = "ti,sysc-omap4-timer",},
> +       { .compatible = "ti,sysc-omap2",},
> +       { },
> +};
> +
> +static struct driver_d ti_sysc_driver = {
> +       .name = "ti-sysc",
> +       .probe = ti_sysc_probe,
> +       .of_compatible = DRV_OF_COMPAT(ti_sysc_dt_ids),
> +};
> +
> +static int ti_sysc_init(void)
> +{
> +       return platform_driver_register(&ti_sysc_driver);
> +}
> +postcore_initcall(ti_sysc_init);

postcore_platform_driver()?

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cprx4-0003Ic-IS
 for barebox@lists.infradead.org; Mon, 20 Mar 2017 07:42:10 +0000
Date: Mon, 20 Mar 2017 08:41:40 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170320074140.ilff6eqyl75abmqa@pengutronix.de>
References: <20170319181353.2930-1-dev@lynxeye.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170319181353.2930-1-dev@lynxeye.de>
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
Subject: Re: [PATCH 1/2] add driver for Tegra124 memory controller
To: Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org

On Sun, Mar 19, 2017 at 07:13:52PM +0100, Lucas Stach wrote:
> This driver performs the required initialization to get the GPU
> into a functional state, so it can be used when the OS is running.
> 
> Signed-off-by: Lucas Stach <dev@lynxeye.de>
> ---
>  drivers/Kconfig              |  1 +
>  drivers/Makefile             |  1 +
>  drivers/memory/Kconfig       | 11 +++++++
>  drivers/memory/Makefile      |  1 +
>  drivers/memory/mc-tegra124.c | 75 ++++++++++++++++++++++++++++++++++++++++++++
>  5 files changed, 89 insertions(+)
>  create mode 100644 drivers/memory/Kconfig
>  create mode 100644 drivers/memory/Makefile
>  create mode 100644 drivers/memory/mc-tegra124.c

Applied, thanks

Sascha

> 
> diff --git a/drivers/Kconfig b/drivers/Kconfig
> index bf31115..ab9afb5 100644
> --- a/drivers/Kconfig
> +++ b/drivers/Kconfig
> @@ -34,5 +34,6 @@ source "drivers/rtc/Kconfig"
>  source "drivers/firmware/Kconfig"
>  source "drivers/phy/Kconfig"
>  source "drivers/crypto/Kconfig"
> +source "drivers/memory/Kconfig"
>  
>  endmenu
> diff --git a/drivers/Makefile b/drivers/Makefile
> index 0fadf4e..a1d2d23 100644
> --- a/drivers/Makefile
> +++ b/drivers/Makefile
> @@ -35,3 +35,4 @@ obj-$(CONFIG_GENERIC_PHY) += phy/
>  obj-$(CONFIG_HAB) += hab/
>  obj-$(CONFIG_CRYPTO_HW) += crypto/
>  obj-$(CONFIG_AIODEV) += aiodev/
> +obj-y	+= memory/
> diff --git a/drivers/memory/Kconfig b/drivers/memory/Kconfig
> new file mode 100644
> index 0000000..39fd644
> --- /dev/null
> +++ b/drivers/memory/Kconfig
> @@ -0,0 +1,11 @@
> +menu "Memory controller drivers"
> +
> +config MC_TEGRA124
> +	bool "Support for Tegra124 memory controller"
> +	depends on ARCH_TEGRA
> +	help
> +	  Say yes here to include the driver for the memory controller found on
> +	  the Tegra124 SoC. This driver performs the necessary initialization
> +	  to provide a function GPU when the OS is running.
> +
> +endmenu
> diff --git a/drivers/memory/Makefile b/drivers/memory/Makefile
> new file mode 100644
> index 0000000..bd5ace9
> --- /dev/null
> +++ b/drivers/memory/Makefile
> @@ -0,0 +1 @@
> +obj-$(CONFIG_MC_TEGRA124)	+= mc-tegra124.o
> diff --git a/drivers/memory/mc-tegra124.c b/drivers/memory/mc-tegra124.c
> new file mode 100644
> index 0000000..a8d1609
> --- /dev/null
> +++ b/drivers/memory/mc-tegra124.c
> @@ -0,0 +1,75 @@
> +/* *
> + * Copyright (C) 2017 Lucas Stach <l.stach@pengutronix.de>
> + *
> + * This program is free software; you can redistribute it and/or modify it
> + * under the terms and conditions of the GNU General Public License,
> + * version 2, as published by the Free Software Foundation.
> + *
> + * This program is distributed in the hope it will be useful, but WITHOUT
> + * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
> + * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
> + * more details.
> + *
> + * You should have received a copy of the GNU General Public License
> + * along with this program.  If not, see <http://www.gnu.org/licenses/>.
> + */
> +
> +#include <common.h>
> +#include <init.h>
> +#include <io.h>
> +#include <of.h>
> +
> +#define MC_VIDEO_PROTECT_SIZE_MB	0x64c
> +#define MC_VIDEO_PROTECT_REG_CTRL	0x650
> +#define  MC_VIDEO_PROTECT_REG_WR_DIS	(1 << 0)
> +
> +static int tegra124_mc_of_fixup(struct device_node *root, void *context)
> +{
> +	struct device_node *np;
> +
> +	np = of_find_compatible_node(root, NULL, "nvidia,gk20a");
> +	if (np)
> +		of_device_enable(np);
> +
> +	return 0;
> +}
> +
> +static int tegra124_mc_probe(struct device_d *dev)
> +{
> +	struct resource *iores;
> +	void __iomem *base;
> +
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores)) {
> +		dev_err(dev, "could not get memory region\n");
> +		return PTR_ERR(iores);
> +	}
> +	base = IOMEM(iores->start);
> +
> +	/* disable video protect region */
> +	writel(0 , base + MC_VIDEO_PROTECT_SIZE_MB);
> +	writel(MC_VIDEO_PROTECT_REG_WR_DIS, base + MC_VIDEO_PROTECT_REG_CTRL);
> +	readl(base + MC_VIDEO_PROTECT_REG_CTRL); /* readback to flush */
> +
> +	return of_register_fixup(tegra124_mc_of_fixup, NULL);
> +}
> +
> +static __maybe_unused struct of_device_id tegra124_mc_dt_ids[] = {
> +	{
> +		.compatible = "nvidia,tegra124-mc",
> +	}, {
> +		/* sentinel */
> +	},
> +};
> +
> +static struct driver_d tegra124_mc_driver = {
> +	.name		= "tegra124-mc",
> +	.of_compatible	= DRV_OF_COMPAT(tegra124_mc_dt_ids),
> +	.probe		= tegra124_mc_probe,
> +};
> +
> +static int __init tegra124_mc_init(void)
> +{
> +	return platform_driver_register(&tegra124_mc_driver);
> +}
> +device_initcall(tegra124_mc_init);
> -- 
> 2.9.3
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZ8oP-0002W2-J9
 for barebox@lists.infradead.org; Fri, 07 Jun 2019 06:57:19 +0000
Date: Fri, 7 Jun 2019 08:57:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190607065715.3k453xneg3s5r2gb@pengutronix.de>
References: <20190605165242.17147-1-linux@rempel-privat.de>
 <20190605165242.17147-4-linux@rempel-privat.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190605165242.17147-4-linux@rempel-privat.de>
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
Subject: Re: [PATCH v1 4/4] port reduced version of remoteproc framework from
 linux
To: Oleksij Rempel <linux@rempel-privat.de>
Cc: barebox@lists.infradead.org

On Wed, Jun 05, 2019 at 06:52:42PM +0200, Oleksij Rempel wrote:
> With this port it is possible to start same ELF firmware images as
> for linux remoteproc.
> 

Some more prosa would be nice here. Is it useful already? What does work
and what doesn't?

> Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
> ---
>  drivers/Kconfig                            |   1 +
>  drivers/Makefile                           |   1 +
>  drivers/remoteproc/Kconfig                 |  26 ++
>  drivers/remoteproc/Makefile                |   7 +
>  drivers/remoteproc/imx_rproc.c             | 402 +++++++++++++++++++++
>  drivers/remoteproc/remoteproc_core.c       | 166 +++++++++
>  drivers/remoteproc/remoteproc_elf_loader.c |  88 +++++
>  drivers/remoteproc/remoteproc_internal.h   |  30 ++
>  include/linux/remoteproc.h                 |  51 +++
>  9 files changed, 772 insertions(+)
>  create mode 100644 drivers/remoteproc/Kconfig
>  create mode 100644 drivers/remoteproc/Makefile
>  create mode 100644 drivers/remoteproc/imx_rproc.c
>  create mode 100644 drivers/remoteproc/remoteproc_core.c
>  create mode 100644 drivers/remoteproc/remoteproc_elf_loader.c
>  create mode 100644 drivers/remoteproc/remoteproc_internal.h
>  create mode 100644 include/linux/remoteproc.h
> 
> diff --git a/drivers/Kconfig b/drivers/Kconfig
> index f75da2698..09595433a 100644
> --- a/drivers/Kconfig
> +++ b/drivers/Kconfig
> @@ -31,6 +31,7 @@ source "drivers/pinctrl/Kconfig"
>  source "drivers/nvmem/Kconfig"
>  source "drivers/bus/Kconfig"
>  source "drivers/regulator/Kconfig"
> +source "drivers/remoteproc/Kconfig"
>  source "drivers/reset/Kconfig"
>  source "drivers/pci/Kconfig"
>  source "drivers/rtc/Kconfig"
> diff --git a/drivers/Makefile b/drivers/Makefile
> index fb7fcd3fc..5a52225ee 100644
> --- a/drivers/Makefile
> +++ b/drivers/Makefile
> @@ -29,6 +29,7 @@ obj-$(CONFIG_W1) += w1/
>  obj-y += pinctrl/
>  obj-y += bus/
>  obj-$(CONFIG_REGULATOR) += regulator/
> +obj-$(CONFIG_REMOTEPROC) += remoteproc/
>  obj-$(CONFIG_RESET_CONTROLLER) += reset/
>  obj-$(CONFIG_PCI) += pci/
>  obj-y += rtc/
> diff --git a/drivers/remoteproc/Kconfig b/drivers/remoteproc/Kconfig
> new file mode 100644
> index 000000000..8139b6442
> --- /dev/null
> +++ b/drivers/remoteproc/Kconfig
> @@ -0,0 +1,26 @@
> +# SPDX-License-Identifier: GPL-2.0-only
> +menu "Remoteproc drivers"
> +
> +config REMOTEPROC
> +	tristate "Support for Remote Processor subsystem"
> +	select CRC32
> +	select FIRMWARE
> +	help
> +	  Support for remote processors (such as DSP coprocessors). These
> +	  are mainly used on embedded systems.
> +
> +if REMOTEPROC
> +
> +config IMX_REMOTEPROC
> +	tristate "IMX6/7 remoteproc support"
> +	depends on ARCH_IMX
> +	select MFD_SYSCON
> +	help
> +	  Say y here to support iMX's remote processors (Cortex M4
> +	  on iMX7D) via the remote processor framework.
> +
> +	  It's safe to say N here.
> +
> +endif # REMOTEPROC
> +
> +endmenu
> diff --git a/drivers/remoteproc/Makefile b/drivers/remoteproc/Makefile
> new file mode 100644
> index 000000000..107296922
> --- /dev/null
> +++ b/drivers/remoteproc/Makefile
> @@ -0,0 +1,7 @@
> +# SPDX-License-Identifier: GPL-2.0
> +#
> +# Generic framework for controlling remote processors
> +#
> +
> +obj-$(CONFIG_REMOTEPROC)		+= remoteproc_core.o remoteproc_elf_loader.o
> +obj-$(CONFIG_IMX_REMOTEPROC)		+= imx_rproc.o
> diff --git a/drivers/remoteproc/imx_rproc.c b/drivers/remoteproc/imx_rproc.c
> new file mode 100644
> index 000000000..c5cba3711
> --- /dev/null
> +++ b/drivers/remoteproc/imx_rproc.c
> @@ -0,0 +1,402 @@
> +/*
> + * Copyright (c) 2017 Pengutronix, Oleksij Rempel <kernel@pengutronix.de>
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License version 2
> + * as published by the Free Software Foundation.
> + */
> +
> +#include <clock.h>
> +#include <common.h>
> +#include <driver.h>
> +#include <init.h>
> +#include <io.h>
> +#include <linux/clk.h>
> +#include <linux/err.h>
> +#include <linux/kernel.h>
> +#include <linux/remoteproc.h>
> +#include <mfd/syscon.h>
> +#include <module.h>
> +#include <memory.h>
> +#include <of_address.h>
> +#include <of_device.h>
> +#include <regmap.h>
> +
> +#define IMX7D_SRC_SCR			0x0C
> +#define IMX7D_ENABLE_M4			BIT(3)
> +#define IMX7D_SW_M4P_RST		BIT(2)
> +#define IMX7D_SW_M4C_RST		BIT(1)
> +#define IMX7D_SW_M4C_NON_SCLR_RST	BIT(0)
> +
> +#define IMX7D_M4_RST_MASK		(IMX7D_ENABLE_M4 | IMX7D_SW_M4P_RST \
> +					 | IMX7D_SW_M4C_RST \
> +					 | IMX7D_SW_M4C_NON_SCLR_RST)
> +
> +#define IMX7D_M4_START			(IMX7D_ENABLE_M4 | IMX7D_SW_M4P_RST \
> +					 | IMX7D_SW_M4C_RST)
> +#define IMX7D_M4_STOP			IMX7D_SW_M4C_NON_SCLR_RST
> +
> +/* Address: 0x020D8000 */
> +#define IMX6SX_SRC_SCR			0x00
> +#define IMX6SX_ENABLE_M4		BIT(22)
> +#define IMX6SX_SW_M4P_RST		BIT(12)
> +#define IMX6SX_SW_M4C_NON_SCLR_RST	BIT(4)
> +#define IMX6SX_SW_M4C_RST		BIT(3)
> +
> +#define IMX6SX_M4_START			(IMX6SX_ENABLE_M4 | IMX6SX_SW_M4P_RST \
> +					 | IMX6SX_SW_M4C_RST)
> +#define IMX6SX_M4_STOP			IMX6SX_SW_M4C_NON_SCLR_RST
> +#define IMX6SX_M4_RST_MASK		(IMX6SX_ENABLE_M4 | IMX6SX_SW_M4P_RST \
> +					 | IMX6SX_SW_M4C_NON_SCLR_RST \
> +					 | IMX6SX_SW_M4C_RST)
> +
> +#define IMX7D_RPROC_MEM_MAX		8
> +
> +/**
> + * struct imx_rproc_mem - slim internal memory structure
> + * @cpu_addr: MPU virtual address of the memory region
> + * @sys_addr: Bus address used to access the memory region
> + * @size: Size of the memory region
> + */
> +struct imx_rproc_mem {
> +	void __iomem *cpu_addr;
> +	phys_addr_t sys_addr;
> +	size_t size;
> +};
> +
> +/* att flags */
> +/* M4 own area. Can be mapped at probe */
> +#define ATT_OWN		BIT(1)
> +
> +/* address translation table */
> +struct imx_rproc_att {
> +	u32 da;	/* device address (From Cortex M4 view)*/
> +	u32 sa;	/* system bus address */
> +	u32 size; /* size of reg range */
> +	int flags;
> +};
> +
> +struct imx_rproc_dcfg {
> +	u32				src_reg;
> +	u32				src_mask;
> +	u32				src_start;
> +	u32				src_stop;
> +	const struct imx_rproc_att	*att;
> +	size_t				att_size;
> +};
> +
> +struct imx_rproc {
> +	struct device_d			*dev;
> +	struct regmap			*regmap;
> +	struct rproc			*rproc;
> +	const struct imx_rproc_dcfg	*dcfg;
> +	struct imx_rproc_mem		mem[IMX7D_RPROC_MEM_MAX];
> +	struct clk			*clk;
> +};
> +
> +static const struct imx_rproc_att imx_rproc_att_imx7d[] = {
> +	/* dev addr , sys addr  , size	    , flags */
> +	/* OCRAM_S (M4 Boot code) - alias */
> +	{ 0x00000000, 0x00180000, 0x00008000, 0 },
> +	/* OCRAM_S (Code) */
> +	{ 0x00180000, 0x00180000, 0x00008000, ATT_OWN },
> +	/* OCRAM (Code) - alias */
> +	{ 0x00900000, 0x00900000, 0x00020000, 0 },
> +	/* OCRAM_EPDC (Code) - alias */
> +	{ 0x00920000, 0x00920000, 0x00020000, 0 },
> +	/* OCRAM_PXP (Code) - alias */
> +	{ 0x00940000, 0x00940000, 0x00008000, 0 },
> +	/* TCML (Code) */
> +	{ 0x1FFF8000, 0x007F8000, 0x00008000, ATT_OWN },
> +	/* DDR (Code) - alias, first part of DDR (Data) */
> +	{ 0x10000000, 0x80000000, 0x0FFF0000, 0 },
> +
> +	/* TCMU (Data) */
> +	{ 0x20000000, 0x00800000, 0x00008000, ATT_OWN },
> +	/* OCRAM (Data) */
> +	{ 0x20200000, 0x00900000, 0x00020000, 0 },
> +	/* OCRAM_EPDC (Data) */
> +	{ 0x20220000, 0x00920000, 0x00020000, 0 },
> +	/* OCRAM_PXP (Data) */
> +	{ 0x20240000, 0x00940000, 0x00008000, 0 },
> +	/* DDR (Data) */
> +	{ 0x80000000, 0x80000000, 0x60000000, 0 },
> +};
> +
> +static const struct imx_rproc_att imx_rproc_att_imx6sx[] = {
> +	/* dev addr , sys addr  , size	    , flags */
> +	/* TCML (M4 Boot Code) - alias */
> +	{ 0x00000000, 0x007F8000, 0x00008000, 0 },
> +	/* OCRAM_S (Code) */
> +	{ 0x00180000, 0x008F8000, 0x00004000, 0 },
> +	/* OCRAM_S (Code) - alias */
> +	{ 0x00180000, 0x008FC000, 0x00004000, 0 },
> +	/* TCML (Code) */
> +	{ 0x1FFF8000, 0x007F8000, 0x00008000, ATT_OWN },
> +	/* DDR (Code) - alias, first part of DDR (Data) */
> +	{ 0x10000000, 0x80000000, 0x0FFF8000, 0 },
> +
> +	/* TCMU (Data) */
> +	{ 0x20000000, 0x00800000, 0x00008000, ATT_OWN },
> +	/* OCRAM_S (Data) - alias? */
> +	{ 0x208F8000, 0x008F8000, 0x00004000, 0 },
> +	/* DDR (Data) */
> +	{ 0x80000000, 0x80000000, 0x60000000, 0 },
> +};
> +
> +static const struct imx_rproc_dcfg imx_rproc_cfg_imx7d = {
> +	.src_reg	= IMX7D_SRC_SCR,
> +	.src_mask	= IMX7D_M4_RST_MASK,
> +	.src_start	= IMX7D_M4_START,
> +	.src_stop	= IMX7D_M4_STOP,
> +	.att		= imx_rproc_att_imx7d,
> +	.att_size	= ARRAY_SIZE(imx_rproc_att_imx7d),
> +};
> +
> +static const struct imx_rproc_dcfg imx_rproc_cfg_imx6sx = {
> +	.src_reg	= IMX6SX_SRC_SCR,
> +	.src_mask	= IMX6SX_M4_RST_MASK,
> +	.src_start	= IMX6SX_M4_START,
> +	.src_stop	= IMX6SX_M4_STOP,
> +	.att		= imx_rproc_att_imx6sx,
> +	.att_size	= ARRAY_SIZE(imx_rproc_att_imx6sx),
> +};
> +
> +static int imx_rproc_start(struct rproc *rproc)
> +{
> +	struct imx_rproc *priv = rproc->priv;
> +	const struct imx_rproc_dcfg *dcfg = priv->dcfg;
> +	struct device_d *dev = priv->dev;
> +	int ret;
> +
> +	ret = regmap_update_bits(priv->regmap, dcfg->src_reg,
> +				 dcfg->src_mask, dcfg->src_start);
> +	if (ret)
> +		dev_err(dev, "Filed to enable M4!\n");

s/Filed/Failed/

> +
> +	return ret;
> +}
> +
> +static int imx_rproc_stop(struct rproc *rproc)
> +{
> +	struct imx_rproc *priv = rproc->priv;
> +	const struct imx_rproc_dcfg *dcfg = priv->dcfg;
> +	struct device_d *dev = priv->dev;
> +	int ret;
> +
> +	ret = regmap_update_bits(priv->regmap, dcfg->src_reg,
> +				 dcfg->src_mask, dcfg->src_stop);
> +	if (ret)
> +		dev_err(dev, "Filed to stop M4!\n");

ditto

> +
> +	return ret;
> +}
> +
> +static int imx_rproc_da_to_sys(struct imx_rproc *priv, u64 da,
> +			       int len, u64 *sys)
> +{
> +	const struct imx_rproc_dcfg *dcfg = priv->dcfg;
> +	int i;
> +
> +	/* parse address translation table */
> +	for (i = 0; i < dcfg->att_size; i++) {
> +		const struct imx_rproc_att *att = &dcfg->att[i];
> +
> +		if (da >= att->da && da + len < att->da + att->size) {
> +			unsigned int offset = da - att->da;
> +
> +			*sys = att->sa + offset;
> +			return 0;
> +		}
> +	}
> +
> +	dev_warn(priv->dev, "Translation filed: da = 0x%llx len = 0x%x\n",

ditto

> +		 da, len);
> +	return -ENOENT;
> +}
> +
> +static int rproc_firmware_finish(struct firmware_handler *fh)
> +{
> +	struct rproc *rproc = container_of(fh, struct rproc, fh);
> +	struct firmware fw;
> +	struct device_d *dev;
> +	int ret;
> +
> +	if (!rproc) {
> +		pr_err("invalid rproc handle\n");
> +		return -EINVAL;
> +	}

You probably want to test 'fh' for NULL, not the pointer you got from
container_of.

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

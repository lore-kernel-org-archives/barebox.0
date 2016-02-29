Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aaIL3-0008Kc-VA
 for barebox@lists.infradead.org; Mon, 29 Feb 2016 07:33:56 +0000
Date: Mon, 29 Feb 2016 08:33:31 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160229073331.GE9224@pengutronix.de>
References: <1456488287-23404-1-git-send-email-s.trumtrar@pengutronix.de>
 <1456488287-23404-6-git-send-email-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1456488287-23404-6-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: Re: [PATCH 5/5] hw_random: add driver for Freescale RNGC
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Feb 26, 2016 at 01:04:47PM +0100, Steffen Trumtrar wrote:
> The driver is ported from Freescales Linux git and can be
> found in the
> 
> 	vendor/freescale/imx_2.6.35_maintain
> 
> branch.
> 
> According to that code, the RNGC is found on Freescales i.MX3/5 SoCs.
> The i.MX2x actually has an RNGB, which has no driver implementation
> in Freescales kernel. However as it turns out, the driver for the RNGC
> works fine on the (at least) i.MX25. So, they seem to be somewhat
> compatible.
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
>  drivers/hw_random/Kconfig    |  11 ++
>  drivers/hw_random/Makefile   |   1 +
>  drivers/hw_random/mxc-rngc.c | 311 +++++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 323 insertions(+)
>  create mode 100644 drivers/hw_random/mxc-rngc.c
> 
> diff --git a/drivers/hw_random/Kconfig b/drivers/hw_random/Kconfig
> index 807fcadd31f7..a67d2d6f32f5 100644
> --- a/drivers/hw_random/Kconfig
> +++ b/drivers/hw_random/Kconfig
> @@ -4,3 +4,14 @@ menuconfig HWRNG
>  	  Support for HWRNG(Hardware Random Number Generator) devices.
>  
>  	  If unsure, say no.
> +
> +if HWRNG
> +
> +config HWRNG_MXC_RNGC
> +       tristate "Freescale i.MX RNGC Random Number Generator"
> +       depends on ARCH_IMX25 || ARCH_IMX35 || ARCH_IMX53
> +       help

Indention should be tabs.

> +	 This driver provides kernel-side support for the Random Number
> +	 Generator hardware found on some Freescale i.MX processors.
> +
> +endif
> diff --git a/drivers/hw_random/Makefile b/drivers/hw_random/Makefile
> index 15307b100f29..79c238c48d60 100644
> --- a/drivers/hw_random/Makefile
> +++ b/drivers/hw_random/Makefile
> @@ -1 +1,2 @@
>  obj-$(CONFIG_HWRNG)		+= core.o
> +obj-$(CONFIG_HWRNG_MXC_RNGC) += mxc-rngc.o
> diff --git a/drivers/hw_random/mxc-rngc.c b/drivers/hw_random/mxc-rngc.c
> new file mode 100644
> index 000000000000..63f9ff867aab
> --- /dev/null
> +++ b/drivers/hw_random/mxc-rngc.c
> @@ -0,0 +1,311 @@
> +/*
> + * RNG driver for Freescale RNGC
> + *
> + * Copyright (C) 2008-2012 Freescale Semiconductor, Inc.
> + */
> +
> +/*
> + * The code contained herein is licensed under the GNU General Public
> + * License. You may obtain a copy of the GNU General Public License
> + * Version 2 or later at the following locations:
> + *
> + * http://www.opensource.org/licenses/gpl-license.html
> + * http://www.gnu.org/copyleft/gpl.html
> + */
> +
> +/*
> + * Hardware driver for the Intel/AMD/VIA Random Number Generators (RNG)
> + * (c) Copyright 2003 Red Hat Inc <jgarzik@redhat.com>
> + *
> + * derived from
> + *
> + * Hardware driver for the AMD 768 Random Number Generator (RNG)
> + * (c) Copyright 2001 Red Hat Inc <alan@redhat.com>
> + *
> + * derived from
> + *
> + * Hardware driver for Intel i810 Random Number Generator (RNG)
> + * Copyright 2000,2001 Jeff Garzik <jgarzik@pobox.com>
> + * Copyright 2000,2001 Philipp Rumpf <prumpf@mandrakesoft.com>
> + *
> + * This file is licensed under  the terms of the GNU General Public
> + * License version 2. This program is licensed "as is" without any
> + * warranty of any kind, whether express or implied.
> + */
> +
> +#include <common.h>
> +#include <clock.h>
> +#include <driver.h>
> +#include <init.h>
> +#include <io.h>
> +#include <linux/clk.h>
> +#include <linux/hw_random.h>
> +
> +#define RNGC_VERSION_MAJOR3 3
> +
> +#define RNGC_VERSION_ID				0x0000
> +#define RNGC_COMMAND				0x0004
> +#define RNGC_CONTROL				0x0008
> +#define RNGC_STATUS				0x000C
> +#define RNGC_ERROR				0x0010
> +#define RNGC_FIFO				0x0014
> +#define RNGC_VERIF_CTRL				0x0020
> +#define RNGC_OSC_CTRL_COUNT			0x0028
> +#define RNGC_OSC_COUNT				0x002C
> +#define RNGC_OSC_COUNT_STATUS			0x0030
> +
> +#define RNGC_VERID_ZEROS_MASK			0x0f000000
> +#define RNGC_VERID_RNG_TYPE_MASK		0xf0000000
> +#define RNGC_VERID_RNG_TYPE_SHIFT		28
> +#define RNGC_VERID_CHIP_VERSION_MASK		0x00ff0000
> +#define RNGC_VERID_CHIP_VERSION_SHIFT		16
> +#define RNGC_VERID_VERSION_MAJOR_MASK		0x0000ff00
> +#define RNGC_VERID_VERSION_MAJOR_SHIFT		8
> +#define RNGC_VERID_VERSION_MINOR_MASK		0x000000ff
> +#define RNGC_VERID_VERSION_MINOR_SHIFT		0
> +
> +#define RNGC_CMD_ZEROS_MASK			0xffffff8c
> +#define RNGC_CMD_SW_RST				0x00000040
> +#define RNGC_CMD_CLR_ERR			0x00000020
> +#define RNGC_CMD_CLR_INT			0x00000010
> +#define RNGC_CMD_SEED				0x00000002
> +#define RNGC_CMD_SELF_TEST			0x00000001
> +
> +#define RNGC_CTRL_ZEROS_MASK			0xfffffc8c
> +#define RNGC_CTRL_CTL_ACC			0x00000200
> +#define RNGC_CTRL_VERIF_MODE			0x00000100
> +#define RNGC_CTRL_MASK_ERROR			0x00000040
> +
> +#define RNGC_CTRL_MASK_DONE			0x00000020
> +#define RNGC_CTRL_AUTO_SEED			0x00000010
> +#define RNGC_CTRL_FIFO_UFLOW_MASK		0x00000003
> +#define RNGC_CTRL_FIFO_UFLOW_SHIFT		0
> +
> +#define RNGC_CTRL_FIFO_UFLOW_ZEROS_ERROR	0
> +#define RNGC_CTRL_FIFO_UFLOW_ZEROS_ERROR2	1
> +#define RNGC_CTRL_FIFO_UFLOW_BUS_XFR		2
> +#define RNGC_CTRL_FIFO_UFLOW_ZEROS_INTR		3
> +
> +#define RNGC_STATUS_ST_PF_MASK			0x00c00000
> +#define RNGC_STATUS_ST_PF_SHIFT			22
> +#define RNGC_STATUS_ST_PF_TRNG			0x00800000
> +#define RNGC_STATUS_ST_PF_PRNG			0x00400000
> +#define RNGC_STATUS_ERROR			0x00010000
> +#define RNGC_STATUS_FIFO_SIZE_MASK		0x0000f000
> +#define RNGC_STATUS_FIFO_SIZE_SHIFT		12
> +#define RNGC_STATUS_FIFO_LEVEL_MASK		0x00000f00
> +#define RNGC_STATUS_FIFO_LEVEL_SHIFT		8
> +#define RNGC_STATUS_NEXT_SEED_DONE		0x00000040
> +#define RNGC_STATUS_SEED_DONE			0x00000020
> +#define RNGC_STATUS_ST_DONE			0x00000010
> +#define RNGC_STATUS_RESEED			0x00000008
> +#define RNGC_STATUS_SLEEP			0x00000004
> +#define RNGC_STATUS_BUSY			0x00000002
> +#define RNGC_STATUS_SEC_STATE			0x00000001
> +
> +#define RNGC_ERROR_STATUS_ZEROS_MASK		0xffffffc0
> +#define RNGC_ERROR_STATUS_BAD_KEY		0x00000040
> +#define RNGC_ERROR_STATUS_RAND_ERR		0x00000020
> +#define RNGC_ERROR_STATUS_FIFO_ERR		0x00000010
> +#define RNGC_ERROR_STATUS_STAT_ERR		0x00000008
> +#define RNGC_ERROR_STATUS_ST_ERR		0x00000004
> +#define RNGC_ERROR_STATUS_OSC_ERR		0x00000002
> +#define RNGC_ERROR_STATUS_LFSR_ERR		0x00000001
> +
> +#define RNG_ADDR_RANGE				0x34
> +
> +struct mxc_rngc {
> +	struct device_d		*dev;
> +	struct clk		*clk;
> +	void __iomem		*base;
> +};
> +
> +static int mxc_rngc_data_present(struct hwrng *rng)
> +{
> +	struct mxc_rngc *rngc = (struct mxc_rngc *)rng->priv;
> +	int level;
> +
> +	/* how many random numbers are in FIFO? [0-16] */
> +	level = (readl(rngc->base + RNGC_STATUS) &
> +		 RNGC_STATUS_FIFO_LEVEL_MASK) >> RNGC_STATUS_FIFO_LEVEL_SHIFT;
> +
> +	return level;

unnecessary variable.

> +}
> +
> +static int mxc_rngc_read(struct hwrng *rng, void *buf, size_t max, bool wait)
> +{
> +	struct mxc_rngc *rngc = (struct mxc_rngc *)rng->priv;
> +	int count = 0;
> +	u32 *data = buf;
> +	int err;
> +
> +	while (mxc_rngc_data_present(rng) && max) {
> +		/* retrieve a random number from FIFO */
> +		*(data+count) = readl(rngc->base + RNGC_FIFO);
> +
> +		/* is there some error while reading this random number? */
> +		err = readl(rngc->base + RNGC_STATUS) & RNGC_STATUS_ERROR;
> +		if (err)
> +			break;
> +
> +		count += 1;
> +		max -= 4;

What happens when max % 4 != 0?

> +	}
> +
> +	/* if error happened doesn't return random number */
> +	return err ? 0 : count * 4;

What does this RNGC_STATUS_ERROR mean? Does it mean that there's a real
error or does it just mean that there's just no data available at the
moment? I am asking because when this bit is set then you'll never leave
the outer loop calling this function.

> +}
> +
> +static int mxc_rngc_init(struct hwrng *rng)
> +{
> +	struct mxc_rngc *rngc = (struct mxc_rngc *)rng->priv;
> +	uint64_t start;
> +	u32 cmd;
> +	u32 ctrl;
> +	u32 osc;
> +	int err;
> +
> +	err = readl(rngc->base + RNGC_STATUS) & RNGC_STATUS_ERROR;

The return value of readl shouldn't be assigned to a signed variable.

> +	if (err) {
> +		/* is this a bad keys error ? */
> +		if (readl(rngc->base + RNGC_ERROR) &
> +		    RNGC_ERROR_STATUS_BAD_KEY) {
> +			dev_err(rngc->dev, "Can't start, Bad Keys.\n");
> +			return -EIO;
> +		}
> +	}
> +
> +	/* mask all interrupts, will be unmasked soon */
> +	ctrl = readl(rngc->base + RNGC_CONTROL);
> +	writel(ctrl | RNGC_CTRL_MASK_DONE | RNGC_CTRL_MASK_ERROR,
> +	       rngc->base + RNGC_CONTROL);
> +
> +	/* verify if oscillator is working */
> +	osc = readl(rngc->base + RNGC_ERROR);
> +	if (osc & RNGC_ERROR_STATUS_OSC_ERR) {
> +		dev_err(rngc->dev, "RNGC Oscillator is dead!\n");
> +		return -EIO;
> +	}
> +
> +	/* do self test, repeat until get success */
> +	do {
> +		/* clear error */
> +		cmd = readl(rngc->base + RNGC_COMMAND);
> +		writel(cmd | RNGC_CMD_CLR_ERR, rngc->base + RNGC_COMMAND);
> +
> +		/* unmask all interrupt */
> +		ctrl = readl(rngc->base + RNGC_CONTROL);
> +		writel(ctrl & ~(RNGC_CTRL_MASK_DONE | RNGC_CTRL_MASK_ERROR),
> +		       rngc->base + RNGC_CONTROL);
> +
> +		/* run self test */
> +		cmd = readl(rngc->base + RNGC_COMMAND);
> +		writel(cmd | RNGC_CMD_SELF_TEST, rngc->base + RNGC_COMMAND);
> +
> +		start = get_time_ns();
> +		while (!(readl(rngc->base + RNGC_STATUS) &
> +			 RNGC_STATUS_ST_DONE)) {
> +			if (is_timeout(start, 100 * MSECOND)) {
> +				dev_err(rng->dev, "Timedout while seeding\n");
> +				return -ETIMEDOUT;
> +			}
> +		}
> +		writel(RNGC_CMD_CLR_INT | RNGC_CMD_CLR_ERR,
> +		       rngc->base + RNGC_COMMAND);
> +	} while (readl(rngc->base + RNGC_ERROR) & RNGC_ERROR_STATUS_ST_ERR);
> +
> +	/* clear interrupt. Is it really necessary here? */
> +	writel(RNGC_CMD_CLR_INT | RNGC_CMD_CLR_ERR, rngc->base + RNGC_COMMAND);
> +
> +	start = get_time_ns();
> +	/* create seed, repeat while there is some statistical error */
> +	do {
> +		/* clear error */
> +		cmd = readl(rngc->base + RNGC_COMMAND);
> +		writel(cmd | RNGC_CMD_CLR_ERR, rngc->base + RNGC_COMMAND);
> +
> +		/* seed creation */
> +		cmd = readl(rngc->base + RNGC_COMMAND);
> +		writel(cmd | RNGC_CMD_SEED, rngc->base + RNGC_COMMAND);
> +
> +		while (!(readl(rngc->base + RNGC_STATUS) &
> +			 RNGC_STATUS_SEED_DONE)) {
> +			if (is_timeout(start, 100 * MSECOND)) {
> +				dev_err(rng->dev, "Timedout while seeding\n");
> +				return -ETIMEDOUT;
> +			}
> +		}
> +		writel(RNGC_CMD_CLR_INT | RNGC_CMD_CLR_ERR,
> +			     rngc->base + RNGC_COMMAND);
> +	} while (readl(rngc->base + RNGC_ERROR) &
> +		 RNGC_ERROR_STATUS_STAT_ERR);
> +
> +	err = readl(rngc->base + RNGC_ERROR) &
> +		(RNGC_ERROR_STATUS_STAT_ERR |
> +		 RNGC_ERROR_STATUS_RAND_ERR |
> +		 RNGC_ERROR_STATUS_FIFO_ERR |
> +		 RNGC_ERROR_STATUS_ST_ERR |
> +		 RNGC_ERROR_STATUS_OSC_ERR |
> +		 RNGC_ERROR_STATUS_LFSR_ERR);
> +
> +	if (err) {
> +		dev_err(rngc->dev, "FSL RNGC appears inoperable.\n");
> +		return -EIO;
> +	}
> +
> +	return 0;
> +}
> +
> +static struct hwrng mxc_rngc_ops = {
> +	.read	= mxc_rngc_read,
> +	.init	= mxc_rngc_init,
> +};

These are no ops, instead it's a hwrng object. It should be embedded in
your private data struct as it's per driver instance.

> +
> +static int mxc_rngc_probe(struct device_d *dev)
> +{
> +	struct mxc_rngc *rngc;
> +	int ret;
> +
> +	rngc = xzalloc(sizeof(*rngc));
> +
> +	rngc->base = dev_request_mem_region(dev, 0);
> +	if (IS_ERR(rngc->base))
> +		return PTR_ERR(rngc->base);
> +
> +	rngc->clk = clk_get(dev, "ipg");
> +	if (IS_ERR(rngc->clk)) {
> +		dev_err(dev, "Can not get rng_clk\n");
> +		return PTR_ERR(rngc->clk);
> +	}
> +
> +	ret = clk_enable(rngc->clk);
> +	if (ret)
> +		return ret;
> +
> +	mxc_rngc_ops.name = dev->name;
> +	mxc_rngc_ops.priv = (unsigned long)rngc;

When you embed hwrng in your private data struct you can use
container_of() to access your private data.

> +
> +	ret = hwrng_register(dev, &mxc_rngc_ops);
> +	if (ret) {
> +		dev_err(dev, "FSL RNGC registering failed (%d)\n", ret);
> +		clk_disable(rngc->clk);
> +
> +		return ret;
> +	}
> +
> +	dev_info(dev, "Freescale RNGC Registered.\n");
> +
> +	return 0;
> +}
> +
> +static const struct of_device_id mxc_rngc_dt_ids[] = {
> +	{ .compatible = "fsl,imx25-rng" },
> +	{ /* sentinel */ }
> +};
> +
> +static struct driver_d mxc_rngc_driver = {
> +	.name = "mxc_rngc",
> +	.probe = mxc_rngc_probe,
> +	.of_compatible = mxc_rngc_dt_ids,
> +};
> +device_platform_driver(mxc_rngc_driver);
> -- 
> 2.7.0
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

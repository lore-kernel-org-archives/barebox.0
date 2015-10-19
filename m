Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zo3pu-0001al-EZ
 for barebox@lists.infradead.org; Mon, 19 Oct 2015 06:22:24 +0000
Date: Mon, 19 Oct 2015 08:21:58 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151019062158.GA14476@pengutronix.de>
References: <1444829979-1100-1-git-send-email-s.trumtrar@pengutronix.de>
 <1444829979-1100-4-git-send-email-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1444829979-1100-4-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: Re: [PATCH 4/6] crypto: add i.MX6 CAAM support
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Oct 14, 2015 at 03:39:37PM +0200, Steffen Trumtrar wrote:
> Add the i.MX6 crypto core CAAM.
> 
> The core itself works with jobrings in which descriptors can be
> queued/dequeued for processing.

Which upstream kernel version is this built upon? What changes did you
make to the kernel code?

The answers should be part of the commit message.

> +static void caam_remove(struct device_d *dev)
> +{
> +	struct caam_drv_private *ctrlpriv = dev->priv;
> +	struct caam_ctrl __iomem *ctrl;
> +
> +	ctrl = (struct caam_ctrl __iomem *)ctrlpriv->ctrl;

This variable is unused.

> +
> +	/* De-initialize RNG state handles initialized by this driver. */
> +	if (ctrlpriv->rng4_sh_init)
> +		deinstantiate_rng(dev, ctrlpriv->rng4_sh_init);
> +
> +	/* shut clocks off before finalizing shutdown */
> +	clk_disable(ctrlpriv->caam_ipg);
> +	clk_disable(ctrlpriv->caam_mem);
> +	clk_disable(ctrlpriv->caam_aclk);
> +	clk_disable(ctrlpriv->caam_emi_slow);
> +}
> +
> +
> +	/*
> +	 * ERRATA:  mx6 devices have an issue wherein AXI bus transactions
> +	 * may not occur in the correct order. This isn't a problem running
> +	 * single descriptors, but can be if running multiple concurrent
> +	 * descriptors. Reworking the driver to throttle to single requests
> +	 * is impractical, thus the workaround is to limit the AXI pipeline
> +	 * to a depth of 1 (from it's default of 4) to preclude this situation
> +	 * from occurring.
> +	 */
> +	wr_reg32(&ctrl->mcr,
> +		 (rd_reg32(&ctrl->mcr) & ~(MCFGR_AXIPIPE_MASK)) |
> +		 ((1 << MCFGR_AXIPIPE_SHIFT) & MCFGR_AXIPIPE_MASK));
> +
> +	wr_reg32(&ctrl->mcr, 0x40002110);

Hm, first modify some bits and then overwrite the register with some
hardcoded value?

> +
> +	/*
> +	 * Detect and enable JobRs
> +	 * First, find out how many ring spec'ed, allocate references
> +	 * for all, then go probe each one.
> +	 */
> +	rspec = 0;
> +	for_each_available_child_of_node(nprop, np)
> +		if (of_device_is_compatible(np, "fsl,sec-v4.0-job-ring") ||
> +		    of_device_is_compatible(np, "fsl,sec4.0-job-ring"))
> +			rspec++;
> +
> +	ctrlpriv->jrpdev = xzalloc(sizeof(struct device_d *) * rspec);
> +	if (ctrlpriv->jrpdev == NULL)
> +		return -ENOMEM;

xzalloc does not fail. Several more of these in the code.

> +
> +	ring = 0;
> +	ctrlpriv->total_jobrs = 0;
> +	for_each_available_child_of_node(nprop, np)
> +		if (of_device_is_compatible(np, "fsl,sec-v4.0-job-ring") ||
> +		    of_device_is_compatible(np, "fsl,sec4.0-job-ring")) {
> +			struct device_d *jrdev;
> +
> +			jrdev = xzalloc(sizeof(*jrdev));
> +
> +			strcpy(jrdev->name, np->name);
> +			jrdev->parent = dev;
> +			jrdev->device_node = np;
> +			jrdev->id = DEVICE_ID_SINGLE;
> +
> +			ret = register_device(jrdev);
> +
> +			if (ret) {
> +				pr_warn("JR%d Platform device creation error\n",
> +					ring);

dev_warn

> diff --git a/drivers/crypto/caam/intern.h b/drivers/crypto/caam/intern.h
> new file mode 100644
> index 000000000000..326bda532b83
> --- /dev/null
> +++ b/drivers/crypto/caam/intern.h
> @@ -0,0 +1,105 @@
> +/*
> + * CAAM/SEC 4.x driver backend
> + * Private/internal definitions between modules
> + *
> + * Copyright 2008-2011 Freescale Semiconductor, Inc.
> + *
> + */
> +
> +#ifndef INTERN_H
> +#define INTERN_H
> +
> +struct device;

Is this needed?

> +
> +/* Currently comes from Kconfig param as a ^2 (driver-required) */
> +#define JOBR_DEPTH (1 << CONFIG_CRYPTO_DEV_FSL_CAAM_RINGSIZE)
> +
> +#define JOBR_INTC 0
> +#define JOBR_INTC_TIME_THLD 0
> +#define JOBR_INTC_COUNT_THLD 0
> +
> +#define pr_hex_dump_debug(prefix_str, prefix_type, rowsize, groupsize, buf, len, ascii) \
> +	({ \
> +		(7) <= LOGLEVEL ? print_hex_dump(KERN_DEBUG, prefix_str, prefix_type, rowsize, groupsize, buf, len, ascii) : 0; \
> +	})


This is unused.

> diff --git a/drivers/crypto/caam/jr.c b/drivers/crypto/caam/jr.c
> new file mode 100644
> index 000000000000..3a82d0559898
> --- /dev/null
> +++ b/drivers/crypto/caam/jr.c
> @@ -0,0 +1,363 @@
> +/*
> +* CAAM/SEC 4.x transport/backend driver
> +* JobR backend functionality
> + *
> + * Copyright 2008-2015 Freescale Semiconductor, Inc.
> + */
> +
> +#include <common.h>
> +#include <clock.h>
> +#include <dma.h>
> +#include <driver.h>
> +#include <init.h>
> +#include <linux/barebox-wrapper.h>
> +#include <linux/circ_buf.h>
> +#include <linux/compiler.h>
> +#include <linux/err.h>
> +
> +#include "regs.h"
> +#include "jr.h"
> +#include "desc.h"
> +#include "desc_constr.h"
> +#include "error.h"
> +#include "intern.h"
> +
> +static int caam_reset_hw_jr(struct device_d *dev)
> +{
> +	struct caam_drv_private_jr *jrp = dev->priv;
> +	unsigned int timeout = 10000000;
> +	unsigned int val;
> +
> +	/* initiate flush (required prior to reset) */
> +	wr_reg32(&jrp->rregs->jrcommand, JRCR_RESET);
> +	do {
> +		val = rd_reg32(&jrp->rregs->jrintstatus);
> +		if ((val & JRINT_ERR_HALT_MASK) != JRINT_ERR_HALT_INPROGRESS)
> +			break;
> +	} while (--timeout);

is_timeout() loop please. Several more loops of this kind throughout the
code.

> +	dev->priv = jrpriv;
> +	jrpriv->dev = dev;
> +
> +	/* save ring identity relative to detection */
> +	jrpriv->ridx = total_jobrs++;
> +
> +	nprop = dev->device_node;
> +	/* Get configuration properties from device tree */
> +	/* First, get register page */
> +	ctrl = dev_request_mem_region(dev, 0);
> +	if (IS_ERR(ctrl))
> +		return -ENOMEM;

		return PTR_ERR(ctrl);

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

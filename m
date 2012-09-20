Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo5.mail-out.ovh.net ([46.105.39.65]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TElW4-0000jt-F9
 for barebox@lists.infradead.org; Thu, 20 Sep 2012 18:30:25 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 1496C1088072
 for <barebox@lists.infradead.org>; Thu, 20 Sep 2012 20:36:14 +0200 (CEST)
Date: Thu, 20 Sep 2012 20:27:51 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120920182751.GE26553@game.jcrosoft.org>
References: <1348158669-14034-1-git-send-email-renaud.barbier@ge.com>
 <1348158669-14034-3-git-send-email-renaud.barbier@ge.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1348158669-14034-3-git-send-email-renaud.barbier@ge.com>
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
Subject: Re: [PATCH 2/5] FSL mdio bus support
To: Renaud Barbier <renaud.barbier@ge.com>
Cc: barebox@lists.infradead.org

On 17:31 Thu 20 Sep     , Renaud Barbier wrote:
> An new file is added to handle the Freescale mdio bus. PHY access functions
> have been pulled out of the gianfar driver and a bus reset function defined
> in this new file.
> Also an initialization function is added to register the mii device
> with the read/write/reset function and bus base address.
> 
> Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
> ---
>  arch/ppc/include/asm/fsl_mdio.h |   11 +++
>  drivers/net/fsl_mdio.c          |  134 +++++++++++++++++++++++++++++++++++++++
>  2 files changed, 145 insertions(+), 0 deletions(-)
>  create mode 100644 arch/ppc/include/asm/fsl_mdio.h
>  create mode 100644 drivers/net/fsl_mdio.c
> 
> diff --git a/arch/ppc/include/asm/fsl_mdio.h b/arch/ppc/include/asm/fsl_mdio.h
> new file mode 100644
> index 0000000..816d8e0
> --- /dev/null
> +++ b/arch/ppc/include/asm/fsl_mdio.h
> @@ -0,0 +1,11 @@
> +/*
> + * Copyright 2012 GE Intelligent Platforms, Inc.
> + *
> + * This software may be used and distributed according to the
> + * terms of the GNU Public License, Version 2, incorporated
> + * herein by reference.
> + *
> + */
> +int fsl_local_mdio_write(void __iomem *phyregs, uint addr, uint reg, uint val);
> +uint fsl_local_mdio_read(void __iomem *phyregs, uint phyid, uint reg);
> +int fsl_pq_mdio_init(void *busaddr);
> diff --git a/drivers/net/fsl_mdio.c b/drivers/net/fsl_mdio.c
> new file mode 100644
> index 0000000..174a8e0
> --- /dev/null
> +++ b/drivers/net/fsl_mdio.c
> @@ -0,0 +1,134 @@
> +/*
> + * Copyright 2009-2010 Freescale Semiconductor, Inc.
> + *
> + * This software may be used and distributed according to the
> + * terms of the GNU Public License, Version 2, incorporated
> + * herein by reference.
> + *
> + * Copyright 2012 GE Intelligent Platforms, Inc.
> + * based on work by Jun-jie Zhang and Mingkai Hu
> + */
> +
> +#include <common.h>
> +#include <linux/phy.h>
> +#include <init.h>
> +#include <miidev.h>
> +#include <malloc.h>
> +#include <errno.h>
> +#include <asm/io.h>
> +#include "gianfar.h"
> +
> +/* Writes the given phy's reg with value, using the specified MDIO regs */
> +int fsl_local_mdio_write(void __iomem *phyregs, uint addr, uint reg, uint val)
> +{
> +	uint64_t start;
> +
> +	out_be32(phyregs + GFAR_MIIMADD_OFFSET, (addr << 8) | (reg & 0x1f));
> +	out_be32(phyregs + GFAR_MIIMCON_OFFSET, val);
> +
> +	start = get_time_ns();
> +	while (!is_timeout(start, 10 * MSECOND)) {
> +		if (!(in_be32(phyregs + GFAR_MIIMMIND_OFFSET) &
> +					GFAR_MIIMIND_BUSY))
> +			return 0;
> +	}
> +
> +	return -EIO;
> +}
> +
> +/*
> + * Reads register regnum on the device's PHY through the
> + * specified registers. It lowers and raises the read
> + * command, and waits for the data to become valid (miimind
> + * notvalid bit cleared), and the bus to cease activity (miimind
> + * busy bit cleared), and then returns the value
> + */
> +uint fsl_local_mdio_read(void __iomem *phyregs, uint phyid, uint reg)
> +{
> +	uint64_t start;
> +
> +	/* Put the address of the phy, and the register number into MIIMADD */
> +	out_be32(phyregs + GFAR_MIIMADD_OFFSET, (phyid << 8) | (reg & 0x1f));
> +
> +	/* Clear the command register, and wait */
> +	out_be32(phyregs + GFAR_MIIMCOM_OFFSET, 0);
> +
> +	/* Initiate a read command, and wait */
> +	out_be32(phyregs + GFAR_MIIMCOM_OFFSET, GFAR_MIIM_READ_COMMAND);
> +
> +	start = get_time_ns();
> +	while (!is_timeout(start, 10 * MSECOND)) {
> +		if (!(in_be32(phyregs + GFAR_MIIMMIND_OFFSET) &
> +			(GFAR_MIIMIND_NOTVALID | GFAR_MIIMIND_BUSY)))
> +			return in_be32(phyregs + GFAR_MIIMSTAT_OFFSET);
> +	}
> +
> +	return -EIO;
> +}
> +
> +/* Read a MII PHY register. */
> +static int fsl_miiphy_read(struct mii_device *bus, int addr, int reg)
> +{
> +	struct device_d *dev = bus->parent;
> +	void __iomem *phyregs = bus->priv;
> +	int ret;
> +
> +	ret = fsl_local_mdio_read(phyregs, addr, reg);
> +	if (ret == -EIO)
> +		dev_err(dev, "Can't read PHY at address %d\n", addr);
> +
> +	return ret;
> +}
> +
> +/* Write a MII PHY register.  */
> +static int fsl_miiphy_write(struct mii_device *bus, int addr, int reg,
> +				int value)
> +{
> +	struct device_d *dev = bus->parent;
> +	void __iomem *phyregs = bus->priv;
> +	unsigned short val = value;
> +	int ret;
> +
> +	ret = fsl_local_mdio_write(phyregs, addr, reg, val);
> +
> +	if (ret)
> +		dev_err(dev, "Can't write PHY at address %d\n", addr);
> +
> +	return 0;
> +}
> +
> +static int fsl_pq_mdio_reset(struct mii_device *bus)
> +{
> +	void __iomem *phyregs = bus->priv;
> +	uint64_t start;
> +
> +	/* Reset MII (due to new addresses) */
> +	out_be32(phyregs + GFAR_MIIMCFG_OFFSET, GFAR_MIIMCFG_RESET);
> +	out_be32(phyregs + GFAR_MIIMCFG_OFFSET, GFAR_MIIMCFG_INIT_VALUE);
> +
> +	start = get_time_ns();
> +	while (!is_timeout(start, 10 * MSECOND)) {
we have a timeout function for this wait_xxx
> +		if (!(in_be32(phyregs + GFAR_MIIMMIND_OFFSET) &
> +				GFAR_MIIMIND_BUSY))
> +			break;
> +	}
> +
> +	return 0;
> +}
> +
> +int fsl_pq_mdio_init(void *busaddr)
> +{
> +	struct mii_device *bus;
> +
> +	bus = xzalloc(sizeof(struct mii_device));
> +	if (bus == NULL)
> +		return -ENOMEM;
no need xzalloc does not retrun if no mem
> +
> +	bus->read = fsl_miiphy_read;
> +	bus->write = fsl_miiphy_write;
> +	bus->reset = fsl_pq_mdio_reset;
> +	bus->parent = NULL;
no need you use zalloc
> +	bus->priv = busaddr;
> +
> +	return mii_register(bus);
> +}

Best Regards,
J.
> -- 
> 1.7.1
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

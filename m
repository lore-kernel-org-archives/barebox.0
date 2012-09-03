Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 1.mo2.mail-out.ovh.net ([46.105.63.121]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T8ZZM-0003vE-5W
 for barebox@lists.infradead.org; Mon, 03 Sep 2012 16:32:15 +0000
Received: from mail21.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id DB3BADC44AF
 for <barebox@lists.infradead.org>; Mon,  3 Sep 2012 18:37:27 +0200 (CEST)
Date: Mon, 3 Sep 2012 18:32:27 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120903163227.GH19931@game.jcrosoft.org>
References: <1346672765-16162-1-git-send-email-jlu@pengutronix.de>
 <1346672765-16162-11-git-send-email-jlu@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1346672765-16162-11-git-send-email-jlu@pengutronix.de>
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
Subject: Re: [PATCH 10/10] drivers/spi: add driver for the Multichannel SPI
 controller found in TI SoCs
To: Jan Luebbe <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org

On 13:46 Mon 03 Sep     , Jan Luebbe wrote:
> Also create devices for OMAP3.
> 
> Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
> ---
>  arch/arm/mach-omap/include/mach/mcspi.h         |   11 +
>  arch/arm/mach-omap/include/mach/omap3-devices.h |   34 ++
>  drivers/spi/Kconfig                             |    6 +
>  drivers/spi/Makefile                            |    1 +
>  drivers/spi/omap3_spi.c                         |  403 +++++++++++++++++++++++
>  drivers/spi/omap3_spi.h                         |  100 ++++++
>  6 files changed, 555 insertions(+)
>  create mode 100644 arch/arm/mach-omap/include/mach/mcspi.h
>  create mode 100644 arch/arm/mach-omap/include/mach/omap3-devices.h
>  create mode 100644 drivers/spi/omap3_spi.c
>  create mode 100644 drivers/spi/omap3_spi.h
> 
> diff --git a/arch/arm/mach-omap/include/mach/mcspi.h b/arch/arm/mach-omap/include/mach/mcspi.h
> new file mode 100644
> index 0000000..dbde67a
> --- /dev/null
> +++ b/arch/arm/mach-omap/include/mach/mcspi.h
> @@ -0,0 +1,11 @@
> +#ifndef __OMAP_MCSPI_H
> +#define  __OMAP_MCSPI_H
> +
> +#define OMAP3_MCSPI1_BASE	0x48098000
> +#define OMAP3_MCSPI2_BASE	0x4809A000
> +#define OMAP3_MCSPI3_BASE	0x480B8000
> +#define OMAP3_MCSPI4_BASE	0x480BA000
> +
> +int mcspi_devices_init(void);
> +
> +#endif /* __OMAP_MCSPI_H */
> diff --git a/arch/arm/mach-omap/include/mach/omap3-devices.h b/arch/arm/mach-omap/include/mach/omap3-devices.h
> new file mode 100644
> index 0000000..2db8583
> --- /dev/null
> +++ b/arch/arm/mach-omap/include/mach/omap3-devices.h
> @@ -0,0 +1,34 @@
> +#include <driver.h>
> +#include <sizes.h>
> +
> +#include <mach/mcspi.h>
> +
> +/* the device numbering is the same as in the device tree */
> +
this avoid duplicaation

static inline struct device_d *omap3_add_spi(int id, resource_t start)
{
	return add_generic_device("omap3_spi", id, NULL, start, SZ_4K,
				   IORESOURCE_MEM, NULL);
}

static inline struct device_d *omap3_add_spi1(void)
{
	return omap3_add_spi(1, OMAP3_MCSPI1_BASE);
}

static inline struct device_d *omap3_add_spi2(void)
{
	return omap3_add_spi(2, OMAP3_MCSPI2_BASE);
}
...


really DROP this struct way to describe the register it's too much dangerous
to modiffy and maintian

Best Regards,
J.
> +static inline struct device_d *omap3_add_spi1(void)
> +{
> +	return add_generic_device("omap3_spi", 1, NULL,
> +				   OMAP3_MCSPI1_BASE, SZ_4K,
> +				   IORESOURCE_MEM, NULL);
> +}
> +
> +static inline struct device_d *omap3_add_spi2(void)
> +{
> +	return add_generic_device("omap3_spi", 2, NULL,
> +				   OMAP3_MCSPI2_BASE, SZ_4K,
> +				   IORESOURCE_MEM, NULL);
> +}
> +
> +static inline struct device_d *omap3_add_spi3(void)
> +{
> +	return add_generic_device("omap3_spi", 3, NULL,
> +				   OMAP3_MCSPI3_BASE, SZ_4K,
> +				   IORESOURCE_MEM, NULL);
> +}
> +
> +static inline struct device_d *omap3_add_spi4(void)
> +{
> +	return add_generic_device("omap3_spi", 4, NULL,
> +				   OMAP3_MCSPI4_BASE, SZ_4K,
> +				   IORESOURCE_MEM, NULL);
> +}
> diff --git a/drivers/spi/Kconfig b/drivers/spi/Kconfig
> index a249b81..ba1b948 100644
> --- a/drivers/spi/Kconfig
> +++ b/drivers/spi/Kconfig
> @@ -34,4 +34,10 @@ config DRIVER_SPI_ATMEL
>  	depends on ARCH_AT91
>  	depends on SPI
>  
> +
> +config DRIVER_SPI_OMAP3
> +	bool "OMAP3 McSPI Master driver"
> +	depends on ARCH_OMAP3
> +	depends on SPI
> +
>  endmenu
> diff --git a/drivers/spi/Makefile b/drivers/spi/Makefile
> index 101652f..b53061e 100644
> --- a/drivers/spi/Makefile
> +++ b/drivers/spi/Makefile
> @@ -2,3 +2,4 @@ obj-$(CONFIG_SPI) += spi.o
>  obj-$(CONFIG_DRIVER_SPI_IMX) += imx_spi.o
>  obj-$(CONFIG_DRIVER_SPI_ALTERA) += altera_spi.o
>  obj-$(CONFIG_DRIVER_SPI_ATMEL) += atmel_spi.o
> +obj-$(CONFIG_DRIVER_SPI_OMAP3) += omap3_spi.o
> diff --git a/drivers/spi/omap3_spi.c b/drivers/spi/omap3_spi.c
> new file mode 100644
> index 0000000..eadb78d
> --- /dev/null
> +++ b/drivers/spi/omap3_spi.c
> @@ -0,0 +1,403 @@
> +/*
> + * Copyright (C) 2012 Jan Luebbe <j.luebbe@pengutronix.de>
> + *
> + * Copyright (C) 2010 Dirk Behme <dirk.behme@googlemail.com>
> + *
> + * Driver for McSPI controller on OMAP3. Based on davinci_spi.c
> + * Copyright (C) 2009 Texas Instruments Incorporated - http://www.ti.com/
> + *
> + * Copyright (C) 2007 Atmel Corporation
> + *
> + * Parts taken from linux/drivers/spi/omap2_mcspi.c
> + * Copyright (C) 2005, 2006 Nokia Corporation
> + *
> + * Modified by Ruslan Araslanov <ruslan.araslanov@vitecmm.com>
> + *
> + * See file CREDITS for list of people who contributed to this
> + * project.
> + *
> + * This program is free software; you can redistribute it and/or
> + * modify it under the terms of the GNU General Public License as
> + * published by the Free Software Foundation; either version 2 of
> + * the License, or (at your option) any later version.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + * You should have received a copy of the GNU General Public License
> + * along with this program; if not, write to the Free Software
> + * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
> + * MA 02111-1307 USA
> + *
> + */
> +
> +#include <common.h>
> +#include <init.h>
> +#include <driver.h>
> +#include <errno.h>
> +#include <spi/spi.h>
> +#include <malloc.h>
> +#include <io.h>
> +#include "omap3_spi.h"
> +
> +#define WORD_LEN	8
> +#define SPI_WAIT_TIMEOUT 30000000
> +
> +#define SPI_XFER_BEGIN  0x01                    /* Assert CS before transfer */
> +#define SPI_XFER_END    0x02                    /* Deassert CS after transfer */
> +
> +static void spi_reset(struct spi_master *master)
> +{
> +	struct omap3_spi_master *omap3_master = container_of(master, struct omap3_spi_master, master);
> +	struct mcspi __iomem *regs = omap3_master->regs;
> +	unsigned int tmp;
> +
> +	writel(OMAP3_MCSPI_SYSCONFIG_SOFTRESET, &regs->sysconfig);
> +	do {
> +		tmp = readl(&regs->sysstatus);
> +	} while (!(tmp & OMAP3_MCSPI_SYSSTATUS_RESETDONE));
> +
> +	writel(OMAP3_MCSPI_SYSCONFIG_AUTOIDLE |
> +				 OMAP3_MCSPI_SYSCONFIG_ENAWAKEUP |
> +				 OMAP3_MCSPI_SYSCONFIG_SMARTIDLE,
> +				 &regs->sysconfig);
> +
> +	writel(OMAP3_MCSPI_WAKEUPENABLE_WKEN, &regs->wakeupenable);
> +}
> +
> +int spi_claim_bus(struct spi_device *spi)
> +{
> +	struct spi_master *master = spi->master;
> +	struct omap3_spi_master *omap3_master = container_of(master, struct omap3_spi_master, master);
> +	struct mcspi __iomem *regs = omap3_master->regs;
> +	unsigned int conf, div = 0;
> +
> +	/* McSPI global module configuration */
> +
> +	/*
> +	 * setup when switching from (reset default) slave mode
> +	 * to single-channel master mode
> +	 */
> +	conf = readl(&regs->modulctrl);
> +	conf &= ~(OMAP3_MCSPI_MODULCTRL_STEST | OMAP3_MCSPI_MODULCTRL_MS);
> +	conf |= OMAP3_MCSPI_MODULCTRL_SINGLE;
> +	writel(conf, &regs->modulctrl);
> +
> +	/* McSPI individual channel configuration */
> +
> +	/* Calculate clock divisor. Valid range: 0x0 - 0xC ( /1 - /4096 ) */
> +	if (spi->max_speed_hz) {
> +		while (div <= 0xC && (OMAP3_MCSPI_MAX_FREQ / (1 << div))
> +					 > spi->max_speed_hz)
> +			div++;
> +	} else
> +		div = 0xC;
> +
> +	conf = readl(&regs->channel[spi->chip_select].chconf);
> +
> +	/* standard 4-wire master mode:	SCK, MOSI/out, MISO/in, nCS
> +	 * REVISIT: this controller could support SPI_3WIRE mode.
> +	 */
> +	conf &= ~(OMAP3_MCSPI_CHCONF_IS|OMAP3_MCSPI_CHCONF_DPE1);
> +	conf |= OMAP3_MCSPI_CHCONF_DPE0;
> +
> +	/* wordlength */
> +	conf &= ~OMAP3_MCSPI_CHCONF_WL_MASK;
> +	conf |= (WORD_LEN - 1) << 7;
> +
> +	/* set chipselect polarity; manage with FORCE */
> +	if (!(spi->mode & SPI_CS_HIGH))
> +		conf |= OMAP3_MCSPI_CHCONF_EPOL; /* active-low; normal */
> +	else
> +		conf &= ~OMAP3_MCSPI_CHCONF_EPOL;
> +
> +	/* set clock divisor */
> +	conf &= ~OMAP3_MCSPI_CHCONF_CLKD_MASK;
> +	conf |= div << 2;
> +
> +	/* set SPI mode 0..3 */
> +	if (spi->mode & SPI_CPOL)
> +		conf |= OMAP3_MCSPI_CHCONF_POL;
> +	else
> +		conf &= ~OMAP3_MCSPI_CHCONF_POL;
> +	if (spi->mode & SPI_CPHA)
> +		conf |= OMAP3_MCSPI_CHCONF_PHA;
> +	else
> +		conf &= ~OMAP3_MCSPI_CHCONF_PHA;
> +
> +	/* Transmit & receive mode */
> +	conf &= ~OMAP3_MCSPI_CHCONF_TRM_MASK;
> +
> +	writel(conf, &regs->channel[spi->chip_select].chconf);
> +	readl(&regs->channel[spi->chip_select].chconf);
> +
> +	return 0;
> +}
> +
> +int omap3_spi_write(struct spi_device *spi, unsigned int len, const u8 *txp,
> +		    unsigned long flags)
> +{
> +	struct spi_master *master = spi->master;
> +	struct omap3_spi_master *omap3_master = container_of(master, struct omap3_spi_master, master);
> +	struct mcspi __iomem *regs = omap3_master->regs;
> +	int i;
> +	int timeout = SPI_WAIT_TIMEOUT;
> +	int chconf = readl(&regs->channel[spi->chip_select].chconf);
> +
> +	if (flags & SPI_XFER_BEGIN)
> +		writel(OMAP3_MCSPI_CHCTRL_EN,
> +		       &regs->channel[spi->chip_select].chctrl);
> +
> +	chconf &= ~OMAP3_MCSPI_CHCONF_TRM_MASK;
> +	chconf |= OMAP3_MCSPI_CHCONF_TRM_TX_ONLY;
> +	chconf |= OMAP3_MCSPI_CHCONF_FORCE;
> +	writel(chconf, &regs->channel[spi->chip_select].chconf);
> +	readl(&regs->channel[spi->chip_select].chconf);
> +
> +	for (i = 0; i < len; i++) {
> +		/* wait till TX register is empty (TXS == 1) */
> +		while (!(readl(&regs->channel[spi->chip_select].chstat) &
> +			 OMAP3_MCSPI_CHSTAT_TXS)) {
> +			if (--timeout <= 0) {
> +				printf("SPI TXS timed out, status=0x%08x\n",
> +				       readl(&regs->channel[spi->chip_select].chstat));
> +				return -1;
> +			}
> +		}
> +		/* Write the data */
> +		writel(txp[i], &regs->channel[spi->chip_select].tx);
> +	}
> +
> +	if (flags & SPI_XFER_END) {
> +		/* wait to finish of transfer */
> +		while (!(readl(&regs->channel[spi->chip_select].chstat) &
> +			 OMAP3_MCSPI_CHSTAT_EOT));
> +
> +		chconf &= ~OMAP3_MCSPI_CHCONF_FORCE;
> +		writel(chconf, &regs->channel[spi->chip_select].chconf);
> +
> +		writel(0, &regs->channel[spi->chip_select].chctrl);
> +	}
> +
> +	while (!(readl(&regs->channel[spi->chip_select].chstat) &
> +			 OMAP3_MCSPI_CHSTAT_TXS));
> +	while (!(readl(&regs->channel[spi->chip_select].chstat) &
> +			 OMAP3_MCSPI_CHSTAT_EOT));
> +
> +	return 0;
> +}
> +
> +int omap3_spi_read(struct spi_device *spi, unsigned int len, u8 *rxp,
> +		   unsigned long flags)
> +{
> +	struct spi_master *master = spi->master;
> +	struct omap3_spi_master *omap3_master = container_of(master, struct omap3_spi_master, master);
> +	struct mcspi __iomem *regs = omap3_master->regs;
> +	int i;
> +	int timeout = SPI_WAIT_TIMEOUT;
> +	int chconf = readl(&regs->channel[spi->chip_select].chconf);
> +
> +	if (flags & SPI_XFER_BEGIN)
> +		writel(OMAP3_MCSPI_CHCTRL_EN,
> +		       &regs->channel[spi->chip_select].chctrl);
> +
> +	chconf &= ~OMAP3_MCSPI_CHCONF_TRM_MASK;
> +	chconf |= OMAP3_MCSPI_CHCONF_TRM_RX_ONLY;
> +	chconf |= OMAP3_MCSPI_CHCONF_FORCE;
> +	writel(chconf, &regs->channel[spi->chip_select].chconf);
> +	readl(&regs->channel[spi->chip_select].chconf);
> +	writel(0, &regs->channel[spi->chip_select].tx);
> +
> +	for (i = 0; i < len; i++) {
> +		/* Wait till RX register contains data (RXS == 1) */
> +		while (!(readl(&regs->channel[spi->chip_select].chstat) &
> +			 OMAP3_MCSPI_CHSTAT_RXS)) {
> +			if (--timeout <= 0) {
> +				printf("SPI RXS timed out, status=0x%08x\n",
> +				       readl(&regs->channel[spi->chip_select].chstat));
> +				return -1;
> +			}
> +		}
> +		/* Read the data */
> +		rxp[i] = readl(&regs->channel[spi->chip_select].rx);
> +	}
> +
> +	if (flags & SPI_XFER_END) {
> +		chconf &= ~OMAP3_MCSPI_CHCONF_FORCE;
> +		writel(chconf, &regs->channel[spi->chip_select].chconf);
> +		readl(&regs->channel[spi->chip_select].chconf);
> +
> +		writel(0, &regs->channel[spi->chip_select].chctrl);
> +	}
> +
> +	return 0;
> +}
> +
> +int spi_xfer(struct spi_device *spi, struct spi_transfer *t, unsigned long flags)
> +{
> +	struct spi_master *master = spi->master;
> +	struct omap3_spi_master *omap3_master = container_of(master, struct omap3_spi_master, master);
> +	struct mcspi __iomem *regs = omap3_master->regs;
> +	unsigned int    len = t->len;
> +	int             ret = -1;
> +	const u8        *txp = t->tx_buf; /* can be NULL for read operation */
> +	u8              *rxp = t->rx_buf; /* can be NULL for write operation */
> +
> +	if (len == 0) {	 /* only change CS */
> +		int chconf = readl(&regs->channel[spi->chip_select].chconf);
> +
> +		if (flags & SPI_XFER_BEGIN) {
> +			writel(OMAP3_MCSPI_CHCTRL_EN,
> +			       &regs->channel[spi->chip_select].chctrl);
> +			chconf |= OMAP3_MCSPI_CHCONF_FORCE;
> +			writel(chconf,
> +			       &regs->channel[spi->chip_select].chconf);
> +			readl(&regs->channel[spi->chip_select].chconf);
> +		}
> +
> +		if (flags & SPI_XFER_END) {
> +			chconf &= ~OMAP3_MCSPI_CHCONF_FORCE;
> +			writel(chconf,
> +			       &regs->channel[spi->chip_select].chconf);
> +			writel(0, &regs->channel[spi->chip_select].chctrl);
> +			readl(&regs->channel[spi->chip_select].chconf);
> +		}
> +
> +		ret = 0;
> +	} else {
> +		if (t->tx_buf != NULL)
> +			ret = omap3_spi_write(spi, len, txp, flags);
> +
> +		if (t->rx_buf != NULL)
> +			ret = omap3_spi_read(spi, len, rxp, flags);
> +	}
> +	return ret;
> +}
> +
> +static int omap3_spi_transfer(struct spi_device *spi, struct spi_message *mesg)
> +{
> +	struct spi_master *master = spi->master;
> +	struct spi_transfer *t, *t_first, *t_last = NULL;
> +	unsigned long flags;
> +	int ret = 0;
> +
> +	ret = spi_claim_bus(spi);
> +	if (ret)
> +		return ret;
> +
> +	if (list_empty(&mesg->transfers))
> +		return 0;
> +
> +	t_first = list_first_entry(&mesg->transfers, struct spi_transfer, transfer_list);
> +	t_last = list_last_entry(&mesg->transfers, struct spi_transfer, transfer_list);
> +
> +	mesg->actual_length = 0;
> +
> +	dev_dbg(master->dev, "transfer start actual_length=%i\n", mesg->actual_length);
> +	list_for_each_entry(t, &mesg->transfers, transfer_list) {
> +		dev_dbg(master->dev,
> +			"  xfer %p: len %u tx %p rx %p\n",
> +			t, t->len, t->tx_buf, t->rx_buf);
> +		flags = 0;
> +		if (t == t_first)
> +			flags |= SPI_XFER_BEGIN;
> +		if (t == t_last)
> +			flags |= SPI_XFER_END;
> +		spi_xfer(spi, t, flags);
> +		mesg->actual_length += t->len;
> +	}
> +	dev_dbg(master->dev, "transfer done actual_length=%i\n", mesg->actual_length);
> +
> +	return ret;
> +}
> +
> +static int omap3_spi_setup(struct spi_device *spi)
> +{
> +	struct spi_master *master = spi->master;
> +
> +	if (((master->bus_num == 0) && (spi->chip_select > 3)) ||
> +			((master->bus_num == 1) && (spi->chip_select > 1)) ||
> +			((master->bus_num == 2) && (spi->chip_select > 1)) ||
> +			((master->bus_num == 3) && (spi->chip_select > 0))) {
> +		printf("SPI error: unsupported chip select %i \
> +			on bus %i\n", spi->chip_select, master->bus_num);
> +		return -1;
> +	}
> +
> +	if (spi->max_speed_hz > OMAP3_MCSPI_MAX_FREQ) {
> +		printf("SPI error: unsupported frequency %i Hz. \
> +			Max frequency is 48 Mhz\n", spi->max_speed_hz);
> +		return -1;
> +	}
> +
> +	if (spi->mode > SPI_MODE_3) {
> +		printf("SPI error: unsupported SPI mode %i\n", spi->mode);
> +		return -1;
> +	}
> +
> +	return 0;
> +}
> +
> +static int omap3_spi_probe(struct device_d *dev)
> +{
> +	struct spi_master *master;
> +	struct omap3_spi_master *omap3_master;
> +
> +	omap3_master = xzalloc(sizeof(*omap3_master));
> +
> +	master = &omap3_master->master;
> +	master->dev = dev;
> +
> +	/*
> +	 * OMAP3 McSPI (MultiChannel SPI) has 4 busses (modules)
> +	 * with different number of chip selects (CS, channels):
> +	 * McSPI1 has 4 CS (bus 0, cs 0 - 3)
> +	 * McSPI2 has 2 CS (bus 1, cs 0 - 1)
> +	 * McSPI3 has 2 CS (bus 2, cs 0 - 1)
> +	 * McSPI4 has 1 CS (bus 3, cs 0)
> +	 */
> +
> +	master->bus_num = dev->id;
> +	switch (master->bus_num) {
> +	case 1:
> +		master->num_chipselect = 4;
> +		break;
> +	case 2:
> +		master->num_chipselect = 2;
> +		break;
> +	case 3:
> +		master->num_chipselect = 2;
> +		break;
> +	case 4:
> +		master->num_chipselect = 1;
> +		break;
> +	default:
> +		printf("SPI error: unsupported bus %i. \
> +			Supported busses 1 - 4\n", master->bus_num);
> +		return -ENODEV;
> +	}
> +	master->setup = omap3_spi_setup;
> +	master->transfer = omap3_spi_transfer;
> +
> +	omap3_master->regs = (struct mcspi *)dev_request_mem_region(dev, 0);;
> +
> +	spi_reset(master);
> +
> +	spi_register_master(master);
> +
> +	return 0;
> +}
> +
> +static struct driver_d omap3_spi_driver = {
> +	.name = "omap3_spi",
> +	.probe = omap3_spi_probe,
> +};
> +
> +static int omap3_spi_init(void)
> +{
> +	return register_driver(&omap3_spi_driver);
> +}
> +
> +device_initcall(omap3_spi_init);
> diff --git a/drivers/spi/omap3_spi.h b/drivers/spi/omap3_spi.h
> new file mode 100644
> index 0000000..2ad8ef7
> --- /dev/null
> +++ b/drivers/spi/omap3_spi.h
> @@ -0,0 +1,100 @@
> +/*
> + * Register definitions for the OMAP3 McSPI Controller
> + *
> + * Copyright (C) 2010 Dirk Behme <dirk.behme@googlemail.com>
> + *
> + * Parts taken from linux/drivers/spi/omap2_mcspi.c
> + * Copyright (C) 2005, 2006 Nokia Corporation
> + *
> + * Modified by Ruslan Araslanov <ruslan.araslanov@vitecmm.com>
> + *
> + * See file CREDITS for list of people who contributed to this
> + * project.
> + *
> + * This program is free software; you can redistribute it and/or
> + * modify it under the terms of the GNU General Public License as
> + * published by the Free Software Foundation; either version 2 of
> + * the License, or (at your option) any later version.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + * You should have received a copy of the GNU General Public License
> + * along with this program; if not, write to the Free Software
> + * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
> + * MA 02111-1307 USA
> + */
> +
> +#ifndef _OMAP3_SPI_H_
> +#define _OMAP3_SPI_H_
> +
> +#define OMAP3_MCSPI_MAX_FREQ	48000000
> +
> +/* OMAP3 McSPI registers */
> +struct mcspi_channel {
> +	unsigned int chconf;		/* 0x2C, 0x40, 0x54, 0x68 */
> +	unsigned int chstat;		/* 0x30, 0x44, 0x58, 0x6C */
> +	unsigned int chctrl;		/* 0x34, 0x48, 0x5C, 0x70 */
> +	unsigned int tx;		/* 0x38, 0x4C, 0x60, 0x74 */
> +	unsigned int rx;		/* 0x3C, 0x50, 0x64, 0x78 */
> +};
> +
> +struct mcspi {
> +	unsigned char res1[0x10];
> +	unsigned int sysconfig;		/* 0x10 */
> +	unsigned int sysstatus;		/* 0x14 */
> +	unsigned int irqstatus;		/* 0x18 */
> +	unsigned int irqenable;		/* 0x1C */
> +	unsigned int wakeupenable;	/* 0x20 */
> +	unsigned int syst;		/* 0x24 */
> +	unsigned int modulctrl;		/* 0x28 */
> +	struct mcspi_channel channel[4]; /* channel0: 0x2C - 0x3C, bus 0 & 1 & 2 & 3 */
> +					/* channel1: 0x40 - 0x50, bus 0 & 1 */
> +					/* channel2: 0x54 - 0x64, bus 0 & 1 */
> +					/* channel3: 0x68 - 0x78, bus 0 */
> +};
> +
> +/* per-register bitmasks */
> +#define OMAP3_MCSPI_SYSCONFIG_SMARTIDLE (2 << 3)
> +#define OMAP3_MCSPI_SYSCONFIG_ENAWAKEUP (1 << 2)
> +#define OMAP3_MCSPI_SYSCONFIG_AUTOIDLE	(1 << 0)
> +#define OMAP3_MCSPI_SYSCONFIG_SOFTRESET (1 << 1)
> +
> +#define OMAP3_MCSPI_SYSSTATUS_RESETDONE (1 << 0)
> +
> +#define OMAP3_MCSPI_MODULCTRL_SINGLE	(1 << 0)
> +#define OMAP3_MCSPI_MODULCTRL_MS	(1 << 2)
> +#define OMAP3_MCSPI_MODULCTRL_STEST	(1 << 3)
> +
> +#define OMAP3_MCSPI_CHCONF_PHA		(1 << 0)
> +#define OMAP3_MCSPI_CHCONF_POL		(1 << 1)
> +#define OMAP3_MCSPI_CHCONF_CLKD_MASK	(0x0f << 2)
> +#define OMAP3_MCSPI_CHCONF_EPOL		(1 << 6)
> +#define OMAP3_MCSPI_CHCONF_WL_MASK	(0x1f << 7)
> +#define OMAP3_MCSPI_CHCONF_TRM_RX_ONLY	(0x01 << 12)
> +#define OMAP3_MCSPI_CHCONF_TRM_TX_ONLY	(0x02 << 12)
> +#define OMAP3_MCSPI_CHCONF_TRM_MASK	(0x03 << 12)
> +#define OMAP3_MCSPI_CHCONF_DMAW		(1 << 14)
> +#define OMAP3_MCSPI_CHCONF_DMAR		(1 << 15)
> +#define OMAP3_MCSPI_CHCONF_DPE0		(1 << 16)
> +#define OMAP3_MCSPI_CHCONF_DPE1		(1 << 17)
> +#define OMAP3_MCSPI_CHCONF_IS		(1 << 18)
> +#define OMAP3_MCSPI_CHCONF_TURBO	(1 << 19)
> +#define OMAP3_MCSPI_CHCONF_FORCE	(1 << 20)
> +
> +#define OMAP3_MCSPI_CHSTAT_RXS		(1 << 0)
> +#define OMAP3_MCSPI_CHSTAT_TXS		(1 << 1)
> +#define OMAP3_MCSPI_CHSTAT_EOT		(1 << 2)
> +
> +#define OMAP3_MCSPI_CHCTRL_EN		(1 << 0)
> +
> +#define OMAP3_MCSPI_WAKEUPENABLE_WKEN	(1 << 0)
> +
> +struct omap3_spi_master {
> +	struct spi_master master;
> +	struct mcspi __iomem *regs;
> +};
> +
> +#endif /* _OMAP3_SPI_H_ */
> -- 
> 1.7.10.4
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

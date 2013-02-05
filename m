Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 17.mo4.mail-out.ovh.net ([46.105.41.16]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U2hnl-00022t-FU
 for barebox@lists.infradead.org; Tue, 05 Feb 2013 12:39:07 +0000
Received: from mail608.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id D925C104FE89
 for <barebox@lists.infradead.org>; Tue,  5 Feb 2013 13:49:12 +0100 (CET)
Date: Tue, 5 Feb 2013 13:37:48 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130205123748.GC19322@game.jcrosoft.org>
References: <1360064817-6210-1-git-send-email-m.grzeschik@pengutronix.de>
 <1360064817-6210-3-git-send-email-m.grzeschik@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1360064817-6210-3-git-send-email-m.grzeschik@pengutronix.de>
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
Subject: Re: [PATCH v2 2/3] SPI: Add i.MX 23/28 SPI driver support
To: Michael Grzeschik <m.grzeschik@pengutronix.de>
Cc: barebox@lists.infradead.org

On 12:46 Tue 05 Feb     , Michael Grzeschik wrote:
> Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
> ---
> changes since v1:
>  - renamed patch to more clear subject
>  - whitespace fixes
>  - catched more error returns, as EIO
>  - explicit affected archs as kconfig dependency
>  - used dev_{dbg,info,err} instead of printf
>  - removed unneded xzalloc failure catch
>  - returning value from driver_register on spi_init
> 
>  arch/arm/mach-mxs/include/mach/ssp.h |    2 +
>  drivers/spi/Kconfig                  |    5 +
>  drivers/spi/Makefile                 |    1 +
>  drivers/spi/mxs_spi.c                |  306 ++++++++++++++++++++++++++++++++++
>  4 files changed, 314 insertions(+)
>  create mode 100644 drivers/spi/mxs_spi.c
> 
> diff --git a/arch/arm/mach-mxs/include/mach/ssp.h b/arch/arm/mach-mxs/include/mach/ssp.h
> index aa2b27a..5eee5c0 100644
> --- a/arch/arm/mach-mxs/include/mach/ssp.h
> +++ b/arch/arm/mach-mxs/include/mach/ssp.h
> @@ -64,6 +64,7 @@
>  #define SSP_CTRL0_BUS_WIDTH(x)		(((x) & 0x3) << 22)
>  #define SSP_CTRL0_WAIT_FOR_IRQ		(1 << 21)
>  #define SSP_CTRL0_WAIT_FOR_CMD		(1 << 20)
> +#define SSP_CTRL0_SSP_ASSERT_OUT(x)	(((x) & 0x3) << 20)
>  #define SSP_CTRL0_LONG_RESP		(1 << 19)
>  #define SSP_CTRL0_GET_RESP		(1 << 17)
>  #define SSP_CTRL0_ENABLE		(1 << 16)
> @@ -92,6 +93,7 @@
>  /* bit definition for register HW_SSP_CTRL1 */
>  #define SSP_CTRL1_POLARITY		(1 << 9)
>  #define SSP_CTRL1_PHASE			(1 << 10)
> +#define SSP_CTRL1_DMA_ENABLE		(1 << 13)
>  #define SSP_CTRL1_WORD_LENGTH(x)	(((x) & 0xf) << 4)
>  #define SSP_CTRL1_SSP_MODE(x)		((x) & 0xf)
>  
> diff --git a/drivers/spi/Kconfig b/drivers/spi/Kconfig
> index 10b8fea..f14e28f 100644
> --- a/drivers/spi/Kconfig
> +++ b/drivers/spi/Kconfig
> @@ -33,6 +33,11 @@ config DRIVER_SPI_IMX_2_3
>  	depends on ARCH_IMX51 || ARCH_IMX53 || ARCH_IMX6
>  	default y
>  
> +config DRIVER_SPI_MXS
> +	bool "i.MX (23,28) SPI Master driver"
> +	depends on ARCH_IMX23 || ARCH_IMX28
> +	depends on SPI
> +
>  config DRIVER_SPI_OMAP3
>  	bool "OMAP3 McSPI Master driver"
>  	depends on ARCH_OMAP3
> diff --git a/drivers/spi/Makefile b/drivers/spi/Makefile
> index b53061e..642b7ec 100644
> --- a/drivers/spi/Makefile
> +++ b/drivers/spi/Makefile
> @@ -1,5 +1,6 @@
>  obj-$(CONFIG_SPI) += spi.o
>  obj-$(CONFIG_DRIVER_SPI_IMX) += imx_spi.o
> +obj-$(CONFIG_DRIVER_SPI_MXS) += mxs_spi.o
>  obj-$(CONFIG_DRIVER_SPI_ALTERA) += altera_spi.o
>  obj-$(CONFIG_DRIVER_SPI_ATMEL) += atmel_spi.o
>  obj-$(CONFIG_DRIVER_SPI_OMAP3) += omap3_spi.o
> diff --git a/drivers/spi/mxs_spi.c b/drivers/spi/mxs_spi.c
> new file mode 100644
> index 0000000..3c6c11b
> --- /dev/null
> +++ b/drivers/spi/mxs_spi.c
> @@ -0,0 +1,306 @@
> +/*
> + * Freescale i.MX28 SPI driver
> + *
> + * Copyright (C) 2013 Michael Grzeschik <mgr@pengutronix.de>
> + *
> + * Copyright (C) 2011 Marek Vasut <marek.vasut@gmail.com>
> + * on behalf of DENX Software Engineering GmbH
> + *
> + * This program is free software; you can redistribute it and/or
> + * modify it under the terms of the GNU General Public License as
> + * published by the Free Software Foundation; either version 2 of
> + * the License, or (at your option) any later version.
> + *
> + */
> +
> +#include <common.h>
> +#include <init.h>
> +#include <malloc.h>
> +#include <spi/spi.h>
> +#include <clock.h>
> +#include <errno.h>
> +#include <io.h>
> +#include <linux/clk.h>
> +#include <asm/mmu.h>
> +#include <mach/generic.h>
> +#include <mach/imx-regs.h>
> +#include <mach/mxs.h>
> +#include <mach/clock.h>
> +#include <mach/ssp.h>
> +
> +#define	MXS_SPI_MAX_TIMEOUT		(10 * MSECOND)
> +
> +#define	SPI_XFER_BEGIN	0x01 /* Assert CS before transfer */
> +#define	SPI_XFER_END	0x02 /* Deassert CS after transfer */
> +
> +struct mxs_spi {
> +	struct spi_master	master;
> +	uint32_t		max_khz;
> +	uint32_t		mode;
> +	struct clk		*clk;
> +	void __iomem		*regs;
> +};
> +
> +static inline struct mxs_spi *to_mxs(struct spi_master *master)
> +{
> +	return container_of(master, struct mxs_spi, master);
> +}
> +
> +/*
> + * Set SSP/MMC bus frequency, in kHz
> + */
> +static void imx_set_ssp_busclock(struct spi_master *master, uint32_t freq)
> +{
> +	struct mxs_spi *mxs = to_mxs(master);
> +	const uint32_t sspclk = imx_get_sspclk(master->bus_num);
> +	uint32_t val;
> +	uint32_t divide, rate, tgtclk;
> +
> +	/*
> +	 * SSP bit rate = SSPCLK / (CLOCK_DIVIDE * (1 + CLOCK_RATE)),
> +	 * CLOCK_DIVIDE has to be an even value from 2 to 254, and
> +	 * CLOCK_RATE could be any integer from 0 to 255.
> +	 */
> +	for (divide = 2; divide < 254; divide += 2) {
> +		rate = sspclk / freq / divide;
> +		if (rate <= 256)
> +			break;
> +	}
> +
> +	tgtclk = sspclk / divide / rate;
> +	while (tgtclk > freq) {
> +		rate++;
> +		tgtclk = sspclk / divide / rate;
> +	}
> +	if (rate > 256)
> +		rate = 256;
> +
> +	/* Always set timeout the maximum */
> +	val = SSP_TIMING_TIMEOUT_MASK |
> +		SSP_TIMING_CLOCK_DIVIDE(divide) |
> +		SSP_TIMING_CLOCK_RATE(rate - 1);
> +	writel(val, mxs->regs + HW_SSP_TIMING);
> +
> +	dev_dbg(master->dev, "SPI%d: Set freq rate to %d KHz (requested %d KHz)\n",
> +		master->bus_num, tgtclk, freq);
> +}
> +
> +static int mxs_spi_setup(struct spi_device *spi)
> +{
> +	struct spi_master *master = spi->master;
> +	struct mxs_spi *mxs = to_mxs(master);
> +	uint32_t val = 0;
> +
> +	/* MXS SPI: 4 ports and 3 chip selects maximum */
> +	if (master->bus_num > 3 || spi->chip_select > 2) {
> +		dev_err(master->dev, "mxs_spi: invalid bus %d / chip select %d\n",
> +			 master->bus_num, spi->chip_select);
> +		return -EINVAL;
> +	}
> +
> +	mxs_reset_block(mxs->regs + HW_SSP_CTRL0, 0);
> +
> +	val |= SSP_CTRL0_SSP_ASSERT_OUT(spi->chip_select);
> +	val |= SSP_CTRL0_BUS_WIDTH(0);
> +	writel(val, mxs->regs + HW_SSP_CTRL0 + BIT_SET);
> +
> +	val = SSP_CTRL1_SSP_MODE(0) | SSP_CTRL1_WORD_LENGTH(7);
> +	val |= (mxs->mode & SPI_CPOL) ? SSP_CTRL1_POLARITY : 0;
> +	val |= (mxs->mode & SPI_CPHA) ? SSP_CTRL1_PHASE : 0;
> +	writel(val, mxs->regs + HW_SSP_CTRL1);
> +
> +	writel(0x0, mxs->regs + HW_SSP_CMD0);
> +	writel(0x0, mxs->regs + HW_SSP_CMD1);
> +
> +	imx_set_ssp_busclock(master, spi->max_speed_hz);
> +
> +	return 0;
> +}
> +
> +static void mxs_spi_start_xfer(struct mxs_spi *mxs)
> +{
> +	writel(SSP_CTRL0_LOCK_CS, mxs->regs + HW_SSP_CTRL0 + BIT_SET);
> +	writel(SSP_CTRL0_IGNORE_CRC, mxs->regs + HW_SSP_CTRL0 + BIT_CLR);
> +}
> +
> +static void mxs_spi_end_xfer(struct mxs_spi *mxs)
> +{
> +	writel(SSP_CTRL0_LOCK_CS, mxs->regs + HW_SSP_CTRL0 + BIT_CLR);
> +	writel(SSP_CTRL0_IGNORE_CRC, mxs->regs + HW_SSP_CTRL0 + BIT_SET);
> +}
> +
> +static uint32_t mxs_spi_cs_to_reg(unsigned cs)
> +{
> +	uint32_t select = 0;
> +
> +	if (cs & 1)
> +		select |= SSP_CTRL0_WAIT_FOR_CMD;
> +	if (cs & 2)
> +		select |= SSP_CTRL0_WAIT_FOR_IRQ;
> +

this look really wired
> +	return select;
> +}
> +
> +static void mxs_spi_set_cs(struct spi_device *spi)
> +{
> +	const uint32_t mask = SSP_CTRL0_WAIT_FOR_CMD | SSP_CTRL0_WAIT_FOR_IRQ;
> +	uint32_t select;
> +	struct mxs_spi *mxs = to_mxs(spi->master);
> +
> +	writel(mask, mxs->regs + HW_SSP_CTRL0 + BIT_CLR);
> +	select = mxs_spi_cs_to_reg(spi->chip_select);
handle this at setup and keep it in controller_data
> +	writel(select, mxs->regs + HW_SSP_CTRL0 + BIT_SET);
> +}
> +
> +static int mxs_spi_xfer_pio(struct spi_device *spi,
> +			char *data, int length, int write, unsigned long flags)
> +{
> +	struct mxs_spi *mxs = to_mxs(spi->master);
> +	struct spi_master *master = spi->master;
> +
> +	if (flags & SPI_XFER_BEGIN)
> +		mxs_spi_start_xfer(mxs);
> +
> +	mxs_spi_set_cs(spi);
> +
> +	while (length--) {
> +		if ((flags & SPI_XFER_END) && !length)
> +			mxs_spi_end_xfer(mxs);
> +
> +		/* We transfer 1 byte */
> +		writel(1, mxs->regs + HW_SSP_XFER_COUNT);
> +
> +		if (write)
> +			writel(SSP_CTRL0_READ, mxs->regs + HW_SSP_CTRL0 + BIT_CLR);
> +		else
> +			writel(SSP_CTRL0_READ, mxs->regs + HW_SSP_CTRL0 + BIT_SET);
> +
> +		writel(SSP_CTRL0_RUN, mxs->regs + HW_SSP_CTRL0 + BIT_SET);
> +
> +		if (wait_on_timeout(MXS_SPI_MAX_TIMEOUT,
> +				(readl(mxs->regs + HW_SSP_CTRL0) & SSP_CTRL0_RUN) == SSP_CTRL0_RUN)) {
> +			dev_err(master->dev, "MXS SPI: Timeout waiting for start\n");
> +			return -ETIMEDOUT;
> +		}
> +
> +		if (write)
> +			writel(*data++, mxs->regs + HW_SSP_DATA);
> +
> +		writel(SSP_CTRL0_DATA_XFER, mxs->regs + HW_SSP_CTRL0 + BIT_SET);
> +
> +		if (!write) {
> +			if (wait_on_timeout(MXS_SPI_MAX_TIMEOUT,
> +				!(readl(mxs->regs + HW_SSP_STATUS) & SSP_STATUS_FIFO_EMPTY))) {
> +				dev_err(master->dev, "MXS SPI: Timeout waiting for data\n");
> +				return -ETIMEDOUT;
> +			}
> +
> +			*data++ = readl(mxs->regs + HW_SSP_DATA) & 0xff;
> +		}
> +
> +		if (wait_on_timeout(MXS_SPI_MAX_TIMEOUT,
> +			!(readl(mxs->regs + HW_SSP_CTRL0) & SSP_CTRL0_RUN))) {
> +			dev_err(master->dev, "MXS SPI: Timeout waiting for finish\n");
> +			return -ETIMEDOUT;
> +		}
> +	}
> +
> +	return 0;
> +}
> +
> +static int mxs_spi_transfer(struct spi_device *spi, struct spi_message *mesg)
> +{
> +	struct mxs_spi *mxs = to_mxs(spi->master);
> +	struct spi_master *master = spi->master;
> +	struct spi_transfer *t = NULL;
> +	char dummy;
> +	unsigned long flags = 0;
> +	int write = 0;
> +	char *data = NULL;
> +	int ret;
> +	mesg->actual_length = 0;
> +
> +	list_for_each_entry(t, &mesg->transfers, transfer_list) {
> +		flags = 0;
> +
> +		if (t->tx_buf) {
> +			data = (char *) t->tx_buf;
> +			write = 1;
> +		} else if (t->rx_buf) {
> +			data = (char *) t->rx_buf;
> +			write = 0;
> +		}
you do not handle cs_change so mmc_cpi will nver work
> +
> +		if (&t->transfer_list == mesg->transfers.next)
> +			flags |= SPI_XFER_BEGIN;
> +
> +		if (&t->transfer_list == mesg->transfers.prev)
> +			flags |= SPI_XFER_END;
> +
> +		if ((t->rx_buf && t->tx_buf)) {
> +			dev_err(master->dev, "Cannot send and receive simultaneously\n");
> +			return -EIO;
> +		}
> +
> +		if ((!t->rx_buf && !t->tx_buf)) {
> +			dev_err(master->dev, "No Data\n");
> +			return -EIO;
> +		}
> +
> +		if (t->len == 0) {
> +			if (flags == SPI_XFER_END) {
> +				t->len = 1;
> +				t->rx_buf = (void *) &dummy;
> +			} else {
> +				return 0;
> +			}
> +		}
> +
> +		writel(SSP_CTRL1_DMA_ENABLE, mxs->regs + HW_SSP_CTRL1 + BIT_CLR);
> +		ret = mxs_spi_xfer_pio(spi, data, t->len, write, flags);
> +		if (ret < 0)
> +			return ret;
> +		mesg->actual_length += t->len;
> +	}
> +
> +	return 0;
> +}
> +
> +static int mxs_spi_probe(struct device_d *dev)
> +{
> +	struct spi_master *master;
> +	struct mxs_spi *mxs;
> +
> +	mxs = xzalloc(sizeof(*mxs));
> +
> +	master = &mxs->master;
> +	master->dev = dev;
> +
> +	master->bus_num = dev->id;
> +	master->setup = mxs_spi_setup;
> +	master->transfer = mxs_spi_transfer;
> +	master->num_chipselect = 3;
> +	mxs->mode = SPI_CPOL | SPI_CPHA;
> +
> +	mxs->regs = dev_request_mem_region(dev, 0);
> +
> +	spi_register_master(master);
> +
> +	return 0;
> +}
> +
> +static struct driver_d mxs_spi_driver = {
> +	.name  = "mxs_spi",
> +	.probe = mxs_spi_probe,
> +};
> +
> +static int __init mxs_spi_init(void)
> +{
> +	return platform_driver_register(&mxs_spi_driver);
> +}
> +
> +device_initcall(mxs_spi_init);
> +
> +MODULE_AUTHOR("Denx Software Engeneering and Michael Grzeschik");
> +MODULE_DESCRIPTION("MXS SPI driver");
> +MODULE_LICENSE("GPL");
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

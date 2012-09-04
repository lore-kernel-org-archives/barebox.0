Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T8oyJ-0007o5-RC
 for barebox@lists.infradead.org; Tue, 04 Sep 2012 08:59:01 +0000
Date: Tue, 4 Sep 2012 10:58:58 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120904085858.GT26594@pengutronix.de>
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

On Mon, Sep 03, 2012 at 01:46:05PM +0200, Jan Luebbe wrote:
> Also create devices for OMAP3.
> 
> Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
> ---
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

if an 'if' has braces then add them to the 'else' path aswell.

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

Please use a well defined timeout rather than 'poll a million times'

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

ditto

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

-1 is no valid error code. Please remove the initialization on ret.

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

Please use valid error codes here.

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

This does not scale for different SoCs. Can't you just initialize
num_chipselect to the maximum value of 4?

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

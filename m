Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U2ejb-0007Rv-5H
 for barebox@lists.infradead.org; Tue, 05 Feb 2013 09:22:35 +0000
Date: Tue, 5 Feb 2013 10:22:33 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130205092233.GR1906@pengutronix.de>
References: <1359998781-31956-1-git-send-email-m.grzeschik@pengutronix.de>
 <1359998781-31956-3-git-send-email-m.grzeschik@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1359998781-31956-3-git-send-email-m.grzeschik@pengutronix.de>
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
Subject: Re: [PATCH 2/3] mxs_spi: initial commit
To: Michael Grzeschik <m.grzeschik@pengutronix.de>
Cc: barebox@lists.infradead.org

s/$subject/SPI: Add i.MX 23/28 SPI driver support/

On Mon, Feb 04, 2013 at 06:26:20PM +0100, Michael Grzeschik wrote:
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
> +	debug("SPI%d: Set freq rate to %d KHz (requested %d KHz)\n",
> +		bus, tgtclk, freq);

Use dev_dbg, dev_info, dev_err throughout the driver please.

> +
> +static int mxs_spi_probe(struct device_d *dev)
> +{
> +	struct spi_master *master;
> +	struct mxs_spi *mxs;
> +
> +	mxs = xzalloc(sizeof(*mxs));
> +	if (!mxs)
> +		return -ENOMEM;

xzalloc always returns memory.

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
> +	platform_driver_register(&mxs_spi_driver);
> +	return 0;

	return platform_driver_register(&mxs_spi_driver);

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

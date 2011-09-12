Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R33dn-0007Ls-I3
	for barebox@lists.infradead.org; Mon, 12 Sep 2011 10:21:28 +0000
Date: Mon, 12 Sep 2011 12:21:25 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110912102125.GS31404@pengutronix.de>
References: <3c14dbb81191e6dcf1ecc7ef799834f52ad5f10a.1314685868.git.fercerpav@gmail.com>
	<6a487d727c7d0e29b35276f5780fd91e116f79d8.1314685868.git.fercerpav@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6a487d727c7d0e29b35276f5780fd91e116f79d8.1314685868.git.fercerpav@gmail.com>
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
Subject: Re: [PATCH 2/2] imx25: imx_spi: support CSPI v0.7 as found on i.MX25
To: Paul Fertser <fercerpav@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Aug 30, 2011 at 10:30:51AM +0400, Paul Fertser wrote:
> +
> +#if 0
> +/* MX1, MX31, MX35, MX51 CSPI */
> +static unsigned int spi_imx_clkdiv_2(unsigned int fin,
> +		unsigned int fspi)
> +{
> +	int i, div = 4;
> +
> +	for (i = 0; i < 7; i++) {
> +		if (fspi * div >= fin)
> +			return i;
> +		div <<= 1;
> +	}
> +
> +	return 7;
> +}
> +#endif
> +
> +static void cspi_0_7_chipselect(struct spi_device *spi, int is_active)
> +{
> +	struct spi_master *master = spi->master;
> +	struct imx_spi *imx = container_of(master, struct imx_spi, master);
> +	void __iomem *base = imx->regs;
> +	unsigned int cs = 0;
> +	int gpio = imx->cs_array[spi->chip_select];
> +	unsigned int reg = CSPI_0_7_CTRL_ENABLE | CSPI_0_7_CTRL_MASTER;
> +
> +	if (spi->mode & SPI_CS_HIGH)
> +		cs = 1;
> +
> +	if (!is_active) {
> +		if (gpio >= 0)
> +			gpio_set_value(gpio, !cs);
> +		return;
> +	}
> +
> +#if 0
> +	reg |= spi_imx_clkdiv_2(166000000, spi->max_speed_hz) <<
> +	  CSPI_0_7_CTRL_DR_SHIFT;
> +#endif
> +	reg |= 7 << CSPI_0_7_CTRL_DR_SHIFT; /* slowest speed */

Can we fix this before merging it? Are there any problems with faster
speeds?

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

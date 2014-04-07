Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WX49G-0006oa-S6
 for barebox@lists.infradead.org; Mon, 07 Apr 2014 07:39:19 +0000
Date: Mon, 7 Apr 2014 09:38:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140407073856.GJ27055@pengutronix.de>
References: <1396722934-23818-1-git-send-email-antonynpavlov@gmail.com>
 <1396722934-23818-3-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1396722934-23818-3-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH 2/5] spi: add controller driver for Atheros AR7XXX/AR9XXX
 SoCs
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Sat, Apr 05, 2014 at 10:35:31PM +0400, Antony Pavlov wrote:
> +static int ath79_spi_setup(struct spi_device *spi)
> +{
> +	struct spi_master *master = spi->master;
> +	struct device_d spi_dev = spi->dev;
> +
> +	if (spi->bits_per_word != 8) {
> +		dev_err(master->dev, "master doesn't support %d bits per word requested by %s\n",
> +			spi->bits_per_word, spi_dev.name);
> +		return -1;
> +	}
> +
> +	if ((spi->mode & (SPI_CPHA | SPI_CPOL)) != SPI_MODE_0) {
> +		dev_err(master->dev, "master doesn't support SPI_MODE%d requested by %s\n",
> +			spi->mode & (SPI_CPHA | SPI_CPOL), spi_dev.name);
> +		return -1;
> +	}

Better -EINVAL?

Otherwise this series looks good.

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

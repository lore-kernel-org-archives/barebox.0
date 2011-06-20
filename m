Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QYYEK-0000sE-TI
	for barebox@lists.infradead.org; Mon, 20 Jun 2011 06:45:08 +0000
Date: Mon, 20 Jun 2011 08:45:01 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110620064501.GL23771@pengutronix.de>
References: <1308211963-4384-1-git-send-email-h.feurstein@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1308211963-4384-1-git-send-email-h.feurstein@gmail.com>
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
Subject: Re: [RFC PATCH] spi: add at25 spi eeprom driver
To: Hubert Feurstein <h.feurstein@gmail.com>
Cc: barebox@lists.infradead.org

Hi Hubert,

On Thu, Jun 16, 2011 at 10:12:43AM +0200, Hubert Feurstein wrote:
>  obj-y	+= mfd/
>  obj-$(CONFIG_LED) += led/
> +obj-y	+= misc/
> diff --git a/drivers/misc/Kconfig b/drivers/misc/Kconfig

I think we should move the driver up to drivers/eeprom and skip the
'misc'. The kernel guys like to get rid of it also.

> +
> +		/* Wait for non-busy status */
> +		start_time = get_time_ns();
> +
> +		retries = 0;
> +		do {
> +
> +			sr = spi_w8r8(at25->spi, AT25_RDSR);
> +			if (sr < 0 || (sr & AT25_SR_nRDY)) {
> +				dev_dbg(at25->cdev.dev,
> +					"rdsr --> %d (%02x)\n", sr, sr);
> +				mdelay(1);
> +				continue;
> +			}
> +			if (!(sr & AT25_SR_nRDY))
> +				break;
> +		} while (retries++ < 3 || !is_timeout(start_time, EE_TIMEOUT));

I don't understand this. The loop is limited by retries++ < 3. Why this
additional is_timeout? Is this the same in the kernel?

> +static int at25_init(void)
> +{
> +	register_driver(&at25_driver);
> +	return 0;
> +}
> +
> +device_initcall(at25_init);
> diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
> index 4560259..6456897 100644
> --- a/drivers/spi/spi.c
> +++ b/drivers/spi/spi.c
> @@ -75,6 +75,7 @@ struct spi_device *spi_new_device(struct spi_master *master,
>  	proxy->chip_select = chip->chip_select;
>  	proxy->max_speed_hz = chip->max_speed_hz;
>  	proxy->mode = chip->mode;
> +	proxy->dev.platform_data = chip->platform_data;

This should be a seperate patch.

>  	strcpy(proxy->dev.name, chip->name);
>  	proxy->dev.type_data = proxy;
>  	status = register_device(&proxy->dev);
> @@ -194,3 +195,44 @@ int spi_sync(struct spi_device *spi, struct spi_message *message)
>  	return spi->master->transfer(spi, message);
>  }
> 
> +/**
> + * spi_write_then_read - SPI synchronous write followed by read
> + * @spi: device with which data will be exchanged
> + * @txbuf: data to be written
> + * @n_tx: size of txbuf, in bytes
> + * @rxbuf: buffer into which data will be read
> + * @n_rx: size of rxbuf, in bytes
> + * Context: can sleep
> + *
> + * This performs a half duplex MicroWire style transaction with the
> + * device, sending txbuf and then reading rxbuf.  The return value
> + * is zero for success, else a negative errno status code.
> + * This call may only be used from a context that may sleep.
> + */
> +int spi_write_then_read(struct spi_device *spi,
> +		const void *txbuf, unsigned n_tx,
> +		void *rxbuf, unsigned n_rx)
> +{
> +	int			status;
> +	struct spi_message	message;
> +	struct spi_transfer	x[2];
> +
> +	spi_message_init(&message);
> +	memset(x, 0, sizeof x);
> +	if (n_tx) {
> +		x[0].len = n_tx;
> +		spi_message_add_tail(&x[0], &message);
> +	}
> +	if (n_rx) {
> +		x[1].len = n_rx;
> +		spi_message_add_tail(&x[1], &message);
> +	}
> +
> +	x[0].tx_buf = txbuf;
> +	x[1].rx_buf = rxbuf;
> +
> +	/* do the i/o */
> +	status = spi_sync(spi, &message);
> +	return status;
> +}
> +EXPORT_SYMBOL(spi_write_then_read);

Also a seperate patch.

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

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XAZbt-0000nJ-Nw
 for barebox@lists.infradead.org; Fri, 25 Jul 2014 07:08:12 +0000
Date: Fri, 25 Jul 2014 09:07:46 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140725070746.GO23235@pengutronix.de>
References: <1406203303-13015-1-git-send-email-poggi.raph@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1406203303-13015-1-git-send-email-poggi.raph@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2] i2c: add Atmel AT91 driver
To: =?iso-8859-15?Q?Rapha=EBl?= Poggi <poggi.raph@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Jul 24, 2014 at 02:01:43PM +0200, Rapha=EBl Poggi wrote:
> Signed-off-by: Rapha=EBl Poggi <poggi.raph@gmail.com>

Applied, thanks

Sascha

> ---
>  drivers/i2c/busses/Kconfig    |    4 +
>  drivers/i2c/busses/Makefile   |    1 +
>  drivers/i2c/busses/i2c-at91.c |  437 +++++++++++++++++++++++++++++++++++=
++++++
>  3 files changed, 442 insertions(+)
>  create mode 100644 drivers/i2c/busses/i2c-at91.c
> =

> diff --git a/drivers/i2c/busses/Kconfig b/drivers/i2c/busses/Kconfig
> index 370abb0..5b75449 100644
> --- a/drivers/i2c/busses/Kconfig
> +++ b/drivers/i2c/busses/Kconfig
> @@ -12,6 +12,10 @@ config I2C_GPIO
>  	  This is a very simple bitbanging I2C driver utilizing the
>  	  arch-neutral GPIO API to control the SCL and SDA lines.
>  =

> +config I2C_AT91
> +	bool "AT91 I2C Master driver"
> +	depends on ARCH_AT91
> +
>  config I2C_IMX
>  	bool "MPC85xx/i.MX I2C Master driver"
>  	depends on (ARCH_IMX && !ARCH_IMX1) || ARCH_MPC85XX
> diff --git a/drivers/i2c/busses/Makefile b/drivers/i2c/busses/Makefile
> index 9823d1b..cc72b7c 100644
> --- a/drivers/i2c/busses/Makefile
> +++ b/drivers/i2c/busses/Makefile
> @@ -1,3 +1,4 @@
> +obj-$(CONFIG_I2C_AT91)		+=3D i2c-at91.o
>  obj-$(CONFIG_I2C_GPIO)		+=3D i2c-gpio.o
>  obj-$(CONFIG_I2C_IMX) +=3D i2c-imx.o
>  obj-$(CONFIG_I2C_OMAP) +=3D i2c-omap.o
> diff --git a/drivers/i2c/busses/i2c-at91.c b/drivers/i2c/busses/i2c-at91.c
> new file mode 100644
> index 0000000..399f6a9
> --- /dev/null
> +++ b/drivers/i2c/busses/i2c-at91.c
> @@ -0,0 +1,437 @@
> +/*
> + *  i2c Support for Atmel's AT91 Two-Wire Interface (TWI)
> + *
> + *  Copyright (C) 2011 Weinmann Medical GmbH
> + *  Author: Nikolaus Voss <n.voss@weinmann.de>
> + *
> + *  Evolved from original work by:
> + *  Copyright (C) 2004 Rick Bronson
> + *  Converted to 2.6 by Andrew Victor <andrew@sanpeople.com>
> + *
> + *  Borrowed heavily from original work by:
> + *  Copyright (C) 2000 Philip Edelbrock <phil@stimpy.netroedge.com>
> + *
> + *  This program is free software; you can redistribute it and/or modify
> + *  it under the terms of the GNU General Public License as published by
> + *  the Free Software Foundation; either version 2 of the License, or
> + *  (at your option) any later version.
> + */
> +
> +#include <common.h>
> +#include <clock.h>
> +#include <i2c/i2c.h>
> +#include <malloc.h>
> +#include <of.h>
> +#include <io.h>
> +#include <linux/clk.h>
> +#include <linux/err.h>
> +#include <driver.h>
> +#include <init.h>
> +
> +#define DEFAULT_TWI_CLK_HZ		100000		/* max 400 Kbits/s */
> +#define AT91_I2C_TIMEOUT		(100 * MSECOND)	/* transfer timeout */
> +#define AT91_I2C_DMA_THRESHOLD	8			/* enable DMA if transfer size is big=
ger than this threshold */
> +
> +/* AT91 TWI register definitions */
> +#define	AT91_TWI_CR		0x0000	/* Control Register */
> +#define	AT91_TWI_START		0x0001	/* Send a Start Condition */
> +#define	AT91_TWI_STOP		0x0002	/* Send a Stop Condition */
> +#define	AT91_TWI_MSEN		0x0004	/* Master Transfer Enable */
> +#define	AT91_TWI_SVDIS		0x0020	/* Slave Transfer Disable */
> +#define	AT91_TWI_QUICK		0x0040	/* SMBus quick command */
> +#define	AT91_TWI_SWRST		0x0080	/* Software Reset */
> +
> +#define	AT91_TWI_MMR		0x0004	/* Master Mode Register */
> +#define	AT91_TWI_IADRSZ_1	0x0100	/* Internal Device Address Size */
> +#define	AT91_TWI_MREAD		0x1000	/* Master Read Direction */
> +
> +#define	AT91_TWI_IADR		0x000c	/* Internal Address Register */
> +
> +#define	AT91_TWI_CWGR		0x0010	/* Clock Waveform Generator Reg */
> +
> +#define	AT91_TWI_SR		0x0020	/* Status Register */
> +#define	AT91_TWI_TXCOMP		0x0001	/* Transmission Complete */
> +#define	AT91_TWI_RXRDY		0x0002	/* Receive Holding Register Ready */
> +#define	AT91_TWI_TXRDY		0x0004	/* Transmit Holding Register Ready */
> +
> +#define	AT91_TWI_OVRE		0x0040	/* Overrun Error */
> +#define	AT91_TWI_UNRE		0x0080	/* Underrun Error */
> +#define	AT91_TWI_NACK		0x0100	/* Not Acknowledged */
> +
> +#define	AT91_TWI_IER		0x0024	/* Interrupt Enable Register */
> +#define	AT91_TWI_IDR		0x0028	/* Interrupt Disable Register */
> +#define	AT91_TWI_IMR		0x002c	/* Interrupt Mask Register */
> +#define	AT91_TWI_RHR		0x0030	/* Receive Holding Register */
> +#define	AT91_TWI_THR		0x0034	/* Transmit Holding Register */
> +
> +struct at91_twi_pdata {
> +	unsigned clk_max_div;
> +	unsigned clk_offset;
> +	bool has_unre_flag;
> +};
> +
> +struct at91_twi_dev {
> +	struct device *dev;
> +	void __iomem *base;
> +	struct clk *clk;
> +	u8 *buf;
> +	size_t buf_len;
> +	struct i2c_msg *msg;
> +	unsigned imr;
> +	unsigned transfer_status;
> +	struct i2c_adapter adapter;
> +	unsigned twi_cwgr_reg;
> +	struct at91_twi_pdata *pdata;
> +};
> +
> +#define to_at91_twi_dev(a) container_of(a, struct at91_twi_dev, adapter)
> +
> +static unsigned at91_twi_read(struct at91_twi_dev *dev, unsigned reg)
> +{
> +	return __raw_readl(dev->base + reg);
> +}
> +
> +static void at91_twi_write(struct at91_twi_dev *dev, unsigned reg, unsig=
ned val)
> +{
> +	__raw_writel(val, dev->base + reg);
> +}
> +
> +static void at91_disable_twi_interrupts(struct at91_twi_dev *dev)
> +{
> +	at91_twi_write(dev, AT91_TWI_IDR,
> +		       AT91_TWI_TXCOMP | AT91_TWI_RXRDY | AT91_TWI_TXRDY);
> +}
> +
> +static void at91_init_twi_bus(struct at91_twi_dev *dev)
> +{
> +	at91_disable_twi_interrupts(dev);
> +	at91_twi_write(dev, AT91_TWI_CR, AT91_TWI_SWRST);
> +	at91_twi_write(dev, AT91_TWI_CR, AT91_TWI_MSEN);
> +	at91_twi_write(dev, AT91_TWI_CR, AT91_TWI_SVDIS);
> +	at91_twi_write(dev, AT91_TWI_CWGR, dev->twi_cwgr_reg);
> +}
> +
> +/*
> + * Calculate symmetric clock as stated in datasheet:
> + * twi_clk =3D F_MAIN / (2 * (cdiv * (1 << ckdiv) + offset))
> + */
> +static void at91_calc_twi_clock(struct at91_twi_dev *dev, int twi_clk)
> +{
> +	int ckdiv, cdiv, div;
> +	struct at91_twi_pdata *pdata =3D dev->pdata;
> +	int offset =3D pdata->clk_offset;
> +	int max_ckdiv =3D pdata->clk_max_div;
> +
> +	div =3D max(0, (int)DIV_ROUND_UP(clk_get_rate(dev->clk),
> +				       2 * twi_clk) - offset);
> +	ckdiv =3D fls(div >> 8);
> +	cdiv =3D div >> ckdiv;
> +
> +	if (ckdiv > max_ckdiv) {
> +		dev_warn(&dev->adapter.dev, "%d exceeds ckdiv max value which is %d.\n=
",
> +			 ckdiv, max_ckdiv);
> +		ckdiv =3D max_ckdiv;
> +		cdiv =3D 255;
> +	}
> +
> +	dev->twi_cwgr_reg =3D (ckdiv << 16) | (cdiv << 8) | cdiv;
> +	dev_dbg(&dev->adapter.dev, "cdiv %d ckdiv %d\n", cdiv, ckdiv);
> +}
> +
> +static void at91_twi_write_next_byte(struct at91_twi_dev *dev)
> +{
> +	if (dev->buf_len <=3D 0)
> +		return;
> +
> +	at91_twi_write(dev, AT91_TWI_THR, *dev->buf);
> +
> +	/* send stop when last byte has been written */
> +	if (--dev->buf_len =3D=3D 0)
> +		at91_twi_write(dev, AT91_TWI_CR, AT91_TWI_STOP);
> +
> +	dev_dbg(&dev->adapter.dev, "wrote 0x%x, to go %d\n", *dev->buf, dev->bu=
f_len);
> +
> +	++dev->buf;
> +}
> +
> +static void at91_twi_read_next_byte(struct at91_twi_dev *dev)
> +{
> +	if (dev->buf_len <=3D 0)
> +		return;
> +
> +	*dev->buf =3D at91_twi_read(dev, AT91_TWI_RHR) & 0xff;
> +	--dev->buf_len;
> +
> +	/* send stop if second but last byte has been read */
> +	if (dev->buf_len =3D=3D 1)
> +		at91_twi_write(dev, AT91_TWI_CR, AT91_TWI_STOP);
> +
> +	dev_dbg(&dev->adapter.dev, "read 0x%x, to go %d\n", *dev->buf, dev->buf=
_len);
> +
> +	++dev->buf;
> +}
> +
> +static int at91_twi_wait_completion(struct at91_twi_dev *dev)
> +{
> +	uint64_t start =3D get_time_ns();
> +	unsigned int status =3D at91_twi_read(dev, AT91_TWI_SR);
> +	unsigned int irqstatus =3D at91_twi_read(dev, AT91_TWI_IMR);
> +
> +	if (irqstatus & AT91_TWI_RXRDY)
> +		at91_twi_read_next_byte(dev);
> +	else if (irqstatus & AT91_TWI_TXRDY)
> +		at91_twi_write_next_byte(dev);
> +	else
> +		dev_warn(&dev->adapter.dev, "neither rx and tx are ready\n");
> +
> +	dev->transfer_status |=3D status;
> +
> +	while(!(at91_twi_read(dev, AT91_TWI_SR) & AT91_TWI_TXCOMP)) {
> +		if(is_timeout(start, AT91_I2C_TIMEOUT)) {
> +			dev_warn(&dev->adapter.dev, "timeout waiting for bus ready\n");
> +			return -ETIMEDOUT;
> +		}
> +	}
> +
> +	at91_disable_twi_interrupts(dev);
> +
> +	return 0;
> +}
> +
> +static int at91_do_twi_transfer(struct at91_twi_dev *dev)
> +{
> +	int ret;
> +	bool has_unre_flag =3D dev->pdata->has_unre_flag;
> +
> +	dev_dbg(&dev->adapter.dev, "transfer: %s %d bytes.\n",
> +		(dev->msg->flags & I2C_M_RD) ? "read" : "write", dev->buf_len);
> +
> +	dev->transfer_status =3D 0;
> +
> +	if (!dev->buf_len) {
> +		at91_twi_write(dev, AT91_TWI_CR, AT91_TWI_QUICK);
> +		at91_twi_write(dev, AT91_TWI_IER, AT91_TWI_TXCOMP);
> +	} else if (dev->msg->flags & I2C_M_RD) {
> +		unsigned start_flags =3D AT91_TWI_START;
> +
> +		if (at91_twi_read(dev, AT91_TWI_SR) & AT91_TWI_RXRDY) {
> +			dev_err(&dev->adapter.dev, "RXRDY still set!");
> +			at91_twi_read(dev, AT91_TWI_RHR);
> +		}
> +
> +		/* if only one byte is to be read, immediately stop transfer */
> +		if (dev->buf_len <=3D 1)
> +			start_flags |=3D AT91_TWI_STOP;
> +
> +		at91_twi_write(dev, AT91_TWI_CR, start_flags);
> +
> +		at91_twi_write(dev, AT91_TWI_IER,
> +			    AT91_TWI_TXCOMP | AT91_TWI_RXRDY);
> +	} else {
> +		at91_twi_write_next_byte(dev);
> +		at91_twi_write(dev, AT91_TWI_IER,
> +			    AT91_TWI_TXCOMP | AT91_TWI_TXRDY);
> +	}
> +
> +	ret =3D at91_twi_wait_completion(dev);
> +	if (ret < 0) {
> +		dev_err(&dev->adapter.dev, "controller timed out\n");
> +		at91_init_twi_bus(dev);
> +		ret =3D -ETIMEDOUT;
> +		goto error;
> +	}
> +	if (dev->transfer_status & AT91_TWI_NACK) {
> +		dev_dbg(&dev->adapter.dev, "received nack\n");
> +		ret =3D -EREMOTEIO;
> +		goto error;
> +	}
> +	if (dev->transfer_status & AT91_TWI_OVRE) {
> +		dev_err(&dev->adapter.dev, "overrun while reading\n");
> +		ret =3D -EIO;
> +		goto error;
> +	}
> +	if (has_unre_flag && dev->transfer_status & AT91_TWI_UNRE) {
> +		dev_err(&dev->adapter.dev, "underrun while writing\n");
> +		ret =3D -EIO;
> +		goto error;
> +	}
> +	dev_dbg(&dev->adapter.dev, "transfer complete\n");
> +
> +	return 0;
> +
> +error:
> +	return ret;
> +}
> +
> +static int at91_twi_xfer(struct i2c_adapter *adap, struct i2c_msg *msg, =
int num)
> +{
> +	struct at91_twi_dev *dev =3D to_at91_twi_dev(adap);
> +	int ret;
> +	unsigned int_addr_flag =3D 0;
> +	struct i2c_msg *m_start =3D msg;
> +
> +	dev_dbg(&adap->dev, "at91_xfer: processing %d messages:\n", num);
> +
> +	/*
> +	 * The hardware can handle at most two messages concatenated by a
> +	 * repeated start via it's internal address feature.
> +	 */
> +	if (num > 2) {
> +		dev_err(&dev->adapter.dev,
> +			"cannot handle more than two concatenated messages.\n");
> +		return 0;
> +	} else if (num =3D=3D 2) {
> +		int internal_address =3D 0;
> +		int i;
> +
> +		if (msg->flags & I2C_M_RD) {
> +			dev_err(&dev->adapter.dev, "first transfer must be write.\n");
> +			return -EINVAL;
> +		}
> +		if (msg->len > 3) {
> +			dev_err(&dev->adapter.dev, "first message size must be <=3D 3.\n");
> +			return -EINVAL;
> +		}
> +
> +		/* 1st msg is put into the internal address, start with 2nd */
> +		m_start =3D &msg[1];
> +		for (i =3D 0; i < msg->len; ++i) {
> +			const unsigned addr =3D msg->buf[msg->len - 1 - i];
> +
> +			internal_address |=3D addr << (8 * i);
> +			int_addr_flag +=3D AT91_TWI_IADRSZ_1;
> +		}
> +		at91_twi_write(dev, AT91_TWI_IADR, internal_address);
> +	}
> +
> +	at91_twi_write(dev, AT91_TWI_MMR, (m_start->addr << 16) | int_addr_flag
> +		       | ((m_start->flags & I2C_M_RD) ? AT91_TWI_MREAD : 0));
> +
> +	dev->buf_len =3D m_start->len;
> +	dev->buf =3D m_start->buf;
> +	dev->msg =3D m_start;
> +
> +	ret =3D at91_do_twi_transfer(dev);
> +
> +	return (ret < 0) ? ret : num;
> +}
> +
> +static struct at91_twi_pdata at91rm9200_config =3D {
> +	.clk_max_div =3D 5,
> +	.clk_offset =3D 3,
> +	.has_unre_flag =3D true,
> +};
> +
> +static struct at91_twi_pdata at91sam9261_config =3D {
> +	.clk_max_div =3D 5,
> +	.clk_offset =3D 4,
> +	.has_unre_flag =3D false,
> +};
> +
> +static struct at91_twi_pdata at91sam9260_config =3D {
> +	.clk_max_div =3D 7,
> +	.clk_offset =3D 4,
> +	.has_unre_flag =3D false,
> +};
> +
> +static struct at91_twi_pdata at91sam9g20_config =3D {
> +	.clk_max_div =3D 7,
> +	.clk_offset =3D 4,
> +	.has_unre_flag =3D false,
> +};
> +
> +static struct at91_twi_pdata at91sam9g10_config =3D {
> +	.clk_max_div =3D 7,
> +	.clk_offset =3D 4,
> +	.has_unre_flag =3D false,
> +};
> +
> +static struct platform_device_id at91_twi_devtypes[] =3D {
> +	{
> +		.name =3D "i2c-at91rm9200",
> +		.driver_data =3D (unsigned long) &at91rm9200_config,
> +	}, {
> +		.name =3D "i2c-at91sam9261",
> +		.driver_data =3D (unsigned long) &at91sam9261_config,
> +	}, {
> +		.name =3D "i2c-at91sam9260",
> +		.driver_data =3D (unsigned long) &at91sam9260_config,
> +	}, {
> +		.name =3D "i2c-at91sam9g20",
> +		.driver_data =3D (unsigned long) &at91sam9g20_config,
> +	}, {
> +		.name =3D "i2c-at91sam9g10",
> +		.driver_data =3D (unsigned long) &at91sam9g10_config,
> +	}, {
> +		/* sentinel */
> +	}
> +};
> +
> +static int at91_twi_probe(struct device_d *dev)
> +{
> +	struct at91_twi_dev *i2c_at91;
> +	struct at91_twi_pdata *i2c_data;
> +	int rc;
> +	u32 bus_clk_rate;
> +
> +	i2c_at91 =3D xzalloc(sizeof(struct at91_twi_dev));
> +
> +	rc =3D dev_get_drvdata(dev, (unsigned long *)&i2c_data);
> +	if (rc)
> +		goto out_free;
> +
> +	i2c_at91->pdata =3D i2c_data;
> +
> +	i2c_at91->base =3D dev_request_mem_region(dev, 0);
> +	if (!i2c_at91->base) {
> +		dev_err(dev, "could not get memory region\n");
> +		rc =3D -ENODEV;
> +		goto out_free;
> +	}
> +
> +	i2c_at91->clk =3D clk_get(dev, "twi_clk");
> +	if (IS_ERR(i2c_at91->clk)) {
> +		dev_err(dev, "no clock defined\n");
> +		rc =3D -ENODEV;
> +		goto out_free;
> +	}
> +
> +	clk_enable(i2c_at91->clk);
> +
> +	bus_clk_rate =3D DEFAULT_TWI_CLK_HZ;
> +
> +	at91_calc_twi_clock(i2c_at91, bus_clk_rate);
> +	at91_init_twi_bus(i2c_at91);
> +
> +	i2c_at91->adapter.master_xfer =3D at91_twi_xfer;
> +	i2c_at91->adapter.dev.parent =3D dev;
> +	i2c_at91->adapter.nr =3D dev->id;
> +	i2c_at91->adapter.dev.device_node =3D dev->device_node;
> +
> +	rc =3D i2c_add_numbered_adapter(&i2c_at91->adapter);
> +	if (rc) {
> +		dev_err(dev, "Failed to add I2C adapter\n");
> +		goto out_adap_fail;
> +	}
> +
> +	dev_info(dev, "AT91 i2c bus driver.\n");
> +	return 0;
> +
> +out_adap_fail:
> +    clk_disable(i2c_at91->clk);
> +    clk_put(i2c_at91->clk);
> +out_free:
> +    kfree(i2c_at91);
> +    return rc;
> +}
> +
> +static struct driver_d at91_twi_driver =3D {
> +	.name		=3D "at91-twi",
> +	.probe		=3D at91_twi_probe,
> +	.id_table	=3D at91_twi_devtypes,
> +};
> +device_platform_driver(at91_twi_driver);
> +
> +MODULE_AUTHOR("Nikolaus Voss <n.voss@weinmann.de>");
> +MODULE_DESCRIPTION("I2C (TWI) driver for Atmel AT91");
> +MODULE_LICENSE("GPL");
> -- =

> 1.7.9.5
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

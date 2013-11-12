Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo4.mail-out.ovh.net ([178.33.104.253]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VgGWw-00035M-PP
 for barebox@lists.infradead.org; Tue, 12 Nov 2013 16:09:32 +0000
Received: from mail243.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id AE553FF9D7C
 for <barebox@lists.infradead.org>; Tue, 12 Nov 2013 17:03:54 +0100 (CET)
Date: Tue, 12 Nov 2013 17:03:59 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20131112160359.GA7965@ns203013.ovh.net>
References: <1384266701-12608-1-git-send-email-s.hauer@pengutronix.de>
 <1384266701-12608-3-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1384266701-12608-3-git-send-email-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/4] Firmware: provide a handler to program Altera FPGAs
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Juergen Beisert <jbe@pengutronix.de>

On 15:31 Tue 12 Nov     , Sascha Hauer wrote:
> From: Juergen Beisert <jbe@pengutronix.de>
> =

> This handler uses a regular SPI master and a few GPIOs to program an
> Altera FPGA in serial mode.
> =

> Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/Kconfig                  |   1 +
>  drivers/Makefile                 |   1 +
>  drivers/firmware/Kconfig         |  11 ++
>  drivers/firmware/Makefile        |   1 +
>  drivers/firmware/altera_serial.c | 307 +++++++++++++++++++++++++++++++++=
++++++
>  5 files changed, 321 insertions(+)
>  create mode 100644 drivers/firmware/Kconfig
>  create mode 100644 drivers/firmware/Makefile
>  create mode 100644 drivers/firmware/altera_serial.c
> =

> diff --git a/drivers/Kconfig b/drivers/Kconfig
> index d34d2c7..71d840c 100644
> --- a/drivers/Kconfig
> +++ b/drivers/Kconfig
> @@ -25,5 +25,6 @@ source "drivers/gpio/Kconfig"
>  source "drivers/w1/Kconfig"
>  source "drivers/pinctrl/Kconfig"
>  source "drivers/bus/Kconfig"
> +source "drivers/firmware/Kconfig"
>  =

>  endmenu
> diff --git a/drivers/Makefile b/drivers/Makefile
> index ba1dc6d..bf03d54 100644
> --- a/drivers/Makefile
> +++ b/drivers/Makefile
> @@ -24,3 +24,4 @@ obj-$(CONFIG_OFTREE) +=3D of/
>  obj-$(CONFIG_W1) +=3D w1/
>  obj-y +=3D pinctrl/
>  obj-y +=3D bus/
> +obj-y +=3D firmware/
> diff --git a/drivers/firmware/Kconfig b/drivers/firmware/Kconfig
> new file mode 100644
> index 0000000..28a173b
> --- /dev/null
> +++ b/drivers/firmware/Kconfig
> @@ -0,0 +1,11 @@
> +menu "Firmware Drivers"
> +
> +config FIRMWARE_ALTERA_SERIAL
> +	bool "Altera SPI programming"
> +	depends on OFDEVICE
> +	select FIRMWARE
> +	help
> +	  Programming an Altera FPGA via a few GPIOs for the control lines and
> +	  MOSI, MISO and clock from an SPI interface for the data lines
> +
> +endmenu
> diff --git a/drivers/firmware/Makefile b/drivers/firmware/Makefile
> new file mode 100644
> index 0000000..ec6a5a1
> --- /dev/null
> +++ b/drivers/firmware/Makefile
> @@ -0,0 +1 @@
> +obj-$(CONFIG_FIRMWARE_ALTERA_SERIAL) +=3D altera_serial.o
> diff --git a/drivers/firmware/altera_serial.c b/drivers/firmware/altera_s=
erial.c
> new file mode 100644
> index 0000000..047b6bd
> --- /dev/null
> +++ b/drivers/firmware/altera_serial.c
> @@ -0,0 +1,307 @@
> +/*
> + * Copyright (c) 2013 Juergen Beisert <kernel@pengutronix.de>, Pengutron=
ix
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License version 2
> + * as published by the Free Software Foundation.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + */
> +
> +#include <common.h>
> +#include <init.h>
> +#include <driver.h>
> +#include <firmware.h>
> +#include <of_gpio.h>
> +#include <xfuncs.h>
> +#include <malloc.h>
> +#include <gpio.h>
> +#include <clock.h>
> +#include <spi/spi.h>
> +
> +#include <fcntl.h>
> +#include <fs.h>
> +
> +/*
> + * Physical requirements:
> + * - three free GPIOs for the signals nCONFIG, CONFIGURE_DONE, nSTATUS
> + * - 32 bit per word, LSB first capable SPI master (MOSI + clock)
> + *
> + * Example how to configure this driver via device tree
> + *
> + *	fpga@0 {
> + *		compatible =3D "altera_serial";
> + *		nstat-gpio =3D <&gpio4 18 0>;
> + *		confd-gpio =3D <&gpio4 19 0>;
> + *		nconfig-gpio =3D <&gpio4 20 0>;
you are missing on 's' to gpio mandatory for all the gpios binding

Best Regards,
J.
> + *		spi-max-frequency =3D <10000000>;
> + *		reg =3D <0>;
> + *	};
> + */
> +
> +struct fpga_spi {
> +	struct firmware_handler fh;
> +	int nstat_gpio; /* input GPIO to read the status line */
> +	int confd_gpio; /* input GPIO to read the config done line */
> +	int nconfig_gpio; /* output GPIO to start the FPGA's config */
> +	struct device_d *dev;
> +	struct spi_device *spi;
> +	bool padding_done;
> +};
> +
> +static int altera_spi_open(struct firmware_handler *fh)
> +{
> +	struct fpga_spi *this =3D container_of(fh, struct fpga_spi, fh);
> +	struct device_d *dev =3D this->dev;
> +	int ret;
> +
> +	dev_dbg(dev, "Initiating programming\n");
> +
> +	/* initiate an FPGA programming */
> +	gpio_set_value(this->nconfig_gpio, 0);
> +
> +	/*
> +	 * after about 2 =B5s the FPGA must acknowledge with
> +	 * STATUS and CONFIG DONE lines at low level
> +	 */
> +	ret =3D wait_on_timeout(2 * 1000,
> +				(gpio_get_value(this->nstat_gpio) =3D=3D 0) &&
> +				(gpio_get_value(this->confd_gpio) =3D=3D 0));
> +
> +	if (ret !=3D 0) {
> +		dev_err(dev, "FPGA does not acknowledge the programming initiation\n");
> +		if (gpio_get_value(this->nstat_gpio))
> +			dev_err(dev, "STATUS is still high!\n");
> +		if (gpio_get_value(this->confd_gpio))
> +			dev_err(dev, "CONFIG DONE is still high!\n");
> +		return ret;
> +	}
> +
> +	/* arm the FPGA to await its new firmware */
> +	gpio_set_value(this->nconfig_gpio, 1);
no one check the return of gpio_set but we need to

on a i2c-gpio it might fail
> +
> +	/* once again, we might need padding the data */
> +	this->padding_done =3D false;
> +
> +	/*
> +	 * after about 1506 =B5s the FPGA must acknowledge this step
> +	 * with the STATUS line at high level
> +	 */
> +	ret =3D wait_on_timeout(1600 * 1000,
> +				gpio_get_value(this->nstat_gpio) =3D=3D 1);
> +	if (ret !=3D 0) {
> +		dev_err(dev, "FPGA does not acknowledge the programming start\n");
> +		return ret;
> +	}
> +
> +	dev_dbg(dev, "Initiating passed\n");
> +	/* at the end, wait at least 2 =B5s prior beginning writing data */
> +	ndelay(2 * 1000);
so udelay(2);
> +
> +	return 0;
> +}
> +
> +static int altera_spi_write(struct firmware_handler *fh, const void *buf=
, size_t sz)
> +{
> +	struct fpga_spi *this =3D container_of(fh, struct fpga_spi, fh);
> +	struct device_d *dev =3D this->dev;
> +	struct spi_transfer t[2];
> +	struct spi_message m;
> +	u32 dummy;
> +	int ret;
> +
> +	printf("%s: %d\n", __func__, sz);
> +
> +	spi_message_init(&m);
> +
> +	if (sz < sizeof(u32)) {
> +		/* simple padding */
> +		dummy =3D 0;
> +		memcpy(&dummy, buf, sz);
> +		buf =3D &dummy;
> +		sz =3D sizeof(u32);
> +		this->padding_done =3D true;
> +	}
> +
> +	t[0].tx_buf =3D buf;
> +	t[0].rx_buf =3D NULL;
> +	t[0].len =3D sz;
> +	spi_message_add_tail(&t[0], &m);
> +
> +	if (sz & 0x3) { /* padding required? */
> +		u32 *word_buf =3D (u32 *)buf;
> +		dummy =3D 0;
> +		memcpy(&dummy, &word_buf[sz >> 2], sz & 0x3);
> +		t[0].len &=3D ~0x03;
> +		t[1].tx_buf =3D &dummy;
> +		t[1].rx_buf =3D NULL;
> +		t[1].len =3D sizeof(u32);
> +		spi_message_add_tail(&t[1], &m);
> +		this->padding_done =3D true;
> +	}
> +
> +	ret =3D spi_sync(this->spi, &m);
> +	if (ret !=3D 0)
> +		dev_err(dev, "programming failure\n");
> +
> +	return ret;
> +}
> +
> +static int altera_spi_close(struct firmware_handler *fh)
> +{
> +	struct fpga_spi *this =3D container_of(fh, struct fpga_spi, fh);
> +	struct device_d *dev =3D this->dev;
> +	struct spi_transfer t;
> +	struct spi_message m;
> +	u32 dummy =3D 0;
> +	int ret;
> +
> +	dev_dbg(dev, "Finalize programming\n");
> +
> +	if (this->padding_done =3D=3D false) {
> +		spi_message_init(&m);
> +		t.tx_buf =3D &dummy;
> +		t.rx_buf =3D NULL;
> +		t.len =3D sizeof(dummy);
> +		spi_message_add_tail(&t, &m);
> +
> +		ret =3D spi_sync(this->spi, &m);
> +		if (ret !=3D 0)
> +			dev_err(dev, "programming failure\n");
> +	}
> +
> +	/*
> +	 * when programming was successfully,
> +	 * both status lines should be at high level
> +	 */
> +	ret =3D wait_on_timeout(10 * 1000,
> +				(gpio_get_value(this->nstat_gpio) =3D=3D 1) &&
> +				(gpio_get_value(this->confd_gpio) =3D=3D 1));
> +	if (ret =3D=3D 0) {
> +		dev_dbg(dev, "Programming successfull\n");
> +		return ret;
> +	}
> +
> +	dev_err(dev, "Programming failed due to time out\n");
> +	if (gpio_get_value(this->nstat_gpio) =3D=3D 0)
> +		dev_err(dev, "STATUS is still low!\n");
> +	if (gpio_get_value(this->confd_gpio) =3D=3D 0)
> +		dev_err(dev, "CONFIG DONE is still low!\n");
> +
> +	return -EIO;
> +}
> +
> +static int altera_spi_of(struct device_d *dev, struct fpga_spi *this)
> +{
> +	struct device_node *n =3D dev->device_node;
> +	const char *name;
> +	int ret;
> +
> +	name =3D "nstat-gpio";
> +	this->nstat_gpio =3D of_get_named_gpio(n, name, 0);
> +	if (this->nstat_gpio < 0) {
> +		ret =3D this->nstat_gpio;
> +		goto out;
> +	}
> +
> +	name =3D "confd-gpio";
> +	this->confd_gpio =3D of_get_named_gpio(n, name, 0);
> +	if (this->confd_gpio < 0) {
> +		ret =3D this->confd_gpio;
> +		goto out;
> +	}
> +
> +	name =3D "nconfig-gpio";
> +	this->nconfig_gpio =3D of_get_named_gpio(n, name, 0);
> +	if (this->nconfig_gpio < 0) {
> +		ret =3D this->nconfig_gpio;
> +		goto out;
> +	}
> +
> +	/* init to passive and sane values */
> +	gpio_direction_output(this->nconfig_gpio, 1);
> +	gpio_direction_input(this->nstat_gpio);
> +	gpio_direction_input(this->confd_gpio);
we need to check the return and request the gpio correctly
> +
> +	return 0;
> +
> +out:
> +	dev_err(dev, "Cannot request \"%s\" gpio: %s\n", name, strerror(-ret));
> +
> +	return ret;
> +}
> +
> +static void altera_spi_init_mode(struct spi_device *spi)
> +{
> +	spi->bits_per_word =3D 32;
> +	/*
> +	 * CPHA =3D CPOL =3D 0
> +	 * the FPGA expects its firmware data with LSB first
> +	 */
> +	spi->mode =3D SPI_MODE_0 | SPI_LSB_FIRST;
> +}
> +
> +static int altera_spi_probe(struct device_d *dev)
> +{
> +	int rc;
> +	struct fpga_spi *this;
> +	struct firmware_handler *fh;
> +	const char *alias =3D of_alias_get(dev->device_node);
> +	const char *model =3D NULL;
> +
> +	dev_dbg(dev, "Probing FPGA firmware programmer\n");
> +
> +	this =3D xzalloc(sizeof(*this));
> +	fh =3D &this->fh;
> +
> +	rc =3D altera_spi_of(dev, this);
> +	if (rc !=3D 0)
> +		goto out;
> +
> +	if (alias)
> +		fh->id =3D xstrdup(alias);
> +	else
> +		fh->id =3D xstrdup("altera-fpga");
> +
> +	fh->open =3D altera_spi_open;
> +	fh->write =3D altera_spi_write;
> +	fh->close =3D altera_spi_close;
> +	of_property_read_string(dev->device_node, "compatible", &model);
> +	if (model)
> +		fh->model =3D xstrdup(model);
> +	fh->dev =3D dev;
> +
> +	this->spi =3D (struct spi_device *)dev->type_data;
> +	altera_spi_init_mode(this->spi);
> +	this->dev =3D dev;
> +
> +	dev_dbg(dev, "Registering FPGA firmware programmer\n");
> +	rc =3D firmwaremgr_register(fh);
> +	if (rc !=3D 0) {
> +		free(this);
> +		goto out;
> +	}
> +
> +	return 0;
> +out:
> +	free(fh->id);
> +	free(this);
> +
> +	return rc;
> +}
> +
> +static struct of_device_id altera_spi_id_table[] =3D {
> +	{
> +		.compatible =3D "altr,passive-serial",
> +	},
> +};
> +
> +static struct driver_d altera_spi_driver =3D {
> +	.name =3D "altera-fpga",
> +	.of_compatible =3D DRV_OF_COMPAT(altera_spi_id_table),
> +	.probe =3D altera_spi_probe,
> +};
> +device_spi_driver(altera_spi_driver);
> -- =

> 1.8.4.2
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

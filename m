Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1e40Gv-0004hv-OX
 for barebox@lists.infradead.org; Mon, 16 Oct 2017 07:57:16 +0000
Date: Mon, 16 Oct 2017 09:56:51 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20171016075651.xgcx7umvhf4cvg5k@pengutronix.de>
References: <20171010122631.9421-1-antonynpavlov@gmail.com>
 <20171010122631.9421-3-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20171010122631.9421-3-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH 2/5] sandbox: add gpio support with libftdi1
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

Hi Antony,

On Tue, Oct 10, 2017 at 03:26:28PM +0300, Antony Pavlov wrote:
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  arch/sandbox/Kconfig                           |   1 +
>  arch/sandbox/Makefile                          |   6 +-
>  arch/sandbox/mach-sandbox/include/mach/linux.h |  11 ++
>  arch/sandbox/os/Makefile                       |   3 +
>  arch/sandbox/os/ftdi.c                         | 173 +++++++++++++++++++++++++
>  drivers/gpio/Kconfig                           |   4 +
>  drivers/gpio/Makefile                          |   1 +
>  drivers/gpio/gpio-libftdi1.c                   | 125 ++++++++++++++++++
>  8 files changed, 323 insertions(+), 1 deletion(-)
> 

...

> +static struct ft2232_bitbang ftbb;
> +

...

> +
> +int barebox_libftdi1_init(void)
> +{
> +	struct ftdi_context *ftdi;
> +	int ret;
> +	/* default FT2232 values */
> +	uint16_t vendor_id = FTDI_VID;
> +	uint16_t device_id = FTDI_8U2232C_PID;
> +
> +	ftdi = ftdi_new();
> +	if (!ftdi) {
> +		fprintf(stderr, "ftdi_new failed\n");
> +		goto error;
> +	}
> +
> +	ret = ftdi_usb_open(ftdi, vendor_id, device_id);
> +	if (ret < 0 && ret != -5) {
> +		fprintf(stderr, "unable to open ftdi device: %d (%s)\n",
> +			ret, ftdi_get_error_string(ftdi));
> +		goto error;
> +	}

What does a return value of -5 mean? Isn't that an error?

> +
> +	ftdi_set_interface(ftdi, INTERFACE_A);
> +	ftdi_set_bitmode(ftdi, 0x00, BITMODE_MPSSE);
> +
> +	ftbb.ftdi = ftdi;
> +
> +	/* reset pins to default neutral state */
> +	ftbb.dir = 0;
> +	ftbb.odata = 0;
> +	ftdi_set_high_byte_data_dir(&ftbb);
> +
> +	return 0;
> +
> +error:
> +	return -1;
> +}
> +
> +struct ft2232_bitbang *barebox_libftdi1_open(void)
> +{
> +	if (barebox_libftdi1_init() < 0) {
> +		printf("Could not initialize ftdi\n");
> +		return NULL;
> +	}
> +
> +	return &ftbb;
> +}

Somethings fishy here. Do you want to create a new struct ft2232_bitbang
instance for each caller or do you want to return the same instance for
every call to barebox_libftdi1_open()? If you want to do the former you
shouldn't create a static struct ft2232_bitbang, but instead allocate it
dynamically. If you want to do the latter then you should do a "if
(initialized) return existing_instance".

> +	gpio->chip.dev = dev;
> +	gpio->chip.ops = &libftdi1_gpio_ops;
> +	gpio->chip.base = 0;
> +	gpio->chip.ngpio = 8;
> +
> +	ret = gpiochip_add(&gpio->chip);
> +
> +	dev_dbg(dev, "%d: probed gpio%d with base %d\n",
> +			ret, dev->id, gpio->chip.base);
> +
> +	return 0;

Would be good to actually check 'ret' for errors.

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

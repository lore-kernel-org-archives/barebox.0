Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i60Oi-0004A3-Kj
 for barebox@lists.infradead.org; Thu, 05 Sep 2019 22:38:38 +0000
Received: by mail-lf1-x141.google.com with SMTP id j4so3360462lfh.8
 for <barebox@lists.infradead.org>; Thu, 05 Sep 2019 15:38:34 -0700 (PDT)
Date: Fri, 6 Sep 2019 01:38:29 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20190906013829.6a4c13a0dc780639b0b484b7@gmail.com>
In-Reply-To: <20190812201915.12414-5-andrew.smirnov@gmail.com>
References: <20190812201915.12414-1-andrew.smirnov@gmail.com>
 <20190812201915.12414-5-andrew.smirnov@gmail.com>
Mime-Version: 1.0
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
Subject: Re: [PATCH 5/5] eeprom: at24: Convert the driver to NVMEM
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, 12 Aug 2019 13:19:15 -0700
Andrey Smirnov <andrew.smirnov@gmail.com> wrote:

Hi!

Could you please test this patch with disabled NVMEM?

I see that this patch leads to barebox crash in memory allocation code
if CONFIG_NVMEM is not set.

> Convert AT24 driver to use NVMEM subsystem instead of explicitly
> creating a dedicated cdev. This way it becomes possible to access the
> contenst of EEPROM via NVMEM API, which could be usefull for things
> like MAC-addresses and such.
> =

> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  drivers/eeprom/at24.c | 48 ++++++++++++++++++++++++-------------------
>  1 file changed, 27 insertions(+), 21 deletions(-)
> =

> diff --git a/drivers/eeprom/at24.c b/drivers/eeprom/at24.c
> index db452c1076..568aa02a4c 100644
> --- a/drivers/eeprom/at24.c
> +++ b/drivers/eeprom/at24.c
> @@ -23,6 +23,8 @@
>  #include <gpio.h>
>  #include <of_gpio.h>
>  =

> +#include <linux/nvmem-provider.h>
> +
>  /*
>   * I2C EEPROMs from most vendors are inexpensive and mostly interchangea=
ble.
>   * Differences between different vendor product lines (like Atmel AT24C =
or
> @@ -50,8 +52,8 @@
>  struct at24_data {
>  	struct at24_platform_data chip;
>  =

> -	struct cdev		cdev;
> -	struct cdev_operations	fops;
> +	struct nvmem_config nvmem_config;
> +	struct nvmem_device *nvmem;
>  =

>  	u8 *writebuf;
>  	unsigned write_max;
> @@ -242,10 +244,10 @@ static ssize_t at24_read(struct at24_data *at24,
>  	return retval;
>  }
>  =

> -static ssize_t at24_cdev_read(struct cdev *cdev, void *buf, size_t count,
> -		loff_t off, ulong flags)
> +static int at24_nvmem_read(struct device_d *dev, int off,
> +			       void *buf, int count)
>  {
> -	struct at24_data *at24 =3D cdev->priv;
> +	struct at24_data *at24 =3D dev->parent->priv;
>  =

>  	return at24_read(at24, buf, off, count);
>  }
> @@ -360,14 +362,19 @@ static ssize_t at24_write(struct at24_data *at24, c=
onst char *buf, loff_t off,
>  	return retval;
>  }
>  =

> -static ssize_t at24_cdev_write(struct cdev *cdev, const void *buf, size_=
t count,
> -		loff_t off, ulong flags)
> +static int at24_nvmem_write(struct device_d *dev, const int off,
> +			       const void *buf, int count)
>  {
> -	struct at24_data *at24 =3D cdev->priv;
> +	struct at24_data *at24 =3D dev->parent->priv;
>  =

>  	return at24_write(at24, buf, off, count);
>  }
>  =

> +static const struct nvmem_bus at24_nvmem_bus =3D {
> +	.write =3D at24_nvmem_write,
> +	.read  =3D at24_nvmem_read,
> +};
> +
>  static int at24_probe(struct device_d *dev)
>  {
>  	struct i2c_client *client =3D to_i2c_client(dev);
> @@ -441,13 +448,6 @@ static int at24_probe(struct device_d *dev)
>  		devname =3D xasprintf("eeprom%d", err);
>  	}
>  =

> -	at24->cdev.name =3D devname;
> -	at24->cdev.priv =3D at24;
> -	at24->cdev.dev =3D dev;
> -	at24->cdev.ops =3D &at24->fops;
> -	at24->fops.read	=3D at24_cdev_read,
> -	at24->cdev.size =3D chip.byte_len;
> -
>  	writable =3D !(chip.flags & AT24_FLAG_READONLY);
>  =

>  	if (of_get_property(dev->device_node, "read-only", NULL))
> @@ -456,8 +456,6 @@ static int at24_probe(struct device_d *dev)
>  	if (writable) {
>  		unsigned write_max =3D chip.page_size;
>  =

> -		at24->fops.write =3D at24_cdev_write;
> -
>  		if (write_max > io_limit)
>  			write_max =3D io_limit;
>  		at24->write_max =3D write_max;
> @@ -494,13 +492,21 @@ static int at24_probe(struct device_d *dev)
>  		}
>  	}
>  =

> -	err =3D devfs_create(&at24->cdev);
> +	at24->nvmem_config.name =3D devname;
> +	at24->nvmem_config.dev =3D dev;
> +	at24->nvmem_config.read_only =3D !writable;
> +	at24->nvmem_config.bus =3D &at24_nvmem_bus;
> +	at24->nvmem_config.stride =3D 1;
> +	at24->nvmem_config.word_size =3D 1;
> +	at24->nvmem_config.size =3D chip.byte_len;
> +
> +	dev->priv =3D at24;
> +
> +	at24->nvmem =3D nvmem_register(&at24->nvmem_config);
> +	err =3D PTR_ERR_OR_ZERO(at24->nvmem);
>  	if (err)
>  		goto err_devfs_create;
>  =

> -	of_parse_partitions(&at24->cdev, dev->device_node);
> -	of_partitions_register_fixup(&at24->cdev);
> -
>  	return 0;
>  =

>  err_devfs_create:
> -- =

> 2.21.0
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox


-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

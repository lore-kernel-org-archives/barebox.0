Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UyeAb-00064M-LC
 for barebox@lists.infradead.org; Mon, 15 Jul 2013 08:30:10 +0000
Date: Mon, 15 Jul 2013 10:29:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130715082948.GO14452@pengutronix.de>
References: <1373574247-19502-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1373574247-19502-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH 1/3] mfd: mc13xxx: Determine used bus by "bus_type" field
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Fri, Jul 12, 2013 at 12:24:05AM +0400, Alexander Shiyan wrote:
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>

Applied, thanks

Sascha

> ---
>  drivers/mfd/mc13xxx.c | 63 +++++++++++++++++----------------------------------
>  1 file changed, 21 insertions(+), 42 deletions(-)
> 
> diff --git a/drivers/mfd/mc13xxx.c b/drivers/mfd/mc13xxx.c
> index 466a11c..2be6f62 100644
> --- a/drivers/mfd/mc13xxx.c
> +++ b/drivers/mfd/mc13xxx.c
> @@ -28,19 +28,15 @@
>  
>  #define DRIVERNAME		"mc13xxx"
>  
> -enum mc13xxx_mode {
> -	MC13XXX_MODE_I2C,
> -	MC13XXX_MODE_SPI,
> -};
> -
>  struct mc13xxx {
>  	struct cdev			cdev;
>  	union {
>  		struct i2c_client	*client;
>  		struct spi_device	*spi;
>  	};
> -	enum mc13xxx_mode		mode;
>  	int				revision;
> +	int				(*reg_read)(struct mc13xxx*, u8, u32*);
> +	int				(*reg_write)(struct mc13xxx*, u8, u32);
>  };
>  
>  #define to_mc13xxx(a)		container_of(a, struct mc13xxx, cdev)
> @@ -136,29 +132,13 @@ static int mc13xxx_i2c_reg_write(struct mc13xxx *mc13xxx, u8 reg, u32 val)
>  
>  int mc13xxx_reg_write(struct mc13xxx *mc13xxx, u8 reg, u32 val)
>  {
> -#ifdef CONFIG_I2C
> -	if (mc13xxx->mode == MC13XXX_MODE_I2C)
> -		return mc13xxx_i2c_reg_write(mc13xxx, reg, val);
> -#endif
> -#ifdef CONFIG_SPI
> -	if (mc13xxx->mode == MC13XXX_MODE_SPI)
> -		return mc13xxx_spi_reg_write(mc13xxx, reg, val);
> -#endif
> -	return -EINVAL;
> +	return mc13xxx->reg_write(mc13xxx, reg, val);
>  }
>  EXPORT_SYMBOL(mc13xxx_reg_write);
>  
>  int mc13xxx_reg_read(struct mc13xxx *mc13xxx, u8 reg, u32 *val)
>  {
> -#ifdef CONFIG_I2C
> -	if (mc13xxx->mode == MC13XXX_MODE_I2C)
> -		return mc13xxx_i2c_reg_read(mc13xxx, reg, val);
> -#endif
> -#ifdef CONFIG_SPI
> -	if (mc13xxx->mode == MC13XXX_MODE_SPI)
> -		return mc13xxx_spi_reg_read(mc13xxx, reg, val);
> -#endif
> -	return -EINVAL;
> +	return mc13xxx->reg_read(mc13xxx, reg, val);
>  }
>  EXPORT_SYMBOL(mc13xxx_reg_read);
>  
> @@ -179,7 +159,7 @@ EXPORT_SYMBOL(mc13xxx_set_bits);
>  
>  static ssize_t mc_read(struct cdev *cdev, void *_buf, size_t count, loff_t offset, ulong flags)
>  {
> -	struct mc13xxx *priv = to_mc13xxx(cdev);
> +	struct mc13xxx *mc13xxx = to_mc13xxx(cdev);
>  	u32 *buf = _buf;
>  	size_t i = count >> 2;
>  	int err;
> @@ -187,7 +167,7 @@ static ssize_t mc_read(struct cdev *cdev, void *_buf, size_t count, loff_t offse
>  	offset >>= 2;
>  
>  	while (i) {
> -		err = mc13xxx_reg_read(priv, offset, buf);
> +		err = mc13xxx_reg_read(mc13xxx, offset, buf);
>  		if (err)
>  			return (ssize_t)err;
>  		buf++;
> @@ -297,7 +277,7 @@ static int mc13xxx_query_revision(struct mc13xxx *mc13xxx)
>  	return rev;
>  }
>  
> -static int mc_probe(struct device_d *dev, enum mc13xxx_mode mode)
> +static int __init mc_probe(struct device_d *dev)
>  {
>  	int rev;
>  
> @@ -305,17 +285,26 @@ static int mc_probe(struct device_d *dev, enum mc13xxx_mode mode)
>  		return -EBUSY;
>  
>  	mc_dev = xzalloc(sizeof(struct mc13xxx));
> -	mc_dev->mode = mode;
>  	mc_dev->cdev.name = DRIVERNAME;
> -	if (mode == MC13XXX_MODE_I2C) {
> +
> +#ifdef CONFIG_I2C
> +	if (dev->bus == &i2c_bus) {
>  		mc_dev->client = to_i2c_client(dev);
> +		mc_dev->reg_read = mc13xxx_i2c_reg_read;
> +		mc_dev->reg_write = mc13xxx_i2c_reg_write;
>  	}
> -	if (mode == MC13XXX_MODE_SPI) {
> +#endif
> +#ifdef CONFIG_SPI
> +	if (dev->bus == &spi_bus) {
>  		mc_dev->spi = dev->type_data;
>  		mc_dev->spi->mode = SPI_MODE_0 | SPI_CS_HIGH;
>  		mc_dev->spi->bits_per_word = 32;
>  		mc_dev->spi->max_speed_hz = 20000000;
> +		mc_dev->reg_read = mc13xxx_spi_reg_read;
> +		mc_dev->reg_write = mc13xxx_spi_reg_write;
>  	}
> +#endif
> +
>  	mc_dev->cdev.size = 256;
>  	mc_dev->cdev.dev = dev;
>  	mc_dev->cdev.ops = &mc_fops;
> @@ -343,14 +332,9 @@ static __maybe_unused struct of_device_id mc13892_dt_ids[] = {
>  };
>  
>  #ifdef CONFIG_I2C
> -static int mc_i2c_probe(struct device_d *dev)
> -{
> -	return mc_probe(dev, MC13XXX_MODE_I2C);
> -}
> -
>  static struct driver_d mc_i2c_driver = {
>  	.name  = "mc13xxx-i2c",
> -	.probe = mc_i2c_probe,
> +	.probe	= mc_probe,
>  	.of_compatible = DRV_OF_COMPAT(mc13892_dt_ids),
>  };
>  
> @@ -362,14 +346,9 @@ device_initcall(mc_i2c_init);
>  #endif
>  
>  #ifdef CONFIG_SPI
> -static int mc_spi_probe(struct device_d *dev)
> -{
> -	return mc_probe(dev, MC13XXX_MODE_SPI);
> -}
> -
>  static struct driver_d mc_spi_driver = {
>  	.name  = "mc13xxx-spi",
> -	.probe = mc_spi_probe,
> +	.probe	= mc_probe,
>  	.of_compatible = DRV_OF_COMPAT(mc13892_dt_ids),
>  };
>  device_spi_driver(mc_spi_driver);
> -- 
> 1.8.1.5
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

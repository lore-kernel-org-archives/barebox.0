Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from f205.mail.ru ([217.69.128.144])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U9pm0-0001hN-FQ
 for barebox@lists.infradead.org; Mon, 25 Feb 2013 04:34:46 +0000
Received: from mail by f205.mail.ru with local (envelope-from
 <shc_work@mail.ru>) id 1U9plv-0004EH-Hx
 for barebox@lists.infradead.org; Mon, 25 Feb 2013 08:34:39 +0400
From: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
Mime-Version: 1.0
Date: Mon, 25 Feb 2013 08:34:39 +0400
Message-ID: <1361766879.562377058@f205.mail.ru>
In-Reply-To: <1361720467-21888-1-git-send-email-shc_work@mail.ru>
References: <1361720467-21888-1-git-send-email-shc_work@mail.ru>
Reply-To: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
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
Subject: =?UTF-8?B?UmU6IFtQQVRDSF0gbWZkOiBtYzEzeHh4OiBVc2UgZGV2aWNlLT5idXMgZmll?=
 =?UTF-8?B?bGQgZm9yIHVzaW5nIGFwcHJvcHJpYXRlIG1vZGU=?=
To: barebox@lists.infradead.org

Please drop this patch, this is incorrect.
Thanks.

> Instead of using two separate drivers "mc13xxx-spi" and "mc13xxx-i2c",
> we define only one and determine appropriate mode by bus associated
> with device.
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> ---
>  arch/arm/boards/ccxmx51/ccxmx51.c               |  2 +-
>  arch/arm/boards/efika-mx-smartbook/board.c      |  2 +-
>  arch/arm/boards/freescale-mx35-3-stack/3stack.c |  2 +-
>  arch/arm/boards/freescale-mx51-pdk/board.c      |  2 +-
>  arch/arm/boards/pcm038/pcm038.c                 |  2 +-
>  drivers/mfd/mc13xxx.c                           | 61 +++++++++----------------
>  6 files changed, 27 insertions(+), 44 deletions(-)
> 
> diff --git a/arch/arm/boards/ccxmx51/ccxmx51.c b/arch/arm/boards/ccxmx51/ccxmx51.c
> index a9bf16a..1eb469b 100644
> --- a/arch/arm/boards/ccxmx51/ccxmx51.c
> +++ b/arch/arm/boards/ccxmx51/ccxmx51.c
> @@ -191,7 +191,7 @@ static struct spi_imx_master ecspi_0_data = {
>  
>  static const struct spi_board_info ccxmx51_spi_board_info[] = {
>  	{
> -		.name		= "mc13xxx-spi",
> +		.name		= "mc13xxx",
>  		.bus_num	= 0,
>  		.chip_select	= 0,
>  	},
> diff --git a/arch/arm/boards/efika-mx-smartbook/board.c b/arch/arm/boards/efika-mx-smartbook/board.c
> index 5c02689..01e6d28 100644
> --- a/arch/arm/boards/efika-mx-smartbook/board.c
> +++ b/arch/arm/boards/efika-mx-smartbook/board.c
> @@ -211,7 +211,7 @@ static struct spi_imx_master spi_0_data = {
>  
>  static const struct spi_board_info efikamx_spi_board_info[] = {
>  	{
> -		.name = "mc13xxx-spi",
> +		.name = "mc13xxx",
>  		.max_speed_hz = 30 * 1000 * 1000,
>  		.bus_num = 0,
>  		.chip_select = 0,
> diff --git a/arch/arm/boards/freescale-mx35-3-stack/3stack.c b/arch/arm/boards/freescale-mx35-3-stack/3stack.c
> index e1cb73c..f37edad 100644
> --- a/arch/arm/boards/freescale-mx35-3-stack/3stack.c
> +++ b/arch/arm/boards/freescale-mx35-3-stack/3stack.c
> @@ -71,7 +71,7 @@ struct imx_nand_platform_data nand_info = {
>  
>  static struct i2c_board_info i2c_devices[] = {
>  	{
> -		I2C_BOARD_INFO("mc13xxx-i2c", 0x08),
> +		I2C_BOARD_INFO("mc13xxx", 0x08),
>  	}, {
>  		I2C_BOARD_INFO("mc9sdz60", 0x69),
>  	},
> diff --git a/arch/arm/boards/freescale-mx51-pdk/board.c b/arch/arm/boards/freescale-mx51-pdk/board.c
> index 831ed0e..9311709 100644
> --- a/arch/arm/boards/freescale-mx51-pdk/board.c
> +++ b/arch/arm/boards/freescale-mx51-pdk/board.c
> @@ -107,7 +107,7 @@ static struct spi_imx_master spi_0_data = {
>  
>  static const struct spi_board_info mx51_babbage_spi_board_info[] = {
>  	{
> -		.name = "mc13xxx-spi",
> +		.name = "mc13xxx",
>  		.bus_num = 0,
>  		.chip_select = 0,
>  	},
> diff --git a/arch/arm/boards/pcm038/pcm038.c b/arch/arm/boards/pcm038/pcm038.c
> index 587ace8..2dd3e28 100644
> --- a/arch/arm/boards/pcm038/pcm038.c
> +++ b/arch/arm/boards/pcm038/pcm038.c
> @@ -59,7 +59,7 @@ static struct spi_imx_master pcm038_spi_0_data = {
>  
>  static struct spi_board_info pcm038_spi_board_info[] = {
>  	{
> -		.name = "mc13xxx-spi",
> +		.name = "mc13xxx",
>  		.bus_num = 0,
>  		.chip_select = 0,
>  	}
> diff --git a/drivers/mfd/mc13xxx.c b/drivers/mfd/mc13xxx.c
> index d6cf73c..23ce34b 100644
> --- a/drivers/mfd/mc13xxx.c
> +++ b/drivers/mfd/mc13xxx.c
> @@ -297,7 +297,7 @@ static int mc13xxx_query_revision(struct mc13xxx *mc13xxx)
>  	return rev;
>  }
>  
> -static int mc_probe(struct device_d *dev, enum mc13xxx_mode mode)
> +static int mc_probe(struct device_d *dev)
>  {
>  	int rev;
>  
> @@ -305,17 +305,22 @@ static int mc_probe(struct device_d *dev, enum mc13xxx_mode mode)
>  		return -EBUSY;
>  
>  	mc_dev = xzalloc(sizeof(struct mc13xxx));
> -	mc_dev->mode = mode;
>  	mc_dev->cdev.name = DRIVERNAME;
> -	if (mode == MC13XXX_MODE_I2C) {
> +	if (dev->bus == &i2c_bus) {
> +		mc_dev->mode = MC13XXX_MODE_I2C;
>  		mc_dev->client = to_i2c_client(dev);
> -	}
> -	if (mode == MC13XXX_MODE_SPI) {
> +	} else if (dev->bus == &spi_bus) {
> +		mc_dev->mode = MC13XXX_MODE_SPI;
>  		mc_dev->spi = dev->type_data;
>  		mc_dev->spi->mode = SPI_MODE_0 | SPI_CS_HIGH;
>  		mc_dev->spi->bits_per_word = 32;
>  		mc_dev->spi->max_speed_hz = 20000000;
> +	} else {
> +		free(mc_dev);
> +		mc_dev = NULL;
> +		return -EINVAL;
>  	}
> +
>  	mc_dev->cdev.size = 256;
>  	mc_dev->cdev.dev = dev;
>  	mc_dev->cdev.ops = &mc_fops;
> @@ -332,7 +337,7 @@ static int mc_probe(struct device_d *dev, enum mc13xxx_mode mode)
>  	return 0;
>  }
>  
> -static __maybe_unused struct of_device_id mc13892_dt_ids[] = {
> +static __maybe_unused struct of_device_id mc13xxx_dt_ids[] = {
>  	{
>  		.compatible = "fsl,mc13892",
>  	}, {
> @@ -342,41 +347,19 @@ static __maybe_unused struct of_device_id mc13892_dt_ids[] = {
>  	}
>  };
>  
> -#ifdef CONFIG_I2C
> -static int mc_i2c_probe(struct device_d *dev)
> -{
> -	return mc_probe(dev, MC13XXX_MODE_I2C);
> -}
> -
> -static struct driver_d mc_i2c_driver = {
> -	.name  = "mc13xxx-i2c",
> -	.probe = mc_i2c_probe,
> -	.of_compatible = DRV_OF_COMPAT(mc13892_dt_ids),
> +static struct driver_d mc13xxx_driver = {
> +	.name  = "mc13xxx",
> +	.probe = mc_probe,
> +	.of_compatible = DRV_OF_COMPAT(mc13xxx_dt_ids),
>  };
>  
> -static int mc_i2c_init(void)
> -{
> -	return i2c_register_driver(&mc_i2c_driver);
> -}
> -device_initcall(mc_i2c_init);
> -#endif
> -
> -#ifdef CONFIG_SPI
> -static int mc_spi_probe(struct device_d *dev)
> +static int mc13xxx_init(void)
>  {
> -	return mc_probe(dev, MC13XXX_MODE_SPI);
> -}
> -
> -static struct driver_d mc_spi_driver = {
> -	.name  = "mc13xxx-spi",
> -	.probe = mc_spi_probe,
> -	.of_compatible = DRV_OF_COMPAT(mc13892_dt_ids),
> -};
> +	int ret;
>  
> -static int mc_spi_init(void)
> -{
> -	return spi_register_driver(&mc_spi_driver);
> +	ret = i2c_register_driver(&mc13xxx_driver);
> +	if (ret)
> +		return ret;
> +	return spi_register_driver(&mc13xxx_driver);
>  }
> -
> -device_initcall(mc_spi_init);
> -#endif
> +device_initcall(mc13xxx_init);
> -- 
> 1.7.12.4
> 
> 

---
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

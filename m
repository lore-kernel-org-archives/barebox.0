Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZEXWP-0003fC-Hh
 for barebox@lists.infradead.org; Mon, 13 Jul 2015 06:47:26 +0000
Date: Mon, 13 Jul 2015 08:47:03 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150713064703.GF18700@pengutronix.de>
References: <1436362158-24488-1-git-send-email-jluebbe@debian.org>
 <1436362158-24488-2-git-send-email-jluebbe@debian.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1436362158-24488-2-git-send-email-jluebbe@debian.org>
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
Subject: Re: [PATCH 1/4] i2c: add bus recovery infrastructure
To: Jan Luebbe <jluebbe@debian.org>
Cc: barebox@lists.infradead.org

On Wed, Jul 08, 2015 at 03:29:15PM +0200, Jan Luebbe wrote:
> This is based on the code introduced to the kernel in
> 5f9296ba21b3c395e53dd84e7ff9578f97f24295.
> 
> Signed-off-by: Jan Luebbe <jluebbe@debian.org>
> ---
>  drivers/i2c/i2c.c | 161 ++++++++++++++++++++++++++++++++++++++++++++++++++++++
>  include/i2c/i2c.h |  42 ++++++++++++++
>  2 files changed, 203 insertions(+)
> 
> diff --git a/drivers/i2c/i2c.c b/drivers/i2c/i2c.c
> index ebc7e23..e350ac5 100644
> --- a/drivers/i2c/i2c.c
> +++ b/drivers/i2c/i2c.c
> @@ -23,6 +23,7 @@
>  #include <xfuncs.h>
>  #include <init.h>
>  #include <of.h>
> +#include <gpio.h>
>  
>  #include <i2c/i2c.h>
>  
> @@ -228,6 +229,133 @@ int i2c_write_reg(struct i2c_client *client, u32 addr, const u8 *buf, u16 count)
>  }
>  EXPORT_SYMBOL(i2c_write_reg);
>  
> +/* i2c bus recovery routines */
> +static int get_scl_gpio_value(struct i2c_adapter *adap)
> +{
> +	gpio_direction_input(adap->bus_recovery_info->scl_gpio);
> +	return gpio_get_value(adap->bus_recovery_info->scl_gpio);
> +}
> +
> +static void set_scl_gpio_value(struct i2c_adapter *adap, int val)
> +{
> +	if (val)
> +		gpio_direction_input(adap->bus_recovery_info->scl_gpio);
> +	else
> +		gpio_direction_output(adap->bus_recovery_info->scl_gpio, 0);
> +}
> +
> +static int get_sda_gpio_value(struct i2c_adapter *adap)
> +{
> +	return gpio_get_value(adap->bus_recovery_info->sda_gpio);
> +}
> +
> +static int i2c_get_gpios_for_recovery(struct i2c_adapter *adap)
> +{
> +	struct i2c_bus_recovery_info *bri = adap->bus_recovery_info;
> +	struct device_d *dev = &adap->dev;
> +	int ret = 0;
> +
> +	ret = gpio_request_one(bri->scl_gpio, GPIOF_IN, "i2c-scl");
> +	if (ret) {
> +		dev_warn(dev, "Can't get SCL gpio: %d\n", bri->scl_gpio);
> +		return ret;
> +	}
> +
> +	if (bri->get_sda) {
> +		if (gpio_request_one(bri->sda_gpio, GPIOF_IN, "i2c-sda")) {
> +			/* work without SDA polling */
> +			dev_warn(dev, "Can't get SDA gpio: %d. Not using SDA polling\n",
> +					bri->sda_gpio);
> +			bri->get_sda = NULL;
> +		}
> +	}
> +
> +	return ret;
> +}
> +
> +static void i2c_put_gpios_for_recovery(struct i2c_adapter *adap)
> +{
> +	struct i2c_bus_recovery_info *bri = adap->bus_recovery_info;
> +
> +	if (bri->get_sda)
> +		gpio_free(bri->sda_gpio);
> +
> +	gpio_free(bri->scl_gpio);
> +}
> +
> +/*
> + * We are generating clock pulses. ndelay() determines durating of clk pulses.
> + * We will generate clock with rate 100 KHz and so duration of both clock levels
> + * is: delay in ns = (10^6 / 100) / 2
> + */
> +#define RECOVERY_NDELAY		5000
> +#define RECOVERY_CLK_CNT	9
> +
> +static int i2c_generic_recovery(struct i2c_adapter *adap)
> +{
> +	struct i2c_bus_recovery_info *bri = adap->bus_recovery_info;
> +	int i = 0, val = 1, ret = 0;
> +
> +	if (bri->prepare_recovery)
> +		bri->prepare_recovery(adap);
> +
> +	/*
> +	 * By this time SCL is high, as we need to give 9 falling-rising edges
> +	 */
> +	while (i++ < RECOVERY_CLK_CNT * 2) {
> +		if (val) {
> +			/* Break if SDA is high */
> +			if (bri->get_sda && bri->get_sda(adap))
> +					break;
> +			/* SCL shouldn't be low here */
> +			if (!bri->get_scl(adap)) {
> +				dev_err(&adap->dev,
> +					"SCL is stuck low, exit recovery\n");
> +				ret = -EBUSY;
> +				break;
> +			}
> +		}
> +
> +		val = !val;
> +		bri->set_scl(adap, val);
> +		ndelay(RECOVERY_NDELAY);
> +	}
> +
> +	if (bri->unprepare_recovery)
> +		bri->unprepare_recovery(adap);
> +
> +	return ret;
> +}
> +
> +int i2c_generic_scl_recovery(struct i2c_adapter *adap)
> +{
> +	adap->bus_recovery_info->set_scl(adap, 1);
> +	return i2c_generic_recovery(adap);
> +}
> +
> +int i2c_generic_gpio_recovery(struct i2c_adapter *adap)
> +{
> +	int ret;
> +
> +	ret = i2c_get_gpios_for_recovery(adap);
> +	if (ret)
> +		return ret;
> +
> +	ret = i2c_generic_recovery(adap);
> +	i2c_put_gpios_for_recovery(adap);
> +
> +	return ret;
> +}
> +
> +int i2c_recover_bus(struct i2c_adapter *adap)
> +{
> +	if (!adap->bus_recovery_info)
> +		return -EOPNOTSUPP;
> +
> +	dev_dbg(&adap->dev, "Trying i2c bus recovery\n");
> +	return adap->bus_recovery_info->recover_bus(adap);
> +}
> +
>  /**
>   * i2c_new_device - instantiate one new I2C device
>   *
> @@ -456,6 +584,39 @@ int i2c_add_numbered_adapter(struct i2c_adapter *adapter)
>  
>  	list_add_tail(&adapter->list, &adapter_list);
>  
> +	/* bus recovery specific initialization */
> +	if (adapter->bus_recovery_info) {
> +		struct i2c_bus_recovery_info *bri = adapter->bus_recovery_info;
> +
> +		if (!bri->recover_bus) {
> +			dev_err(&adapter->dev, "No recover_bus() found, not using recovery\n");
> +			adapter->bus_recovery_info = NULL;
> +			goto exit_recovery;
> +		}
> +
> +		/* Generic GPIO recovery */
> +		if (bri->recover_bus == i2c_generic_gpio_recovery) {

This comparison to i2c_generic_gpio_recovery here forces the linker to
always compile in gpio recovery support, even when it's unused in the
compiled in drivers. I think we can do better here.

Also, could you put the bus recovery support into a separate function so
that we can call it wherever we need it? We might call it from other
places later aswell.

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

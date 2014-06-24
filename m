Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WzKmA-0003b1-Nw
 for barebox@lists.infradead.org; Tue, 24 Jun 2014 07:04:19 +0000
Date: Tue, 24 Jun 2014 09:03:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140624070356.GB15686@pengutronix.de>
References: <1403558473-26199-1-git-send-email-antonynpavlov@gmail.com>
 <1403558473-26199-6-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1403558473-26199-6-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH 5/7] i2c: i2c_gpio: add devicetree support
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Jun 24, 2014 at 01:21:11AM +0400, Antony Pavlov wrote:
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  .../devicetree/bindings/gpio/gpio_i2c.txt          | 32 +++++++++++++
>  drivers/i2c/busses/i2c-gpio.c                      | 54 +++++++++++++++++++--
>  include/of_gpio.h                                  | 55 ++++++++++++++++++++++
>  3 files changed, 138 insertions(+), 3 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/gpio/gpio_i2c.txt b/Documentation/devicetree/bindings/gpio/gpio_i2c.txt
> new file mode 100644
> index 0000000..4f8ec94
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/gpio/gpio_i2c.txt

We already have this binding in dts/Bindings/i2c/i2c-gpio.txt, no need
to duplicate it here. Documentation/devicetree is only for barebox
specific bindings.


> @@ -0,0 +1,32 @@
> +Device-Tree bindings for i2c gpio driver
> +
> +Required properties:
> +	- compatible = "i2c-gpio";
> +	- gpios: sda and scl gpio
> +
> +
> +Optional properties:
> +	- i2c-gpio,sda-open-drain: sda as open drain
> +	- i2c-gpio,scl-open-drain: scl as open drain
> +	- i2c-gpio,scl-output-only: scl as output only
> +	- i2c-gpio,delay-us: delay between GPIO operations (may depend on each platform)
> +	- i2c-gpio,timeout-ms: timeout to get data
> +
> +Example nodes:
> +
> +i2c@0 {
> +	compatible = "i2c-gpio";
> +	gpios = <&pioA 23 0 /* sda */
> +		 &pioA 24 0 /* scl */
> +		>;
> +	i2c-gpio,sda-open-drain;
> +	i2c-gpio,scl-open-drain;
> +	i2c-gpio,delay-us = <2>;	/* ~100 kHz */
> +	#address-cells = <1>;
> +	#size-cells = <0>;
> +
> +	rv3029c2@56 {
> +		compatible = "rv3029c2";
> +		reg = <0x56>;
> +	};
> +};
> diff --git a/drivers/i2c/busses/i2c-gpio.c b/drivers/i2c/busses/i2c-gpio.c
> index 8b49c2c..29dc3d2 100644
> --- a/drivers/i2c/busses/i2c-gpio.c
> +++ b/drivers/i2c/busses/i2c-gpio.c
> @@ -15,6 +15,7 @@
>  #include <i2c/i2c-gpio.h>
>  #include <init.h>
>  #include <gpio.h>
> +#include <of_gpio.h>
>  
>  struct i2c_gpio_private_data {
>  	struct i2c_adapter adap;
> @@ -83,6 +84,38 @@ static int i2c_gpio_getscl(void *data)
>  	return gpio_get_value(pdata->scl_pin);
>  }
>  
> +static int of_i2c_gpio_probe(struct device_node *np,
> +			     struct i2c_gpio_platform_data *pdata)
> +{
> +	u32 reg;
> +

Consider adding a

	is (!IS_ENABLED(CONFIG_OFDEVICE))
		return -ENODEV;

to allow the compiler to throw away the rest of this function.

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

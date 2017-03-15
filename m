Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1coFwU-0006qV-WC
 for barebox@lists.infradead.org; Wed, 15 Mar 2017 20:54:51 +0000
Date: Wed, 15 Mar 2017 21:54:22 +0100
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20170315205422.GB3531@ravnborg.org>
References: <20170314155222.11657-1-andrew.smirnov@gmail.com>
 <20170314155222.11657-7-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170314155222.11657-7-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 06/11] spi: atmel_spi: Add DT support
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Mar 14, 2017 at 08:52:17AM -0700, Andrey Smirnov wrote:
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  drivers/spi/atmel_spi.c | 29 ++++++++++++++++++++++++++---
>  1 file changed, 26 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/spi/atmel_spi.c b/drivers/spi/atmel_spi.c
> index ef57867..55032be 100644
> --- a/drivers/spi/atmel_spi.c
> +++ b/drivers/spi/atmel_spi.c
> @@ -29,6 +29,7 @@
>  #include <clock.h>
>  #include <xfuncs.h>
>  #include <gpio.h>
> +#include <of_gpio.h>
>  #include <io.h>
>  #include <spi/spi.h>
>  #include <mach/io.h>
> @@ -400,10 +401,11 @@ static int atmel_spi_probe(struct device_d *dev)
>  	int ret = 0;
>  	int i;
>  	struct spi_master *master;
> +	struct device_node *node = dev->device_node;
>  	struct atmel_spi *as;
>  	struct at91_spi_platform_data *pdata = dev->platform_data;
>  
> -	if (!pdata) {
> +	if (!IS_ENABLED(CONFIG_OFDEVICE) && !pdata) {
>  		dev_err(dev, "missing platform data\n");
>  		return -EINVAL;
>  	}
> @@ -414,6 +416,23 @@ static int atmel_spi_probe(struct device_d *dev)
>  	master->dev = dev;
>  	master->bus_num = dev->id;
>  
> +	if (pdata) {
> +		master->num_chipselect = pdata->num_chipselect;
> +		as->cs_pins = pdata->chipselect;
> +	} else {
> +		master->num_chipselect = of_gpio_named_count(node, "cs-gpios");
> +		as->cs_pins = xzalloc(sizeof(u32) * master->num_chipselect);
> +
> +		for (i = 0; i < master->num_chipselect; i++) {
> +			as->cs_pins[i] = of_get_named_gpio(node, "cs-gpios", i);
> +
> +			if (!gpio_is_valid(as->cs_pins[i]))
> +			    break;
> +		}
> +
> +		master->num_chipselect = i;
> +	}
> +
>  	as->clk = clk_get(dev, "spi_clk");
>  	if (IS_ERR(as->clk)) {
>  		dev_err(dev, "no spi_clk\n");
> @@ -423,8 +442,6 @@ static int atmel_spi_probe(struct device_d *dev)
>  
>  	master->setup = atmel_spi_setup;
>  	master->transfer = atmel_spi_transfer;
> -	master->num_chipselect = pdata->num_chipselect;
> -	as->cs_pins = pdata->chipselect;
>  	iores = dev_request_mem_resource(dev, 0);
>  	if (IS_ERR(iores))
>  		return PTR_ERR(iores);
> @@ -465,8 +482,14 @@ out_free:
>  	return ret;
>  }
>  
> +static __maybe_unused const struct of_device_id atmel_spi_dt_ids[] = {
const?

	Sam


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

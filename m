Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TzQGg-0002pc-RY
 for barebox@lists.infradead.org; Sun, 27 Jan 2013 11:19:23 +0000
Date: Sun, 27 Jan 2013 12:19:20 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130127111920.GX1906@pengutronix.de>
References: <1359158934-9369-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1359158934-9369-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/1] Animeo IP: use gpiolib ip to detect the hw version
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sat, Jan 26, 2013 at 01:08:54AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> if err assume
> SubCo
> SDN
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

Applied, thanks

Sascha

> ---
>  arch/arm/boards/animeo_ip/init.c |   50 +++++++++++++++++++++++++++++---------
>  1 file changed, 39 insertions(+), 11 deletions(-)
> 
> diff --git a/arch/arm/boards/animeo_ip/init.c b/arch/arm/boards/animeo_ip/init.c
> index e5e8694..9063567 100644
> --- a/arch/arm/boards/animeo_ip/init.c
> +++ b/arch/arm/boards/animeo_ip/init.c
> @@ -29,28 +29,56 @@
>  static bool animeo_ip_is_buco;
>  static bool animeo_ip_is_io;
>  
> +static int animeo_ip_get_pio_revision(int gpio, char *name)
> +{
> +	int ret;
> +
> +	ret = gpio_request(gpio, name);
> +	if (ret) {
> +		pr_err("animeo_ip: can not request gpio %d as %s (%d)\n",
> +			gpio, name, ret);
> +		return ret;
> +	}
> +
> +	ret = gpio_direction_input(gpio);
> +
> +	if (ret) {
> +		pr_err("animeo_ip: can configure gpio %d (%s) as input (%d)\n",
> +			gpio, name, ret);
> +		return ret;
> +	}
> +
> +	return gpio_get_value(gpio);
> +}
> +
>  static void animeo_ip_detect_version(void)
>  {
>  	struct device_d *dev = NULL;
>  	char *model, *version;
> +	int val;
>  
> -	at91_set_gpio_input(AT91_PIN_PC20, 0);
> -	at91_set_gpio_input(AT91_PIN_PC21, 0);
> -
> -	animeo_ip_is_buco = !!gpio_get_value(AT91_PIN_PC20);
> -	animeo_ip_is_io = !!gpio_get_value(AT91_PIN_PC21);
> +	animeo_ip_is_io = false;
> +	animeo_ip_is_buco = false;
> +	model = "SubCo";
> +	version = "SDN";
>  
>  	dev = add_generic_device_res("animeo_ip", DEVICE_ID_SINGLE, NULL, 0, NULL);
>  
> -	if (animeo_ip_is_buco)
> -		model = "BuCo";
> -	else
> +	val = animeo_ip_get_pio_revision(AT91_PIN_PC20, "is_buco");
> +	if (val < 0) {
> +		pr_warn("Can not detect model use %s by default\n", model);
> +	} else if (val) {
> +		animeo_ip_is_buco = true;
>  		model = "SubCo";
> +	}
>  
> -	if (animeo_ip_is_io)
> +	val = animeo_ip_get_pio_revision(AT91_PIN_PC21, "is_io");
> +	if (val < 0) {
> +		pr_warn("Can not detect version use %s by default\n", model);
> +	} else if (val) {
> +		animeo_ip_is_io = true;
>  		version = "IO";
> -	else
> -		version = "SDN";
> +	}
>  
>  	dev_add_param_fixed(dev, "model", model);
>  	dev_add_param_fixed(dev, "version", version);
> -- 
> 1.7.10.4
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

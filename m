Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from stcim.de ([2a01:4f8:120:63a3::2])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fFm15-0004HC-F9
 for barebox@lists.infradead.org; Mon, 07 May 2018 19:41:49 +0000
Date: Mon, 7 May 2018 21:41:32 +0200
From: Stefan Lengfeld <contact@stefanchrist.eu>
Message-ID: <20180507194132.GA8359@porty>
References: <20180507144631.11130-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180507144631.11130-1-l.stach@pengutronix.de>
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
Subject: Re: [PATCH] video: backlight: add slew time parameter
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Lucas,

On Mon, May 07, 2018 at 04:46:31PM +0200, Lucas Stach wrote:
> Currently the backlight implementation stretches a brightness change over
> a period of 100ms. While this is a fine default for PWM backlights, a user
> might wish to change this slew time to meet other constraints or even
> completely disable it for some backlight devices.
> 
> Add a parameter and provide the default value from the backlight device.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  drivers/video/backlight-pwm.c |  1 +
>  drivers/video/backlight.c     | 14 ++++++++++++--
>  include/video/backlight.h     |  1 +
>  3 files changed, 14 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/video/backlight-pwm.c b/drivers/video/backlight-pwm.c
> index ec35bd1bc039..43dc2a36dfd2 100644
> --- a/drivers/video/backlight-pwm.c
> +++ b/drivers/video/backlight-pwm.c
> @@ -206,6 +206,7 @@ static int backlight_pwm_of_probe(struct device_d *dev)
>  
>  	pwm_backlight->period = pwm_get_period(pwm_backlight->pwm);
>  
> +	pwm_backlight->backlight.slew_time = 100;
>  	pwm_backlight->backlight.brightness_set = backlight_pwm_set;
>  	pwm_backlight->backlight.node = dev->device_node;
>  
> diff --git a/drivers/video/backlight.c b/drivers/video/backlight.c
> index 09c0e47af6fb..cbb83087a00b 100644
> --- a/drivers/video/backlight.c
> +++ b/drivers/video/backlight.c
> @@ -15,6 +15,15 @@ int backlight_set_brightness(struct backlight_device *bl, int brightness)
>  	if (brightness == bl->brightness_cur)
>  		return 0;
>  
> +	if (!bl->slew_time) {
> +		ret = bl->brightness_set(bl, brightness);
> +		if (ret)
> +			return ret;
> +
> +		bl->brightness_cur = bl->brightness = brightness;
> +		return 0;
> +	}
> +
>  	if (brightness > bl->brightness_cur)
>  		step = 1;
>  	else
> @@ -34,10 +43,9 @@ int backlight_set_brightness(struct backlight_device *bl, int brightness)
>  		if (i == brightness)
>  			break;
>  
> -		udelay(100000 / num_steps);
> +		udelay(bl->slew_time * 1000 / num_steps);
>  	}
>  
> -
>  	bl->brightness_cur = bl->brightness = brightness;
>  
>  	return ret;
> @@ -72,6 +80,8 @@ int backlight_register(struct backlight_device *bl)
>  
>  	dev_add_param_uint32(&bl->dev, "brightness", backlight_brightness_set,
>  			NULL, &bl->brightness, "%d", bl);
> +	dev_add_param_uint32(&bl->dev, "slew_time", NULL, NULL, &bl->slew_time,
> +			"%d", NULL);
>  
>  	list_add_tail(&bl->list, &backlights);
>  
> diff --git a/include/video/backlight.h b/include/video/backlight.h
> index 8dc49dc113e3..52f90a761db5 100644
> --- a/include/video/backlight.h
> +++ b/include/video/backlight.h
> @@ -7,6 +7,7 @@ struct backlight_device {
>  	int brightness_cur;
>  	int brightness_max;
>  	int brightness_default;
> +	int slew_time; /* time to stretch brightness changes, in ms */

Just a suggestion: Maybe call this variable and the device parameter
"slew_time_ms" or "slew_time_in_ms". This way a developer does not have
to lookup the unit of the time value in the source code or have to guess
whether the value is in milli-, micro- or just seconds.

Kind regards,
	Stefan

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

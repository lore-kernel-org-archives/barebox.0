Delivery-date: Wed, 17 Jul 2024 22:19:38 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sUB7i-000HaK-06
	for lore@lore.pengutronix.de;
	Wed, 17 Jul 2024 22:19:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sUB7h-0003WG-Cv
	for lore@pengutronix.de; Wed, 17 Jul 2024 22:19:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:Cc:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=h8w6638LZ2XCSh0YVm1P0mMW2T1d2XDC2gzou1td7a0=; b=Hmf/3d/MD+elaCj6IIpiQIIuBr
	2ZfU0U5ts4Iul6SIuChbH6NAdWhx7uUnP7l0MDVe7IqPzBqWRn4MV+vIhZ7UNvtJY6V3ayVexhGVm
	seqwRV29z0Wa6O6VPxKMGp2SACIq8YKFlZLwMeGuMlfv3502I1FDVGlJpeGqoqxGfd/rMm1/CnPvs
	ZPsmGO8vHYHebyMCSBNmZWF5GnJvyNnGYQTATn53nMR98eBbYWwB06SCL9V3p/3IHvw7KsPpRPd71
	JQzi2gAjcvsCxf0Fl+WURm/YkUHgm3x+JZ9ECVch7ADMi37+HlhbPdfLpgJux190EMbItZSjOy8fr
	tLejuQKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUB73-0000000EpHw-3RkY;
	Wed, 17 Jul 2024 20:18:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUB6y-0000000EpFF-3XYD
	for barebox@lists.infradead.org;
	Wed, 17 Jul 2024 20:18:55 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sUB6u-0003Ng-Hu; Wed, 17 Jul 2024 22:18:48 +0200
Message-ID: <9d637676-a495-411d-b8bb-42a499aef62c@pengutronix.de>
Date: Wed, 17 Jul 2024 22:18:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
References: <20240716120355.1988646-1-a.fatoum@pengutronix.de>
Content-Language: en-US
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240716120355.1988646-1-a.fatoum@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240717_131852_918176_039A7892 
X-CRM114-Status: GOOD (  19.66  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] video: backlight-pwm: switch to gpiod functions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 16.07.24 14:03, Ahmad Fatoum wrote:
> Using GPIO descriptors aligns us more with the Linux customs nowadays
> and takes care of potential active low handling.

Please dismiss. I'll send out a v2 at a later time.

> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/video/backlight-pwm.c | 27 ++++++++-------------------
>  1 file changed, 8 insertions(+), 19 deletions(-)
> 
> diff --git a/drivers/video/backlight-pwm.c b/drivers/video/backlight-pwm.c
> index 87358ca778ec..d3c81114e006 100644
> --- a/drivers/video/backlight-pwm.c
> +++ b/drivers/video/backlight-pwm.c
> @@ -12,8 +12,7 @@
>  #include <linux/err.h>
>  #include <of.h>
>  #include <regulator.h>
> -#include <gpio.h>
> -#include <of_gpio.h>
> +#include <linux/gpio/consumer.h>
>  #include <linux/math64.h>
>  
>  struct pwm_backlight {
> @@ -22,8 +21,7 @@ struct pwm_backlight {
>  	struct regulator *power;
>  	uint32_t period;
>  	unsigned int *levels;
> -	int enable_gpio;
> -	int enable_active_high;
> +	struct gpio_desc *enable_gpio;
>  	int enabled;
>  	unsigned int scale;
>  };
> @@ -41,10 +39,7 @@ static int backlight_pwm_enable(struct pwm_backlight *pwm_backlight)
>  
>  	regulator_enable(pwm_backlight->power);
>  
> -	if (gpio_is_valid(pwm_backlight->enable_gpio)) {
> -		gpio_direction_output(pwm_backlight->enable_gpio,
> -				pwm_backlight->enable_active_high);
> -	}
> +	gpiod_direction_output(pwm_backlight->enable_gpio, true);
>  
>  	pwm_backlight->enabled = 1;
>  
> @@ -53,13 +48,13 @@ static int backlight_pwm_enable(struct pwm_backlight *pwm_backlight)
>  
>  static int backlight_pwm_disable(struct pwm_backlight *pwm_backlight)
>  {
> +	int ret;
> +
>  	if (!pwm_backlight->enabled)
>  		return 0;
>  
> -	if (gpio_is_valid(pwm_backlight->enable_gpio)) {
> -		gpio_direction_output(pwm_backlight->enable_gpio,
> -				!pwm_backlight->enable_active_high);
> -
> +	ret = gpiod_direction_output(pwm_backlight->enable_gpio, false);
> +	if (!ret) {
>  		regulator_disable(pwm_backlight->power);
>  
>  		/*
> @@ -109,7 +104,6 @@ static int pwm_backlight_parse_dt(struct device *dev,
>  	int length;
>  	u32 value;
>  	int ret, i;
> -	enum of_gpio_flags flags;
>  
>  	if (!node)
>  		return -ENODEV;
> @@ -154,12 +148,7 @@ static int pwm_backlight_parse_dt(struct device *dev,
>  		pwm_backlight->backlight.brightness_max = pwm_backlight->scale;
>  	}
>  
> -	pwm_backlight->enable_gpio = of_get_named_gpio_flags(node, "enable-gpios", 0, &flags);
> -
> -	if (gpio_is_valid(pwm_backlight->enable_gpio)) {
> -		if (!(flags & OF_GPIO_ACTIVE_LOW))
> -			pwm_backlight->enable_active_high = 1;
> -	}
> +	pwm_backlight->enable_gpio = gpiod_get_optional(dev, "enable-gpios", 0);
>  
>  	return 0;
>  }

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |




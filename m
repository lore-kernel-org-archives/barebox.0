Delivery-date: Tue, 02 Jun 2026 09:24:00 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wUJTk-001VSF-0Q
	for lore@lore.pengutronix.de;
	Tue, 02 Jun 2026 09:24:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wUJTj-0001kj-9U
	for lore@pengutronix.de; Tue, 02 Jun 2026 09:24:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QeCqEVL7AoLvF9GwN2oReiyQ530yjGsw+PNQ6GEnO6U=; b=R/gWA4pMTHmjDJyDXF3hxiCG0l
	ngyarfInaYhPwjsplcS5Sk+NeA1U564gflZiniGMZmXp0MWHC61P7JO2agxitdQfcxvhGBQFaKbdY
	3DCWoDhGjQfA5tFjT7Y4Lhdh/zCixJhYTeZ3gzeb+xSr5ShGpjJ4B7MI6QSCeNr0Fvh9LPIa+YyGH
	rAf2fqCweuhheg+kCCW0aTl6azItGQfSSagMRDa9ugOG0fb6Y5twxfHyLaBN5ZmuR03KiFOcWNF2s
	w6WjT65RVwjYJKmptFIjTZj5kzrplsh9QVr/cHrjv+fybom0gGxuXcQXz/M2rLzJn4R4m3AsV1OkW
	qBqI7Krw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUJSg-0000000CTgB-1vZo;
	Tue, 02 Jun 2026 07:22:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUJSd-0000000CTfa-3EgN
	for barebox@lists.infradead.org;
	Tue, 02 Jun 2026 07:22:53 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wUJSc-0001ZR-8L; Tue, 02 Jun 2026 09:22:50 +0200
Message-ID: <d21d0293-694c-42a8-a82c-4606fb56a147@pengutronix.de>
Date: Tue, 2 Jun 2026 09:22:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Johannes Schneider <johannes.schneider@leica-geosystems.com>,
 barebox@lists.infradead.org
Cc: thomas.haemmerle@leica-geosystems.com
References: <20260602040953.1060278-1-johannes.schneider@leica-geosystems.com>
 <20260602040953.1060278-4-johannes.schneider@leica-geosystems.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260602040953.1060278-4-johannes.schneider@leica-geosystems.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260602_002251_837289_B7BA021D 
X-CRM114-Status: GOOD (  23.09  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/6] video: backlight-pwm: make power-supply and
 enable-gpio optional
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello,

Thanks for your patch.
It fixes a real bug, but I have some comments below.

On 6/2/26 6:09 AM, Johannes Schneider wrote:
> From: Thomas Haemmerle <thomas.haemmerle@leica-geosystems.com>
> 
> PWM backlight DT nodes for board displays often omit the power-supply regulator
> (the rail is always-on) or use enable-gpios without a supply. The driver
> previously treated both as mandatory and returned -ENODEV if either was absent,
> blocking display initialisation on devices which use an always-on 3.3V supply
> and no separate backlight enable regulator.
> 
> Guard the regulator enable/disable calls with a NULL check, handle
> -ENODEV from regulator_get() as "no supply present", and use GPIOD_ASIS
> for enable GPIO so the initial pin state is not disturbed.
> 
> Also improve the "Cannot find PWM device" error message to print the
> actual error pointer so probe failures are diagnosable.
> 
> Assisted-by: Claude:claude-sonnet-4-6
> Signed-of-by: Thomas Haemmerle <thomas.haemmerle@leica-geosystems.com>
> ---
>  drivers/video/backlight-pwm.c | 16 ++++++++++------
>  drivers/video/backlight.c     |  3 ++-
>  drivers/video/fsl-ldb.c       |  2 +-
>  3 files changed, 13 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/video/backlight-pwm.c b/drivers/video/backlight-pwm.c
> index d3c81114e0..9c8fcfbe93 100644
> --- a/drivers/video/backlight-pwm.c
> +++ b/drivers/video/backlight-pwm.c
> @@ -37,7 +37,8 @@ static int backlight_pwm_enable(struct pwm_backlight *pwm_backlight)
>  	if (ret)
>  		return ret;
>  
> -	regulator_enable(pwm_backlight->power);
> +	if (pwm_backlight->power)
> +		regulator_enable(pwm_backlight->power);

Not needed, regulator_enable gracefully handles a NULL pointer.

>  
>  	gpiod_direction_output(pwm_backlight->enable_gpio, true);
>  
> @@ -55,7 +56,8 @@ static int backlight_pwm_disable(struct pwm_backlight *pwm_backlight)
>  
>  	ret = gpiod_direction_output(pwm_backlight->enable_gpio, false);
>  	if (!ret) {
> -		regulator_disable(pwm_backlight->power);
> +		if (pwm_backlight->power)
> +			regulator_disable(pwm_backlight->power);

Likewise.

>  
>  		/*
>  		 * Only disable PWM when an enable gpio is present.
> @@ -148,7 +150,7 @@ static int pwm_backlight_parse_dt(struct device *dev,
>  		pwm_backlight->backlight.brightness_max = pwm_backlight->scale;
>  	}
>  
> -	pwm_backlight->enable_gpio = gpiod_get_optional(dev, "enable-gpios", 0);
> +	pwm_backlight->enable_gpio = gpiod_get_optional(dev, "enable", GPIOD_ASIS);

While the commit message doesn't point it out, use of enable-gpios here
is a bug.

Fixes: 4c7238df6866 ("video: backlight-pwm: switch to gpiod functions")

>  
>  	return 0;
>  }
> @@ -161,7 +163,7 @@ static int backlight_pwm_of_probe(struct device *dev)
>  
>  	pwm = of_pwm_request(dev->of_node, NULL);
>  	if (IS_ERR(pwm)) {
> -		dev_err(dev, "Cannot find PWM device\n");
> +		dev_err(dev, "Cannot find PWM device: %pe\n", pwm);
>  		return PTR_ERR(pwm);

return dev_errp_probe(dev, pwm, "Cannot find PWM device\n");

>  	}
>  
> @@ -175,8 +177,10 @@ static int backlight_pwm_of_probe(struct device *dev)
>  
>  	pwm_backlight->power = regulator_get(dev, "power");

regulator_get_optional()

>  	if (IS_ERR(pwm_backlight->power)) {
> -		dev_err(dev, "Cannot find regulator\n");
> -		return PTR_ERR(pwm_backlight->power);
> +		if (PTR_ERR(pwm_backlight->power) != -ENODEV)
> +			return dev_errp_probe(dev, pwm_backlight->power,
> +					      "power supply\n");
> +		pwm_backlight->power = NULL;
>  	}
>  
>  	pwm_backlight->backlight.slew_time_ms = 100;
> diff --git a/drivers/video/backlight.c b/drivers/video/backlight.c
> index 6d8146ee5a..bf7d40b59a 100644
> --- a/drivers/video/backlight.c
> +++ b/drivers/video/backlight.c
> @@ -94,8 +94,9 @@ int backlight_register(struct backlight_device *bl)
>  struct backlight_device *of_backlight_find(struct device_node *node)
>  {
>  	struct backlight_device *bl;
> +	int ret;
>  
> -	of_device_ensure_probed(node);
> +	ret = of_device_ensure_probed(node);

ret is never evaluated, so this change serves no purpose.

It's also not needed, because the iteration below will either find a
backlight or it won't find one. You can equally well just cast this to
(void) here.

>  
>  	class_for_each_container_of_device(&backlight_class, bl, dev)
>  		if (bl->node == node)
> diff --git a/drivers/video/fsl-ldb.c b/drivers/video/fsl-ldb.c
> index 0ab720032c..09804ac329 100644
> --- a/drivers/video/fsl-ldb.c
> +++ b/drivers/video/fsl-ldb.c
> @@ -287,7 +287,7 @@ static int fsl_ldb_probe(struct device *dev)
>  
>  	/* Only DRM_LVDS_DUAL_LINK_ODD_EVEN_PIXELS is supported */
>  
> -	dev_info(dev, "LVDS channel pixel swap not supported.\n");
> +	dev_dbg(dev, "LVDS channel pixel swap not supported.\n");


Cheers,
Ahmad

>  
>  	fsl_ldb->vpl.node = dev->of_node;
>  	fsl_ldb->vpl.ioctl = &fsl_ldb_ioctl;

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |




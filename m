Delivery-date: Tue, 20 Feb 2024 08:28:40 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rcKYS-00Fig5-2i
	for lore@lore.pengutronix.de;
	Tue, 20 Feb 2024 08:28:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rcKYS-0006Xh-4x
	for lore@pengutronix.de; Tue, 20 Feb 2024 08:28:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NLHNAw8dXW2p6ix+6Qk0ls4qiOjvn1Zp+GlLfiDYu/Q=; b=Y8LRF+rRAAqNU9hJIDZWJVP20l
	/N/ytFK11rMsmOAr8CW4KmQBxi2kEX1LMUVBG2Ca8M2D+4JWyjTOBfj4/WtOxgZF4H4RqGXupYe8o
	BJjXJTWHiPaKz2htqXGAwsrHQ2QSUTBUSsvbBfi89K+ENj3Cppti19O9lLGEriwmrtMVUAvTd6nNu
	XXQFDEWiAxOx7oJ2jmoBuj8e8gkktiM0tCe1Y992RiIuF2RsyKaM9mURSNUL4c3JXHC6PrmEdmpN0
	EByPi3du+AsiFlBChZS3j6SqTVxZ2Q0LIlkexOFZNQgReopnK+YAax9EoioidLRj5JAqP5nY9zZx2
	wi80lLww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcKY2-0000000DWSd-1sXP;
	Tue, 20 Feb 2024 07:28:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcKXz-0000000DWRP-2vcP
	for barebox@lists.infradead.org;
	Tue, 20 Feb 2024 07:28:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rcKXy-0006Pj-HX; Tue, 20 Feb 2024 08:28:10 +0100
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rcKXy-001ncA-55; Tue, 20 Feb 2024 08:28:10 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rcKXy-00HItW-0D;
	Tue, 20 Feb 2024 08:28:10 +0100
Date: Tue, 20 Feb 2024 08:28:10 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <ZdRUitBFuHWVkSwl@pengutronix.de>
References: <20240219172659.3796647-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240219172659.3796647-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240219_232811_761231_BD844FF6 
X-CRM114-Status: GOOD (  25.76  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] treewide: use dev_err_probe instead of comparisons
 against EPROBE_DEFER
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Feb 19, 2024 at 06:26:59PM +0100, Ahmad Fatoum wrote:
> Drivers should not need to compare an error value against EPROBE_DEFER.
> We have a number of drivers doing that though to decide whether to print
> an error or not. This error message will be lost if the probe is
> deferred, so use dev_err_probe to store the error in that case.
> 
> While at it, we shorten the error messages a bit. dev_err_probe will
> already print the string 'error' before the error code string.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/led/led-gpio.c                         |  5 +----
>  drivers/phy/phy-stm32-usbphyc.c                |  5 +----
>  drivers/phy/rockchip/phy-rockchip-inno-usb2.c  |  9 ++-------
>  .../phy/rockchip/phy-rockchip-naneng-combphy.c | 10 ++--------
>  drivers/power/reset/nvmem-reboot-mode.c        |  8 ++------
>  drivers/soc/rockchip/io-domain.c               |  4 +---
>  drivers/sound/pwm-beeper.c                     | 18 ++++--------------
>  drivers/spi/gpio_spi.c                         |  9 +++------
>  drivers/usb/musb/musb_core.c                   |  4 +---
>  drivers/w1/masters/w1-gpio.c                   |  6 ++----
>  10 files changed, 19 insertions(+), 59 deletions(-)
> 
> diff --git a/drivers/led/led-gpio.c b/drivers/led/led-gpio.c
> index 4b282c788679..c0d14256d3a1 100644
> --- a/drivers/led/led-gpio.c
> +++ b/drivers/led/led-gpio.c
> @@ -214,10 +214,7 @@ static int led_gpio_of_probe(struct device *dev)
>  
>  		gpio = of_get_named_gpio_flags(child, "gpios", 0, &flags);
>  		if (gpio < 0) {
> -			if (gpio != -EPROBE_DEFER)
> -				dev_err(dev, "failed to get gpio for %pOF: %d\n",
> -					child, gpio);
> -			ret = gpio;
> +			ret = dev_err_probe(dev, gpio, "getting gpio for %pOF\n", child);
>  			goto err;
>  		}
>  
> diff --git a/drivers/phy/phy-stm32-usbphyc.c b/drivers/phy/phy-stm32-usbphyc.c
> index 91f4e7f7e08d..6bac5e1e594a 100644
> --- a/drivers/phy/phy-stm32-usbphyc.c
> +++ b/drivers/phy/phy-stm32-usbphyc.c
> @@ -693,10 +693,7 @@ static int stm32_usbphyc_probe(struct device *dev)
>  
>  		phy = phy_create(phydev, child, &stm32_usbphyc_phy_ops);
>  		if (IS_ERR(phy)) {
> -			ret = PTR_ERR(phy);
> -			if (ret != -EPROBE_DEFER)
> -				dev_err(dev, "failed to create phy%d: %d\n",
> -					port, ret);
> +			ret = dev_errp_probe(dev, phy, "creating phy%d\n", port);
>  			goto clk_disable;
>  		}
>  
> diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
> index 7349a92d567c..08b5eabf7b90 100644
> --- a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
> +++ b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
> @@ -453,13 +453,8 @@ static int rockchip_usb2phy_probe(struct device *dev)
>  		of_platform_device_dummy_drv(phydev);
>  
>  		phy = phy_create(phydev, child, &rockchip_usb2phy_ops);
> -		if (IS_ERR(phy)) {
> -			ret = PTR_ERR(phy);
> -			if (ret != -EPROBE_DEFER)
> -				dev_err(dev, "failed to create phy%d: %d\n",
> -					port, ret);
> -			return ret;
> -		}
> +		if (IS_ERR(phy))
> +			return dev_errp_probe(dev, phy, "creating phy%d\n", port);
>  
>  		p = xzalloc(sizeof(*p));
>  
> diff --git a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
> index 9e52beed1bbb..8a9f9cbeb75f 100644
> --- a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
> +++ b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
> @@ -321,14 +321,8 @@ static int rockchip_combphy_parse_dt(struct device *dev,
>  			    true);
>  
>  	priv->phy_rst = reset_control_get(dev, NULL);
> -	if (IS_ERR(priv->phy_rst)) {
> -		ret = PTR_ERR(priv->phy_rst);
> -
> -		if (ret != -EPROBE_DEFER)
> -			dev_warn(dev, "failed to get phy reset\n");
> -
> -		return ret;
> -	}
> +	if (IS_ERR(priv->phy_rst))
> +		dev_errp_probe(dev, priv->phy_rst, "getting phy reset\n");

Should be return dev_errp_probe(...)

Fixed that while applying.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



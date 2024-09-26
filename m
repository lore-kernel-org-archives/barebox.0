Delivery-date: Thu, 26 Sep 2024 08:10:19 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sthhi-002tEB-0G
	for lore@lore.pengutronix.de;
	Thu, 26 Sep 2024 08:10:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sthhi-0002zz-Gn
	for lore@pengutronix.de; Thu, 26 Sep 2024 08:10:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iBp0im1HguR9nD8gmIA3LIvQGybjEFZa9UcLJuS992s=; b=Z4w7VslyPDOj3vC28xtHswK8bR
	qWFGXFzYRyhJ6xKqcb25lD6xuVExA1C4ilu768jIVheH3CEFXIvpTMsnlgn2G6Ka46ad3GY21sSRc
	d9OUsWEGAq+dVRffcum99fUOUBt/sqOMCKsMV35Mco1ma59xaOodbsv8jJPY5quVxKbf1vM5J8QHg
	rGIFw+r5KJ6ednQWQkW8bGNR/bXD/uRJ4yi4t1tXK3xAOaqD5g3+k693VZADfDb3tYBqyEFNHch9M
	93t852nPthBbFPWgwLfUpvA14jyasM9mSdWesEkzjeC0VC7SOFAeGar/CLEN1g/pUMFEAvwuMQvZB
	mg/mkRyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sthhG-00000007Icy-0XqT;
	Thu, 26 Sep 2024 06:09:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sthhC-00000007Ibj-11QZ
	for barebox@lists.infradead.org;
	Thu, 26 Sep 2024 06:09:48 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sthhB-0002iE-0x; Thu, 26 Sep 2024 08:09:45 +0200
Message-ID: <42e379a1-412b-4f46-81db-7dbd270d0dfd@pengutronix.de>
Date: Thu, 26 Sep 2024 08:09:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 "open list:BAREBOX" <barebox@lists.infradead.org>
References: <20240925-spi-gpio-v1-0-47f6285b3bf1@pengutronix.de>
 <20240925-spi-gpio-v1-3-47f6285b3bf1@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240925-spi-gpio-v1-3-47f6285b3bf1@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240925_230946_323747_E3A16FFB 
X-CRM114-Status: GOOD (  22.24  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/3] spi: spi-gpio: switch to new gpio binding
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

On 25.09.24 16:06, Sascha Hauer wrote:
> The old deprecated device tree binding for the spi-gpio driver uses
> "gpio-sck", "gpio-mosi" and "gpio-miso" to specify the GPIOs. Switch to
> the new binding which uses the standard GPIO property names.
> 
> The old binding is still used in some device trees, but none of the SoCs
> using them is actually supported in barebox, so do not bother to keep a
> fallback to the old binding. The one in-tree user of the old binding is
> converted in this patch.

There is one more user in sandbox-libftdi-example.dtsi. Please fix that as well.

Also, while you are it, why not switch over to the GPIOD API? :-)

Cheers,
Ahmad

> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/dts/stm32mp151-mect1s.dts | 6 +++---
>  drivers/spi/gpio_spi.c             | 6 +++---
>  2 files changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/arm/dts/stm32mp151-mect1s.dts b/arch/arm/dts/stm32mp151-mect1s.dts
> index 4d0e31d189..b0dc1cfaa8 100644
> --- a/arch/arm/dts/stm32mp151-mect1s.dts
> +++ b/arch/arm/dts/stm32mp151-mect1s.dts
> @@ -65,9 +65,9 @@ led-1 {
>  
>  	spi_gpio: spi-gpio-0 {
>  		compatible = "spi-gpio";
> -		gpio-sck = <&gpioi 1 GPIO_ACTIVE_HIGH>;
> -		gpio-mosi = <&gpioi 3 GPIO_ACTIVE_HIGH>;
> -		gpio-miso = <&gpioi 2 GPIO_ACTIVE_HIGH>;
> +		sck-gpios = <&gpioi 1 GPIO_ACTIVE_HIGH>;
> +		mosi-gpios = <&gpioi 3 GPIO_ACTIVE_HIGH>;
> +		miso-gpios = <&gpioi 2 GPIO_ACTIVE_HIGH>;
>  		cs-gpios = <&gpioj 3 GPIO_ACTIVE_LOW>;
>  		num-chipselects = <1>;
>  		#address-cells = <1>;
> diff --git a/drivers/spi/gpio_spi.c b/drivers/spi/gpio_spi.c
> index c76b71f610..34d74faf4c 100644
> --- a/drivers/spi/gpio_spi.c
> +++ b/drivers/spi/gpio_spi.c
> @@ -178,7 +178,7 @@ static int gpio_spi_of_probe(struct device *dev)
>  	if (!IS_ENABLED(CONFIG_OFDEVICE) || dev->platform_data)
>  		return 0;
>  
> -	sck = of_get_named_gpio(np, "gpio-sck", 0);
> +	sck = of_get_named_gpio(np, "sck-gpios", 0);
>  	if (!gpio_is_valid(sck))
>  		return dev_err_probe(dev, sck < 0 ? sck : -EINVAL,
>  				     "missing mandatory SCK gpio\n");
> @@ -187,11 +187,11 @@ static int gpio_spi_of_probe(struct device *dev)
>  	pdata->sck = sck;
>  	pdata->num_cs = MAX_CHIPSELECT;
>  
> -	pdata->miso = of_get_named_gpio(np, "gpio-miso", 0);
> +	pdata->miso = of_get_named_gpio(np, "miso-gpios", 0);
>  	if (!gpio_is_valid(pdata->miso))
>  		pdata->miso = SPI_GPIO_NO_MISO;
>  
> -	pdata->mosi = of_get_named_gpio(np, "gpio-mosi", 0);
> +	pdata->mosi = of_get_named_gpio(np, "mosi-gpios", 0);
>  	if (!gpio_is_valid(pdata->mosi))
>  		pdata->mosi = SPI_GPIO_NO_MOSI;
>  
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



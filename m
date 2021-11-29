Delivery-date: Mon, 29 Nov 2021 12:09:02 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mreWs-0004OR-9i
	for lore@lore.pengutronix.de; Mon, 29 Nov 2021 12:09:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mreWr-0003QO-8v
	for lore@pengutronix.de; Mon, 29 Nov 2021 12:09:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xHPDQ0n0Vx/qNLOWYZGX3ICRuIz5gFj+BJCaL+URIbg=; b=J3dMgB5cc5et9EmfWZxJMgMd8i
	NTZeNG8mf9mQ1xTljG7OdYF77PFTZCvpxg8ywxlDIb3h1Kx+A3xKnHiyqJt9T5/xSlBuHYMWpYqCC
	RKE482BPHYCeVOtP+OpHG/55Vl1+7bip0EcOq3uFA8R8Go3HN22RWw4GHO9cHnu9qAxcO/7HP0blN
	UkqzX/h1nZdM4JwFdwQ/t7q7NTOKCOpi2wokmB6+BvF1emM/ncF8RLUSmqVFuUppyUAFBXO6r31PQ
	Tap4sPfoCM97R0EjSw2ljocqOt4WQuOhu9EmTNetFTanLfL5gxlQeXgEzXK1ZHP/knA1dC6DwJcvz
	5SP3uzVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mreVO-000UyV-Q6; Mon, 29 Nov 2021 11:07:30 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mreVJ-000Uxv-DE
 for barebox@lists.infradead.org; Mon, 29 Nov 2021 11:07:27 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1mreVH-0003FJ-TB; Mon, 29 Nov 2021 12:07:23 +0100
To: Oleksij Rempel <o.rempel@pengutronix.de>, barebox@lists.infradead.org
References: <20211129105244.3032203-1-o.rempel@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <1bcaf815-123d-1673-4a40-8d0973c64b22@pengutronix.de>
Date: Mon, 29 Nov 2021 12:07:23 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20211129105244.3032203-1-o.rempel@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211129_030725_490284_A264D79C 
X-CRM114-Status: GOOD (  30.92  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v1] nvmem: bsec.c: add optional permanent write support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 29.11.21 11:52, Oleksij Rempel wrote:
> To be able to fuze MAC address we need to be able to use BSEC_SMC_PROG_OTP
> instead of BSEC_SMC_WRITE_SHADOW.
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  drivers/nvmem/Kconfig | 11 +++++++++++
>  drivers/nvmem/bsec.c  | 22 +++++++++++++++++++---
>  2 files changed, 30 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/nvmem/Kconfig b/drivers/nvmem/Kconfig
> index d809fb6eab..1bb477a997 100644
> --- a/drivers/nvmem/Kconfig
> +++ b/drivers/nvmem/Kconfig
> @@ -66,6 +66,17 @@ config STM32_BSEC
>  	  This adds support for the STM32 OTP controller. Reads and writes
>  	  to will go to the shadow RAM, not the OTP fuses themselvers.
>  
> +config STM32_BSEC_WRITE
> +	bool
> +	prompt "Enable write support of STM32 CPUs OTP fuses"
> +	depends on STM32_BSEC
> +	help
> +	  This adds write support to STM32 On-Chip OTP registers. Example of set
> +	  MAC to 12:34:56:78:9A:BC:
> +	    bsec0.permanent_write_enable=1
> +	    mw -l -d /dev/stm32-bsec 0x000000e4+4 0x78563412
> +	    mw -l -d /dev/stm32-bsec 0x000000e8+4 0x0000bc9a

I'd have preferred the device parameter be associated with the
device instantiated from the device tree instead of allocating
a new device just to hold the param. Unfortunately, the existing device
has a '-' in the name, so the parameter can only be set with setenv..

I should've thought about that when I submitted the driver, but
as imx-ocotp/ocotp0 follows the same scheme:

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> +
>  config STARFIVE_OTP
>  	tristate "Starfive OTP Supprot"
>  	depends on SOC_STARFIVE
> diff --git a/drivers/nvmem/bsec.c b/drivers/nvmem/bsec.c
> index 2d35d12df3..86b943a45d 100644
> --- a/drivers/nvmem/bsec.c
> +++ b/drivers/nvmem/bsec.c
> @@ -21,8 +21,10 @@
>  #define BSEC_OTP_SERIAL	13
>  
>  struct bsec_priv {
> +	struct device_d dev;
>  	u32 svc_id;
>  	struct regmap_config map_config;
> +	int permanent_write_enable;
>  };
>  
>  struct stm32_bsec_data {
> @@ -59,13 +61,18 @@ static int stm32_bsec_read_shadow(void *ctx, unsigned reg, unsigned *val)
>  	return bsec_smc(ctx, BSEC_SMC_READ_SHADOW, reg, 0, val);
>  }
>  
> -static int stm32_bsec_reg_write_shadow(void *ctx, unsigned reg, unsigned val)
> +static int stm32_bsec_reg_write(void *ctx, unsigned reg, unsigned val)
>  {
> -	return bsec_smc(ctx, BSEC_SMC_WRITE_SHADOW, reg, val, NULL);
> +	struct bsec_priv *priv = ctx;
> +
> +	if (priv->permanent_write_enable)
> +		return bsec_smc(ctx, BSEC_SMC_PROG_OTP, reg, val, NULL);
> +	else
> +		return bsec_smc(ctx, BSEC_SMC_WRITE_SHADOW, reg, val, NULL);
>  }
>  
>  static struct regmap_bus stm32_bsec_regmap_bus = {
> -	.reg_write = stm32_bsec_reg_write_shadow,
> +	.reg_write = stm32_bsec_reg_write,
>  	.reg_read = stm32_bsec_read_shadow,
>  };
>  
> @@ -150,6 +157,10 @@ static int stm32_bsec_probe(struct device_d *dev)
>  
>  	priv->svc_id = data->svc_id;
>  
> +	dev_set_name(&priv->dev, "bsec");
> +	priv->dev.parent = dev;
> +	register_device(&priv->dev);
> +
>  	priv->map_config.reg_bits = 32;
>  	priv->map_config.val_bits = 32;
>  	priv->map_config.reg_stride = 4;
> @@ -159,6 +170,11 @@ static int stm32_bsec_probe(struct device_d *dev)
>  	if (IS_ERR(map))
>  		return PTR_ERR(map);
>  
> +	if (IS_ENABLED(CONFIG_STM32_BSEC_WRITE)) {
> +		dev_add_param_bool(&priv->dev, "permanent_write_enable",
> +				NULL, NULL, &priv->permanent_write_enable, NULL);
> +	}
> +
>  	nvmem = nvmem_regmap_register(map, "stm32-bsec");
>  	if (IS_ERR(nvmem))
>  		return PTR_ERR(nvmem);
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


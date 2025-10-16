Delivery-date: Thu, 16 Oct 2025 14:54:01 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v9NUX-008Sll-2y
	for lore@lore.pengutronix.de;
	Thu, 16 Oct 2025 14:54:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v9NUX-0004wh-AS
	for lore@pengutronix.de; Thu, 16 Oct 2025 14:54:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0SlGV1r/BebjXbkPdU5ZPgfwR2JttdGeZej6Ztixel0=; b=oiFPQaSi/aEGEWhV4UqwT9PNFl
	o99caJWTL9Vkx8z0G71s8hM0p0q/Qu8bIlIxJ0OozgZ2+RB3h783fgkyrq699XIELUx+YEg8rsTqJ
	CBhZje/+EQ9XHvWJdjsf0gbujGjIp0tkt+IaW3qlUER4T7/zx4Pkb+7p01WmzX0xADvEiBGm3HSR5
	+3Zrmg90b1MaMB75bHQcRG8YfDj8uFUEbxP8OWtnkdHxOr6S9gVv1DX/U/1ufEeSTsxDp3K+mBryS
	BG00J1J+LD5i1wNiwXe3DuIvDbP7Jc7v0LggjTYR3jzdHi5q3noSIhtCS1jdcCeal7/AFwnUlRVOm
	KAxoG3kQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9NU4-00000004n4l-3dgz;
	Thu, 16 Oct 2025 12:53:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9NU2-00000004n3D-13X9
	for barebox@lists.infradead.org;
	Thu, 16 Oct 2025 12:53:31 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1v9NU0-0004oH-M5; Thu, 16 Oct 2025 14:53:28 +0200
Message-ID: <67c3de1a-31c9-43a1-aa34-2be6a53f5396@pengutronix.de>
Date: Thu, 16 Oct 2025 14:53:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: maud_spierings@hotmail.com, Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
References: <20251015-imx_gpio-v1-0-e57925f906bb@hotmail.com>
 <20251015-imx_gpio-v1-1-e57925f906bb@hotmail.com>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251015-imx_gpio-v1-1-e57925f906bb@hotmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251016_055330_291537_3EB65218 
X-CRM114-Status: GOOD (  21.84  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] gpio: i.MX: make _get_value() able to read output pin
 state
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On 10/15/25 8:03 PM, Maud Spierings via B4 Relay wrote:
> From: Maud Spierings <maud_spierings@hotmail.com>
> 
> Make _get_value() read back the dr register instead of the psr register
> when the direction is set to output. Now _get_value() can actually read
> the state of an output gpio instead of being always low.
> 
> Signed-off-by: Maud Spierings <maud_spierings@hotmail.com>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> 
> ---
> inspired by similar logic being used in u-boot and Linux

That's useful info that should go into the commit message IMO, because
it explains why we think regression should be limited.

> ---
>  drivers/gpio/gpio-imx.c | 19 +++++++++++--------
>  1 file changed, 11 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpio/gpio-imx.c b/drivers/gpio/gpio-imx.c
> index d9499c66cd..bb14c56399 100644
> --- a/drivers/gpio/gpio-imx.c
> +++ b/drivers/gpio/gpio-imx.c
> @@ -89,24 +89,27 @@ static int imx_gpio_direction_output(struct gpio_chip *chip, unsigned gpio, int
>  	return 0;
>  }
>  
> -static int imx_gpio_get_value(struct gpio_chip *chip, unsigned gpio)
> +static int imx_get_direction(struct gpio_chip *chip, unsigned offset)
>  {
>  	struct imx_gpio_chip *imxgpio = container_of(chip, struct imx_gpio_chip, chip);
>  	void __iomem *base = imxgpio->base;
> -	u32 val;
> -
> -	val = readl(base + imxgpio->regs->psr);
> +	u32 val = readl(base + imxgpio->regs->gdir);
>  
> -	return val & (1 << gpio) ? 1 : 0;
> +	return (val & (1 << offset)) ? GPIOF_DIR_OUT : GPIOF_DIR_IN;
>  }
>  
> -static int imx_get_direction(struct gpio_chip *chip, unsigned offset)
> +static int imx_gpio_get_value(struct gpio_chip *chip, unsigned gpio)
>  {
>  	struct imx_gpio_chip *imxgpio = container_of(chip, struct imx_gpio_chip, chip);
>  	void __iomem *base = imxgpio->base;
> -	u32 val = readl(base + imxgpio->regs->gdir);
> +	u32 val;
>  
> -	return (val & (1 << offset)) ? GPIOF_DIR_OUT : GPIOF_DIR_IN;
> +	if (imx_get_direction(chip, gpio) == GPIOF_DIR_IN)
> +		val = readl(base + imxgpio->regs->psr);
> +	else
> +		val = readl(base + imxgpio->regs->dr);
> +
> +	return val & (1 << gpio) ? 1 : 0;
>  }
>  
>  static struct gpio_ops imx_gpio_ops = {
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |




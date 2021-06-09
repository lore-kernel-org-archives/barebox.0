Delivery-date: Wed, 09 Jun 2021 10:03:14 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lqtBC-0004u0-IS
	for lore@lore.pengutronix.de; Wed, 09 Jun 2021 10:03:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lqtBA-0007bg-DV
	for lore@pengutronix.de; Wed, 09 Jun 2021 10:03:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=WoDHk3jpRuu0zj6sau8c+GGSkfog4cTXlKhMk1qT44s=; b=NbiovDmVDG4FkNPxPVJrQDWnUd
	mf2+qA4f+N29J7YsyCMkR5900E4Z/LMg1VqZbvCP6ILoF5GWDUuie0vy0hPLxGn8g9MxqcGQmLpo5
	KNCBXYsNHetGjyrMVVMAXteW09/Hfo7gDCbCKDXVsSPaf7ricl4QoJ3l/t/daTtKppELta8MdKVvk
	AJUqrQNv59WQFoNtdqvrsvUOdXM73+yTFysmQTl3CwF4bFhsVYnYSNXv862nIkQ5O49JFOO1FlX5T
	fWz0pmX2mIXkPyaAfYplHroaqlxBEHw9EkryDwxY85vcw7WKQY//ldVZjK6Tcs2qMXIx9WxhbHl6Y
	x4kZYH9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lqt9Q-00CEqr-Kz; Wed, 09 Jun 2021 08:01:24 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lqt9I-00CEkD-3m
 for barebox@lists.infradead.org; Wed, 09 Jun 2021 08:01:19 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lqt9F-0007D4-0P; Wed, 09 Jun 2021 10:01:13 +0200
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20210608140545.30696-1-s.hauer@pengutronix.de>
 <20210608140545.30696-6-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <54894f02-6d26-1f31-1879-76df081f3b6d@pengutronix.de>
Date: Wed, 9 Jun 2021 10:01:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.2
MIME-Version: 1.0
In-Reply-To: <20210608140545.30696-6-s.hauer@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210609_010116_531536_783B70F8 
X-CRM114-Status: GOOD (  33.67  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 5/5] pinctrl: Rockchip: Add RK3568 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Sascha,

On 08.06.21 16:05, Sascha Hauer wrote:
> This adds support for the RK3568 SoC to the Rockchip pinctrl driver.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/pinctrl/pinctrl-rockchip.c | 354 ++++++++++++++++++++++++++++-
>  1 file changed, 347 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
> index 3bdae5c229..cee496a85a 100644
> --- a/drivers/pinctrl/pinctrl-rockchip.c
> +++ b/drivers/pinctrl/pinctrl-rockchip.c
> @@ -37,6 +37,7 @@ enum rockchip_pinctrl_type {
>  	RK2928,
>  	RK3066B,
>  	RK3188,
> +	RK3568,
>  };
>  
>  enum rockchip_pin_bank_type {
> @@ -44,6 +45,13 @@ enum rockchip_pin_bank_type {
>  	RK3188_BANK0,
>  };
>  
> +/**
> + * Generate a bitmask for setting a value (v) with a write mask bit in hiword
> + * register 31:16 area.
> + */
> +#define WRITE_MASK_VAL(h, l, v) \
> +	(GENMASK(((h) + 16), ((l) + 16)) | (((v) << (l)) & GENMASK((h), (l))))
> +
>  /*
>   * Encode variants of iomux registers into a type variable
>   */
> @@ -78,6 +86,15 @@ enum rockchip_pin_drv_type {
>  	DRV_TYPE_MAX
>  };
>  
> +/*
> + * enum type index corresponding to rockchip_pull_list arrays index.
> + */
> +enum rockchip_pin_pull_type {
> +	PULL_TYPE_IO_DEFAULT = 0,
> +	PULL_TYPE_IO_1V8_ONLY,
> +	PULL_TYPE_MAX
> +};
> +
>  /**
>   * struct rockchip_drv
>   * @drv_type: drive strength variant using rockchip_perpin_drv_type
> @@ -211,6 +228,110 @@ enum {
>  	RK_GPIO_EXT_PORT	= 0x50,
>  };
>  
> +/* GPIO registers */
> +enum {
> +	RK_GPIOV2_DR_L	= 0x00,
> +	RK_GPIOV2_DR_H	= 0x04,
> +	RK_GPIOV2_DDR_L	= 0x08,
> +	RK_GPIOV2_DDR_H	= 0x0c,
> +};
> +
> +static struct rockchip_pin_bank *gc_to_rockchip_pinctrl(struct gpio_chip *gc)
> +{
> +	struct bgpio_chip *bgc = to_bgpio_chip(gc);
> +
> +	return container_of(bgc, struct rockchip_pin_bank, bgpio_chip);
> +}
> +
> +static int rockchip_gpiov2_direction_input(struct gpio_chip *gc, unsigned int gpio)
> +{
> +	struct rockchip_pin_bank *bank = gc_to_rockchip_pinctrl(gc);
> +	u32 mask;
> +
> +	mask = 1 << (16 + (gpio % 16));
> +
> +	if (gpio < 16)
> +		writel(mask, bank->reg_base + RK_GPIOV2_DDR_L);
> +	else
> +		writel(mask, bank->reg_base + RK_GPIOV2_DDR_H);
> +
> +	return 0;
> +}
> +
> +static int rockchip_gpiov2_get_direction(struct gpio_chip *gc, unsigned int gpio)
> +{
> +	struct rockchip_pin_bank *bank = gc_to_rockchip_pinctrl(gc);
> +	u32 r;
> +
> +	if (gpio < 16)
> +		r = readl(bank->reg_base + RK_GPIOV2_DDR_L);
> +	else
> +		r = readl(bank->reg_base + RK_GPIOV2_DDR_H);
> +
> +	return r & BIT(gpio % 16) ? GPIOF_DIR_OUT : GPIOF_DIR_IN;
> +}
> +
> +static void rockchip_gpiov2_set_value(struct gpio_chip *gc, unsigned int gpio,
> +				      int val)
> +{
> +	struct rockchip_pin_bank *bank = gc_to_rockchip_pinctrl(gc);
> +	u32 mask, vval = 0;
> +
> +	mask = 1 << (16 + (gpio % 16));
> +	if (val)
> +		vval = 1 << (gpio % 16);
> +
> +	if (gpio < 16)
> +		writel(mask | vval, bank->reg_base + RK_GPIOV2_DR_L);
> +	else
> +		writel(mask | vval, bank->reg_base + RK_GPIOV2_DR_H);
> +}
> +
> +static int rockchip_gpiov2_direction_output(struct gpio_chip *gc,
> +					    unsigned int gpio, int val)
> +{
> +	struct rockchip_pin_bank *bank = gc_to_rockchip_pinctrl(gc);
> +	u32 mask, out, vval = 0;
> +
> +	mask = 1 << (16 + (gpio % 16));
> +	out = 1 << (gpio % 16);
> +	if (val)
> +		vval = 1 << (gpio % 16);
> +
> +	if (gpio < 16) {
> +		writel(mask | vval, bank->reg_base + RK_GPIOV2_DR_L);
> +		writel(mask | out, bank->reg_base + RK_GPIOV2_DDR_L);
> +	} else {
> +		writel(mask | vval, bank->reg_base + RK_GPIOV2_DR_H);
> +		writel(mask | out, bank->reg_base + RK_GPIOV2_DDR_H);
> +	}
> +
> +	return 0;
> +}
> +
> +static int rockchip_gpiov2_get_value(struct gpio_chip *gc, unsigned int gpio)
> +{
> +	struct rockchip_pin_bank *bank = gc_to_rockchip_pinctrl(gc);
> +	u32 mask, r;
> +
> +	mask = 1 << (gpio % 16);
> +
> +	if (gpio < 16)
> +		r = readl(bank->reg_base + RK_GPIOV2_DR_L);
> +	else
> +		r = readl(bank->reg_base + RK_GPIOV2_DR_L);
> +
> +	return r & mask ? 1 : 0;
> +}
> +
> +static struct gpio_ops rockchip_gpio_ops = {
> +	.direction_input = rockchip_gpiov2_direction_input,
> +	.direction_output = rockchip_gpiov2_direction_output,
> +	.get = rockchip_gpiov2_get_value,
> +	.set = rockchip_gpiov2_set_value,
> +	.get_direction = rockchip_gpiov2_get_direction,
> +};
> +
>  static int rockchip_gpiolib_register(struct device_d *dev,
>  				     struct rockchip_pinctrl *info)
>  {
> @@ -221,6 +342,8 @@ static int rockchip_gpiolib_register(struct device_d *dev,
>  	int i;
>  
>  	for (i = 0; i < ctrl->nr_banks; ++i, ++bank) {
> +		struct gpio_chip *gpio = &bank->bgpio_chip.gc;
> +
>  		if (!bank->valid) {
>  			dev_warn(dev, "bank %s is not valid\n", bank->name);
>  			continue;
> @@ -228,12 +351,24 @@ static int rockchip_gpiolib_register(struct device_d *dev,
>  
>  		reg_base = bank->reg_base;
>  
> -		ret = bgpio_init(&bank->bgpio_chip, dev, 4,
> -				 reg_base + RK_GPIO_EXT_PORT,
> -				 reg_base + RK_GPIO_SWPORT_DR, NULL,
> -				 reg_base + RK_GPIO_SWPORT_DDR, NULL, 0);
> -		if (ret)
> -			goto fail;
> +		if (ctrl->type == RK3568) {
> +			gpio->ngpio = 32;
> +			gpio->dev = dev;
> +			gpio->ops = &rockchip_gpio_ops;
> +			gpio->base = of_alias_get_id(bank->of_node, "gpio");
> +			if (gpio->base < 0)
> +				return -EINVAL;
> +			gpio->base *= 32;
> +		} else {
> +			ret = bgpio_init(&bank->bgpio_chip, dev, 4,
> +					 reg_base + RK_GPIO_EXT_PORT,
> +					 reg_base + RK_GPIO_SWPORT_DR, NULL,
> +					 reg_base + RK_GPIO_SWPORT_DDR, NULL, 0);
> +			if (ret)
> +				goto fail;
> +		}
> +
> +		bank->bgpio_chip.gc.dev = of_find_device_by_node(bank->of_node);
>  
>  		bank->bgpio_chip.gc.ngpio = bank->nr_pins;
>  		ret = gpiochip_add(&bank->bgpio_chip.gc);
> @@ -340,6 +475,63 @@ static void rk3188_calc_pull_reg_and_bit(struct rockchip_pin_bank *bank,
>  	}
>  }
>  
> +#define RK3568_PULL_PMU_OFFSET		0x20
> +#define RK3568_PULL_GRF_OFFSET		0x80
> +#define RK3568_PULL_BITS_PER_PIN	2
> +#define RK3568_PULL_PINS_PER_REG	8
> +#define RK3568_PULL_BANK_STRIDE		0x10
> +
> +static void rk3568_calc_pull_reg_and_bit(struct rockchip_pin_bank *bank,
> +					 int pin_num, void __iomem **reg,
> +					 u8 *bit)
> +{
> +	struct rockchip_pinctrl *info = bank->drvdata;
> +
> +	if (bank->bank_num == 0) {
> +		*reg = info->reg_pmu + RK3568_PULL_PMU_OFFSET;
> +		*reg += bank->bank_num * RK3568_PULL_BANK_STRIDE;
> +		*reg += ((pin_num / RK3568_PULL_PINS_PER_REG) * 4);
> +
> +		*bit = pin_num % RK3568_PULL_PINS_PER_REG;
> +		*bit *= RK3568_PULL_BITS_PER_PIN;
> +	} else {
> +		*reg = info->reg_base + RK3568_PULL_GRF_OFFSET;
> +		*reg += (bank->bank_num - 1) * RK3568_PULL_BANK_STRIDE;
> +		*reg += ((pin_num / RK3568_PULL_PINS_PER_REG) * 4);
> +
> +		*bit = (pin_num % RK3568_PULL_PINS_PER_REG);
> +		*bit *= RK3568_PULL_BITS_PER_PIN;
> +	}
> +}
> +
> +#define RK3568_DRV_PMU_OFFSET		0x70
> +#define RK3568_DRV_GRF_OFFSET		0x200
> +#define RK3568_DRV_BITS_PER_PIN		8
> +#define RK3568_DRV_PINS_PER_REG		2
> +#define RK3568_DRV_BANK_STRIDE		0x40
> +
> +static void rk3568_calc_drv_reg_and_bit(struct rockchip_pin_bank *bank,
> +					int pin_num, void __iomem **reg, u8 *bit)
> +{
> +	struct rockchip_pinctrl *info = bank->drvdata;
> +
> +	/* The first 32 pins of the first bank are located in PMU */
> +	if (bank->bank_num == 0) {
> +		*reg = info->reg_pmu + RK3568_DRV_PMU_OFFSET;
> +		*reg += ((pin_num / RK3568_DRV_PINS_PER_REG) * 4);
> +
> +		*bit = pin_num % RK3568_DRV_PINS_PER_REG;
> +		*bit *= RK3568_DRV_BITS_PER_PIN;
> +	} else {
> +		*reg = info->reg_base + RK3568_DRV_GRF_OFFSET;
> +		*reg += (bank->bank_num - 1) * RK3568_DRV_BANK_STRIDE;
> +		*reg += ((pin_num / RK3568_DRV_PINS_PER_REG) * 4);
> +
> +		*bit = (pin_num % RK3568_DRV_PINS_PER_REG);
> +		*bit *= RK3568_DRV_BITS_PER_PIN;
> +	}
> +}
> +
>  static struct rockchip_mux_route_data rk3188_mux_route_data[] = {
>  	RK_MUXROUTE_SAME(0, RK_PD0, 1, 0xa0, BIT(16 + 11)), /* non-iomuxed emmc/flash pins on flash-dqs */
>  	RK_MUXROUTE_SAME(0, RK_PD0, 2, 0xa0, BIT(16 + 11) | BIT(11)), /* non-iomuxed emmc/flash pins on emmc-clk */
> @@ -458,6 +650,7 @@ static int rockchip_pinctrl_set_pull(struct rockchip_pin_bank *bank,
>  		writel(data, reg);
>  		break;
>  	case RK3188:
> +	case RK3568:
>  		data = ((1 << RK3188_PULL_BITS_PER_PIN) - 1) << (bit + 16);
>  		data |= pull << bit;

Linux does this for pull (== ret):

 /*
  * In the TRM, pull-up being 1 for everything except the GPIO0_D0-D6,
  * where that pull up value becomes 3.
  */
 if (ctrl->type == RK3568 && bank->bank_num == 0 && pin_num >= 27 && pin_num <= 30) {
         if (ret == 1)
                 ret = 3;
 }

Should we do this too?

>  		writel(data, reg);
> @@ -499,6 +692,11 @@ static int rockchip_set_drive_perpin(struct rockchip_pin_bank *bank,
>  		bank->bank_num, pin_num, strength);
>  
>  	ctrl->drv_calc_reg(bank, pin_num, &reg, &bit);
> +	if (ctrl->type == RK3568) {
> +		rmask_bits = RK3568_DRV_BITS_PER_PIN;
> +		ret = (1 << (strength + 1)) - 1;
> +		goto config;
> +	}
>  
>  	ret = -EINVAL;
>  	for (i = 0; i < ARRAY_SIZE(rockchip_perpin_drv_list[drv_type]); i++) {
> @@ -574,6 +772,7 @@ static int rockchip_set_drive_perpin(struct rockchip_pin_bank *bank,
>  		return -EINVAL;
>  	}
>  
> +config:
>  	/* enable the write to the equivalent lower bits */
>  	data = ((1 << rmask_bits) - 1) << (bit + 16);
>  	rmask = data | (data >> 16);
> @@ -800,6 +999,8 @@ static int rockchip_pinctrl_probe(struct device_d *dev)
>  	struct rockchip_pin_ctrl *ctrl;
>  	int ret;
>  
> +	of_platform_populate(dev->device_node, NULL, NULL);
> +
>  	info = xzalloc(sizeof(struct rockchip_pinctrl));
>  
>  	ctrl = rockchip_pinctrl_get_soc_data(info, dev);
> @@ -903,6 +1104,140 @@ static struct rockchip_pin_ctrl rk3188_pin_ctrl = {
>  	.pull_calc_reg	= rk3188_calc_pull_reg_and_bit,
>  };
>  
> +static struct rockchip_mux_route_data rk3568_mux_route_data[] = {
> +	RK_MUXROUTE_PMU(0, RK_PB7, 1, 0x0110, WRITE_MASK_VAL(1, 0, 0)), /* PWM0 IO mux M0 */
> +	RK_MUXROUTE_PMU(0, RK_PC7, 2, 0x0110, WRITE_MASK_VAL(1, 0, 1)), /* PWM0 IO mux M1 */
> +	RK_MUXROUTE_PMU(0, RK_PC0, 1, 0x0110, WRITE_MASK_VAL(3, 2, 0)), /* PWM1 IO mux M0 */
> +	RK_MUXROUTE_PMU(0, RK_PB5, 4, 0x0110, WRITE_MASK_VAL(3, 2, 1)), /* PWM1 IO mux M1 */
> +	RK_MUXROUTE_PMU(0, RK_PC1, 1, 0x0110, WRITE_MASK_VAL(5, 4, 0)), /* PWM2 IO mux M0 */
> +	RK_MUXROUTE_PMU(0, RK_PB6, 4, 0x0110, WRITE_MASK_VAL(5, 4, 1)), /* PWM2 IO mux M1 */
> +	RK_MUXROUTE_PMU(0, RK_PB3, 2, 0x0300, WRITE_MASK_VAL(0, 0, 0)), /* CAN0 IO mux M0 */
> +	RK_MUXROUTE_GRF(2, RK_PA1, 4, 0x0300, WRITE_MASK_VAL(0, 0, 1)), /* CAN0 IO mux M1 */
> +	RK_MUXROUTE_GRF(1, RK_PA1, 3, 0x0300, WRITE_MASK_VAL(2, 2, 0)), /* CAN1 IO mux M0 */
> +	RK_MUXROUTE_GRF(4, RK_PC3, 3, 0x0300, WRITE_MASK_VAL(2, 2, 1)), /* CAN1 IO mux M1 */
> +	RK_MUXROUTE_GRF(4, RK_PB5, 3, 0x0300, WRITE_MASK_VAL(4, 4, 0)), /* CAN2 IO mux M0 */
> +	RK_MUXROUTE_GRF(2, RK_PB2, 4, 0x0300, WRITE_MASK_VAL(4, 4, 1)), /* CAN2 IO mux M1 */
> +	RK_MUXROUTE_GRF(4, RK_PC4, 1, 0x0300, WRITE_MASK_VAL(6, 6, 0)), /* HPDIN IO mux M0 */
> +	RK_MUXROUTE_PMU(0, RK_PC2, 2, 0x0300, WRITE_MASK_VAL(6, 6, 1)), /* HPDIN IO mux M1 */
> +	RK_MUXROUTE_GRF(3, RK_PB1, 3, 0x0300, WRITE_MASK_VAL(8, 8, 0)), /* GMAC1 IO mux M0 */
> +	RK_MUXROUTE_GRF(4, RK_PA7, 3, 0x0300, WRITE_MASK_VAL(8, 8, 1)), /* GMAC1 IO mux M1 */
> +	RK_MUXROUTE_GRF(4, RK_PD1, 1, 0x0300, WRITE_MASK_VAL(10, 10, 0)), /* HDMITX IO mux M0 */
> +	RK_MUXROUTE_PMU(0, RK_PC7, 1, 0x0300, WRITE_MASK_VAL(10, 10, 1)), /* HDMITX IO mux M1 */
> +	RK_MUXROUTE_PMU(0, RK_PB6, 1, 0x0300, WRITE_MASK_VAL(14, 14, 0)), /* I2C2 IO mux M0 */
> +	RK_MUXROUTE_GRF(4, RK_PB4, 1, 0x0300, WRITE_MASK_VAL(14, 14, 1)), /* I2C2 IO mux M1 */
> +	RK_MUXROUTE_GRF(1, RK_PA0, 1, 0x0304, WRITE_MASK_VAL(0, 0, 0)), /* I2C3 IO mux M0 */
> +	RK_MUXROUTE_GRF(3, RK_PB6, 4, 0x0304, WRITE_MASK_VAL(0, 0, 1)), /* I2C3 IO mux M1 */
> +	RK_MUXROUTE_GRF(4, RK_PB2, 1, 0x0304, WRITE_MASK_VAL(2, 2, 0)), /* I2C4 IO mux M0 */
> +	RK_MUXROUTE_GRF(2, RK_PB1, 2, 0x0304, WRITE_MASK_VAL(2, 2, 1)), /* I2C4 IO mux M1 */
> +	RK_MUXROUTE_GRF(3, RK_PB4, 4, 0x0304, WRITE_MASK_VAL(4, 4, 0)), /* I2C5 IO mux M0 */
> +	RK_MUXROUTE_GRF(4, RK_PD0, 2, 0x0304, WRITE_MASK_VAL(4, 4, 1)), /* I2C5 IO mux M1 */
> +	RK_MUXROUTE_GRF(3, RK_PB1, 5, 0x0304, WRITE_MASK_VAL(14, 14, 0)), /* PWM8 IO mux M0 */
> +	RK_MUXROUTE_GRF(1, RK_PD5, 4, 0x0304, WRITE_MASK_VAL(14, 14, 1)), /* PWM8 IO mux M1 */
> +	RK_MUXROUTE_GRF(3, RK_PB2, 5, 0x0308, WRITE_MASK_VAL(0, 0, 0)), /* PWM9 IO mux M0 */
> +	RK_MUXROUTE_GRF(1, RK_PD6, 4, 0x0308, WRITE_MASK_VAL(0, 0, 1)), /* PWM9 IO mux M1 */
> +	RK_MUXROUTE_GRF(3, RK_PB5, 5, 0x0308, WRITE_MASK_VAL(2, 2, 0)), /* PWM10 IO mux M0 */
> +	RK_MUXROUTE_GRF(2, RK_PA1, 2, 0x0308, WRITE_MASK_VAL(2, 2, 1)), /* PWM10 IO mux M1 */
> +	RK_MUXROUTE_GRF(3, RK_PB6, 5, 0x0308, WRITE_MASK_VAL(4, 4, 0)), /* PWM11 IO mux M0 */
> +	RK_MUXROUTE_GRF(4, RK_PC0, 3, 0x0308, WRITE_MASK_VAL(4, 4, 1)), /* PWM11 IO mux M1 */
> +	RK_MUXROUTE_GRF(3, RK_PB7, 2, 0x0308, WRITE_MASK_VAL(6, 6, 0)), /* PWM12 IO mux M0 */
> +	RK_MUXROUTE_GRF(4, RK_PC5, 1, 0x0308, WRITE_MASK_VAL(6, 6, 1)), /* PWM12 IO mux M1 */
> +	RK_MUXROUTE_GRF(3, RK_PC0, 2, 0x0308, WRITE_MASK_VAL(8, 8, 0)), /* PWM13 IO mux M0 */
> +	RK_MUXROUTE_GRF(4, RK_PC6, 1, 0x0308, WRITE_MASK_VAL(8, 8, 1)), /* PWM13 IO mux M1 */
> +	RK_MUXROUTE_GRF(3, RK_PC4, 1, 0x0308, WRITE_MASK_VAL(10, 10, 0)), /* PWM14 IO mux M0 */
> +	RK_MUXROUTE_GRF(4, RK_PC2, 1, 0x0308, WRITE_MASK_VAL(10, 10, 1)), /* PWM14 IO mux M1 */
> +	RK_MUXROUTE_GRF(3, RK_PC5, 1, 0x0308, WRITE_MASK_VAL(12, 12, 0)), /* PWM15 IO mux M0 */
> +	RK_MUXROUTE_GRF(4, RK_PC3, 1, 0x0308, WRITE_MASK_VAL(12, 12, 1)), /* PWM15 IO mux M1 */
> +	RK_MUXROUTE_GRF(3, RK_PD2, 3, 0x0308, WRITE_MASK_VAL(14, 14, 0)), /* SDMMC2 IO mux M0 */
> +	RK_MUXROUTE_GRF(3, RK_PA5, 5, 0x0308, WRITE_MASK_VAL(14, 14, 1)), /* SDMMC2 IO mux M1 */
> +	RK_MUXROUTE_PMU(0, RK_PB5, 2, 0x030c, WRITE_MASK_VAL(0, 0, 0)), /* SPI0 IO mux M0 */
> +	RK_MUXROUTE_GRF(2, RK_PD3, 3, 0x030c, WRITE_MASK_VAL(0, 0, 1)), /* SPI0 IO mux M1 */
> +	RK_MUXROUTE_GRF(2, RK_PB5, 3, 0x030c, WRITE_MASK_VAL(2, 2, 0)), /* SPI1 IO mux M0 */
> +	RK_MUXROUTE_GRF(3, RK_PC3, 3, 0x030c, WRITE_MASK_VAL(2, 2, 1)), /* SPI1 IO mux M1 */
> +	RK_MUXROUTE_GRF(2, RK_PC1, 4, 0x030c, WRITE_MASK_VAL(4, 4, 0)), /* SPI2 IO mux M0 */
> +	RK_MUXROUTE_GRF(3, RK_PA0, 3, 0x030c, WRITE_MASK_VAL(4, 4, 1)), /* SPI2 IO mux M1 */
> +	RK_MUXROUTE_GRF(4, RK_PB3, 4, 0x030c, WRITE_MASK_VAL(6, 6, 0)), /* SPI3 IO mux M0 */
> +	RK_MUXROUTE_GRF(4, RK_PC2, 2, 0x030c, WRITE_MASK_VAL(6, 6, 1)), /* SPI3 IO mux M1 */
> +	RK_MUXROUTE_GRF(2, RK_PB4, 2, 0x030c, WRITE_MASK_VAL(8, 8, 0)), /* UART1 IO mux M0 */
> +	RK_MUXROUTE_PMU(0, RK_PD1, 1, 0x030c, WRITE_MASK_VAL(8, 8, 1)), /* UART1 IO mux M1 */
> +	RK_MUXROUTE_PMU(0, RK_PD1, 1, 0x030c, WRITE_MASK_VAL(10, 10, 0)), /* UART2 IO mux M0 */
> +	RK_MUXROUTE_GRF(1, RK_PD5, 2, 0x030c, WRITE_MASK_VAL(10, 10, 1)), /* UART2 IO mux M1 */
> +	RK_MUXROUTE_GRF(1, RK_PA1, 2, 0x030c, WRITE_MASK_VAL(12, 12, 0)), /* UART3 IO mux M0 */
> +	RK_MUXROUTE_GRF(3, RK_PB7, 4, 0x030c, WRITE_MASK_VAL(12, 12, 1)), /* UART3 IO mux M1 */
> +	RK_MUXROUTE_GRF(1, RK_PA6, 2, 0x030c, WRITE_MASK_VAL(14, 14, 0)), /* UART4 IO mux M0 */
> +	RK_MUXROUTE_GRF(3, RK_PB2, 4, 0x030c, WRITE_MASK_VAL(14, 14, 1)), /* UART4 IO mux M1 */
> +	RK_MUXROUTE_GRF(2, RK_PA2, 3, 0x0310, WRITE_MASK_VAL(0, 0, 0)), /* UART5 IO mux M0 */
> +	RK_MUXROUTE_GRF(3, RK_PC2, 4, 0x0310, WRITE_MASK_VAL(0, 0, 1)), /* UART5 IO mux M1 */
> +	RK_MUXROUTE_GRF(2, RK_PA4, 3, 0x0310, WRITE_MASK_VAL(2, 2, 0)), /* UART6 IO mux M0 */
> +	RK_MUXROUTE_GRF(1, RK_PD5, 3, 0x0310, WRITE_MASK_VAL(2, 2, 1)), /* UART6 IO mux M1 */
> +	RK_MUXROUTE_GRF(2, RK_PA6, 3, 0x0310, WRITE_MASK_VAL(5, 4, 0)), /* UART7 IO mux M0 */
> +	RK_MUXROUTE_GRF(3, RK_PC4, 4, 0x0310, WRITE_MASK_VAL(5, 4, 1)), /* UART7 IO mux M1 */
> +	RK_MUXROUTE_GRF(4, RK_PA2, 4, 0x0310, WRITE_MASK_VAL(5, 4, 2)), /* UART7 IO mux M2 */
> +	RK_MUXROUTE_GRF(2, RK_PC5, 3, 0x0310, WRITE_MASK_VAL(6, 6, 0)), /* UART8 IO mux M0 */
> +	RK_MUXROUTE_GRF(2, RK_PD7, 4, 0x0310, WRITE_MASK_VAL(6, 6, 1)), /* UART8 IO mux M1 */
> +	RK_MUXROUTE_GRF(2, RK_PB0, 3, 0x0310, WRITE_MASK_VAL(9, 8, 0)), /* UART9 IO mux M0 */
> +	RK_MUXROUTE_GRF(4, RK_PC5, 4, 0x0310, WRITE_MASK_VAL(9, 8, 1)), /* UART9 IO mux M1 */
> +	RK_MUXROUTE_GRF(4, RK_PA4, 4, 0x0310, WRITE_MASK_VAL(9, 8, 2)), /* UART9 IO mux M2 */
> +	RK_MUXROUTE_GRF(1, RK_PA2, 1, 0x0310, WRITE_MASK_VAL(11, 10, 0)), /* I2S1 IO mux M0 */
> +	RK_MUXROUTE_GRF(3, RK_PC6, 4, 0x0310, WRITE_MASK_VAL(11, 10, 1)), /* I2S1 IO mux M1 */
> +	RK_MUXROUTE_GRF(2, RK_PD0, 5, 0x0310, WRITE_MASK_VAL(11, 10, 2)), /* I2S1 IO mux M2 */
> +	RK_MUXROUTE_GRF(2, RK_PC1, 1, 0x0310, WRITE_MASK_VAL(12, 12, 0)), /* I2S2 IO mux M0 */
> +	RK_MUXROUTE_GRF(4, RK_PB6, 5, 0x0310, WRITE_MASK_VAL(12, 12, 1)), /* I2S2 IO mux M1 */
> +	RK_MUXROUTE_GRF(3, RK_PA2, 4, 0x0310, WRITE_MASK_VAL(14, 14, 0)), /* I2S3 IO mux M0 */
> +	RK_MUXROUTE_GRF(4, RK_PC2, 5, 0x0310, WRITE_MASK_VAL(14, 14, 1)), /* I2S3 IO mux M1 */
> +	RK_MUXROUTE_GRF(1, RK_PA4, 3, 0x0314, WRITE_MASK_VAL(1, 0, 0)), /* PDM IO mux M0 */
> +	RK_MUXROUTE_GRF(1, RK_PA6, 3, 0x0314, WRITE_MASK_VAL(1, 0, 0)), /* PDM IO mux M0 */
> +	RK_MUXROUTE_GRF(3, RK_PD6, 5, 0x0314, WRITE_MASK_VAL(1, 0, 1)), /* PDM IO mux M1 */
> +	RK_MUXROUTE_GRF(4, RK_PA0, 4, 0x0314, WRITE_MASK_VAL(1, 0, 1)), /* PDM IO mux M1 */
> +	RK_MUXROUTE_GRF(3, RK_PC4, 5, 0x0314, WRITE_MASK_VAL(1, 0, 2)), /* PDM IO mux M2 */
> +	RK_MUXROUTE_PMU(0, RK_PA5, 3, 0x0314, WRITE_MASK_VAL(3, 2, 0)), /* PCIE20 IO mux M0 */
> +	RK_MUXROUTE_GRF(2, RK_PD0, 4, 0x0314, WRITE_MASK_VAL(3, 2, 1)), /* PCIE20 IO mux M1 */
> +	RK_MUXROUTE_GRF(1, RK_PB0, 4, 0x0314, WRITE_MASK_VAL(3, 2, 2)), /* PCIE20 IO mux M2 */
> +	RK_MUXROUTE_PMU(0, RK_PA4, 3, 0x0314, WRITE_MASK_VAL(5, 4, 0)), /* PCIE30X1 IO mux M0 */
> +	RK_MUXROUTE_GRF(2, RK_PD2, 4, 0x0314, WRITE_MASK_VAL(5, 4, 1)), /* PCIE30X1 IO mux M1 */
> +	RK_MUXROUTE_GRF(1, RK_PA5, 4, 0x0314, WRITE_MASK_VAL(5, 4, 2)), /* PCIE30X1 IO mux M2 */
> +	RK_MUXROUTE_PMU(0, RK_PA6, 2, 0x0314, WRITE_MASK_VAL(7, 6, 0)), /* PCIE30X2 IO mux M0 */
> +	RK_MUXROUTE_GRF(2, RK_PD4, 4, 0x0314, WRITE_MASK_VAL(7, 6, 1)), /* PCIE30X2 IO mux M1 */
> +	RK_MUXROUTE_GRF(4, RK_PC2, 4, 0x0314, WRITE_MASK_VAL(7, 6, 2)), /* PCIE30X2 IO mux M2 */
> +};
> +
> +static struct rockchip_pin_bank rk3568_pin_banks[] = {
> +	PIN_BANK_IOMUX_FLAGS(0, 32, "gpio0", IOMUX_SOURCE_PMU | IOMUX_WIDTH_4BIT,
> +					     IOMUX_SOURCE_PMU | IOMUX_WIDTH_4BIT,
> +					     IOMUX_SOURCE_PMU | IOMUX_WIDTH_4BIT,
> +					     IOMUX_SOURCE_PMU | IOMUX_WIDTH_4BIT),
> +	PIN_BANK_IOMUX_FLAGS(1, 32, "gpio1", IOMUX_WIDTH_4BIT,
> +					     IOMUX_WIDTH_4BIT,
> +					     IOMUX_WIDTH_4BIT,
> +					     IOMUX_WIDTH_4BIT),
> +	PIN_BANK_IOMUX_FLAGS(2, 32, "gpio2", IOMUX_WIDTH_4BIT,
> +					     IOMUX_WIDTH_4BIT,
> +					     IOMUX_WIDTH_4BIT,
> +					     IOMUX_WIDTH_4BIT),
> +	PIN_BANK_IOMUX_FLAGS(3, 32, "gpio3", IOMUX_WIDTH_4BIT,
> +					     IOMUX_WIDTH_4BIT,
> +					     IOMUX_WIDTH_4BIT,
> +					     IOMUX_WIDTH_4BIT),
> +	PIN_BANK_IOMUX_FLAGS(4, 32, "gpio4", IOMUX_WIDTH_4BIT,
> +					     IOMUX_WIDTH_4BIT,
> +					     IOMUX_WIDTH_4BIT,
> +					     IOMUX_WIDTH_4BIT),
> +};
> +
> +static struct rockchip_pin_ctrl rk3568_pin_ctrl = {
> +	.pin_banks		= rk3568_pin_banks,
> +	.nr_banks		= ARRAY_SIZE(rk3568_pin_banks),
> +	.label			= "RK3568-GPIO",
> +	.type			= RK3568,
> +	.grf_mux_offset		= 0x0,
> +	.pmu_mux_offset		= 0x0,
> +	.grf_drv_offset		= 0x0200,
> +	.pmu_drv_offset		= 0x0070,
> +	.iomux_routes		= rk3568_mux_route_data,
> +	.niomux_routes		= ARRAY_SIZE(rk3568_mux_route_data),
> +	.pull_calc_reg		= rk3568_calc_pull_reg_and_bit,
> +	.drv_calc_reg		= rk3568_calc_drv_reg_and_bit,
> +};
> +
>  static struct of_device_id rockchip_pinctrl_dt_match[] = {
>  	{
>  		.compatible = "rockchip,rk2928-pinctrl",
> @@ -919,7 +1254,12 @@ static struct of_device_id rockchip_pinctrl_dt_match[] = {
>  	{
>  		.compatible = "rockchip,rk3188-pinctrl",
>  		.data = &rk3188_pin_ctrl,
> -	}, {
> +	},
> +	{
> +		.compatible = "rockchip,rk3568-pinctrl",
> +		.data = &rk3568_pin_ctrl
> +	},
> +	{
>  		/* sentinel */
>  	}
>  };
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


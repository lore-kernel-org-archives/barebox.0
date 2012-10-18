Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.x-arc.de ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TOooK-000107-Ui
 for barebox@lists.infradead.org; Thu, 18 Oct 2012 12:02:50 +0000
Message-ID: <507FEFE7.4000205@phytec.de>
Date: Thu, 18 Oct 2012 14:02:47 +0200
From: Teresa Gamez <t.gamez@phytec.de>
MIME-Version: 1.0
References: <[PATCH 6/6] OMAP4: clean voltage switch>
 <1350337369-1027-1-git-send-email-vicencb@gmail.com>
In-Reply-To: <1350337369-1027-1-git-send-email-vicencb@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 6/6] OMAP4: clean voltage switch
To: Vicente Bergas <vicencb@gmail.com>
Cc: barebox@lists.infradead.org

Am 15.10.2012 23:42, schrieb Vicente Bergas:
>   
> diff --git a/arch/arm/mach-omap/include/mach/omap4-silicon.h b/arch/arm/mach-omap/include/mach/omap4-silicon.h
> index 71ffe39..137cc88 100644
> --- a/arch/arm/mach-omap/include/mach/omap4-silicon.h
> +++ b/arch/arm/mach-omap/include/mach/omap4-silicon.h
> @@ -196,6 +196,6 @@ struct dpll_param;
>   void omap4_ddr_init(const struct ddr_regs *, const struct dpll_param *);
>   void omap4_power_i2c_send(u32);
>   unsigned int omap4_revision(void);
> -noinline int omap4_scale_vcores(unsigned vsel0_pin);
> +noinline int omap4_scale_vcores(int vsel0_pin);
>   
>   #endif
> diff --git a/arch/arm/mach-omap/omap4_clock.c b/arch/arm/mach-omap/omap4_clock.c
> index 1481f16..f7927d2 100644
> --- a/arch/arm/mach-omap/omap4_clock.c
> +++ b/arch/arm/mach-omap/omap4_clock.c
> @@ -394,9 +394,38 @@ void omap4_enable_all_clocks(void)
>   	sr32(CM_L3INIT_USBPHY_CLKCTRL, 0, 32, 0x301);
>   }
>   
> -void omap4_do_scale_tps62361(u32 reg, u32 volt_mv)
> +#define GPIO_MASK		0x1f
> +#define GPIO_OE			0x34
> +#define GPIO_CLEARDATAOUT	0x90
> +#define GPIO_SETDATAOUT		0x94
> +
> +static void __iomem *omap4_get_gpio_base(unsigned gpio)
> +{
> +	void __iomem *base;
> +
> +	if (gpio < 32)
> +		base = (void *)0x4a310100;
> +	else
> +		base = (void *)(0x48053100 + ((gpio & ~GPIO_MASK) << 8));
> +
> +	return base;
> +}
> +
> +void omap4_do_scale_tps62361(int vsel0_pin, u32 reg, u32 volt_mv)
>   {
>   	u32 temp, step;
> +	void __iomem *base;
> +	u32 val;
> +
> +	/* Pull the GPIO low to select SET0 register, while we program SET1 */
> +	if (vsel0_pin >= 0) {
> +		base = omap4_get_gpio_base(vsel0_pin);
> +		val = 1 << (vsel0_pin & GPIO_MASK);
> +		writel(val, base + GPIO_CLEARDATAOUT);
> +		val =  readl(base + GPIO_OE);
> +		val &= (1 << (vsel0_pin & GPIO_MASK));
Please note that the bit needs to be set to zero here to
set it to output. So it was wrong in my patch.
I have fixed it now. Please take a look in the
ARM OMAP: Enable gpio output patch.

Teresa


> +		writel(val, base + GPIO_OE);
> +	}
>   
>   	step = volt_mv - TPS62361_BASE_VOLT_MV;
>   	step /= 10;
> @@ -411,4 +440,10 @@ void omap4_do_scale_tps62361(u32 reg, u32 volt_mv)
>   	if (!wait_on_value(OMAP44XX_PRM_VC_VAL_BYPASS_VALID_BIT, 0,
>   				OMAP44XX_PRM_VC_VAL_BYPASS, LDELAY))
>   		puts("Scaling voltage failed for vdd_mpu from TPS\n");
> +
> +	/* Pull the GPIO high to select SET1 register */
> +	if (vsel0_pin >= 0) {
> +		val = 1 << (vsel0_pin & GPIO_MASK);
> +		writel(val, base + GPIO_SETDATAOUT);
> +	}
>   }
> diff --git a/arch/arm/mach-omap/omap4_generic.c b/arch/arm/mach-omap/omap4_generic.c
> index 765fcb5..8e692ba 100644
> --- a/arch/arm/mach-omap/omap4_generic.c
> +++ b/arch/arm/mach-omap/omap4_generic.c
> @@ -495,27 +495,11 @@ enum omap_boot_src omap4_bootsrc(void)
>   	return OMAP_BOOTSRC_UNKNOWN;
>   }
>   
> -#define GPIO_MASK 0x1f
> -
> -static void __iomem *omap4_get_gpio_base(unsigned gpio)
> -{
> -	void __iomem *base;
> -
> -	if (gpio < 32)
> -		base = (void *)0x4a310000;
> -	else
> -		base = (void *)(0x48053000 + ((gpio & ~GPIO_MASK) << 8));
> -
> -	return base;
> -}
> -
>   #define I2C_SLAVE 0x12
>   
> -noinline int omap4_scale_vcores(unsigned vsel0_pin)
> +noinline int omap4_scale_vcores(int vsel0_pin)
>   {
> -	void __iomem *base;
>   	unsigned int rev = omap4_revision();
> -	u32 val = 0;
>   
>   	/* For VC bypass only VCOREx_CGF_FORCE  is necessary and
>   	 * VCOREx_CFG_VOLTAGE  changes can be discarded
> @@ -523,33 +507,6 @@ noinline int omap4_scale_vcores(unsigned vsel0_pin)
>   	writel(0, OMAP44XX_PRM_VC_CFG_I2C_MODE);
>   	writel(0x6026, OMAP44XX_PRM_VC_CFG_I2C_CLK);
>   
> -	/* TPS - supplies vdd_mpu on 4460 */
> -	if (rev >= OMAP4460_ES1_0) {
> -		/*
> -		 * Setup SET1 and SET0 with right values so that kernel
> -		 * can use either of them based on its needs.
> -		 */
> -		omap4_do_scale_tps62361(TPS62361_REG_ADDR_SET0, 1430);
> -		omap4_do_scale_tps62361(TPS62361_REG_ADDR_SET1, 1430);
> -
> -		/*
> -		 * Select SET1 in TPS62361:
> -		 * VSEL1 is grounded on board. So the following selects
> -		 * VSEL1 = 0 and VSEL0 = 1
> -		 */
> -		base = omap4_get_gpio_base(vsel0_pin);
> -
> -		val = 1 << (vsel0_pin & GPIO_MASK);
> -		writel(val, base + 0x190);
> -
> -		val =  readl(base + 0x134);
> -		val &= (1 << (vsel0_pin & GPIO_MASK));
> -		writel(val, base + 0x134);
> -
> -		val = 1 << (vsel0_pin & GPIO_MASK);
> -		writel(val, base + 0x194);
> -	}
> -
>   	/* set VCORE1 force VSEL */
>   	/*
>   	 * 4430 : supplies vdd_mpu
> @@ -568,8 +525,13 @@ noinline int omap4_scale_vcores(unsigned vsel0_pin)
>   		/* 0x55: i2c addr, 28: ~ 1200 mvolts*/
>   		omap4_power_i2c_send((0x2855 << 8) | I2C_SLAVE);
>   
> +	/* TPS - supplies vdd_mpu on 4460 */
> +	if (rev >= OMAP4460_ES1_0)
> +		omap4_do_scale_tps62361(vsel0_pin,
> +			TPS62361_REG_ADDR_SET1, 1203);
> +
>   	/* FIXME: set VCORE2 force VSEL, Check the reset value */
> -	omap4_power_i2c_send((0x295B << 8) | I2C_SLAVE);
> +	omap4_power_i2c_send((0x285B << 8) | I2C_SLAVE);
>   
>   	/* set VCORE3 force VSEL */
>   	switch (rev) {


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

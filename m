Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XOOY4-0005IA-R0
 for barebox@lists.infradead.org; Mon, 01 Sep 2014 10:09:21 +0000
Date: Mon, 1 Sep 2014 12:08:47 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140901100847.GR5352@pengutronix.de>
References: <1407269357-20471-1-git-send-email-poggi.raph@gmail.com>
 <1407269357-20471-2-git-send-email-poggi.raph@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1407269357-20471-2-git-send-email-poggi.raph@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2 1/2] pinctrl: at91: add pinctrl driver
To: =?iso-8859-15?Q?Rapha=EBl?= Poggi <poggi.raph@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Aug 05, 2014 at 01:09:16PM -0700, Rapha=EBl Poggi wrote:
> diff --git a/drivers/pinctrl/pinctrl-at91.h b/drivers/pinctrl/pinctrl-at9=
1.h
> new file mode 100644
> index 0000000..e719fb8
> --- /dev/null
> +++ b/drivers/pinctrl/pinctrl-at91.h
> @@ -0,0 +1,148 @@
> +/*
> + * Copyright (C) 2011-2012 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jc=
rosoft.com>
> + *
> + * Under GPLv2 only
> + */
> +
> +#ifndef __AT91_GPIO_H__
> +#define __AT91_GPIO_H__
> +
> +#ifndef __gpio_init
> +#define __gpio_init
> +#endif
> +
> +#define MAX_NB_GPIO_PER_BANK	32
> +
> +static inline unsigned pin_to_bank(unsigned pin)
> +{
> +	return pin / MAX_NB_GPIO_PER_BANK;
> +}
> +
> +static inline unsigned pin_to_bank_offset(unsigned pin)
> +{
> +	return pin % MAX_NB_GPIO_PER_BANK;
> +}
> +
> +static inline unsigned pin_to_mask(unsigned pin)
> +{
> +	return 1 << pin_to_bank_offset(pin);
> +}
> +
> +static inline void at91_mux_disable_interrupt(void __iomem *pio, unsigne=
d mask)
> +{
> +	__raw_writel(mask, pio + PIO_IDR);
> +}
> +
> +static inline void at91_mux_set_pullup(void __iomem *pio, unsigned mask,=
 bool on)
> +{
> +	__raw_writel(mask, pio + (on ? PIO_PUER : PIO_PUDR));
> +}
> +
> +static inline void at91_mux_set_multidrive(void __iomem *pio, unsigned m=
ask, bool on)
> +{
> +	__raw_writel(mask, pio + (on ? PIO_MDER : PIO_MDDR));
> +}
> +
> +static inline void at91_mux_set_A_periph(void __iomem *pio, unsigned mas=
k)
> +{
> +	__raw_writel(mask, pio + PIO_ASR);
> +}
> +
> +static inline void at91_mux_set_B_periph(void __iomem *pio, unsigned mas=
k)
> +{
> +	__raw_writel(mask, pio + PIO_BSR);
> +}
> +
> +static inline void at91_mux_pio3_set_A_periph(void __iomem *pio, unsigne=
d mask)
> +{
> +
> +	__raw_writel(__raw_readl(pio + PIO_ABCDSR1) & ~mask,
> +						pio + PIO_ABCDSR1);
> +	__raw_writel(__raw_readl(pio + PIO_ABCDSR2) & ~mask,
> +						pio + PIO_ABCDSR2);
> +}
> +
> +static inline void at91_mux_pio3_set_B_periph(void __iomem *pio, unsigne=
d mask)
> +{
> +	__raw_writel(__raw_readl(pio + PIO_ABCDSR1) | mask,
> +						pio + PIO_ABCDSR1);
> +	__raw_writel(__raw_readl(pio + PIO_ABCDSR2) & ~mask,
> +						pio + PIO_ABCDSR2);
> +}
> +
> +static inline void at91_mux_pio3_set_C_periph(void __iomem *pio, unsigne=
d mask)
> +{
> +	__raw_writel(__raw_readl(pio + PIO_ABCDSR1) & ~mask, pio + PIO_ABCDSR1);
> +	__raw_writel(__raw_readl(pio + PIO_ABCDSR2) | mask, pio + PIO_ABCDSR2);
> +}
> +
> +static inline void at91_mux_pio3_set_D_periph(void __iomem *pio, unsigne=
d mask)
> +{
> +	__raw_writel(__raw_readl(pio + PIO_ABCDSR1) | mask, pio + PIO_ABCDSR1);
> +	__raw_writel(__raw_readl(pio + PIO_ABCDSR2) | mask, pio + PIO_ABCDSR2);
> +}
> +
> +static inline void at91_mux_set_deglitch(void __iomem *pio, unsigned mas=
k, bool is_on)
> +{
> +	__raw_writel(mask, pio + (is_on ? PIO_IFER : PIO_IFDR));
> +}
> +
> +static inline void at91_mux_pio3_set_deglitch(void __iomem *pio, unsigne=
d mask, bool is_on)
> +{
> +	if (is_on)
> +		__raw_writel(mask, pio + PIO_IFSCDR);
> +	at91_mux_set_deglitch(pio, mask, is_on);
> +}
> +
> +static inline void at91_mux_pio3_set_debounce(void __iomem *pio, unsigne=
d mask,
> +				bool is_on, u32 div)
> +{
> +	if (is_on) {
> +		__raw_writel(mask, pio + PIO_IFSCER);
> +		__raw_writel(div & PIO_SCDR_DIV, pio + PIO_SCDR);
> +		__raw_writel(mask, pio + PIO_IFER);
> +	} else {
> +		__raw_writel(mask, pio + PIO_IFDR);
> +	}
> +}
> +
> +static inline void at91_mux_pio3_set_pulldown(void __iomem *pio, unsigne=
d mask, bool is_on)
> +{
> +	__raw_writel(mask, pio + (is_on ? PIO_PPDER : PIO_PPDDR));
> +}
> +
> +static inline void at91_mux_pio3_disable_schmitt_trig(void __iomem *pio,=
 unsigned mask)
> +{
> +	__raw_writel(__raw_readl(pio + PIO_SCHMITT) | mask, pio + PIO_SCHMITT);
> +}
> +
> +static inline void at91_mux_gpio_disable(void __iomem *pio, unsigned mas=
k)
> +{
> +	__raw_writel(mask, pio + PIO_PDR);
> +}
> +
> +static inline void at91_mux_gpio_enable(void __iomem *pio, unsigned mask)
> +{
> +	__raw_writel(mask, pio + PIO_PER);
> +}
> +
> +static inline void at91_mux_gpio_input(void __iomem *pio, unsigned mask,=
 bool input)
> +{
> +	__raw_writel(mask, pio + (input ? PIO_ODR : PIO_OER));
> +}
> +
> +static inline void at91_mux_gpio_set(void __iomem *pio, unsigned mask,
> +int value)
> +{
> +	__raw_writel(mask, pio + (value ? PIO_SODR : PIO_CODR));
> +}
> +
> +static inline int at91_mux_gpio_get(void __iomem *pio, unsigned mask)
> +{
> +       u32 pdsr;
> +
> +       pdsr =3D __raw_readl(pio + PIO_PDSR);
> +       return (pdsr & mask) !=3D 0;
> +}

We already have all these functions in arch/arm/mach-at91/gpio.h. Do we
really need them twice? Can't we use a single header file?

Sascha

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

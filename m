Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g4Knv-0001Cf-6P
 for barebox@lists.infradead.org; Mon, 24 Sep 2018 06:57:13 +0000
Date: Mon, 24 Sep 2018 08:56:59 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180924065659.GD4097@pengutronix.de>
References: <20180919163115.7354-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180919163115.7354-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 1/2] ARM: i.MX: Add ZII SCU2 Mezz Board
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Sep 19, 2018 at 09:31:14AM -0700, Andrey Smirnov wrote:
> Add ZII SCU2 Mezz Board. Which is a i.MX51 based board that is similar
> enough to RDU1 that they both can be handled by a single
> image (type can be detected at runtime).
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  arch/arm/boards/zii-imx51-rdu1/board.c    |  9 ++-
>  arch/arm/boards/zii-imx51-rdu1/lowlevel.c | 71 ++++++++++++++++++++++-
>  arch/arm/dts/Makefile                     |  4 +-
>  arch/arm/dts/imx51-zii-scu2-mezz.dts      | 11 ++++
>  4 files changed, 90 insertions(+), 5 deletions(-)
>  create mode 100644 arch/arm/dts/imx51-zii-scu2-mezz.dts

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/boards/zii-imx51-rdu1/board.c b/arch/arm/boards/zii-imx51-rdu1/board.c
> index 601c9a236..5c05134c2 100644
> --- a/arch/arm/boards/zii-imx51-rdu1/board.c
> +++ b/arch/arm/boards/zii-imx51-rdu1/board.c
> @@ -23,12 +23,17 @@
>  
>  static int zii_rdu1_init(void)
>  {
> -	if (!of_machine_is_compatible("zii,imx51-rdu1"))
> +	const char *hostname;
> +
> +	if (!of_machine_is_compatible("zii,imx51-rdu1") &&
> +	    !of_machine_is_compatible("zii,imx51-scu2-mezz"))
>  		return 0;
>  
> +	hostname = of_get_machine_compatible() + strlen("imx51-");
> +
>  	imx51_babbage_power_init();
>  
> -	barebox_set_hostname("rdu1");
> +	barebox_set_hostname(hostname);
>  
>  	imx51_bbu_internal_mmcboot_register_handler("eMMC", "/dev/mmc0", 0);
>  	imx51_bbu_internal_spi_i2c_register_handler("SPI",
> diff --git a/arch/arm/boards/zii-imx51-rdu1/lowlevel.c b/arch/arm/boards/zii-imx51-rdu1/lowlevel.c
> index cca331a9c..d82597e0b 100644
> --- a/arch/arm/boards/zii-imx51-rdu1/lowlevel.c
> +++ b/arch/arm/boards/zii-imx51-rdu1/lowlevel.c
> @@ -29,18 +29,85 @@ static inline void setup_uart(void)
>  	putc_ll('>');
>  }
>  
> +enum zii_platform_imx51_type {
> +	ZII_PLATFORM_IMX51_RDU_REV_B = 0b0000,
> +	ZII_PLATFORM_IMX51_SCU2_ESB  = 0b0001,
> +	ZII_PLATFORM_IMX51_SCU_MEZZ  = 0b0010,
> +	ZII_PLATFORM_IMX51_NIU_REV   = 0b0011,
> +	ZII_PLATFORM_IMX51_SCU2_MEZZ = 0b0100,
> +	ZII_PLATFORM_IMX51_SCU3_ESB  = 0b0101,
> +	ZII_PLATFORM_IMX51_RDU_REV_C = 0b1101,
> +};
> +
> +static unsigned int get_system_type(void)
> +{
> +#define GPIO_DR		0x000
> +#define GPIO_GDIR	0x004
> +#define SYSTEM_TYPE	GENMASK(6, 3)
> +
> +	u32 gdir, dr;
> +	void __iomem *gpio4 = IOMEM(MX51_GPIO4_BASE_ADDR);
> +	void __iomem *iomuxbase = IOMEM(MX51_IOMUXC_BASE_ADDR);
> +
> +	/*
> +	 * System type is encoded as a 4-bit number specified by the
> +	 * following pins (pulled up or down with resistors on the
> +	 * board).
> +	*/
> +	imx_setup_pad(iomuxbase, MX51_PAD_NANDF_D2__GPIO4_6);
> +	imx_setup_pad(iomuxbase, MX51_PAD_NANDF_D3__GPIO4_5);
> +	imx_setup_pad(iomuxbase, MX51_PAD_NANDF_D4__GPIO4_4);
> +	imx_setup_pad(iomuxbase, MX51_PAD_NANDF_D5__GPIO4_3);
> +
> +	gdir = readl(gpio4 + GPIO_GDIR);
> +	gdir &= ~SYSTEM_TYPE;
> +	writel(gdir, gpio4 + GPIO_GDIR);
> +
> +	dr = readl(gpio4 + GPIO_DR);
> +
> +	return FIELD_GET(SYSTEM_TYPE, dr);
> +}
> +
>  extern char __dtb_imx51_zii_rdu1_start[];
> +extern char __dtb_imx51_zii_scu2_mezz_start[];
>  
>  ENTRY_FUNCTION(start_imx51_zii_rdu1, r0, r1, r2)
>  {
>  	void *fdt;
> +	const unsigned int system_type = get_system_type();
>  
>  	imx5_cpu_lowlevel_init();
>  
>  	if (IS_ENABLED(CONFIG_DEBUG_LL))
>  		setup_uart();
>  
> -	fdt = __dtb_imx51_zii_rdu1_start + get_runtime_offset();
> +	switch (system_type) {
> +	default:
> +		/*
> +		 * see similar code in
> +		 * arch/arm/boards/zii-vf610-dev/lowlevel.c for
> +		 * reasoning for placing barrier() below.
> +		 */
> +		barrier();
> +
> +		if (IS_ENABLED(CONFIG_DEBUG_LL)) {
> +			relocate_to_current_adr();
> +			setup_c();
> +			puts_ll("\n*********************************\n");
> +			puts_ll("* Unknown system type: ");
> +			puthex_ll(system_type);
> +			puts_ll("\n* Assuming RDU1\n");
> +			puts_ll("*********************************\n");
> +		}
> +		/* FALLTHROUGH */
> +	case ZII_PLATFORM_IMX51_RDU_REV_B:
> +	case ZII_PLATFORM_IMX51_RDU_REV_C:
> +		fdt = __dtb_imx51_zii_rdu1_start;
> +		break;
> +	case ZII_PLATFORM_IMX51_SCU2_MEZZ:
> +		fdt = __dtb_imx51_zii_scu2_mezz_start;
> +		break;
> +	}
>  
> -	imx51_barebox_entry(fdt);
> +	imx51_barebox_entry(fdt + get_runtime_offset());
>  }
> diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
> index 7ec10bf20..82ff1b666 100644
> --- a/arch/arm/dts/Makefile
> +++ b/arch/arm/dts/Makefile
> @@ -103,7 +103,9 @@ pbl-dtb-$(CONFIG_MACH_VEXPRESS) += vexpress-v2p-ca15.dtb.o
>  pbl-dtb-$(CONFIG_MACH_VSCOM_BALTOS) += am335x-baltos-minimal.dtb.o
>  pbl-dtb-$(CONFIG_MACH_WARP7) += imx7s-warp.dtb.o
>  pbl-dtb-$(CONFIG_MACH_VF610_TWR) += vf610-twr.dtb.o
> -pbl-dtb-$(CONFIG_MACH_ZII_RDU1) += imx51-zii-rdu1.dtb.o
> +pbl-dtb-$(CONFIG_MACH_ZII_RDU1) +=	\
> +	imx51-zii-rdu1.dtb.o		\
> +	imx51-zii-scu2-mezz.dtb.o
>  pbl-dtb-$(CONFIG_MACH_ZII_RDU2) += imx6q-zii-rdu2.dtb.o imx6qp-zii-rdu2.dtb.o
>  pbl-dtb-$(CONFIG_MACH_ZII_VF610_DEV) += \
>  	vf610-zii-dev-rev-b.dtb.o 	\
> diff --git a/arch/arm/dts/imx51-zii-scu2-mezz.dts b/arch/arm/dts/imx51-zii-scu2-mezz.dts
> new file mode 100644
> index 000000000..68a374bb2
> --- /dev/null
> +++ b/arch/arm/dts/imx51-zii-scu2-mezz.dts
> @@ -0,0 +1,11 @@
> +// SPDX-License-Identifier: (GPL-2.0 OR MIT)
> +
> +/*
> + * Copyright (C) 2018 Zodiac Inflight Innovations
> + */
> +
> +#include <arm/imx51-zii-scu2-mezz.dts>
> +
> +&iim {
> +	barebox,provide-mac-address = <&fec 1 9>;
> +};
> -- 
> 2.17.1
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

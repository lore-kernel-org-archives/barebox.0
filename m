Delivery-date: Thu, 18 May 2023 20:48:47 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzigC-005pud-Hw
	for lore@lore.pengutronix.de; Thu, 18 May 2023 20:48:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzig9-0007YY-OA
	for lore@pengutronix.de; Thu, 18 May 2023 20:48:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0GJ9FL24BNt4o35Xo9IeamPkd72T74XM5C3IgwsWMbM=; b=kPFxzlFkXrYjjV9d/b6hQzefjy
	vRl6vLEedJvFrzScA7AxBCi/0gQsuwR9Ug9JLP562+NTibq6CN/r6CcOpBEONkSgt3h/YZywPj5wg
	MwsqRFDZZ/xt2zrX8+BoM8bsCYLc52FJfmczqjqpJ8iAJEMT4DFHvaoanA1QqGnKD4hbraCobTDSU
	TV+AGrGOsN0uF4Hs9kY+XrPPoiTJxCdWc233wkp1djGMBvlLm3S8LyiyTIzuI9BcjPuFU2b4rBO9I
	hI40Qq6w0V01ZiA7dOyPvPgyw+qobRGDtxAJMxxV6PtyVP1K9WMy+NBRynF8TNSHOLZBJ20otLHQA
	uVvTgDyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pziee-00DrLc-2W;
	Thu, 18 May 2023 18:47:12 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzieb-00DrJq-0J
	for barebox@lists.infradead.org;
	Thu, 18 May 2023 18:47:11 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1pzieO-0007NU-OW; Thu, 18 May 2023 20:46:56 +0200
Message-ID: <1de832ec-33e3-269c-31dc-30662d783d49@pengutronix.de>
Date: Thu, 18 May 2023 20:46:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: Jules Maselbas <jmaselbas@zdiv.net>, barebox@lists.infradead.org
References: <20230510233711.37345-1-jmaselbas@zdiv.net>
 <20230510233711.37345-3-jmaselbas@zdiv.net>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230510233711.37345-3-jmaselbas@zdiv.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230518_114709_294775_89BFF47A 
X-CRM114-Status: GOOD (  23.06  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-6.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [RFC PATCH 02/11] sunxi: introduce mach-sunxi
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 11.05.23 01:37, Jules Maselbas wrote:
> Add kbuild boilerplate and some early init functions
> ---
>  arch/arm/Kconfig                   | 12 ++++++++++
>  arch/arm/Makefile                  |  1 +
>  arch/arm/mach-sunxi/Kconfig        | 16 +++++++++++++
>  arch/arm/mach-sunxi/Makefile       |  2 ++
>  arch/arm/mach-sunxi/cpu_init.c     | 33 +++++++++++++++++++++++++++
>  arch/arm/mach-sunxi/sunxi.c        |  0
>  images/Makefile                    |  1 +
>  images/Makefile.sunxi              | 13 +++++++++++
>  include/mach/sunxi/init.h          |  6 +++++
>  include/mach/sunxi/sun50i-regs.h   | 36 ++++++++++++++++++++++++++++++
>  include/mach/sunxi/sunxi-pinctrl.h | 13 +++++++++++
>  11 files changed, 133 insertions(+)
>  create mode 100644 arch/arm/mach-sunxi/Kconfig
>  create mode 100644 arch/arm/mach-sunxi/Makefile
>  create mode 100644 arch/arm/mach-sunxi/cpu_init.c
>  create mode 100644 arch/arm/mach-sunxi/sunxi.c
>  create mode 100644 images/Makefile.sunxi
>  create mode 100644 include/mach/sunxi/init.h
>  create mode 100644 include/mach/sunxi/sun50i-regs.h
>  create mode 100644 include/mach/sunxi/sunxi-pinctrl.h
> 
> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> index abe649de49..8da03e2703 100644
> --- a/arch/arm/Kconfig
> +++ b/arch/arm/Kconfig
> @@ -144,6 +144,17 @@ config ARCH_SOCFPGA
>  	select COMMON_CLK
>  	select CLKDEV_LOOKUP
>  
> +config ARCH_SUNXI
> +	bool "Allwinner SoCs"

depends on ARCH_MULTIARCH? :-)
That's the new hot stuff where you can build multiple SoC families
in one go. Also, no HAS_DEBUG_LL?

> +	select OFTREE
> +	select OFDEVICE
> +	select COMMON_CLK
> +	select COMMON_CLK_OF_PROVIDER
> +	select CLKDEV_LOOKUP
> +	select GENERIC_GPIO

This is implied by select GPIOLIB below.

> +	select GPIOLIB
> +	select PINCTRL
> +
>  config ARCH_VERSATILE
>  	bool "ARM Versatile boards (ARM926EJ-S)"
>  	select GPIOLIB
> @@ -311,6 +322,7 @@ source "arch/arm/mach-omap/Kconfig"
>  source "arch/arm/mach-pxa/Kconfig"
>  source "arch/arm/mach-rockchip/Kconfig"
>  source "arch/arm/mach-socfpga/Kconfig"
> +source "arch/arm/mach-sunxi/Kconfig"
>  source "arch/arm/mach-stm32mp/Kconfig"
>  source "arch/arm/mach-versatile/Kconfig"
>  source "arch/arm/mach-vexpress/Kconfig"
> diff --git a/arch/arm/Makefile b/arch/arm/Makefile
> index a506f1e3a3..bb61392e4c 100644
> --- a/arch/arm/Makefile
> +++ b/arch/arm/Makefile
> @@ -103,6 +103,7 @@ machine-$(CONFIG_ARCH_ROCKCHIP)		+= rockchip
>  machine-$(CONFIG_ARCH_SAMSUNG)		+= samsung
>  machine-$(CONFIG_ARCH_SOCFPGA)		+= socfpga
>  machine-$(CONFIG_ARCH_STM32MP)		+= stm32mp
> +machine-$(CONFIG_ARCH_SUNXI)		+= sunxi
>  machine-$(CONFIG_ARCH_VERSATILE)	+= versatile
>  machine-$(CONFIG_ARCH_VEXPRESS)		+= vexpress
>  machine-$(CONFIG_ARCH_TEGRA)		+= tegra
> diff --git a/arch/arm/mach-sunxi/Kconfig b/arch/arm/mach-sunxi/Kconfig
> new file mode 100644
> index 0000000000..0e8d83fedd
> --- /dev/null
> +++ b/arch/arm/mach-sunxi/Kconfig
> @@ -0,0 +1,16 @@
> +if ARCH_SUNXI
> +
> +config ARCH_TEXT_BASE
> +	hex
> +	default 0x0
> +
> +menuconfig SUNXI_MULTI_BOARDS
> +	bool "Allwinner boards"
> +	select HAVE_PBL_MULTI_IMAGES
> +	select RELOCATABLE

Just make this the default?

> +
> +if SUNXI_MULTI_BOARDS
> +
> +endif
> +
> +endif
> diff --git a/arch/arm/mach-sunxi/Makefile b/arch/arm/mach-sunxi/Makefile
> new file mode 100644
> index 0000000000..d678973ca2
> --- /dev/null
> +++ b/arch/arm/mach-sunxi/Makefile
> @@ -0,0 +1,2 @@
> +obj-y += sunxi.o
> +lwl-y += cpu_init.o
> diff --git a/arch/arm/mach-sunxi/cpu_init.c b/arch/arm/mach-sunxi/cpu_init.c
> new file mode 100644
> index 0000000000..f4092d8d5d
> --- /dev/null
> +++ b/arch/arm/mach-sunxi/cpu_init.c
> @@ -0,0 +1,33 @@
> +/* SPDX-License-Identifier: GPL-2.0-or-later */
> +
> +#include <common.h>
> +#include <linux/sizes.h>
> +#include <asm/barebox-arm-head.h>
> +// #include <asm/errata.h> TODO: errata 843419 ?
> +#include <io.h>
> +#include <debug_ll.h>
> +#include <mach/sunxi/init.h>
> +#include <mach/sunxi/sun50i-regs.h>
> +#include <mach/sunxi/sunxi-pinctrl.h>
> +
> +static void sunxi_ccu_init(void __iomem *ccu)
> +{
> +	/* APB2 = 24MHz (UART, I2C) */
> +	writel((1 << 24 /* src: 1=osc24 */) |
> +	       (0 << 16 /* pre_div (N): 0=/1 1=/2 2=/4 3=/8 */) |
> +	       (0 << 0) /* M-1 */,
> +	       ccu + CCU_APB2_CFG);
> +	set_cntfrq(24 * 1000 * 1000);
> +
> +	/* PIO clock enable */
> +	setbits_le32(ccu + CCU_BUS_CLK_GATE2, 1u << 5);

Nit: There's a BIT() macro that could be used here.

> +	/* UART0 clock enable */
> +	setbits_le32(ccu + CCU_BUS_CLK_GATE3, 1u << 16);
> +	/* UART0 release reset */
> +	setbits_le32(ccu + CCU_BUS_SOFT_RST4, 1u << 16);

Can the pads UART0 uses be muxed otherwise? Is it ok to unconditionally
enable UART0 here? I'd expect this to be a separate sunxi_uart_setup(port)
that can be used by board code after doing lowlevel_init.

> +}
> +
> +static void sunxi_cpu_lowlevel_init(void)
> +{
> +	sunxi_ccu_init(IOMEM(SUNXI_CCU_BASE_ADDR));
> +}
> diff --git a/arch/arm/mach-sunxi/sunxi.c b/arch/arm/mach-sunxi/sunxi.c
> new file mode 100644
> index 0000000000..e69de29bb2
> diff --git a/images/Makefile b/images/Makefile
> index aa5814710f..3a10fe1abb 100644
> --- a/images/Makefile
> +++ b/images/Makefile
> @@ -151,6 +151,7 @@ include $(srctree)/images/Makefile.omap3
>  include $(srctree)/images/Makefile.rockchip
>  include $(srctree)/images/Makefile.socfpga
>  include $(srctree)/images/Makefile.stm32mp
> +include $(srctree)/images/Makefile.sunxi
>  include $(srctree)/images/Makefile.tegra
>  include $(srctree)/images/Makefile.vexpress
>  include $(srctree)/images/Makefile.xburst
> diff --git a/images/Makefile.sunxi b/images/Makefile.sunxi
> new file mode 100644
> index 0000000000..778d6f9bdf
> --- /dev/null
> +++ b/images/Makefile.sunxi
> @@ -0,0 +1,13 @@
> +#
> +# barebox image generation Makefile for Allwinner sunxi eGON boot images
> +#
> +
> +# %.egonimg - convert into eGON.BT0 image
> +# ----------------------------------------------------------------------
> +quiet_cmd_egon_image = EGON  $@
> +      cmd_egon_image = $(objtree)/scripts/egon_mkimage $< $@
> +
> +$(obj)/%.egonimg: $(obj)/% FORCE
> +	$(call if_changed,egon_image)
> +
> +# ----------------------------------------------------------------------
> diff --git a/include/mach/sunxi/init.h b/include/mach/sunxi/init.h
> new file mode 100644
> index 0000000000..26cc022fde
> --- /dev/null
> +++ b/include/mach/sunxi/init.h
> @@ -0,0 +1,6 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +
> +#ifndef __MACH_INIT_H
> +#define __MACH_INIT_H
> +
> +#endif
> diff --git a/include/mach/sunxi/sun50i-regs.h b/include/mach/sunxi/sun50i-regs.h
> new file mode 100644
> index 0000000000..68501fa351
> --- /dev/null
> +++ b/include/mach/sunxi/sun50i-regs.h
> @@ -0,0 +1,36 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +
> +#ifndef __MACH_SUN50I_REGS_H
> +#define __MACH_SUN50I_REGS_H

#include <linux/sizes.h>

> +
> +#define SUN50I_SRAM_A1_BASE_ADDR 0x00000000
> +#define SUN50I_SRAM_A1_SIZE SZ_64K
> +#define SUN50I_SRAM_A2_BASE_ADDR 0x00044000
> +#define SUN50I_SRAM_A2_SIZE SZ_32K
> +
> +#define SUN50I_DRAM_BASE_ADDR	0x40000000
> +
> +#define SUN50I_CCU_BASE_ADDR	0x01c20000
> +#define SUN50I_PIO_BASE_ADDR	0x01c20800
> +#define SUN50I_MMC0_BASE_ADDR	0x01c0f000
> +#define SUN50I_MMC1_BASE_ADDR	0x01c10000
> +#define SUN50I_MMC2_BASE_ADDR	0x01c11000
> +#define SUN50I_TIMER_BASE_ADDR	0x01c20c00

I know much existing code doesn't, but you could already use IOMEM
here to avoid casts in consumer code.

> +
> +#define CCU_PLL_CPUX		0x00
> +#define CCU_PLL_PERIPH0		0x28
> +#define CCU_CPUX_AXI_CFG	0x50
> +#define CCU_AHB1_APB1_CFG	0x54
> +#define CCU_APB2_CFG		0x58
> +#define CCU_AHB2_CFG		0x5c
> +#define CCU_BUS_CLK_GATE0	0x60
> +#define CCU_BUS_CLK_GATE1	0x64
> +#define CCU_BUS_CLK_GATE2	0x68
> +#define CCU_BUS_CLK_GATE3	0x6c
> +#define CCU_CE_CLK		0x9c
> +#define CCU_MBUS_CLK		0x15c
> +#define CCU_BUS_SOFT_RST0	0x2c0
> +#define CCU_BUS_SOFT_RST4	0x2d8
> +#define CCU_PLL_LOCK_CTRL	0x320
> +
> +#endif
> diff --git a/include/mach/sunxi/sunxi-pinctrl.h b/include/mach/sunxi/sunxi-pinctrl.h
> new file mode 100644
> index 0000000000..adb2a24577
> --- /dev/null
> +++ b/include/mach/sunxi/sunxi-pinctrl.h
> @@ -0,0 +1,13 @@
> +/* pio aka "allwinner,sun8i-h3-pinctrl" */

No include guard?

> +
> +#define PIO_PA_CFG0 0x00
> +#define PIO_PB_CFG0 0x24
> +#define PIO_PB_CFG1 0x28
> +#define PIO_PD_CFG0 0x6c
> +#define PIO_PD_CFG1 0x70
> +#define PIO_PD_CFG2 0x74
> +#define PIO_PF_CFG0 0xb4
> +
> +#define PIO_PA_PULL1 0x20
> +#define PIO_PB_PULL0 0x40
> +#define PIO_PD_DATA 0x7c

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |




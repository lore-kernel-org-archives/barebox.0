Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjM24-0007km-4u
 for barebox@lists.infradead.org; Thu, 11 Jun 2020 12:10:10 +0000
References: <20200611095521.2293-1-o.rempel@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <34f4ab32-6bf5-781c-7ae6-5decdada030b@pengutronix.de>
Date: Thu, 11 Jun 2020 14:10:06 +0200
MIME-Version: 1.0
In-Reply-To: <20200611095521.2293-1-o.rempel@pengutronix.de>
Content-Language: en-US
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
Subject: Re: [PATCH v1] ARM: add imx6 based Protonic boads
To: Oleksij Rempel <o.rempel@pengutronix.de>, barebox@lists.infradead.org, david@protonic.nl

Hello Oleksij,

Could you perhaps split out the device trees in a separate patch the
next round? I missed the lowlevel.c first time.

On 6/11/20 11:55 AM, Oleksij Rempel wrote:
> diff --git a/arch/arm/boards/protonic-imx6/lowlevel.c b/arch/arm/boards/protonic-imx6/lowlevel.c
> new file mode 100644
> index 0000000000..60d809c3aa
> --- /dev/null
> +++ b/arch/arm/boards/protonic-imx6/lowlevel.c
> @@ -0,0 +1,209 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Copyright (C) 2020 Protonic Holland
> + * Copyright (C) 2020 Oleksij Rempel, Pengutronix
> + */
> +
> +#include <asm/barebox-arm.h>
> +#include <asm/barebox-arm-head.h>
> +#include <common.h>
> +#include <debug_ll.h>
> +#include <linux/sizes.h>
> +#include <mach/iomux-mx6.h>

You can at least drop <linux/sizes.h> here, with
the changes suggested below.

> +
> +extern char __dtb_z_imx6q_prti6q_start[];
> +extern char __dtb_z_imx6q_prtwd2_start[];
> +extern char __dtb_z_imx6q_vicut1_start[];
> +extern char __dtb_z_imx6dl_alti6p_start[];
> +extern char __dtb_z_imx6dl_lanmcu_start[];
> +extern char __dtb_z_imx6dl_plybas_start[];
> +extern char __dtb_z_imx6dl_plym2m_start[];
> +extern char __dtb_z_imx6dl_prtmvt_start[];
> +extern char __dtb_z_imx6dl_prtrvt_start[];
> +extern char __dtb_z_imx6dl_prtvt7_start[];
> +extern char __dtb_z_imx6dl_victgo_start[];
> +extern char __dtb_z_imx6dl_vicut1_start[];
> +extern char __dtb_z_imx6qp_prtwd3_start[];
> +extern char __dtb_z_imx6qp_vicutp_start[];
> +extern char __dtb_z_imx6ul_prti6g_start[];
> +
> +static inline void setup_uart(void)
> +{
> +	void __iomem *iomuxbase = IOMEM(MX6_IOMUXC_BASE_ADDR);
> +
> +	imx_setup_pad(iomuxbase, MX6Q_PAD_KEY_COL0__UART4_TXD);
> +
> +	imx6_uart_setup_ll();
> +
> +	putc_ll('>');
> +}
> +
> +ENTRY_FUNCTION(start_imx6q_prti6q, r0, r1, r2)
> +{
> +	void *fdt;
> +
> +	arm_cpu_lowlevel_init();

We have imx6_cpu_lowlevel_init that has workarounds for a couple
of erratas. You probably want to use that instead.

> +
> +	imx6_ungate_all_peripherals();

I don't think you need this for the !IS_ENABLED(CONFIG_DEBUG_LL)) case.
You could move it into setup_uart.

> +
> +	if (IS_ENABLED(CONFIG_DEBUG_LL))
> +		setup_uart();
> +
> +	fdt = __dtb_z_imx6q_prti6q_start + get_runtime_offset();
> +
> +	barebox_arm_entry(0x10000000, SZ_1G, fdt);

There is imx6q_barebox_entry that reads back the RAM size from the MMDC.
Use that.

Same applies to the other boards.

> +}
> +
> +ENTRY_FUNCTION(start_imx6q_prtwd2, r0, r1, r2)
> +{
> +	void *fdt;
> +
> +	arm_cpu_lowlevel_init();
> +
> +	fdt = __dtb_z_imx6q_prtwd2_start + get_runtime_offset();
> +
> +	barebox_arm_entry(0x10000000, SZ_512M, fdt);
> +}
> +
> +ENTRY_FUNCTION(start_imx6q_vicut1, r0, r1, r2)
> +{
> +	void *fdt;
> +
> +	arm_cpu_lowlevel_init();
> +
> +	fdt = __dtb_z_imx6q_vicut1_start + get_runtime_offset();
> +
> +	barebox_arm_entry(0x10000000, SZ_2G, fdt);
> +}
> +
> +ENTRY_FUNCTION(start_imx6dl_alti6p, r0, r1, r2)
> +{
> +	void *fdt;
> +
> +	arm_cpu_lowlevel_init();
> +
> +	fdt = __dtb_z_imx6dl_alti6p_start + get_runtime_offset();
> +
> +	barebox_arm_entry(0x10000000, SZ_1G, fdt);
> +}
> +
> +ENTRY_FUNCTION(start_imx6dl_lanmcu, r0, r1, r2)
> +{
> +	void *fdt;
> +
> +	arm_cpu_lowlevel_init();
> +
> +	fdt = __dtb_z_imx6dl_lanmcu_start + get_runtime_offset();
> +
> +	barebox_arm_entry(0x10000000, SZ_256M, fdt);
> +}
> +
> +ENTRY_FUNCTION(start_imx6dl_plybas, r0, r1, r2)
> +{
> +	void *fdt;
> +
> +	arm_cpu_lowlevel_init();
> +
> +	fdt = __dtb_z_imx6dl_plybas_start + get_runtime_offset();
> +
> +	barebox_arm_entry(0x10000000, SZ_256M, fdt);
> +}
> +
> +ENTRY_FUNCTION(start_imx6dl_plym2m, r0, r1, r2)
> +{
> +	void *fdt;
> +
> +	arm_cpu_lowlevel_init();
> +
> +	fdt = __dtb_z_imx6dl_plym2m_start + get_runtime_offset();
> +
> +	barebox_arm_entry(0x10000000, SZ_256M, fdt);
> +}
> +
> +ENTRY_FUNCTION(start_imx6dl_prtmvt, r0, r1, r2)
> +{
> +	void *fdt;
> +
> +	arm_cpu_lowlevel_init();
> +
> +	fdt = __dtb_z_imx6dl_prtmvt_start + get_runtime_offset();
> +
> +	barebox_arm_entry(0x10000000, SZ_512M, fdt);
> +}
> +
> +ENTRY_FUNCTION(start_imx6dl_prtrvt, r0, r1, r2)
> +{
> +	void *fdt;
> +
> +	arm_cpu_lowlevel_init();
> +
> +	fdt = __dtb_z_imx6dl_prtrvt_start + get_runtime_offset();
> +
> +	barebox_arm_entry(0x10000000, SZ_256M, fdt);
> +}
> +
> +ENTRY_FUNCTION(start_imx6dl_prtvt7, r0, r1, r2)
> +{
> +	void *fdt;
> +
> +	arm_cpu_lowlevel_init();
> +
> +	fdt = __dtb_z_imx6dl_prtvt7_start + get_runtime_offset();
> +
> +	barebox_arm_entry(0x10000000, SZ_512M, fdt);
> +}
> +
> +ENTRY_FUNCTION(start_imx6dl_victgo, r0, r1, r2)
> +{
> +	void *fdt;
> +
> +	arm_cpu_lowlevel_init();
> +
> +	fdt = __dtb_z_imx6dl_victgo_start + get_runtime_offset();
> +
> +	barebox_arm_entry(0x10000000, SZ_512M, fdt);
> +}
> +
> +ENTRY_FUNCTION(start_imx6dl_vicut1, r0, r1, r2)
> +{
> +	void *fdt;
> +
> +	arm_cpu_lowlevel_init();
> +
> +	fdt = __dtb_z_imx6dl_vicut1_start + get_runtime_offset();
> +
> +	barebox_arm_entry(0x10000000, SZ_2G, fdt);
> +}
> +
> +ENTRY_FUNCTION(start_imx6qp_prtwd3, r0, r1, r2)
> +{
> +	void *fdt;
> +
> +	arm_cpu_lowlevel_init();
> +
> +	fdt = __dtb_z_imx6qp_prtwd3_start + get_runtime_offset();
> +
> +	barebox_arm_entry(0x10000000, SZ_512M, fdt);
> +}
> +
> +ENTRY_FUNCTION(start_imx6qp_vicutp, r0, r1, r2)
> +{
> +	void *fdt;
> +
> +	arm_cpu_lowlevel_init();
> +
> +	fdt = __dtb_z_imx6qp_vicutp_start + get_runtime_offset();
> +
> +	barebox_arm_entry(0x10000000, SZ_2G, fdt);
> +}
> +
> +ENTRY_FUNCTION(start_imx6ul_prti6g, r0, r1, r2)
> +{
> +	void *fdt;
> +
> +	arm_cpu_lowlevel_init();

You want imx6ul_cpu_lowlevel_init here, otherwise you can't use caches
in your imx-usb-loader'd bootloader. (and in future you benefit from
new errata workarounds which are added).

> +
> +	fdt = __dtb_z_imx6ul_prti6g_start + get_runtime_offset();
> +
> +	barebox_arm_entry(0x80000000, SZ_256M, fdt);> +}


> diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
> index 6dd5cb2aca..4a0f0b717f 100644
> --- a/arch/arm/mach-imx/Kconfig
> +++ b/arch/arm/mach-imx/Kconfig
> @@ -336,6 +336,12 @@ config MACH_PHYTEC_SOM_IMX6
>          select ARCH_IMX6
>  	select ARCH_IMX6UL
>  
> +config MACH_PROTONIC_IMX6
> +        bool "Protonic-Holland i.MX6 based boards"
> +        select ARCH_IMX6
> +	select ARCH_IMX6UL

mismatched indentation

Cheers,
Ahmad

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

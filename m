Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1er0o9-0001yC-Cv
 for barebox@lists.infradead.org; Wed, 28 Feb 2018 12:26:23 +0000
Date: Wed, 28 Feb 2018 13:25:51 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180228122551.qzkzutzqgdgidvc3@pengutronix.de>
References: <20180228095420.29662-1-m.grzeschik@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180228095420.29662-1-m.grzeschik@pengutronix.de>
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
Subject: Re: [PATCH] boards: samx6: add initial support for kontron samx6i
To: Michael Grzeschik <m.grzeschik@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Michael,

On Wed, Feb 28, 2018 at 10:54:20AM +0100, Michael Grzeschik wrote:
> Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
> ---
>  arch/arm/boards/Makefile                           |   1 +
>  arch/arm/boards/kontron-samx6i/Makefile            |   2 +
>  arch/arm/boards/kontron-samx6i/board.c             | 134 ++++++
>  .../flash-header-samx6i-duallite.imxcfg            | 111 +++++
>  .../kontron-samx6i/flash-header-samx6i-quad.imxcfg | 127 ++++++
>  arch/arm/boards/kontron-samx6i/lowlevel.c          |  78 ++++
>  arch/arm/configs/imx_v7_defconfig                  |   1 +
>  arch/arm/dts/Makefile                              |   2 +
>  arch/arm/dts/imx6dl-samx6i.dts                     |  21 +
>  arch/arm/dts/imx6q-samx6i.dts                      |  21 +
>  arch/arm/dts/imx6qdl-samx6i.dtsi                   | 137 ++++++
>  arch/arm/dts/imx6qdl-smarc-samx6i.dtsi             | 470 +++++++++++++++++++++
>  arch/arm/mach-imx/Kconfig                          |   4 +
>  images/Makefile.imx                                |  30 ++
>  14 files changed, 1139 insertions(+)
>  create mode 100644 arch/arm/boards/kontron-samx6i/Makefile
>  create mode 100644 arch/arm/boards/kontron-samx6i/board.c
>  create mode 100644 arch/arm/boards/kontron-samx6i/flash-header-samx6i-duallite.imxcfg
>  create mode 100644 arch/arm/boards/kontron-samx6i/flash-header-samx6i-quad.imxcfg
>  create mode 100644 arch/arm/boards/kontron-samx6i/lowlevel.c
>  create mode 100644 arch/arm/dts/imx6dl-samx6i.dts
>  create mode 100644 arch/arm/dts/imx6q-samx6i.dts
>  create mode 100644 arch/arm/dts/imx6qdl-samx6i.dtsi
>  create mode 100644 arch/arm/dts/imx6qdl-smarc-samx6i.dtsi
> 
> diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
> index ca187ccb89..30f4c299f1 100644
> --- a/arch/arm/boards/Makefile
> +++ b/arch/arm/boards/Makefile
> @@ -61,6 +61,7 @@ obj-$(CONFIG_MACH_IMX21ADS)			+= freescale-mx21-ads/
>  obj-$(CONFIG_MACH_IMX233_OLINUXINO)		+= imx233-olinuxino/
>  obj-$(CONFIG_MACH_IMX27ADS)			+= freescale-mx27-ads/
>  obj-$(CONFIG_MACH_KINDLE3)			+= kindle3/
> +obj-$(CONFIG_MACH_KONTRON_SAMX6I)		+= kontron-samx6i/
>  obj-$(CONFIG_MACH_LENOVO_IX4_300D)		+= lenovo-ix4-300d/
>  obj-$(CONFIG_MACH_LUBBOCK)			+= lubbock/
>  obj-$(CONFIG_MACH_MAINSTONE)			+= mainstone/
> diff --git a/arch/arm/boards/kontron-samx6i/Makefile b/arch/arm/boards/kontron-samx6i/Makefile
> new file mode 100644
> index 0000000000..01c7a259e9
> --- /dev/null
> +++ b/arch/arm/boards/kontron-samx6i/Makefile
> @@ -0,0 +1,2 @@
> +obj-y += board.o
> +lwl-y += lowlevel.o
> diff --git a/arch/arm/boards/kontron-samx6i/board.c b/arch/arm/boards/kontron-samx6i/board.c
> new file mode 100644
> index 0000000000..a6e2fc3c35
> --- /dev/null
> +++ b/arch/arm/boards/kontron-samx6i/board.c
> @@ -0,0 +1,134 @@
> +/*
> + * Copyright (C) 2017 Michael Grzeschik, Pengutronix
> + *
> + * This program is free software; you can redistribute it and/or
> + * modify it under the terms of the GNU General Public License as
> + * published by the Free Software Foundation; either version 2 of
> + * the License, or (at your option) any later version.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + * You should have received a copy of the GNU General Public License
> + * along with this program; if not, write to the Free Software
> + * Foundation.
> + *
> + */
> +
> +#define pr_fmt(fmt) "samx6i: " fmt
> +
> +#include <malloc.h>
> +#include <envfs.h>
> +#include <environment.h>
> +#include <bootsource.h>
> +#include <common.h>
> +#include <gpio.h>
> +#include <init.h>
> +#include <of.h>
> +#include <mach/bbu.h>
> +
> +#include <mach/iomux-mx6.h>
> +#include <mach/imx6.h>
> +
> +#include <linux/sizes.h>
> +#include <asm/armlinux.h>
> +
> +#define PCBVERSION_PIN IMX_GPIO_NR(2, 2)
> +#define PCBID0_PIN IMX_GPIO_NR(6, 7)
> +#define PCBID1_PIN IMX_GPIO_NR(6, 9)
> +
> +#define SZ_4G 0xEFFFFFF8
> +
> +static int samx6i_mem_init(void)
> +{
> +	int ver, id0, id1;
> +	resource_size_t size = 0;
> +
> +	ver = gpio_get_value(PCBVERSION_PIN);
> +	id0 = gpio_get_value(PCBID0_PIN);
> +	id1 = gpio_get_value(PCBID1_PIN);
> +
> +	if (of_machine_is_compatible("kontron,imx6q-samx6i")) {
> +		if (ver)
> +			size = SZ_1G;
> +		else if (id0 && id1)
> +			size = SZ_4G;
> +		else if (id0)
> +			size = SZ_2G;
> +		else if (id1)
> +			size = SZ_1G;
> +		else
> +			size = SZ_512M;
> +	} else if (of_machine_is_compatible("kontron,imx6dl-samx6i")) {
> +		if (ver)
> +			size = SZ_512M;
> +		if (id0 && id1)
> +			size = SZ_2G;
> +		else if (id0)
> +			size = SZ_1G;
> +		else if (id1)
> +			size = SZ_512M;
> +		else
> +			size = SZ_128M;
> +	}
> +
> +	if (size)
> +		arm_add_mem_device("ram0", 0x10000000, size);

This goes beyond the 32bit address space for the 4GiB case. You should
rather pass 0xf0000000.

> +
> +	return 0;
> +}
> +mem_initcall(samx6i_mem_init);
> +
> +static int samx6i_devices_init(void)
> +{
> +	int ret;
> +	char *environment_path, *default_environment_path;
> +	char *envdev, *default_envdev;
> +
> +	if (!(of_machine_is_compatible("kontron,imx6q-samx6i") ||
> +		of_machine_is_compatible("kontron,imx6dl-samx6i")))
> +		return 0;
> +
> +	barebox_set_hostname("samx6ii");
> +	default_environment_path = "/chosen/environment-spinor";
> +	default_envdev = "SPI NOR flash";
> +
> +	switch (bootsource_get()) {
> +	case BOOTSOURCE_MMC:
> +		environment_path = basprintf("/chosen/environment-sd%d",
> +					       bootsource_get_instance() + 1);
> +		envdev = "MMC";
> +		break;
> +	case BOOTSOURCE_SPI:
> +		environment_path = basprintf("/chosen/environment-spinor");
> +		envdev = "SPI NOR flash";
> +		break;
> +	default:
> +		environment_path = basprintf(default_environment_path);
> +		envdev = default_envdev;
> +		break;

The default and the BOOTSOURCE_SPI path are identical, no need to
duplicate.

> +	}
> +
> +	if (environment_path) {

environment_path is always set.

> +		ret = of_device_enable_path(environment_path);
> +		if (ret < 0)
> +			pr_warn("Failed to enable environment partition '%s' (%d)\n",
> +				environment_path, ret);
> +		free(environment_path);
> +	}
> +
> +	pr_notice("Using environment in %s\n", envdev);
> +
> +	imx6_bbu_internal_spi_i2c_register_handler("m25p80",
> +					"/dev/m25p0.bootloader",
> +					BBU_HANDLER_FLAG_DEFAULT);
> +
> +	imx6_bbu_internal_mmc_register_handler("mmc3",
> +					"/dev/mmc3.bootloader",
> +					BBU_HANDLER_FLAG_DEFAULT);

Only one can be the default.

> +
> +	return 0;
> +}
> +device_initcall(samx6i_devices_init);
> diff --git a/arch/arm/boards/kontron-samx6i/flash-header-samx6i-duallite.imxcfg b/arch/arm/boards/kontron-samx6i/flash-header-samx6i-duallite.imxcfg
> new file mode 100644
> index 0000000000..761716dd4d
> --- /dev/null
> +++ b/arch/arm/boards/kontron-samx6i/flash-header-samx6i-duallite.imxcfg
> @@ -0,0 +1,111 @@
> +/* set the default clock gate to save power */
> +wm 32 0x020c4068 0x00C03F3F
> +wm 32 0x020c406c 0x0030FC03
> +wm 32 0x020c4070 0x0FFFC000
> +wm 32 0x020c4074 0x3FF00000
> +wm 32 0x020c4078 0x00FFF300
> +wm 32 0x020c407c 0x0F0000C3
> +wm 32 0x020c4080 0x000003FF

Drop these. The clock driver will overwrite these settings in a few
milliseconds anyway and by doing this you risk breaking USB boot.

> +
> +wm 32 0x020e0010 0xf00000ff
> +
> +wm 32 0x020e0018 0x00070007
> +wm 32 0x020e001c 0x00070007
> diff --git a/arch/arm/boards/kontron-samx6i/flash-header-samx6i-quad.imxcfg b/arch/arm/boards/kontron-samx6i/flash-header-samx6i-quad.imxcfg
> new file mode 100644
> index 0000000000..80dadfcac5
> --- /dev/null
> +++ b/arch/arm/boards/kontron-samx6i/flash-header-samx6i-quad.imxcfg
> @@ -0,0 +1,127 @@
> +
> +/* set the default clock gate to save power */
> +wm 32 0x020c4068 0x00C03F3F
> +wm 32 0x020c406c 0x0030FC03
> +wm 32 0x020c4070 0x0FFFC000
> +wm 32 0x020c4074 0x3FF00000
> +wm 32 0x020c4078 0x00FFF300
> +wm 32 0x020c407c 0x0F0000C3
> +wm 32 0x020c4080 0x000003FF

ditto

> +
> +/* enable AXI cache for VDOA/VPU/IPU */
> +wm 32 0x020e0010 0xF00000FF
> +/* set IPU AXI-id0 Qos=0xf(bypass) AXI-id1 Qos=0x7 */
> +wm 32 0x020e0018 0x007F007F
> +wm 32 0x020e001c 0x007F007F
> diff --git a/arch/arm/boards/kontron-samx6i/lowlevel.c b/arch/arm/boards/kontron-samx6i/lowlevel.c
> new file mode 100644
> index 0000000000..b01f7d7fbc
> --- /dev/null
> +++ b/arch/arm/boards/kontron-samx6i/lowlevel.c
> @@ -0,0 +1,78 @@
> +/*
> + * Copyright (C) 2017 Michael Grzeschik <m.grzeschik@pengutronix.de>
> + *
> + * This program is free software; you can redistribute it and/or
> + * modify it under the terms of the GNU General Public License as
> + * published by the Free Software Foundation; either version 2 of
> + * the License, or (at your option) any later version.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + */
> +#include <debug_ll.h>
> +#include <common.h>
> +#include <linux/sizes.h>
> +#include <io.h>
> +#include <image-metadata.h>
> +#include <asm/barebox-arm-head.h>
> +#include <asm/barebox-arm.h>
> +#include <asm/sections.h>
> +#include <asm/cache.h>
> +#include <asm/mmu.h>
> +#include <mach/imx6.h>
> +
> +static inline void setup_uart(void)
> +{
> +	void __iomem *iomuxbase = (void *)MX6_IOMUXC_BASE_ADDR;
> +
> +	writel(0x4, iomuxbase + 0x016c);
> +
> +	imx6_ungate_all_peripherals();
> +	imx6_uart_setup_ll();
> +
> +	putc_ll('>');
> +}
> +
> +BAREBOX_IMD_TAG_STRING(samx6i_memsize_SZ_512M, IMD_TYPE_PARAMETER, "memsize=512", 0);
> +BAREBOX_IMD_TAG_STRING(samx6i_memsize_SZ_1G, IMD_TYPE_PARAMETER, "memsize=1024", 0);
> +BAREBOX_IMD_TAG_STRING(samx6i_memsize_SZ_2G, IMD_TYPE_PARAMETER, "memsize=2048", 0);
> +
> +static void __noreturn start_imx6_samx6i_common(uint32_t size,
> +						bool do_early_uart_config,
> +						void *fdt_blob_fixed_offset)
> +{
> +	void *fdt;
> +
> +	imx6_cpu_lowlevel_init();
> +	/* OCRAM Free Area is 0x00907000 to 0x00938000 (196KB) */
> +	arm_setup_stack(0x00920000 - 8);

OCRAM is only 128KiB on the i.MX6s/dl. The comment is wrong.

> +
> +	if (do_early_uart_config && IS_ENABLED(CONFIG_DEBUG_LL))
> +		setup_uart();
> +
> +	fdt = fdt_blob_fixed_offset - get_runtime_offset();
> +
> +	barebox_arm_entry(0x10000000, size, fdt);
> +}
> +
> +#define SAMX6I_ENTRY(name, fdt_name, memory_size, do_early_uart_config)	\
> +	ENTRY_FUNCTION(name, r0, r1, r2)				\
> +	{								\
> +		extern char __dtb_##fdt_name##_start[];			\
> +									\
> +		IMD_USED(samx6i_memsize_##memory_size);		\
> +									\
> +		start_imx6_samx6i_common(memory_size, do_early_uart_config, \
> +					 __dtb_##fdt_name##_start);	\
> +	}
> +
> +SAMX6I_ENTRY(start_imx6q_samx6i_512m, imx6q_samx6i, SZ_512M, true);
> +SAMX6I_ENTRY(start_imx6q_samx6i_1g, imx6q_samx6i, SZ_1G, true);
> +SAMX6I_ENTRY(start_imx6q_samx6i_2g, imx6q_samx6i, SZ_2G, true);
> +
> +SAMX6I_ENTRY(start_imx6dl_samx6i_512m, imx6dl_samx6i, SZ_512M, true);
> +SAMX6I_ENTRY(start_imx6dl_samx6i_1g, imx6dl_samx6i, SZ_1G, true);
> +SAMX6I_ENTRY(start_imx6dl_samx6i_2g, imx6dl_samx6i, SZ_2G, true);

You can read the memory size from GPIOs which you actively do, so why
create different images for different memory sizes?

> diff --git a/arch/arm/configs/imx_v7_defconfig b/arch/arm/configs/imx_v7_defconfig
> index 62d623806c..08ec6eb862 100644
> --- a/arch/arm/configs/imx_v7_defconfig
> +++ b/arch/arm/configs/imx_v7_defconfig
> @@ -11,6 +11,7 @@ CONFIG_MACH_GUF_VINCELL_XLOAD=y
>  CONFIG_MACH_TQMA53=y
>  CONFIG_MACH_FREESCALE_MX53_VMX53=y
>  CONFIG_MACH_PHYTEC_SOM_IMX6=y
> +CONFIG_MACH_KONTRON_SAMX6I=y
>  CONFIG_MACH_DFI_FS700_M60=y
>  CONFIG_MACH_GUF_SANTARO=y
>  CONFIG_MACH_REALQ7=y
> diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
> index 0526a6f407..db703c1e0f 100644
> --- a/arch/arm/dts/Makefile
> +++ b/arch/arm/dts/Makefile
> @@ -28,6 +28,8 @@ pbl-dtb-$(CONFIG_MACH_GLOBALSCALE_MIRABOX) += armada-370-mirabox-bb.dtb.o
>  pbl-dtb-$(CONFIG_MACH_GUF_SANTARO) += imx6q-guf-santaro.dtb.o
>  pbl-dtb-$(CONFIG_MACH_GUF_VINCELL) += imx53-guf-vincell.dtb.o imx53-guf-vincell-lt.dtb.o
>  pbl-dtb-$(CONFIG_MACH_GW_VENTANA) += imx6q-gw54xx.dtb.o
> +pbl-dtb-$(CONFIG_MACH_KONTRON_SAMX6I) += imx6q-samx6i.dtb.o \
> +					imx6dl-samx6i.dtb.o
>  pbl-dtb-$(CONFIG_MACH_LENOVO_IX4_300D) += armada-xp-lenovo-ix4-300d-bb.dtb.o
>  pbl-dtb-$(CONFIG_MACH_MARVELL_ARMADA_XP_GP) += armada-xp-gp-bb.dtb.o
>  pbl-dtb-$(CONFIG_MACH_NETGEAR_RN104) += armada-370-rn104-bb.dtb.o
> diff --git a/arch/arm/dts/imx6dl-samx6i.dts b/arch/arm/dts/imx6dl-samx6i.dts
> new file mode 100644
> index 0000000000..b060fc075a
> --- /dev/null
> +++ b/arch/arm/dts/imx6dl-samx6i.dts
> @@ -0,0 +1,21 @@
> +/*
> + * Copyright 2017 Michael Grzeschik, Pengutronix
> + *
> + * The code contained herein is licensed under the GNU General Public
> + * License. You may obtain a copy of the GNU General Public License
> + * Version 2 or later at the following locations:
> + *
> + * http://www.opensource.org/licenses/gpl-license.html
> + * http://www.gnu.org/copyleft/gpl.html
> + */
> +
> +/dts-v1/;
> +#include <arm/imx6dl.dtsi>
> +#include "imx6dl.dtsi"
> +#include "imx6qdl-smarc-samx6i.dtsi"
> +#include "imx6qdl-samx6i.dtsi"
> +
> +/ {
> +	model = "Kontron sAMX6i";
> +	compatible = "kontron,imx6dl-samx6i", "fsl,imx6dl";
> +};
> diff --git a/arch/arm/dts/imx6q-samx6i.dts b/arch/arm/dts/imx6q-samx6i.dts
> new file mode 100644
> index 0000000000..13210cd5c1
> --- /dev/null
> +++ b/arch/arm/dts/imx6q-samx6i.dts
> @@ -0,0 +1,21 @@
> +/*
> + * Copyright 2017 Michael Grzeschik, Pengutronix
> + *
> + * The code contained herein is licensed under the GNU General Public
> + * License. You may obtain a copy of the GNU General Public License
> + * Version 2 or later at the following locations:
> + *
> + * http://www.opensource.org/licenses/gpl-license.html
> + * http://www.gnu.org/copyleft/gpl.html
> + */
> +
> +/dts-v1/;
> +#include <arm/imx6q.dtsi>
> +#include "imx6q.dtsi"
> +#include "imx6qdl-smarc-samx6i.dtsi"
> +#include "imx6qdl-samx6i.dtsi"
> +
> +/ {
> +	model = "Kontron sAMX6i";
> +	compatible = "kontron,imx6q-samx6i", "fsl,imx6q";
> +};
> diff --git a/arch/arm/dts/imx6qdl-samx6i.dtsi b/arch/arm/dts/imx6qdl-samx6i.dtsi

Do you have an idea why this is separated from
imx6qdl-smarc-samx6i.dtsi? On the Kontron page I can only find samx6i in
conjunction with smarc.

Also I can only find SDRAM configurations up to 2GiB. Can we drop 4GiB
support?

> new file mode 100644
> index 0000000000..6783fbb48d
> --- /dev/null
> +++ b/arch/arm/dts/imx6qdl-samx6i.dtsi
> @@ -0,0 +1,137 @@
> +/ {
> +	chosen {
> +		linux,stdout-path = &uart2;
> +
> +		environment-spinor {
> +			compatible = "barebox,environment";
> +			device-path = &flash, "partname:environment";

Please don't use partname:, add a phandle to the partition directly
instead.

> +			status = "disabled";
> +		};
> +
> +		environment-sd4 {
> +			compatible = "barebox,environment";
> +			device-path = &usdhc4, "partname:environment";

ditto.

> diff --git a/arch/arm/dts/imx6qdl-smarc-samx6i.dtsi b/arch/arm/dts/imx6qdl-smarc-samx6i.dtsi
> new file mode 100644
> index 0000000000..e259a97d5d
> --- /dev/null
> +++ b/arch/arm/dts/imx6qdl-smarc-samx6i.dtsi
> @@ -0,0 +1,470 @@
> +#include <dt-bindings/gpio/gpio.h>
> +
> +/ {
> +	regulators {

AFAIK regulators shouldn't be in a separate subnode.

> +		compatible = "simple-bus";
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		reg_3v3_s5: regulator@0 {
> +			compatible = "regulator-fixed";
> +			reg = <0>;
> +			regulator-name = "V_3V3_S5";
> +			regulator-min-microvolt = <3300000>;
> +			regulator-max-microvolt = <3300000>;
> +			regulator-boot-on;
> +			regulator-always-on;
> +		};
> +
> +		reg_1v8_s5: regulator@1 {
> +			compatible = "regulator-fixed";
> +			reg = <1>;
> +			regulator-name = "V_1V8_S5";
> +			regulator-min-microvolt = <1800000>;
> +			regulator-max-microvolt = <1800000>;
> +			regulator-boot-on;
> +			regulator-always-on;
> +		};
> +
> +		reg_3v3_s0: regulator@2 {
> +			compatible = "regulator-fixed";
> +			reg = <2>;
> +			regulator-name = "V_3V3_S0";
> +			regulator-min-microvolt = <3300000>;
> +			regulator-max-microvolt = <3300000>;
> +			regulator-boot-on;
> +			regulator-always-on;
> +		};
> +
> +		reg_1v0_s0: regulator@3 {
> +			compatible = "regulator-fixed";
> +			reg = <3>;
> +			regulator-name = "V_1V0_S0";
> +			regulator-min-microvolt = <1000000>;
> +			regulator-max-microvolt = <1000000>;
> +			regulator-boot-on;
> +			regulator-always-on;
> +		};
> +	};
> +
> +	i2c_pfuze: i2c-gpio-0 {
> +		compatible = "i2c-gpio";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_i2c_gpio_0>;
> +		sda-gpios = <&gpio1 28 0>;
> +		scl-gpios = <&gpio1 30 0>;
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		i2c-gpio,delay-us = <2>;
> +	};
> +};
> +
> +&can1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_flexcan1>;
> +	status = "disabled";
> +};

Most nodes are disabled in the base dtsi, no need to disable them here.

> +
> +&can2 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_flexcan2>;
> +	status = "disabled";
> +};
> +
> +&fec {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_enet_smarc>;
> +	phy-reset-gpios = <&gpio1 25 GPIO_ACTIVE_LOW>;
> +	phy-mode = "rgmii";
> +	status = "disabled";
> +};
> +
> +&i2c_pfuze {
> +	pfuze100@08 {
> +		compatible = "fsl,pfuze100";
> +		reg = <0x08>;
> +
> +		/* Looks unused by pfuze100 driver */
> +		interrupt-parent = <&gpio7>;
> +		interrupts = <13 8>;	/* 8 = level, active low */

IRQ_TYPE_LEVEL_LOW

> +
> +	};
> +};
> +
> +&ecspi4 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_ecspi4>;
> +	fsl,spi-num-chipselects = <3>;
> +	cs-gpios = <&gpio3 24 0>, <&gpio3 29 0>, <&gpio3 25 0>;
> +	status = "disabled";
> +
> +	flash: m25p80@0 {
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +		compatible = "winbond,w25q64dw", "jedec,spi-nor";
> +		spi-max-frequency = <20000000>;
> +		reg = <0>;
> +		status = "disabled";
> +	};
> +};

The SPI NOR flash is directly on the board itself, no? In this case it
shouldn't be disabled here.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

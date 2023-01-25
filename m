Delivery-date: Wed, 25 Jan 2023 20:35:52 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKlYo-001pLf-AO
	for lore@lore.pengutronix.de; Wed, 25 Jan 2023 20:35:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKlYl-0005Cl-1r
	for lore@pengutronix.de; Wed, 25 Jan 2023 20:35:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6Yc9dN3QNDnWiMWTcB8CgeA0CNoFYsS30wzlE9m9T44=; b=KQ3hiHsVcsdP+YeUoi6Hxc6TDs
	shTCL6udqEuu5Pg5ygEuq6cHBfb6aJp1YirkoSnBte0TUsQsWjJC+qmW7WOiXdmiylfwTwTxfZfvg
	NBf50uyeL9G800fF9DuDJ0Lk1RGg97DpG05EFzeNZzfFoTBcBIBwmZ8iIozE7uw6+C+4WKV6FLzj1
	vBTQ3Ncm7rLDUUHb9AZwcHDb+qw7wG+rtxksigh6rJQaZ5UWYte8xOr3KWvIhBbeOLqxjfVo7UVC4
	e9a7TfU/7zB+r5aw/C0XBeNU2nbgqRQTBrZ9q6kbTIr0YMB5cR+hswigCUY1/nQBosnexSTgaMXdx
	dm66ykRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKlX5-008TlM-VX; Wed, 25 Jan 2023 19:34:08 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKlX0-008Tkj-Mp
	for barebox@lists.infradead.org; Wed, 25 Jan 2023 19:34:04 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1pKlWx-00052v-8p; Wed, 25 Jan 2023 20:33:59 +0100
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1pKlWv-000361-Bf; Wed, 25 Jan 2023 20:33:57 +0100
Date: Wed, 25 Jan 2023 20:33:57 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: John Watts <contact@jookia.org>
Cc: barebox@lists.infradead.org
Message-ID: <20230125193357.tdtpryxe5au6vne6@pengutronix.de>
References: <20230122175141.119834-1-contact@jookia.org>
 <20230125164230.2328043-2-contact@jookia.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230125164230.2328043-2-contact@jookia.org>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230125_113402_926267_DF609911 
X-CRM114-Status: GOOD (  33.36  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 1/4] ARM: novena: Add Kosagi Novena board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi John,

thanks for your patch.

On 23-01-26, John Watts wrote:
> The Kosagi Novena is an open source laptop released in 2014.
> 
> This patch adds the initial project skeleton for running the PBL
> and debugging over the UART2 port (labeled DEBUG on the board.)
> 
> Signed-off-by: John Watts <contact@jookia.org>
> ---
>  arch/arm/boards/Makefile                      |  1 +
>  arch/arm/boards/novena/Makefile               |  4 +
>  arch/arm/boards/novena/board.c                | 26 +++++++
>  .../boards/novena/flash-header-novena.imxcfg  |  6 ++
>  arch/arm/boards/novena/lowlevel.c             | 73 +++++++++++++++++++
>  arch/arm/configs/imx_v7_defconfig             |  1 +
>  arch/arm/dts/Makefile                         |  1 +
>  arch/arm/dts/imx6q-novena.dts                 |  4 +
>  arch/arm/mach-imx/Kconfig                     |  6 ++
>  images/Makefile.imx                           |  2 +
>  10 files changed, 124 insertions(+)
>  create mode 100644 arch/arm/boards/novena/Makefile
>  create mode 100644 arch/arm/boards/novena/board.c
>  create mode 100644 arch/arm/boards/novena/flash-header-novena.imxcfg
>  create mode 100644 arch/arm/boards/novena/lowlevel.c
>  create mode 100644 arch/arm/dts/imx6q-novena.dts
> 
> diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
> index f47aea6602..50088886eb 100644
> --- a/arch/arm/boards/Makefile
> +++ b/arch/arm/boards/Makefile
> @@ -19,6 +19,7 @@ obj-$(CONFIG_MACH_BEAGLEBONE)			+= beaglebone/
>  obj-$(CONFIG_MACH_CANON_A1100)			+= canon-a1100/
>  obj-$(CONFIG_MACH_CM_FX6)			+= cm-fx6/
>  obj-$(CONFIG_MACH_NITROGEN6)			+= boundarydevices-nitrogen6/
> +obj-$(CONFIG_MACH_NOVENA)			+= novena/
>  obj-$(CONFIG_MACH_CCMX51)			+= ccxmx51/
>  obj-$(CONFIG_MACH_CCMX53)			+= ccxmx53/
>  obj-$(CONFIG_MACH_CFA10036)			+= crystalfontz-cfa10036/
> diff --git a/arch/arm/boards/novena/Makefile b/arch/arm/boards/novena/Makefile
> new file mode 100644
> index 0000000000..da63d2625f
> --- /dev/null
> +++ b/arch/arm/boards/novena/Makefile
> @@ -0,0 +1,4 @@
> +# SPDX-License-Identifier: GPL-2.0-only
> +
> +obj-y += board.o
> +lwl-y += lowlevel.o
> diff --git a/arch/arm/boards/novena/board.c b/arch/arm/boards/novena/board.c
> new file mode 100644
> index 0000000000..e247f8b8c3
> --- /dev/null
> +++ b/arch/arm/boards/novena/board.c
> @@ -0,0 +1,26 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +// SPDX-FileCopyrightText: 2023 John Watts
						^
I'm not sure if this is required, but can you add your mail address
here as well?

> +
> +#include <common.h>
> +#include <deep-probe.h>
> +
> +static int novena_probe(struct device *dev)
> +{
> +	return 0;
> +}
> +
> +static const struct of_device_id novena_of_match[] = {
> +	{
> +		.compatible = "kosagi,imx6q-novena",
> +	},

Nit: could be a oneliner.

> +	{ /* sentinel */ }
> +};
> +
> +static struct driver novena_board_driver = {
> +	.name = "board-novena",
> +	.probe = novena_probe,
> +	.of_compatible = novena_of_match,
> +};
> +coredevice_platform_driver(novena_board_driver);
> +
> +BAREBOX_DEEP_PROBE_ENABLE(novena_of_match);
> diff --git a/arch/arm/boards/novena/flash-header-novena.imxcfg b/arch/arm/boards/novena/flash-header-novena.imxcfg
> new file mode 100644
> index 0000000000..61425976ec
> --- /dev/null
> +++ b/arch/arm/boards/novena/flash-header-novena.imxcfg
> @@ -0,0 +1,6 @@
> +# SPDX-License-Identifier: GPL-2.0-only
> +
> +loadaddr 0x00907000
> +soc imx6
> +max_load_size 0x11000
> +ivtofs 0x400
> diff --git a/arch/arm/boards/novena/lowlevel.c b/arch/arm/boards/novena/lowlevel.c
> new file mode 100644
> index 0000000000..2052ca9de8
> --- /dev/null
> +++ b/arch/arm/boards/novena/lowlevel.c
> @@ -0,0 +1,73 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +// SPDX-FileCopyrightText: 2023 John Watts
> +
> +#include <asm/barebox-arm.h>
> +#include <common.h>
> +#include <debug_ll.h>
> +#include <mach/esdctl.h>
> +#include <mach/generic.h>
> +#include <mach/imx6.h>
> +#include <mach/iomux-mx6.h>
> +#include <mach/xload.h>
> +#include <soc/fsl/fsl_udc.h>
> +
> +#define MX6_OCRAM_BASE_ADDR 0x00900000
> +#define STACK_TOP (MX6_OCRAM_BASE_ADDR + SZ_128K)
> +
> +extern char __dtb_imx6q_novena_start[];
> +
> +static bool running_from_ram(void)
> +{
> +	return (get_pc() >= MX6_MMDC_PORT01_BASE_ADDR);
> +}
> +
> +static void setup_uart(void)
> +{
> +	/* NOTE: RX is needed for TX to work on this board */
> +	imx_setup_pad(IOMEM(MX6_IOMUXC_BASE_ADDR), MX6Q_PAD_EIM_D26__UART2_RXD);
> +	imx_setup_pad(IOMEM(MX6_IOMUXC_BASE_ADDR), MX6Q_PAD_EIM_D27__UART2_TXD);

Can we add a newline in between to make it more readable?

> +	imx6_uart_setup(IOMEM(MX6_UART2_BASE_ADDR));
> +	pbl_set_putc(imx_uart_putc, IOMEM(MX6_UART2_BASE_ADDR));

Here as well.

> +	pr_debug(">");
> +}
> +
> +static void load_barebox(void)
> +{
> +	enum bootsource bootsrc;
> +	int bootinstance;
> +
> +	imx6_get_boot_source(&bootsrc, &bootinstance);
> +
> +	if (bootsrc == BOOTSOURCE_SERIAL) {
> +		imx6_barebox_start_usb(IOMEM(MX6_MMDC_PORT01_BASE_ADDR));
> +	} else if (bootsrc == BOOTSOURCE_MMC) {
> +		imx6_esdhc_start_image(bootinstance);
> +	} else {
> +		pr_err("Unsupported boot source %i instance %i\n",
> +					bootsrc, bootinstance);
> +		hang();
> +	}

We could rewrite this to:

	if (bootsrc == BOOTSOURCE_SERIAL)
		imx6_barebox_start_usb(IOMEM(MX6_MMDC_PORT01_BASE_ADDR));
	else if (bootsrc == BOOTSOURCE_MMC)
		imx6_esdhc_start_image(bootinstance);

	pr_err("Unsupported boot source %i instance %i\n", bootsrc, bootinstance);
	
	hang();

or use switch-case.

> +}
> +
> +static void boot_barebox(void)
> +{
> +	void *fdt = __dtb_imx6q_novena_start + get_runtime_offset();

The get_runtime_offset() can be dropped here since we already relocated.
Also we could move this function into the entry_function.

> +
> +	imx6q_barebox_entry(fdt);
> +}
> +
> +ENTRY_FUNCTION_WITHSTACK(start_imx6q_novena, STACK_TOP, r0, r1, r2)
> +{
> +	imx6_cpu_lowlevel_init();
> +	relocate_to_current_adr();
> +	setup_c();
> +	barrier();

After reading the setup_c() and the cache-armv7.S code I think we don't
need the barrier() here.

> +	if (!running_from_ram()) {
> +		imx6_ungate_all_peripherals();
> +		setup_uart();
> +		load_barebox();
> +	} else {
> +		boot_barebox();
> +	}

This could be re-written to:

	imx6_ungate_all_peripherals();

	if (IS_ENABLED(CONFIG_DEBUG_LL))
		setup_uart();

	if (!running_from_ram())
		load_barebox();
	
	boot_barebox;

> +}
> diff --git a/arch/arm/configs/imx_v7_defconfig b/arch/arm/configs/imx_v7_defconfig
> index 6110a52e48..f8deca324a 100644
> --- a/arch/arm/configs/imx_v7_defconfig
> +++ b/arch/arm/configs/imx_v7_defconfig
> @@ -25,6 +25,7 @@ CONFIG_MACH_SABRELITE=y
>  CONFIG_MACH_SABRESD=y
>  CONFIG_MACH_FREESCALE_IMX6SX_SABRESDB=y
>  CONFIG_MACH_NITROGEN6=y
> +CONFIG_MACH_NOVENA=y
>  CONFIG_MACH_SOLIDRUN_MICROSOM=y
>  CONFIG_MACH_TECHNEXION_PICO_HOBBIT=y
>  CONFIG_MACH_TECHNEXION_WANDBOARD=y
> diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
> index 26c4a8ab99..a01ee19f68 100644
> --- a/arch/arm/dts/Makefile
> +++ b/arch/arm/dts/Makefile
> @@ -46,6 +46,7 @@ lwl-$(CONFIG_MACH_MYIRTECH_X335X) += am335x-myirtech-myd.dtb.o
>  lwl-$(CONFIG_MACH_NETGEAR_RN104) += armada-370-rn104-bb.dtb.o
>  lwl-$(CONFIG_MACH_NETGEAR_RN2120) += armada-xp-rn2120-bb.dtb.o
>  lwl-$(CONFIG_MACH_NITROGEN6) += imx6q-nitrogen6x.dtb.o imx6dl-nitrogen6x.dtb.o imx6qp-nitrogen6_max.dtb.o
> +lwl-$(CONFIG_MACH_NOVENA) += imx6q-novena.dtb.o
>  lwl-$(CONFIG_MACH_NVIDIA_BEAVER) += tegra30-beaver.dtb.o
>  lwl-$(CONFIG_MACH_NVIDIA_JETSON) += tegra124-jetson-tk1.dtb.o
>  lwl-$(CONFIG_MACH_PCA100) += imx27-phytec-phycard-s-rdk-bb.dtb.o
> diff --git a/arch/arm/dts/imx6q-novena.dts b/arch/arm/dts/imx6q-novena.dts
> new file mode 100644
> index 0000000000..07471cb132
> --- /dev/null
> +++ b/arch/arm/dts/imx6q-novena.dts
> @@ -0,0 +1,4 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later OR X11
> +// SPDX-FileCopyrightText: 2023 John Watts
> +
> +#include <arm/imx6q-novena.dts>
> diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
> index 774c4cacb7..7993835be7 100644
> --- a/arch/arm/mach-imx/Kconfig
> +++ b/arch/arm/mach-imx/Kconfig
> @@ -434,6 +434,12 @@ config MACH_NITROGEN6
>  	bool "BoundaryDevices Nitrogen6 boards"
>  	select ARCH_IMX6
>  
> +config MACH_NOVENA
> +	bool "Kosagi Novena board"
> +	select ARCH_IMX6
> +	select MCI_IMX_ESDHC_PBL
> +	select USB_GADGET_DRIVER_ARC_PBL
> +
>  config MACH_SOLIDRUN_MICROSOM
>  	bool "SolidRun MicroSOM based devices"
>  	select ARCH_IMX6
> diff --git a/images/Makefile.imx b/images/Makefile.imx
> index e9f4ba64e4..65914212bf 100644
> --- a/images/Makefile.imx
> +++ b/images/Makefile.imx
> @@ -258,6 +258,8 @@ $(call build_imx_habv4img, CONFIG_MACH_NITROGEN6, start_imx6dl_nitrogen6x_2g, bo
>  
>  $(call build_imx_habv4img, CONFIG_MACH_NITROGEN6, start_imx6qp_nitrogen6_max, boundarydevices-nitrogen6/flash-header-nitrogen6qp-max, boundarydevices-imx6qp-nitrogen6_max)
>  
> +$(call build_imx_habv4img, CONFIG_MACH_NOVENA, start_imx6q_novena, novena/flash-header-novena, imx6q-novena)
> +
>  $(call build_imx_habv4img, CONFIG_MACH_TX6X, start_imx6dl_tx6x_512m, karo-tx6x/flash-header-tx6dl-512m, karo-imx6dl-tx6x-512m)
>  
>  $(call build_imx_habv4img, CONFIG_MACH_TX6X, start_imx6dl_tx6x_1g, karo-tx6x/flash-header-tx6dl-1g, karo-imx6dl-tx6x-1g)
> -- 
> 2.39.0
> 
> 
> 



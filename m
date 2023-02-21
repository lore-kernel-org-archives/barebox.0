Delivery-date: Tue, 21 Feb 2023 10:21:35 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pUOq7-00DilP-0e
	for lore@lore.pengutronix.de; Tue, 21 Feb 2023 10:21:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pUOq5-0000Ky-78
	for lore@pengutronix.de; Tue, 21 Feb 2023 10:21:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AFYPY2Q4a7KE3xlis+tBJRjGUletHfi47NVOT7h6D+A=; b=HRkJ3mWk1mCkHgqSYe1W0MX+js
	1avM35zUJXHLfrnEAkmrll2J0BkZ+DHk/rri8JDqnlrvOfEKlHPWHJsk4ljw2zqUXV6UV5yZGN8jQ
	zFLiYk+jiSmHmAXrQfrXMuand8A3SgVdiDGBLmlO6r2iwO+8gXckU9dVxLJORiUTZWGIXPIGDDz/L
	bMeAx8lYlKP/2TUwnWZbq2xR3xtPDGyaNN4DGhYbHYlJ2yFlG5sG0ssptw1yaxYkQCcY06kYNpR7B
	6d7+NPGBFPHnit/T3Lx5mKIWwazMHobocmMTmkT7xDTy4IC2Owl4MoD798huyxntMvycgMBeo7Dul
	900cUqNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUOp2-007AKU-Cq; Tue, 21 Feb 2023 09:20:28 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUOow-007AIr-3P
	for barebox@lists.infradead.org; Tue, 21 Feb 2023 09:20:24 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pUOos-0008Tf-Fn; Tue, 21 Feb 2023 10:20:18 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pUOor-0006kQ-TU; Tue, 21 Feb 2023 10:20:17 +0100
Date: Tue, 21 Feb 2023 10:20:17 +0100
To: Michael Kopfensteiner <michael.kopfensteiner@vahle.com>
Cc: barebox@lists.infradead.org
Message-ID: <20230221092017.GY10447@pengutronix.de>
References: <20230220090615.4451-1-michael.kopfensteiner@vahle.com>
 <20230220090615.4451-2-michael.kopfensteiner@vahle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230220090615.4451-2-michael.kopfensteiner@vahle.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230221_012022_499923_BF24F07F 
X-CRM114-Status: GOOD (  51.04  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/3] ARM: IMX8MP: add initial support for Variscite
 DT8MCustomBoard with iMX8MP
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Michael,

Thanks for the patch. Looks mostly good, some small remarks inside.

On Mon, Feb 20, 2023 at 10:06:14AM +0100, Michael Kopfensteiner wrote:
> The Variscite DT8MCustomBoard is an eval board for the several Variscite
> SOMs of their "DART" product line. This commit adds support for that
> baseboard in combination with a DART-MX8M-PLUS SOM. The commit contains
> an adapted version of the vendors device tree [1] and the vendors DDR
> timings, taken from Variscite's public U-Boot sources [2].
> 
> Both files have been slightly changed to integrate well with barebox.
> 
> The boardsupport added with this commit does not yet support every
> feature of the DT8MCustomBoard. Yet it already supports all basic
> necessities to make use of barebox.
> 
> [1] https://github.com/varigit/linux-imx/tree/3f94f35bda827e8aa06beadb10c77358cfb6dad9
> [2] https://github.com/varigit/uboot-imx/tree/7cad2ff68a508c71c572151a85bc786711bab969
> 
> Signed-off-by: Michael Kopfensteiner <michael.kopfensteiner@vahle.com>
> ---
>  arch/arm/boards/Makefile                      |    1 +
>  .../variscite-dt8mcustomboard-imx8mp/Makefile |    5 +
>  .../variscite-dt8mcustomboard-imx8mp/board.c  |   91 ++
>  .../init/automount                            |   19 +
>  .../flash-header-imx8mp-dart.imxcfg           |    7 +
>  .../lowlevel.c                                |  138 ++
>  .../lpddr4-timing.c                           | 1128 +++++++++++++++++
>  arch/arm/configs/imx_v8_defconfig             |    2 +
>  ...variscite_dt8mcustomboard_imx8mp_defconfig |  143 +++
>  arch/arm/dts/Makefile                         |    1 +
>  .../dts/imx8mp-var-dart-dt8mcustomboard.dts   |  680 ++++++++++
>  arch/arm/dts/imx8mp-var-dart.dtsi             |  395 ++++++
>  arch/arm/mach-imx/Kconfig                     |   10 +
>  images/Makefile.imx                           |    5 +
>  14 files changed, 2625 insertions(+)
>  create mode 100644 arch/arm/boards/variscite-dt8mcustomboard-imx8mp/Makefile
>  create mode 100644 arch/arm/boards/variscite-dt8mcustomboard-imx8mp/board.c
>  create mode 100644 arch/arm/boards/variscite-dt8mcustomboard-imx8mp/defaultenv-variscite-imx8mp-dart/init/automount
>  create mode 100644 arch/arm/boards/variscite-dt8mcustomboard-imx8mp/flash-header-imx8mp-dart.imxcfg
>  create mode 100644 arch/arm/boards/variscite-dt8mcustomboard-imx8mp/lowlevel.c
>  create mode 100644 arch/arm/boards/variscite-dt8mcustomboard-imx8mp/lpddr4-timing.c
>  create mode 100644 arch/arm/configs/variscite_dt8mcustomboard_imx8mp_defconfig
>  create mode 100644 arch/arm/dts/imx8mp-var-dart-dt8mcustomboard.dts
>  create mode 100644 arch/arm/dts/imx8mp-var-dart.dtsi
> 
> diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
> index f92094d15b..671f07c7bc 100644
> --- a/arch/arm/boards/Makefile
> +++ b/arch/arm/boards/Makefile
> @@ -200,3 +200,4 @@ obj-$(CONFIG_MACH_RK3568_EVB)			+= rockchip-rk3568-evb/
>  obj-$(CONFIG_MACH_RK3568_BPI_R2PRO)			+= rockchip-rk3568-bpi-r2pro/
>  obj-$(CONFIG_MACH_PINE64_QUARTZ64)		+= pine64-quartz64/
>  obj-$(CONFIG_MACH_RADXA_ROCK3)			+= radxa-rock3/
> +obj-$(CONFIG_MACH_VARISCITE_DT8MCUSTOMBOARD_IMX8MP)	+= variscite-dt8mcustomboard-imx8mp/
> diff --git a/arch/arm/boards/variscite-dt8mcustomboard-imx8mp/Makefile b/arch/arm/boards/variscite-dt8mcustomboard-imx8mp/Makefile
> new file mode 100644
> index 0000000000..c7bf14d146
> --- /dev/null
> +++ b/arch/arm/boards/variscite-dt8mcustomboard-imx8mp/Makefile
> @@ -0,0 +1,5 @@
> +# SPDX-License-Identifier: GPL-2.0-only
> +
> +obj-y += board.o
> +lwl-y += lowlevel.o lpddr4-timing.o
> +bbenv-y += defaultenv-variscite-imx8mp-dart
> diff --git a/arch/arm/boards/variscite-dt8mcustomboard-imx8mp/board.c b/arch/arm/boards/variscite-dt8mcustomboard-imx8mp/board.c
> new file mode 100644
> index 0000000000..a6ef1bb7c9
> --- /dev/null
> +++ b/arch/arm/boards/variscite-dt8mcustomboard-imx8mp/board.c
> @@ -0,0 +1,91 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (C) 2023 Michael Kopfensteiner, VAHLE Automation GmbH
> + */
> +
> +#include <asm/memory.h>
> +#include <bootsource.h>
> +#include <common.h>
> +#include <deep-probe.h>
> +#include <init.h>
> +#include <linux/phy.h>
> +#include <linux/sizes.h>
> +#include <mach/bbu.h>
> +#include <mach/iomux-mx8mp.h>
> +#include <gpio.h>
> +#include <envfs.h>
> +
> +#define PHY_ID_ADIN1300		0x0283bc30
> +#define PHY_ID_MODEL_MASK	0xfffffff0
> +
> +/*
> + * This fixup is necessary to properly configure the ADIN1300
> + * PHY on the SOM to properly communicate using RGMII.
> + * This fixup disables the PHY's internal 2ns RGMII receive clock
> + * delay. Without this configuration change, the system will
> + * be able to send Ethernet packages, but the MAC won't receive
> + * any response packages.
> + *
> + * This fixup is specific to the ADIN1300 PHY. This implementation
> + * was ported from Variscite's U-Boot sources.
> + */
> +static int phy_fixup_adin1300(struct phy_device *dev) {
> +	int ret;
> +
> +	pr_debug("BOARD: applying PHY fixup for ADIN1300\n");
> +
> +	ret = mdiobus_write(dev->bus, dev->addr, 0x0010, 0xFF23);
> +	if (ret) {
> +		pr_warn("ADIN1300 PHY fixup: failed to write EXT_REG_PTR\n");
> +		return ret;
> +	}
> +
> +	ret = mdiobus_write(dev->bus, dev->addr, 0x0011, 0x0E01);
> +	if (ret)  {
> +		pr_warn("ADIN1300 PHY fixup: failed to write EXT_REG_DATA\n");
> +		return ret;
> +	}
> +
> +	return 0;
> +}
> +
> +static int var_imx8mp_dart_cb_probe(struct device_d *dev)
> +{
> +	int emmc_bbu_flag = 0;
> +	int sd_bbu_flag = 0;
> +
> +	phy_register_fixup(PHY_ANY_ID, PHY_ID_ADIN1300, PHY_ID_MODEL_MASK, phy_fixup_adin1300);
> +
> +	if (bootsource_get() == BOOTSOURCE_MMC) {
> +		if (bootsource_get_instance() == 2) {
> +			of_device_enable_path("/chosen/environment-emmc");
> +			emmc_bbu_flag = BBU_HANDLER_FLAG_DEFAULT;
> +		} else {
> +			of_device_enable_path("/chosen/environment-sd");
> +			sd_bbu_flag = BBU_HANDLER_FLAG_DEFAULT;
> +		}
> +	} else {
> +		of_device_enable_path("/chosen/environment-emmc");
> +		emmc_bbu_flag = BBU_HANDLER_FLAG_DEFAULT;
> +	}

This is equivalent to:

	if (bootsource_get() == BOOTSOURCE_MMC && bootsource_get_instance() != 2) {
		of_device_enable_path("/chosen/environment-sd");
		sd_bbu_flag = BBU_HANDLER_FLAG_DEFAULT;
	} else {
		of_device_enable_path("/chosen/environment-emmc");
		emmc_bbu_flag = BBU_HANDLER_FLAG_DEFAULT;
	}

This has a bit less duplication. Rather than excluding the non-eMMC
devices I think you should include the right one, i.e. write
"bootsource_get_instance() == x"

> +
> +	imx8m_bbu_internal_mmc_register_handler("SD", "/dev/mmc1.barebox", sd_bbu_flag);
> +	imx8m_bbu_internal_mmcboot_register_handler("eMMC", "/dev/mmc2", emmc_bbu_flag);
> +
> +	defaultenv_append_directory(defaultenv_variscite_imx8mp_dart);
> +
> +	return 0;
> +}
> +
> +static const struct of_device_id var_imx8mp_dart_cb_of_match[] = {
> +	{ .compatible = "variscite,imx8mp-var-dart" },
> +	{ /* Sentinel */ }
> +};
> +BAREBOX_DEEP_PROBE_ENABLE(var_imx8mp_dart_cb_of_match);
> +
> +static struct driver_d var_imx8mp_dart_cb_board_driver = {
> +	.name = "board-var-imx8mp-dart-cb",
> +	.probe = var_imx8mp_dart_cb_probe,
> +	.of_compatible = var_imx8mp_dart_cb_of_match,
> +};
> +coredevice_platform_driver(var_imx8mp_dart_cb_board_driver);
> diff --git a/arch/arm/boards/variscite-dt8mcustomboard-imx8mp/defaultenv-variscite-imx8mp-dart/init/automount b/arch/arm/boards/variscite-dt8mcustomboard-imx8mp/defaultenv-variscite-imx8mp-dart/init/automount
> new file mode 100644
> index 0000000000..4c084a9fb8
> --- /dev/null
> +++ b/arch/arm/boards/variscite-dt8mcustomboard-imx8mp/defaultenv-variscite-imx8mp-dart/init/automount
> @@ -0,0 +1,19 @@
> +#!/bin/sh
> +
> +# automount tftp server
> +
> +mkdir -p /mnt/tftp
> +automount /mnt/tftp 'ifup -a1 && mount -t tftp $global.net.server /mnt/tftp'
> +
> +# automount nfs server's nfsroot
> +
> +mkdir -p /mnt/nfs
> +automount /mnt/nfs 'ifup -a1 && mount -t nfs ${global.net.server}:/home/${global.user}/nfsroot/${global.hostname} /mnt/nfs'
> +
> +# detect and (automatically) prepare automounts for the internal eMMC
> +detect mmc2
> +
> +# FAT on usb disk example
> +
> +#mkdir -p /mnt/fat
> +#automount -d /mnt/fat 'usb && [ -e /dev/disk0.0 ] && mount /dev/disk0.0 /mnt/fat'

Is this file needed? What's the difference to the file provided in
defaultenv/defaultenv-2-base/init/automount?

> diff --git a/arch/arm/boards/variscite-dt8mcustomboard-imx8mp/flash-header-imx8mp-dart.imxcfg b/arch/arm/boards/variscite-dt8mcustomboard-imx8mp/flash-header-imx8mp-dart.imxcfg
> new file mode 100644
> index 0000000000..2b104edfb7
> --- /dev/null
> +++ b/arch/arm/boards/variscite-dt8mcustomboard-imx8mp/flash-header-imx8mp-dart.imxcfg
> +	imx8mp_setup_pad(MX8MP_PAD_I2C1_SDA__I2C1_SDA | I2C_PAD_CTRL);
> +
> +	imx8mm_early_clock_init();
> +	imx8m_ccgr_clock_enable(IMX8M_CCM_CCGR_I2C1);
> +
> +	i2c = imx8m_i2c_early_init(IOMEM(MX8MP_I2C1_BASE_ADDR));
> +
> +	pmic_configure(i2c, 0x25, pca9450_cfg, ARRAY_SIZE(pca9450_cfg));
> +}
> +
> +extern struct dram_timing_info dram_timing;

Please add some board specific prefix to the name. Otherwise we'll get
linker errors when more than one board is compiled in.

> +
> +static void start_atf(void)
> +{
> +	/*
> +	 * If we are in EL3 we are running for the first time and need to
> +	 * initialize the DRAM and run TF-A (BL31). The TF-A will then jump
> +	 * to DRAM in EL2.
> +	 */
> +	if (current_el() != 3)
> +		return;
> +
> +	power_init_board();
> +
> +	imx8mp_ddr_init(&dram_timing, DRAM_TYPE_LPDDR4);
> +
> +	imx8mp_load_and_start_image_via_tfa();
> +}
> +
> +static __noreturn noinline void variscite_imx8mp_dart_cb_start(void)
> +{
> +	if (IS_ENABLED(CONFIG_DEBUG_LL))
> +	    setup_uart();

setup_uart() calls pbl_set_putc() which makes it useful for regular use,
not only CONFIG_DEBUG_LL. I would just call this unconditionally.

> +
> +	start_atf();
> +
> +	/*
> +	 * Standard entry we hit once we initialized both DDR and ATF
> +	 */
> +	imx8mp_barebox_entry(__dtb_z_imx8mp_var_dart_dt8mcustomboard_start);
> +}
> +
> +/*
> + * Power-on execution flow of nxp_imx8mp_vardart_start() might not be
> + * obvious for a very first read, so here's, hopefully helpful,
> + * summary:
> + *
> + * 1. MaskROM uploads PBL into OCRAM and that's where this function is
> + *    executed for the first time. At entry the exception level is EL3.
> + *
> + * 2. DDR is initialized and the image is loaded from storage into DRAM. The PBL
> + *    part is copied from OCRAM to the TF-A return address in DRAM.
> + *
> + * 3. TF-A is executed and exits into the PBL code in DRAM. TF-A has taken us
> + *    from EL3 to EL2.
> + *
> + * 4. Standard barebox boot flow continues
> + */
> +ENTRY_FUNCTION(start_variscite_imx8mp_dart, r0, r1, r2)
> +{
> +	imx8mp_cpu_lowlevel_init();
> +	relocate_to_current_adr();
> +	setup_c();
> +
> +	IMD_USED_OF(imx8mp_var_dart_dt8mcustomboard);
> +
> +	variscite_imx8mp_dart_cb_start();
> +}
> diff --git a/arch/arm/configs/variscite_dt8mcustomboard_imx8mp_defconfig b/arch/arm/configs/variscite_dt8mcustomboard_imx8mp_defconfig

No board specific defconfigs please.

> diff --git a/arch/arm/dts/imx8mp-var-dart-dt8mcustomboard.dts b/arch/arm/dts/imx8mp-var-dart-dt8mcustomboard.dts
> new file mode 100644
> index 0000000000..704289aa0b
> --- /dev/null
> +++ b/arch/arm/dts/imx8mp-var-dart-dt8mcustomboard.dts
> @@ -0,0 +1,680 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright 2019 NXP
> + * Copyright 2020-2021 Variscite Ltd.
> + * Copyright 2023 VAHLE Automation GmbH
> + */
> +
> +#include "imx8mp-var-dart.dtsi"
> +
> +/ {
> +	model = "Variscite DART-MX8M-PLUS on DT8MCustomBoard 2.x";
> +
> +	// use the memory controller instead
> +	/delete-node/ memory@40000000;

Better don't add this node to the dtsi file. Is the memory size detected
correctly? The dtsi file describes 6 GiB of memory which is rather
unusual. Is that what your board has?

> +&edacmc {
> +	status = "okay";
> +};

You can drop this. It's already enabled in imx8mp.dtsi.

> +&i2c2 {
> +	clock-frequency = <400000>;
> +	pinctrl-names = "default", "gpio";
> +	pinctrl-0 = <&pinctrl_i2c2>;
> +	pinctrl-1 = <&pinctrl_i2c2_gpio>;
> +	scl-gpios = <&gpio5 16 GPIO_ACTIVE_HIGH>;
> +	sda-gpios = <&gpio5 17 GPIO_ACTIVE_HIGH>;
> +	status = "okay";
> +
> +	typec@3d {
> +		compatible = "nxp,ptn5150";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_extcon>;
> +		reg = <0x3d>;
> +		interrupt-parent = <&gpio1>;
> +		interrupts = <10 IRQ_TYPE_LEVEL_HIGH>;
> +		irq-is-id-quirk;
> +		status ="okay";

status = "okay" is unnecessary for newly added nodes as it's the default.

> +
> +		port {
> +			typec_dr_sw: endpoint {
> +				remote-endpoint = <&usb3_drd_sw>;
> +			};
> +		};
> +	};
> +
> +	/* DS1337 RTC module */
> +	rtc@68 {
> +		compatible = "dallas,ds1337";
> +		reg = <0x68>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_rtc>;
> +		interrupt-parent = <&gpio1>;
> +		interrupts = <15 IRQ_TYPE_EDGE_FALLING>;
> +		wakeup-source;
> +		status = "okay";

dito

> +	};
> +
> +	/* Capacitive touch controller */
> +	ft5x06_ts: ft5x06_ts@38 {
> +		compatible = "edt,edt-ft5206";
> +		reg = <0x38>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_captouch>;
> +		reset-gpios = <&pca6408_2 4 GPIO_ACTIVE_LOW>;
> +		interrupt-parent = <&gpio1>;
> +		interrupts = <14 IRQ_TYPE_EDGE_FALLING>;
> +		touchscreen-size-x = <800>;
> +		touchscreen-size-y = <480>;
> +		touchscreen-inverted-x;
> +		touchscreen-inverted-y;
> +		wakeup-source;
> +		status = "okay";

dito, found in other places as well.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



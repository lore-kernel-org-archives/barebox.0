Delivery-date: Fri, 22 Apr 2022 12:17:26 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nhqLw-00B2jl-5U
	for lore@lore.pengutronix.de; Fri, 22 Apr 2022 12:17:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nhqLs-0001LJ-Cx
	for lore@pengutronix.de; Fri, 22 Apr 2022 12:17:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=jkbPlT88x1ll9r+ksctu4mrMkYN1up3tr4CRDW8hols=; b=TMKuL1wwOafuSrW/HjQACSCtcy
	hIu0PFWdXOkJGTLJ/T5Tmog9606li254u5A1QzsdE+XyotnRgogOVKxjm5fFE1GHXxuUtacznzv2g
	P+T7/oV4zCgg/vYRf9daGNZGZnvsaI+vG84y+jcUcOfdoUdj9pAyxdeeNrZP+vY1+d2xFL0UcrEpE
	AkEjKE+LiR2X+DVqr0Ux2/O9A3MjyRJc88DGthvm3eDncfgWMSUbMYCHquwSk5Q8spAeVtx/SxAAr
	ZTWRGioOIQgTliDg1dYnetyOvAnU9SUkgK7iaCG2FL/sHSZTh/nMxSEm/2sg9SZtKyMAQM5I2t2qF
	NE1HnLOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nhqKO-00HYYL-3S; Fri, 22 Apr 2022 10:15:52 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nhqKF-00HYVC-NQ
 for barebox@lists.infradead.org; Fri, 22 Apr 2022 10:15:47 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nhqKC-0000r5-Sb; Fri, 22 Apr 2022 12:15:40 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nhqKC-0006DD-Ak; Fri, 22 Apr 2022 12:15:40 +0200
Date: Fri, 22 Apr 2022 12:15:40 +0200
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <20220422101540.GE4012@pengutronix.de>
References: <20220422080910.28023-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220422080910.28023-1-eagle.alexander923@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 12:13:26 up 22 days, 22:43, 78 users,  load average: 0.11, 0.16, 0.18
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220422_031544_154126_E181E242 
X-CRM114-Status: GOOD (  35.35  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] arm: boards: Add support for MYIR MYD-AM335X
 Development Board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Apr 22, 2022 at 11:09:10AM +0300, Alexander Shiyan wrote:
> The MYD-AM335X Development Board designed by MYIR is a high-performance
> ARM Evaluation Module (EVM) using the MYC-AM335X CPU module as the core
> controller board. It is based on up to 1GHz Texas Instruments (TI)
> Sitara AM335x family of ARM Cortex-A8 Microprocessors (MPUs) that deliver
> high DMIPs at a low cost while also delivering optional 3D graphics
> acceleration and key peripherals.
> 
> Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
> ---
>  arch/arm/boards/Makefile                      |   1 +
>  arch/arm/boards/myirtech-x335x/Makefile       |   3 +
>  arch/arm/boards/myirtech-x335x/board.c        |  44 +++++++
>  .../defaultenv-myirtech-x335x/boot/nand       |   4 +
>  .../defaultenv-myirtech-x335x/nv/boot.default |   1 +
>  arch/arm/boards/myirtech-x335x/lowlevel.c     | 115 ++++++++++++++++++
>  arch/arm/configs/am335x_mlo_defconfig         |   1 +
>  arch/arm/configs/omap_defconfig               |   3 +-
>  arch/arm/dts/Makefile                         |   1 +
>  arch/arm/dts/am335x-myirtech-myd.dts          |  41 +++++++
>  arch/arm/mach-omap/Kconfig                    |   6 +
>  .../arm/mach-omap/include/mach/am33xx-clock.h |   1 +
>  .../mach-omap/include/mach/am33xx-silicon.h   |   2 +
>  images/Makefile.am33xx                        |   8 ++
>  14 files changed, 230 insertions(+), 1 deletion(-)
>  create mode 100644 arch/arm/boards/myirtech-x335x/Makefile
>  create mode 100644 arch/arm/boards/myirtech-x335x/board.c
>  create mode 100644 arch/arm/boards/myirtech-x335x/defaultenv-myirtech-x335x/boot/nand
>  create mode 100644 arch/arm/boards/myirtech-x335x/defaultenv-myirtech-x335x/nv/boot.default
>  create mode 100644 arch/arm/boards/myirtech-x335x/lowlevel.c
>  create mode 100644 arch/arm/dts/am335x-myirtech-myd.dts
> 
> diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
> index 75e15cbda4..d303999614 100644
> --- a/arch/arm/boards/Makefile
> +++ b/arch/arm/boards/Makefile
> @@ -77,6 +77,7 @@ obj-$(CONFIG_MACH_MB7707)			+= module-mb7707/
>  obj-$(CONFIG_MACH_MIOA701)			+= mioa701/
>  obj-$(CONFIG_MACH_MX23EVK)			+= freescale-mx23-evk/
>  obj-$(CONFIG_MACH_MX28EVK)			+= freescale-mx28-evk/
> +obj-$(CONFIG_MACH_MYIRTECH_X335X)		+= myirtech-x335x/
>  obj-$(CONFIG_MACH_NESO)				+= guf-neso/
>  obj-$(CONFIG_MACH_NETGEAR_RN104)		+= netgear-rn104/
>  obj-$(CONFIG_MACH_NETGEAR_RN2120)		+= netgear-rn2120/
> diff --git a/arch/arm/boards/myirtech-x335x/Makefile b/arch/arm/boards/myirtech-x335x/Makefile
> new file mode 100644
> index 0000000000..05d9fc7bc3
> --- /dev/null
> +++ b/arch/arm/boards/myirtech-x335x/Makefile
> @@ -0,0 +1,3 @@
> +lwl-y					+= lowlevel.o
> +obj-y					+= board.o
> +bbenv-$(CONFIG_DEFAULT_ENVIRONMENT)	+= defaultenv-myirtech-x335x
> diff --git a/arch/arm/boards/myirtech-x335x/board.c b/arch/arm/boards/myirtech-x335x/board.c
> new file mode 100644
> index 0000000000..7fb2af1cec
> --- /dev/null
> +++ b/arch/arm/boards/myirtech-x335x/board.c
> @@ -0,0 +1,44 @@
> +/* SPDX-License-Identifier: GPL-2.0+ */
> +/* SPDX-FileCopyrightText: Alexander Shiyan <shc_work@mail.ru> */
> +
> +#include <bootsource.h>
> +#include <common.h>
> +#include <driver.h>
> +#include <envfs.h>
> +#include <init.h>
> +#include <linux/sizes.h>
> +#include <mach/am33xx-generic.h>
> +
> +static struct omap_barebox_part myir_barebox_part = {
> +	.nand_offset = SZ_512K,
> +	.nand_size = SZ_512K,
> +};
> +
> +static __init int myir_devices_init(void)
> +{
> +	if (!of_machine_is_compatible("myir,myc-am335x"))
> +		return 0;
> +
> +	am33xx_register_ethaddr(0, 0);
> +	am33xx_register_ethaddr(1, 1);
> +
> +	switch (bootsource_get()) {
> +	case BOOTSOURCE_MMC:
> +		omap_set_bootmmc_devname("mmc0");
> +		break;
> +	case BOOTSOURCE_NAND:
> +		omap_set_barebox_part(&myir_barebox_part);
> +		break;
> +	default:
> +		break;
> +	}
> +
> +	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT))
> +		defaultenv_append_directory(defaultenv_myirtech_x335x);
> +
> +	if (IS_ENABLED(CONFIG_SHELL_NONE))
> +		return am33xx_of_register_bootdevice();
> +
> +	return 0;
> +}
> +coredevice_initcall(myir_devices_init);
> diff --git a/arch/arm/boards/myirtech-x335x/defaultenv-myirtech-x335x/boot/nand b/arch/arm/boards/myirtech-x335x/defaultenv-myirtech-x335x/boot/nand
> new file mode 100644
> index 0000000000..c000041095
> --- /dev/null
> +++ b/arch/arm/boards/myirtech-x335x/defaultenv-myirtech-x335x/boot/nand
> @@ -0,0 +1,4 @@
> +#!/bin/sh
> +
> +global.bootm.image="/dev/nand0.system.ubi.kernel"
> +global.linux.bootargs.dyn.root="ubi.mtd=system ubi.block=0,root root=fe00 ro"
> diff --git a/arch/arm/boards/myirtech-x335x/defaultenv-myirtech-x335x/nv/boot.default b/arch/arm/boards/myirtech-x335x/defaultenv-myirtech-x335x/nv/boot.default
> new file mode 100644
> index 0000000000..026a25cc7e
> --- /dev/null
> +++ b/arch/arm/boards/myirtech-x335x/defaultenv-myirtech-x335x/nv/boot.default
> @@ -0,0 +1 @@
> +nand
> diff --git a/arch/arm/boards/myirtech-x335x/lowlevel.c b/arch/arm/boards/myirtech-x335x/lowlevel.c
> new file mode 100644
> index 0000000000..9afae90b33
> --- /dev/null
> +++ b/arch/arm/boards/myirtech-x335x/lowlevel.c
> @@ -0,0 +1,115 @@
> +/* SPDX-License-Identifier: GPL-2.0+ */
> +/* SPDX-FileCopyrightText: Alexander Shiyan <shc_work@mail.ru> */
> +
> +#include <io.h>
> +#include <asm/barebox-arm-head.h>
> +#include <asm/barebox-arm.h>
> +#include <debug_ll.h>
> +#include <init.h>
> +#include <linux/sizes.h>
> +#include <mach/am33xx-clock.h>
> +#include <mach/am33xx-generic.h>
> +#include <mach/am33xx-mux.h>
> +#include <mach/generic.h>
> +#include <mach/sdrc.h>
> +#include <mach/sys_info.h>
> +#include <mach/wdt.h>
> +
> +#define AM335X_ZCZ_1000		0x1c2f
> +
> +static const struct am33xx_ddr_data ddr3_data = {
> +	.rd_slave_ratio0	= 0x38,
> +	.wr_dqs_slave_ratio0	= 0x44,
> +	.fifo_we_slave_ratio0	= 0x94,
> +	.wr_slave_ratio0	= 0x7d,
> +	.use_rank0_delay	= 0x01,
> +	.dll_lock_diff0		= 0x00,
> +};
> +
> +static const struct am33xx_cmd_control ddr3_cmd_ctrl = {
> +	.slave_ratio0	= 0x80,
> +	.dll_lock_diff0	= 0x01,
> +	.invert_clkout0	= 0x00,
> +	.slave_ratio1	= 0x80,
> +	.dll_lock_diff1	= 0x01,
> +	.invert_clkout1	= 0x00,
> +	.slave_ratio2	= 0x80,
> +	.dll_lock_diff2	= 0x01,
> +	.invert_clkout2	= 0x00,
> +};
> +
> +/* CPU module contains 512MB (2*256MB) DDR3 SDRAM (2*128MB compatible),
> + * so we configure EMIF for 512MB then detect real size of memory.
> + */
> +static const struct am33xx_emif_regs ddr3_regs = {
> +	.emif_read_latency	= 0x00100007,
> +	.emif_tim1		= 0x0aaad4db,
> +	.emif_tim2		= 0x266b7fda,
> +	.emif_tim3		= 0x501f867f,
> +	.zq_config		= 0x50074be4,
> +	.sdram_config		= 0x61c05332,
> +	.sdram_config2		= 0x00,
> +	.sdram_ref_ctrl		= 0xc30,
> +};
> +
> +extern char __dtb_z_am335x_myirtech_myd_start[];
> +
> +ENTRY_FUNCTION(start_am33xx_myirtech_sram, bootinfo, r1, r2)
> +{
> +	int mpupll;
> +	void *fdt;
> +
> +	am33xx_save_bootinfo((void *)bootinfo);
> +
> +	arm_cpu_lowlevel_init();
> +
> +	relocate_to_current_adr();
> +	setup_c();
> +
> +	fdt = __dtb_z_am335x_myirtech_myd_start;
> +
> +	/* WDT1 is already running when the bootloader gets control
> +	 * Disable it to avoid "random" resets
> +	 */
> +	__raw_writel(WDT_DISABLE_CODE1, AM33XX_WDT_REG(WSPR));
> +	while (__raw_readl(AM33XX_WDT_REG(WWPS)) != 0x0);
> +	__raw_writel(WDT_DISABLE_CODE2, AM33XX_WDT_REG(WSPR));
> +	while (__raw_readl(AM33XX_WDT_REG(WWPS)) != 0x0);
> +
> +	mpupll = MPUPLL_M_800;
> +	if (am33xx_get_cpu_rev() == AM335X_ES2_1) {
> +		u32 deviceid = readl(AM33XX_EFUSE_SMA) & 0x1fff;
> +		if (deviceid == AM335X_ZCZ_1000)
> +			mpupll = MPUPLL_M_1000;
> +	}
> +
> +	am33xx_pll_init(mpupll, DDRPLL_M_400);
> +
> +	am335x_sdram_init(0x18b, &ddr3_cmd_ctrl, &ddr3_regs, &ddr3_data);
> +
> +	if (IS_ENABLED(CONFIG_DEBUG_LL)) {
> +		am33xx_uart_soft_reset((void *)AM33XX_UART0_BASE);
> +		am33xx_enable_uart0_pin_mux();
> +		omap_uart_lowlevel_init((void *)AM33XX_UART0_BASE);
> +		putc_ll('>');
> +	}
> +
> +	barebox_arm_entry(AM33XX_DRAM_ADDR_SPACE_START, SZ_256M, fdt);
> +}
> +
> +ENTRY_FUNCTION(start_am33xx_myirtech_sdram, r0, r1, r2)
> +{
> +	void *fdt;
> +	u32 sdram_size;
> +
> +	fdt = __dtb_z_am335x_myirtech_myd_start;
> +
> +	fdt += get_runtime_offset();
> +
> +	/* Detect 256M/512M module variant */
> +	__raw_writel(SZ_512M, AM33XX_DRAM_ADDR_SPACE_START + SZ_256M);
> +	__raw_writel(SZ_256M, AM33XX_DRAM_ADDR_SPACE_START + 0);
> +	sdram_size = __raw_readl(AM33XX_DRAM_ADDR_SPACE_START + SZ_256M);
> +
> +	barebox_arm_entry(AM33XX_DRAM_ADDR_SPACE_START, sdram_size, fdt);
> +}
> diff --git a/arch/arm/configs/am335x_mlo_defconfig b/arch/arm/configs/am335x_mlo_defconfig
> index 51d238db3e..83bb20e4b5 100644
> --- a/arch/arm/configs/am335x_mlo_defconfig
> +++ b/arch/arm/configs/am335x_mlo_defconfig
> @@ -5,6 +5,7 @@ CONFIG_OMAP_SERIALBOOT=y
>  CONFIG_OMAP_MULTI_BOARDS=y
>  CONFIG_MACH_AFI_GF=y
>  CONFIG_MACH_BEAGLEBONE=y
> +CONFIG_MACH_MYIRTECH_X335X=y
>  CONFIG_MACH_PHYTEC_SOM_AM335X=y
>  CONFIG_THUMB2_BAREBOX=y
>  # CONFIG_MEMINFO is not set
> diff --git a/arch/arm/configs/omap_defconfig b/arch/arm/configs/omap_defconfig
> index 59892cb231..ae4d1a67da 100644
> --- a/arch/arm/configs/omap_defconfig
> +++ b/arch/arm/configs/omap_defconfig
> @@ -6,6 +6,7 @@ CONFIG_OMAP_MULTI_BOARDS=y
>  CONFIG_MACH_AFI_GF=y
>  CONFIG_MACH_BEAGLE=y
>  CONFIG_MACH_BEAGLEBONE=y
> +CONFIG_MACH_MYIRTECH_X335X=y
>  CONFIG_MACH_PHYTEC_SOM_AM335X=y
>  CONFIG_MACH_VSCOM_BALTOS=y
>  CONFIG_MACH_WAGO_PFC_AM35XX=y
> @@ -46,6 +47,7 @@ CONFIG_CMD_GO=y
>  CONFIG_CMD_LOADB=y
>  CONFIG_CMD_RESET=y
>  CONFIG_CMD_UIMAGE=y
> +CONFIG_CMD_BOOTCHOOSER=y
>  CONFIG_CMD_PARTITION=y
>  CONFIG_CMD_UBIFORMAT=y
>  CONFIG_CMD_EXPORT=y
> @@ -93,7 +95,6 @@ CONFIG_CMD_OF_FIXUP_STATUS=y
>  CONFIG_CMD_OFTREE=y
>  CONFIG_CMD_TIME=y
>  CONFIG_CMD_STATE=y
> -CONFIG_CMD_BOOTCHOOSER=y
>  CONFIG_NET=y
>  CONFIG_NET_NFS=y
>  CONFIG_NET_NETCONSOLE=y
> diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
> index 925ac12aa5..619354fcb6 100644
> --- a/arch/arm/dts/Makefile
> +++ b/arch/arm/dts/Makefile
> @@ -40,6 +40,7 @@ lwl-$(CONFIG_MACH_MARVELL_ARMADA_XP_GP) += armada-xp-gp-bb.dtb.o
>  lwl-$(CONFIG_MACH_MARVELL_ARMADA_XP_DB) += armada-xp-db-bb.dtb.o
>  lwl-$(CONFIG_MACH_MB7707) += module-mb7707.dtb.o
>  lwl-$(CONFIG_MACH_MX28EVK) += imx28-evk.dtb.o
> +lwl-$(CONFIG_MACH_MYIRTECH_X335X) += am335x-myirtech-myd.dtb.o
>  lwl-$(CONFIG_MACH_NETGEAR_RN104) += armada-370-rn104-bb.dtb.o
>  lwl-$(CONFIG_MACH_NETGEAR_RN2120) += armada-xp-rn2120-bb.dtb.o
>  lwl-$(CONFIG_MACH_NITROGEN6) += imx6q-nitrogen6x.dtb.o imx6dl-nitrogen6x.dtb.o imx6qp-nitrogen6_max.dtb.o
> diff --git a/arch/arm/dts/am335x-myirtech-myd.dts b/arch/arm/dts/am335x-myirtech-myd.dts
> new file mode 100644
> index 0000000000..9baf3d516d
> --- /dev/null
> +++ b/arch/arm/dts/am335x-myirtech-myd.dts
> @@ -0,0 +1,41 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +/* SPDX-FileCopyrightText: Alexander Shiyan, <shc_work@mail.ru> */
> +
> +/dts-v1/;
> +
> +#include <arm/am335x-myirtech-myd.dts>
> +
> +/ {
> +	chosen {
> +		environment {
> +			compatible = "barebox,environment";
> +			device-path = &env_nand;
> +		};
> +	};
> +
> +};
> +
> +&nand0 {
> +	/delete-node/ partition@0;
> +	/delete-node/ partition@20000;
> +
> +	partition@0 {
> +		label = "MLO";
> +		reg = <0x00000 0x80000>;
> +	};
> +
> +	partition@80000 {
> +		label = "boot";
> +		reg = <0x80000 0x80000>;
> +	};
> +
> +	env_nand: partition@100000 {
> +		label = "env";
> +		reg = <0x100000 0x40000>;
> +	};
> +
> +	partition@140000 {
> +		label = "system";
> +		reg = <0x140000 0>;
> +	};

I assumed that you would use the new partition binding now.
Can you make the barebox partition bigger? That makes sure that future
barebox images will fit into it.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


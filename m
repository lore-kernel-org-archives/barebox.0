Delivery-date: Mon, 19 Jan 2026 16:25:25 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vhr89-0034TJ-2l
	for lore@lore.pengutronix.de;
	Mon, 19 Jan 2026 16:25:25 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vhr87-00031T-1s
	for lore@pengutronix.de; Mon, 19 Jan 2026 16:25:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Mxtoi7II0mIHoPnhETjwx1TO+LzHe4yElcH889+xMP0=; b=Rv4zV8wtvaoXaIc8+0FUVlR2ta
	vwady9sd+AiR48KrEuxkOjXnIMRbcW+qs2Bt5ue+b0K0wplRpuq4YlCjAE3UyrnTK5hzB56wydLdK
	ymyafUAChnG0pFV52Um8tzo4mz5zLhRLsqNZ5Ym8FOapeaT+W4uk5GtBF3tb3nUjBjmHh0Vm1JHuH
	orAah8wjtVZmXe2q37NsscoAQoQIi2cFr39sJwzM1S3aYdJgAUiQ3v/esUPrS+1Q86uXLyXVbOFNS
	/OdfyVBkTkDv3QFgiQkD0mz+2EkicD0poxZKdqJRMjoU+UNK6aYl7Vx2N+aZpo8IE6+gl1OFp1n5x
	EDi0zUqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhr7V-00000002LeN-27yy;
	Mon, 19 Jan 2026 15:24:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhr7P-00000002LdL-0WwN
	for barebox@lists.infradead.org;
	Mon, 19 Jan 2026 15:24:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1vhr7N-0002ol-Hz; Mon, 19 Jan 2026 16:24:37 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1vhr7O-001RBQ-06;
	Mon, 19 Jan 2026 16:24:37 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1vhr7N-003Q5s-0p;
	Mon, 19 Jan 2026 16:24:37 +0100
Date: Mon, 19 Jan 2026 16:24:37 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Fabian Pfitzner <f.pfitzner@pengutronix.de>
Message-ID: <20260119152437.nenxd336vgenmlib@pengutronix.de>
References: <20260119-fpf-imx8mp-frdm-v1-0-13fac69eda23@pengutronix.de>
 <20260119-fpf-imx8mp-frdm-v1-1-13fac69eda23@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260119-fpf-imx8mp-frdm-v1-1-13fac69eda23@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260119_072440_693346_0105034E 
X-CRM114-Status: GOOD (  33.61  )
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
Cc: BAREBOX <barebox@lists.infradead.org>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/3] ARM: i.MX8MP: add imx8mp-frdm board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Fabian,

please see below.

On 26-01-19, Fabian Pfitzner wrote:
> The FRDM-i.MX8MP is an NXP development platform based on the i.MX8M Plus
> SoC, featuring a quad Cortex-A53, Cortex-M7 co-processor, 4GB LPDDR4,
> 32GB eMMC, Wi-Fi 6/Bluetooth 5.4/802.15.4 tri-radio, Ethernet, HDMI/MIPI
> display interfaces, camera connectors, and standard expansion headers.
> 
> The DRAM timings were taken from [1].
> Furthermore, the board code was mainly taken from the imx8mp-evk.
> 
> [1] git@github.com:nxp-imx/uboot-imx.git branch lf_v2025.04
> 
> Signed-off-by: Fabian Pfitzner <f.pfitzner@pengutronix.de>
> ---
>  arch/arm/boards/Makefile                           |    1 +
>  arch/arm/boards/nxp-imx8mp-frdm/Makefile           |    4 +
>  arch/arm/boards/nxp-imx8mp-frdm/board.c            |   36 +
>  .../flash-header-imx8mp-frdm.imxcfg                |   10 +
>  arch/arm/boards/nxp-imx8mp-frdm/lowlevel.c         |  145 +++
>  arch/arm/boards/nxp-imx8mp-frdm/lpddr4-timing.c    | 1119 ++++++++++++++++++++
>  arch/arm/configs/imx_v8_defconfig                  |    1 +
>  arch/arm/configs/multi_v8_defconfig                |    1 +
>  arch/arm/mach-imx/Kconfig                          |   10 +
>  images/Makefile.imx                                |    2 +
>  10 files changed, 1329 insertions(+)
> 
> diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
> index f73285ede9d3ea0b7ea04f7a984fce0e796f9f73..71b26713f10ec4b617070015463c1e122ddc550a 100644
> --- a/arch/arm/boards/Makefile
> +++ b/arch/arm/boards/Makefile
> @@ -73,6 +73,7 @@ obj-$(CONFIG_MACH_NXP_IMX8MQ_EVK)		+= nxp-imx8mq-evk/
>  obj-$(CONFIG_MACH_NXP_IMX8MM_EVK)		+= nxp-imx8mm-evk/
>  obj-$(CONFIG_MACH_NXP_IMX8MN_EVK)		+= nxp-imx8mn-evk/
>  obj-$(CONFIG_MACH_NXP_IMX8MP_EVK)		+= nxp-imx8mp-evk/
> +obj-$(CONFIG_MACH_NXP_IMX8MP_FRDM)		+= nxp-imx8mp-frdm/
>  obj-$(CONFIG_MACH_NXP_IMX93_FRDM)		+= nxp-imx93-frdm/
>  obj-$(CONFIG_MACH_CONGATEC_QMX8P_SOM)		+= congatec-qmx8p/
>  obj-$(CONFIG_MACH_TQ_MBA8MPXL)			+= tqma8mpxl/
> diff --git a/arch/arm/boards/nxp-imx8mp-frdm/Makefile b/arch/arm/boards/nxp-imx8mp-frdm/Makefile
> new file mode 100644
> index 0000000000000000000000000000000000000000..35d8640087b1d6d12201d2bcb5aacc76b03f140e
> --- /dev/null
> +++ b/arch/arm/boards/nxp-imx8mp-frdm/Makefile
> @@ -0,0 +1,4 @@
> +# SPDX-License-Identifier: GPL-2.0-only
> +
> +obj-y += board.o
> +lwl-y += lowlevel.o lpddr4-timing.o
> diff --git a/arch/arm/boards/nxp-imx8mp-frdm/board.c b/arch/arm/boards/nxp-imx8mp-frdm/board.c
> new file mode 100644
> index 0000000000000000000000000000000000000000..914d16e3b5c82d1e4b9dbe700af9061be079b2e2
> --- /dev/null
> +++ b/arch/arm/boards/nxp-imx8mp-frdm/board.c
> @@ -0,0 +1,36 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (C) 2026 Fabian Pfitzner, Pengutronix
> + */
> +
> +#include <asm/memory.h>
> +#include <bootsource.h>
> +#include <common.h>
> +#include <deep-probe.h>
> +#include <init.h>
> +#include <linux/phy.h>
> +#include <linux/sizes.h>
> +#include <mach/imx/bbu.h>
> +#include <mach/imx/iomux-mx8mp.h>
> +#include <gpio.h>
> +#include <envfs.h>
> +
> +static int nxp_imx8mp_frdm_probe(struct device *dev)
> +{
> +	imx8m_bbu_internal_mmcboot_register_handler("eMMC", "/dev/mmc2", BBU_HANDLER_FLAG_DEFAULT);

@Ahmad @Sascha

Do we have a proper driver for the bbu? In that case we could drop the
whole board.c :-)

> +
> +	return 0;
> +}
> +
> +static const struct of_device_id nxp_imx8mp_frdm_of_match[] = {
> +	{ .compatible = "fsl,imx8mp-frdm" },
> +	{ /* Sentinel */ }
> +};
> +BAREBOX_DEEP_PROBE_ENABLE(nxp_imx8mp_frdm_of_match);
> +
> +static struct driver nxp_imx8mp_frdm_board_driver = {
> +	.name = "board-nxp-imx8mp-frdm",
> +	.probe = nxp_imx8mp_frdm_probe,
> +	.of_compatible = nxp_imx8mp_frdm_of_match,
> +};
> +coredevice_platform_driver(nxp_imx8mp_frdm_board_driver);
> diff --git a/arch/arm/boards/nxp-imx8mp-frdm/flash-header-imx8mp-frdm.imxcfg b/arch/arm/boards/nxp-imx8mp-frdm/flash-header-imx8mp-frdm.imxcfg
> new file mode 100644
> index 0000000000000000000000000000000000000000..c896c9f24832d51adcc825f8e20c2e881f4edc32
> --- /dev/null
> +++ b/arch/arm/boards/nxp-imx8mp-frdm/flash-header-imx8mp-frdm.imxcfg
> @@ -0,0 +1,10 @@
> +# SPDX-License-Identifier: GPL-2.0-only
> +
> +soc imx8mp
> +
> +loadaddr 0x920000
> +max_load_size 0x3f000
> +ivtofs 0x0
> +
> +#include <mach/imx/flexspi-imx8mp-cfg.h>
> +#include <mach/imx/habv4-imx8-gencsf.h>
> diff --git a/arch/arm/boards/nxp-imx8mp-frdm/lowlevel.c b/arch/arm/boards/nxp-imx8mp-frdm/lowlevel.c
> new file mode 100644
> index 0000000000000000000000000000000000000000..7db7ef3cec93f969b56b0e546e771e1675f24330
> --- /dev/null
> +++ b/arch/arm/boards/nxp-imx8mp-frdm/lowlevel.c
> @@ -0,0 +1,145 @@
> +// SPDX-License-Identifier: GPL-2.0
> +
> +#include <io.h>
> +#include <common.h>
> +#include <debug_ll.h>
> +#include <mach/imx/debug_ll.h>
> +#include <firmware.h>
> +#include <asm/mmu.h>
> +#include <asm/cache.h>
> +#include <asm/sections.h>
> +#include <asm/barebox-arm.h>
> +#include <asm/barebox-arm-head.h>
> +#include <pbl/i2c.h>
> +#include <pbl/pmic.h>
> +#include <linux/sizes.h>
> +#include <mach/imx/atf.h>
> +#include <mach/imx/xload.h>
> +#include <mach/imx/esdctl.h>
> +#include <mach/imx/generic.h>
> +#include <mach/imx/imx8mp-regs.h>
> +#include <mach/imx/iomux-mx8mp.h>
> +#include <mach/imx/imx8m-ccm-regs.h>
> +#include <mfd/pca9450.h>
> +#include <soc/imx8m/ddr.h>
> +#include <soc/fsl/fsl_udc.h>
> +
> +extern char __dtb_z_imx8mp_frdm_start[];

This will not work since you add the device-tree for this platform in a
follow-up commit. Please squash them into one commit to keep it
bisectable.

Regards,
  Marco


> +
> +#define UART_PAD_CTRL   MUX_PAD_CTRL(MX8MP_PAD_CTL_DSE6 | \
> +				     MX8MP_PAD_CTL_FSEL)
> +
> +#define I2C_PAD_CTRL	MUX_PAD_CTRL(MX8MP_PAD_CTL_DSE6 | \
> +				     MX8MP_PAD_CTL_HYS | \
> +				     MX8MP_PAD_CTL_PUE | \
> +				     MX8MP_PAD_CTL_PE)
> +
> +static void setup_uart(void)
> +{
> +	void __iomem *uart = IOMEM(MX8M_UART2_BASE_ADDR);
> +
> +	imx8m_early_setup_uart_clock();
> +
> +	imx8mp_setup_pad(MX8MP_PAD_UART2_TXD__UART2_DCE_TX | UART_PAD_CTRL);
> +	imx8mp_setup_pad(MX8MP_PAD_UART2_RXD__UART2_DCE_RX | UART_PAD_CTRL);
> +	imx8m_uart_setup(uart);
> +
> +	pbl_set_putc(imx_uart_putc, uart);
> +
> +	putc_ll('>');
> +}
> +
> +static struct pmic_config pca9450_cfg[] = {
> +	/* BUCKxOUT_DVS0/1 control BUCK123 output */
> +	{ PCA9450_BUCK123_DVS, 0x29 },
> +	/*
> +	 * increase VDD_SOC to typical value 0.95V before first
> +	 * DRAM access, set DVS1 to 0.85v for suspend.
> +	 * Enable DVS control through PMIC_STBY_REQ and
> +	 * set B1_ENMODE=1 (ON by PMIC_ON_REQ=H)
> +	 */
> +	{ PCA9450_BUCK1OUT_DVS0, 0x1C },
> +	{ PCA9450_BUCK1OUT_DVS1, 0x14 },
> +	{ PCA9450_BUCK1CTRL, 0x59 },
> +	/*
> +	 * Increase VDD_ARM to 0.95V to avoid issues in case software after
> +	 * Barebox switches to the OD ARM frequency without reprogramming the
> +	 * PMIC first.
> +	 */
> +	{ PCA9450_BUCK2OUT_DVS0, 0x1C },
> +	/* set WDOG_B_CFG to cold reset */
> +	{ PCA9450_RESET_CTRL, 0xA1 },
> +};
> +
> +static void power_init_board(void)
> +{
> +	struct pbl_i2c *i2c;
> +
> +	imx8mp_setup_pad(MX8MP_PAD_I2C1_SCL__I2C1_SCL | I2C_PAD_CTRL);
> +	imx8mp_setup_pad(MX8MP_PAD_I2C1_SDA__I2C1_SDA | I2C_PAD_CTRL);
> +
> +	imx8m_ccgr_clock_enable(IMX8M_CCM_CCGR_I2C1);
> +
> +	i2c = imx8m_i2c_early_init(IOMEM(MX8MP_I2C1_BASE_ADDR));
> +
> +	pmic_configure(i2c, 0x25, pca9450_cfg, ARRAY_SIZE(pca9450_cfg));
> +}
> +
> +extern struct dram_timing_info imx8mp_frdm_dram_timing;
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
> +	imx8mp_early_clock_init();
> +
> +	power_init_board();
> +
> +	imx8mp_ddr_init(&imx8mp_frdm_dram_timing, DRAM_TYPE_LPDDR4);
> +
> +	imx8mp_load_and_start_image_via_tfa();
> +}
> +
> +/*
> + * Power-on execution flow of start_nxp_imx8mp_frdm() might not be
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
> +static __noreturn noinline void nxp_imx8mp_frdm_start(void)
> +{
> +	setup_uart();
> +
> +	start_atf();
> +
> +	/*
> +	 * Standard entry we hit once we initialized both DDR and ATF
> +	 */
> +	imx8mp_barebox_entry(__dtb_z_imx8mp_frdm_start);
> +}
> +
> +ENTRY_FUNCTION(start_nxp_imx8mp_frdm, r0, r1, r2)
> +{
> +	imx8mp_cpu_lowlevel_init();
> +
> +	relocate_to_current_adr();
> +	setup_c();
> +
> +	nxp_imx8mp_frdm_start();
> +}
> diff --git a/arch/arm/boards/nxp-imx8mp-frdm/lpddr4-timing.c b/arch/arm/boards/nxp-imx8mp-frdm/lpddr4-timing.c
> new file mode 100644
> index 0000000000000000000000000000000000000000..ce00b004ec475a4b592bee943fcbbbd979ddabb7
> --- /dev/null
> +++ b/arch/arm/boards/nxp-imx8mp-frdm/lpddr4-timing.c
> @@ -0,0 +1,1119 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * Copyright 2019 NXP
> + */
> +
> +#include <common.h>
> +#include <soc/imx8m/ddr.h>
> +#include <soc/imx8m/lpddr4_define.h>
> +
> +static struct dram_cfg_param ddr_ddrc_cfg[] = {
> +	/** Initialize DDRC registers **/
> +	{0x3d400304, 0x1},
> +	{0x3d400030, 0x1},
> +	{0x3d400000, 0xa3080020},
> +	{0x3d400020, 0x1323},
> +	{0x3d400024, 0x1e84800},
> +	{0x3d400064, 0x7a0118},
> +	{0x3d400070, 0x7027f90},
> +	{0x3d400074, 0x790},
> +	{0x3d4000d0, 0xc00307a3},
> +	{0x3d4000d4, 0xc50000},
> +	{0x3d4000dc, 0xf4003f},
> +	{0x3d4000e0, 0x330000},
> +	{0x3d4000e8, 0x660048},
> +	{0x3d4000ec, 0x160048},
> +	{0x3d400100, 0x2028222a},
> +	{0x3d400104, 0x8083f},
> +	{0x3d40010c, 0xe0e000},
> +	{0x3d400110, 0x12040a12},
> +	{0x3d400114, 0x2050f0f},
> +	{0x3d400118, 0x1010009},
> +	{0x3d40011c, 0x502},
> +	{0x3d400130, 0x20800},
> +	{0x3d400134, 0xe100002},
> +	{0x3d400138, 0x120},
> +	{0x3d400144, 0xc80064},
> +	{0x3d400180, 0x3e8001e},
> +	{0x3d400184, 0x3207a12},
> +	{0x3d400188, 0x0},
> +	{0x3d400190, 0x49f820e},
> +	{0x3d400194, 0x80303},
> +	{0x3d4001b4, 0x1f0e},
> +	{0x3d4001a0, 0xe0400018},
> +	{0x3d4001a4, 0xdf00e4},
> +	{0x3d4001a8, 0x80000000},
> +	{0x3d4001b0, 0x11},
> +	{0x3d4001c0, 0x1},
> +	{0x3d4001c4, 0x1},
> +	{0x3d4000f4, 0x799},
> +	{0x3d400108, 0x9121b1c},
> +	{0x3d400200, 0x17},
> +	{0x3d400208, 0x0},
> +	{0x3d40020c, 0x0},
> +	{0x3d400210, 0x1f1f},
> +	{0x3d400204, 0x80808},
> +	{0x3d400214, 0x7070707},
> +	{0x3d400218, 0x7070707},
> +	{0x3d40021c, 0xf0f},
> +	{0x3d400250, 0x1705},
> +	{0x3d400254, 0x2c},
> +	{0x3d40025c, 0x4000030},
> +	{0x3d400264, 0x900093e7},
> +	{0x3d40026c, 0x2005574},
> +	{0x3d400400, 0x111},
> +	{0x3d400404, 0x72ff},
> +	{0x3d400408, 0x72ff},
> +	{0x3d400494, 0x2100e07},
> +	{0x3d400498, 0x620096},
> +	{0x3d40049c, 0x1100e07},
> +	{0x3d4004a0, 0xc8012c},
> +	{0x3d402020, 0x1021},
> +	{0x3d402024, 0x30d400},
> +	{0x3d402050, 0x20d000},
> +	{0x3d402064, 0xc001c},
> +	{0x3d4020dc, 0x840000},
> +	{0x3d4020e0, 0x330000},
> +	{0x3d4020e8, 0x660048},
> +	{0x3d4020ec, 0x160048},
> +	{0x3d402100, 0xa040305},
> +	{0x3d402104, 0x30407},
> +	{0x3d402108, 0x203060b},
> +	{0x3d40210c, 0x505000},
> +	{0x3d402110, 0x2040202},
> +	{0x3d402114, 0x2030202},
> +	{0x3d402118, 0x1010004},
> +	{0x3d40211c, 0x302},
> +	{0x3d402130, 0x20300},
> +	{0x3d402134, 0xa100002},
> +	{0x3d402138, 0x1d},
> +	{0x3d402144, 0x14000a},
> +	{0x3d402180, 0x640004},
> +	{0x3d402190, 0x3818200},
> +	{0x3d402194, 0x80303},
> +	{0x3d4021b4, 0x100},
> +	{0x3d4020f4, 0x599},
> +	{0x3d403020, 0x1021},
> +	{0x3d403024, 0xc3500},
> +	{0x3d403050, 0x20d000},
> +	{0x3d403064, 0x30007},
> +	{0x3d4030dc, 0x840000},
> +	{0x3d4030e0, 0x330000},
> +	{0x3d4030e8, 0x660048},
> +	{0x3d4030ec, 0x160048},
> +	{0x3d403100, 0xa010102},
> +	{0x3d403104, 0x30404},
> +	{0x3d403108, 0x203060b},
> +	{0x3d40310c, 0x505000},
> +	{0x3d403110, 0x2040202},
> +	{0x3d403114, 0x2030202},
> +	{0x3d403118, 0x1010004},
> +	{0x3d40311c, 0x302},
> +	{0x3d403130, 0x20300},
> +	{0x3d403134, 0xa100002},
> +	{0x3d403138, 0x8},
> +	{0x3d403144, 0x50003},
> +	{0x3d403180, 0x190004},
> +	{0x3d403190, 0x3818200},
> +	{0x3d403194, 0x80303},
> +	{0x3d4031b4, 0x100},
> +	{0x3d4030f4, 0x599},
> +	{0x3d400028, 0x0},
> +};
> +
> +/* PHY Initialize Configuration */
> +static struct dram_cfg_param ddr_ddrphy_cfg[] = {
> +	{0x100a0, 0x0},
> +	{0x100a1, 0x1},
> +	{0x100a2, 0x2},
> +	{0x100a3, 0x3},
> +	{0x100a4, 0x4},
> +	{0x100a5, 0x5},
> +	{0x100a6, 0x6},
> +	{0x100a7, 0x7},
> +	{0x110a0, 0x0},
> +	{0x110a1, 0x1},
> +	{0x110a2, 0x3},
> +	{0x110a3, 0x4},
> +	{0x110a4, 0x5},
> +	{0x110a5, 0x2},
> +	{0x110a6, 0x7},
> +	{0x110a7, 0x6},
> +	{0x120a0, 0x0},
> +	{0x120a1, 0x1},
> +	{0x120a2, 0x3},
> +	{0x120a3, 0x2},
> +	{0x120a4, 0x5},
> +	{0x120a5, 0x4},
> +	{0x120a6, 0x7},
> +	{0x120a7, 0x6},
> +	{0x130a0, 0x0},
> +	{0x130a1, 0x1},
> +	{0x130a2, 0x2},
> +	{0x130a3, 0x3},
> +	{0x130a4, 0x4},
> +	{0x130a5, 0x5},
> +	{0x130a6, 0x6},
> +	{0x130a7, 0x7},
> +	{0x1005f, 0x1ff},
> +	{0x1015f, 0x1ff},
> +	{0x1105f, 0x1ff},
> +	{0x1115f, 0x1ff},
> +	{0x1205f, 0x1ff},
> +	{0x1215f, 0x1ff},
> +	{0x1305f, 0x1ff},
> +	{0x1315f, 0x1ff},
> +	{0x11005f, 0x1ff},
> +	{0x11015f, 0x1ff},
> +	{0x11105f, 0x1ff},
> +	{0x11115f, 0x1ff},
> +	{0x11205f, 0x1ff},
> +	{0x11215f, 0x1ff},
> +	{0x11305f, 0x1ff},
> +	{0x11315f, 0x1ff},
> +	{0x21005f, 0x1ff},
> +	{0x21015f, 0x1ff},
> +	{0x21105f, 0x1ff},
> +	{0x21115f, 0x1ff},
> +	{0x21205f, 0x1ff},
> +	{0x21215f, 0x1ff},
> +	{0x21305f, 0x1ff},
> +	{0x21315f, 0x1ff},
> +	{0x55, 0x1ff},
> +	{0x1055, 0x1ff},
> +	{0x2055, 0x1ff},
> +	{0x3055, 0x1ff},
> +	{0x4055, 0x1ff},
> +	{0x5055, 0x1ff},
> +	{0x6055, 0x1ff},
> +	{0x7055, 0x1ff},
> +	{0x8055, 0x1ff},
> +	{0x9055, 0x1ff},
> +	{0x200c5, 0x18},
> +	{0x1200c5, 0x7},
> +	{0x2200c5, 0x7},
> +	{0x2002e, 0x2},
> +	{0x12002e, 0x2},
> +	{0x22002e, 0x2},
> +	{0x90204, 0x0},
> +	{0x190204, 0x0},
> +	{0x290204, 0x0},
> +	{0x20024, 0x1e3},
> +	{0x2003a, 0x2},
> +	{0x2007d, 0x212},
> +	{0x2007c, 0x61},
> +	{0x120024, 0x1e3},
> +	{0x2003a, 0x2},
> +	{0x12007d, 0x212},
> +	{0x12007c, 0x61},
> +	{0x220024, 0x1e3},
> +	{0x2003a, 0x2},
> +	{0x22007d, 0x212},
> +	{0x22007c, 0x61},
> +	{0x20056, 0x3},
> +	{0x120056, 0x3},
> +	{0x220056, 0x3},
> +	{0x1004d, 0xe00},
> +	{0x1014d, 0xe00},
> +	{0x1104d, 0xe00},
> +	{0x1114d, 0xe00},
> +	{0x1204d, 0xe00},
> +	{0x1214d, 0xe00},
> +	{0x1304d, 0xe00},
> +	{0x1314d, 0xe00},
> +	{0x11004d, 0xe00},
> +	{0x11014d, 0xe00},
> +	{0x11104d, 0xe00},
> +	{0x11114d, 0xe00},
> +	{0x11204d, 0xe00},
> +	{0x11214d, 0xe00},
> +	{0x11304d, 0xe00},
> +	{0x11314d, 0xe00},
> +	{0x21004d, 0xe00},
> +	{0x21014d, 0xe00},
> +	{0x21104d, 0xe00},
> +	{0x21114d, 0xe00},
> +	{0x21204d, 0xe00},
> +	{0x21214d, 0xe00},
> +	{0x21304d, 0xe00},
> +	{0x21314d, 0xe00},
> +	{0x10049, 0xeba},
> +	{0x10149, 0xeba},
> +	{0x11049, 0xeba},
> +	{0x11149, 0xeba},
> +	{0x12049, 0xeba},
> +	{0x12149, 0xeba},
> +	{0x13049, 0xeba},
> +	{0x13149, 0xeba},
> +	{0x110049, 0xeba},
> +	{0x110149, 0xeba},
> +	{0x111049, 0xeba},
> +	{0x111149, 0xeba},
> +	{0x112049, 0xeba},
> +	{0x112149, 0xeba},
> +	{0x113049, 0xeba},
> +	{0x113149, 0xeba},
> +	{0x210049, 0xeba},
> +	{0x210149, 0xeba},
> +	{0x211049, 0xeba},
> +	{0x211149, 0xeba},
> +	{0x212049, 0xeba},
> +	{0x212149, 0xeba},
> +	{0x213049, 0xeba},
> +	{0x213149, 0xeba},
> +	{0x43, 0x63},
> +	{0x1043, 0x63},
> +	{0x2043, 0x63},
> +	{0x3043, 0x63},
> +	{0x4043, 0x63},
> +	{0x5043, 0x63},
> +	{0x6043, 0x63},
> +	{0x7043, 0x63},
> +	{0x8043, 0x63},
> +	{0x9043, 0x63},
> +	{0x20018, 0x3},
> +	{0x20075, 0x4},
> +	{0x20050, 0x0},
> +	{0x20008, 0x3e8},
> +	{0x120008, 0x64},
> +	{0x220008, 0x19},
> +	{0x20088, 0x9},
> +	{0x200b2, 0xdc},
> +	{0x10043, 0x5a1},
> +	{0x10143, 0x5a1},
> +	{0x11043, 0x5a1},
> +	{0x11143, 0x5a1},
> +	{0x12043, 0x5a1},
> +	{0x12143, 0x5a1},
> +	{0x13043, 0x5a1},
> +	{0x13143, 0x5a1},
> +	{0x1200b2, 0xdc},
> +	{0x110043, 0x5a1},
> +	{0x110143, 0x5a1},
> +	{0x111043, 0x5a1},
> +	{0x111143, 0x5a1},
> +	{0x112043, 0x5a1},
> +	{0x112143, 0x5a1},
> +	{0x113043, 0x5a1},
> +	{0x113143, 0x5a1},
> +	{0x2200b2, 0xdc},
> +	{0x210043, 0x5a1},
> +	{0x210143, 0x5a1},
> +	{0x211043, 0x5a1},
> +	{0x211143, 0x5a1},
> +	{0x212043, 0x5a1},
> +	{0x212143, 0x5a1},
> +	{0x213043, 0x5a1},
> +	{0x213143, 0x5a1},
> +	{0x200fa, 0x1},
> +	{0x1200fa, 0x1},
> +	{0x2200fa, 0x1},
> +	{0x20019, 0x1},
> +	{0x120019, 0x1},
> +	{0x220019, 0x1},
> +	{0x200f0, 0x660},
> +	{0x200f1, 0x0},
> +	{0x200f2, 0x4444},
> +	{0x200f3, 0x8888},
> +	{0x200f4, 0x5665},
> +	{0x200f5, 0x0},
> +	{0x200f6, 0x0},
> +	{0x200f7, 0xf000},
> +	{0x1004a, 0x500},
> +	{0x1104a, 0x500},
> +	{0x1204a, 0x500},
> +	{0x1304a, 0x500},
> +	{0x20025, 0x0},
> +	{0x2002d, 0x0},
> +	{0x12002d, 0x0},
> +	{0x22002d, 0x0},
> +	{0x2002c, 0x0},
> +};
> +
> +/* P0 message block paremeter for training firmware */
> +static struct dram_cfg_param ddr_fsp0_cfg[] = {
> +	{0xd0000, 0x0},
> +	{0x54003, 0xfa0},
> +	{0x54004, 0x2},
> +	{0x54005, 0x2228},
> +	{0x54006, 0x11},
> +	{0x54008, 0x131f},
> +	{0x54009, 0xc8},
> +	{0x5400b, 0x2},
> +	{0x5400f, 0x100},
> +	{0x54012, 0x310},
> +	{0x54019, 0x3ff4},
> +	{0x5401a, 0x33},
> +	{0x5401b, 0x4866},
> +	{0x5401c, 0x4800},
> +	{0x5401e, 0x16},
> +	{0x5401f, 0x3ff4},
> +	{0x54020, 0x33},
> +	{0x54021, 0x4866},
> +	{0x54022, 0x4800},
> +	{0x54024, 0x16},
> +	{0x5402b, 0x1000},
> +	{0x5402c, 0x3},
> +	{0x54032, 0xf400},
> +	{0x54033, 0x333f},
> +	{0x54034, 0x6600},
> +	{0x54035, 0x48},
> +	{0x54036, 0x48},
> +	{0x54037, 0x1600},
> +	{0x54038, 0xf400},
> +	{0x54039, 0x333f},
> +	{0x5403a, 0x6600},
> +	{0x5403b, 0x48},
> +	{0x5403c, 0x48},
> +	{0x5403d, 0x1600},
> +	{0xd0000, 0x1}
> +};
> +
> +/* P1 message block paremeter for training firmware */
> +static struct dram_cfg_param ddr_fsp1_cfg[] = {
> +	{0xd0000, 0x0},
> +	{0x54002, 0x101},
> +	{0x54003, 0x190},
> +	{0x54004, 0x2},
> +	{0x54005, 0x2228},
> +	{0x54006, 0x11},
> +	{0x54008, 0x121f},
> +	{0x54009, 0xc8},
> +	{0x5400b, 0x2},
> +	{0x5400f, 0x100},
> +	{0x54012, 0x310},
> +	{0x54019, 0x84},
> +	{0x5401a, 0x33},
> +	{0x5401b, 0x4866},
> +	{0x5401c, 0x4800},
> +	{0x5401e, 0x16},
> +	{0x5401f, 0x84},
> +	{0x54020, 0x33},
> +	{0x54021, 0x4866},
> +	{0x54022, 0x4800},
> +	{0x54024, 0x16},
> +	{0x5402b, 0x1000},
> +	{0x5402c, 0x3},
> +	{0x54032, 0x8400},
> +	{0x54033, 0x3300},
> +	{0x54034, 0x6600},
> +	{0x54035, 0x48},
> +	{0x54036, 0x48},
> +	{0x54037, 0x1600},
> +	{0x54038, 0x8400},
> +	{0x54039, 0x3300},
> +	{0x5403a, 0x6600},
> +	{0x5403b, 0x48},
> +	{0x5403c, 0x48},
> +	{0x5403d, 0x1600},
> +	{0xd0000, 0x1}
> +};
> +
> +/* P2 message block paremeter for training firmware */
> +static struct dram_cfg_param ddr_fsp2_cfg[] = {
> +	{0xd0000, 0x0},
> +	{0x54002, 0x102},
> +	{0x54003, 0x64},
> +	{0x54004, 0x2},
> +	{0x54005, 0x2228},
> +	{0x54006, 0x11},
> +	{0x54008, 0x121f},
> +	{0x54009, 0xc8},
> +	{0x5400b, 0x2},
> +	{0x5400f, 0x100},
> +	{0x54012, 0x310},
> +	{0x54019, 0x84},
> +	{0x5401a, 0x33},
> +	{0x5401b, 0x4866},
> +	{0x5401c, 0x4800},
> +	{0x5401e, 0x16},
> +	{0x5401f, 0x84},
> +	{0x54020, 0x33},
> +	{0x54021, 0x4866},
> +	{0x54022, 0x4800},
> +	{0x54024, 0x16},
> +	{0x5402b, 0x1000},
> +	{0x5402c, 0x3},
> +	{0x54032, 0x8400},
> +	{0x54033, 0x3300},
> +	{0x54034, 0x6600},
> +	{0x54035, 0x48},
> +	{0x54036, 0x48},
> +	{0x54037, 0x1600},
> +	{0x54038, 0x8400},
> +	{0x54039, 0x3300},
> +	{0x5403a, 0x6600},
> +	{0x5403b, 0x48},
> +	{0x5403c, 0x48},
> +	{0x5403d, 0x1600},
> +	{0xd0000, 0x1}
> +};
> +
> +/* P0 2D message block paremeter for training firmware */
> +static struct dram_cfg_param ddr_fsp0_2d_cfg[] = {
> +	{0xd0000, 0x0},
> +	{0x54003, 0xfa0},
> +	{0x54004, 0x2},
> +	{0x54005, 0x2228},
> +	{0x54006, 0x11},
> +	{0x54008, 0x61},
> +	{0x54009, 0xc8},
> +	{0x5400b, 0x2},
> +	{0x5400f, 0x100},
> +	{0x54010, 0x1f7f},
> +	{0x54012, 0x310},
> +	{0x54019, 0x3ff4},
> +	{0x5401a, 0x33},
> +	{0x5401b, 0x4866},
> +	{0x5401c, 0x4800},
> +	{0x5401e, 0x16},
> +	{0x5401f, 0x3ff4},
> +	{0x54020, 0x33},
> +	{0x54021, 0x4866},
> +	{0x54022, 0x4800},
> +	{0x54024, 0x16},
> +	{0x5402b, 0x1000},
> +	{0x5402c, 0x3},
> +	{0x54032, 0xf400},
> +	{0x54033, 0x333f},
> +	{0x54034, 0x6600},
> +	{0x54035, 0x48},
> +	{0x54036, 0x48},
> +	{0x54037, 0x1600},
> +	{0x54038, 0xf400},
> +	{0x54039, 0x333f},
> +	{0x5403a, 0x6600},
> +	{0x5403b, 0x48},
> +	{0x5403c, 0x48},
> +	{0x5403d, 0x1600},
> +	{0xd0000, 0x1}
> +};
> +
> +/* DRAM PHY init engine image */
> +static struct dram_cfg_param ddr_phy_pie[] = {
> +	{0xd0000, 0x0},
> +	{0x90000, 0x10},
> +	{0x90001, 0x400},
> +	{0x90002, 0x10e},
> +	{0x90003, 0x0},
> +	{0x90004, 0x0},
> +	{0x90005, 0x8},
> +	{0x90029, 0xb},
> +	{0x9002a, 0x480},
> +	{0x9002b, 0x109},
> +	{0x9002c, 0x8},
> +	{0x9002d, 0x448},
> +	{0x9002e, 0x139},
> +	{0x9002f, 0x8},
> +	{0x90030, 0x478},
> +	{0x90031, 0x109},
> +	{0x90032, 0x0},
> +	{0x90033, 0xe8},
> +	{0x90034, 0x109},
> +	{0x90035, 0x2},
> +	{0x90036, 0x10},
> +	{0x90037, 0x139},
> +	{0x90038, 0xb},
> +	{0x90039, 0x7c0},
> +	{0x9003a, 0x139},
> +	{0x9003b, 0x44},
> +	{0x9003c, 0x633},
> +	{0x9003d, 0x159},
> +	{0x9003e, 0x14f},
> +	{0x9003f, 0x630},
> +	{0x90040, 0x159},
> +	{0x90041, 0x47},
> +	{0x90042, 0x633},
> +	{0x90043, 0x149},
> +	{0x90044, 0x4f},
> +	{0x90045, 0x633},
> +	{0x90046, 0x179},
> +	{0x90047, 0x8},
> +	{0x90048, 0xe0},
> +	{0x90049, 0x109},
> +	{0x9004a, 0x0},
> +	{0x9004b, 0x7c8},
> +	{0x9004c, 0x109},
> +	{0x9004d, 0x0},
> +	{0x9004e, 0x1},
> +	{0x9004f, 0x8},
> +	{0x90050, 0x0},
> +	{0x90051, 0x45a},
> +	{0x90052, 0x9},
> +	{0x90053, 0x0},
> +	{0x90054, 0x448},
> +	{0x90055, 0x109},
> +	{0x90056, 0x40},
> +	{0x90057, 0x633},
> +	{0x90058, 0x179},
> +	{0x90059, 0x1},
> +	{0x9005a, 0x618},
> +	{0x9005b, 0x109},
> +	{0x9005c, 0x40c0},
> +	{0x9005d, 0x633},
> +	{0x9005e, 0x149},
> +	{0x9005f, 0x8},
> +	{0x90060, 0x4},
> +	{0x90061, 0x48},
> +	{0x90062, 0x4040},
> +	{0x90063, 0x633},
> +	{0x90064, 0x149},
> +	{0x90065, 0x0},
> +	{0x90066, 0x4},
> +	{0x90067, 0x48},
> +	{0x90068, 0x40},
> +	{0x90069, 0x633},
> +	{0x9006a, 0x149},
> +	{0x9006b, 0x10},
> +	{0x9006c, 0x4},
> +	{0x9006d, 0x18},
> +	{0x9006e, 0x0},
> +	{0x9006f, 0x4},
> +	{0x90070, 0x78},
> +	{0x90071, 0x549},
> +	{0x90072, 0x633},
> +	{0x90073, 0x159},
> +	{0x90074, 0xd49},
> +	{0x90075, 0x633},
> +	{0x90076, 0x159},
> +	{0x90077, 0x94a},
> +	{0x90078, 0x633},
> +	{0x90079, 0x159},
> +	{0x9007a, 0x441},
> +	{0x9007b, 0x633},
> +	{0x9007c, 0x149},
> +	{0x9007d, 0x42},
> +	{0x9007e, 0x633},
> +	{0x9007f, 0x149},
> +	{0x90080, 0x1},
> +	{0x90081, 0x633},
> +	{0x90082, 0x149},
> +	{0x90083, 0x0},
> +	{0x90084, 0xe0},
> +	{0x90085, 0x109},
> +	{0x90086, 0xa},
> +	{0x90087, 0x10},
> +	{0x90088, 0x109},
> +	{0x90089, 0x9},
> +	{0x9008a, 0x3c0},
> +	{0x9008b, 0x149},
> +	{0x9008c, 0x9},
> +	{0x9008d, 0x3c0},
> +	{0x9008e, 0x159},
> +	{0x9008f, 0x18},
> +	{0x90090, 0x10},
> +	{0x90091, 0x109},
> +	{0x90092, 0x0},
> +	{0x90093, 0x3c0},
> +	{0x90094, 0x109},
> +	{0x90095, 0x18},
> +	{0x90096, 0x4},
> +	{0x90097, 0x48},
> +	{0x90098, 0x18},
> +	{0x90099, 0x4},
> +	{0x9009a, 0x58},
> +	{0x9009b, 0xb},
> +	{0x9009c, 0x10},
> +	{0x9009d, 0x109},
> +	{0x9009e, 0x1},
> +	{0x9009f, 0x10},
> +	{0x900a0, 0x109},
> +	{0x900a1, 0x5},
> +	{0x900a2, 0x7c0},
> +	{0x900a3, 0x109},
> +	{0x40000, 0x811},
> +	{0x40020, 0x880},
> +	{0x40040, 0x0},
> +	{0x40060, 0x0},
> +	{0x40001, 0x4008},
> +	{0x40021, 0x83},
> +	{0x40041, 0x4f},
> +	{0x40061, 0x0},
> +	{0x40002, 0x4040},
> +	{0x40022, 0x83},
> +	{0x40042, 0x51},
> +	{0x40062, 0x0},
> +	{0x40003, 0x811},
> +	{0x40023, 0x880},
> +	{0x40043, 0x0},
> +	{0x40063, 0x0},
> +	{0x40004, 0x720},
> +	{0x40024, 0xf},
> +	{0x40044, 0x1740},
> +	{0x40064, 0x0},
> +	{0x40005, 0x16},
> +	{0x40025, 0x83},
> +	{0x40045, 0x4b},
> +	{0x40065, 0x0},
> +	{0x40006, 0x716},
> +	{0x40026, 0xf},
> +	{0x40046, 0x2001},
> +	{0x40066, 0x0},
> +	{0x40007, 0x716},
> +	{0x40027, 0xf},
> +	{0x40047, 0x2800},
> +	{0x40067, 0x0},
> +	{0x40008, 0x716},
> +	{0x40028, 0xf},
> +	{0x40048, 0xf00},
> +	{0x40068, 0x0},
> +	{0x40009, 0x720},
> +	{0x40029, 0xf},
> +	{0x40049, 0x1400},
> +	{0x40069, 0x0},
> +	{0x4000a, 0xe08},
> +	{0x4002a, 0xc15},
> +	{0x4004a, 0x0},
> +	{0x4006a, 0x0},
> +	{0x4000b, 0x625},
> +	{0x4002b, 0x15},
> +	{0x4004b, 0x0},
> +	{0x4006b, 0x0},
> +	{0x4000c, 0x4028},
> +	{0x4002c, 0x80},
> +	{0x4004c, 0x0},
> +	{0x4006c, 0x0},
> +	{0x4000d, 0xe08},
> +	{0x4002d, 0xc1a},
> +	{0x4004d, 0x0},
> +	{0x4006d, 0x0},
> +	{0x4000e, 0x625},
> +	{0x4002e, 0x1a},
> +	{0x4004e, 0x0},
> +	{0x4006e, 0x0},
> +	{0x4000f, 0x4040},
> +	{0x4002f, 0x80},
> +	{0x4004f, 0x0},
> +	{0x4006f, 0x0},
> +	{0x40010, 0x2604},
> +	{0x40030, 0x15},
> +	{0x40050, 0x0},
> +	{0x40070, 0x0},
> +	{0x40011, 0x708},
> +	{0x40031, 0x5},
> +	{0x40051, 0x0},
> +	{0x40071, 0x2002},
> +	{0x40012, 0x8},
> +	{0x40032, 0x80},
> +	{0x40052, 0x0},
> +	{0x40072, 0x0},
> +	{0x40013, 0x2604},
> +	{0x40033, 0x1a},
> +	{0x40053, 0x0},
> +	{0x40073, 0x0},
> +	{0x40014, 0x708},
> +	{0x40034, 0xa},
> +	{0x40054, 0x0},
> +	{0x40074, 0x2002},
> +	{0x40015, 0x4040},
> +	{0x40035, 0x80},
> +	{0x40055, 0x0},
> +	{0x40075, 0x0},
> +	{0x40016, 0x60a},
> +	{0x40036, 0x15},
> +	{0x40056, 0x1200},
> +	{0x40076, 0x0},
> +	{0x40017, 0x61a},
> +	{0x40037, 0x15},
> +	{0x40057, 0x1300},
> +	{0x40077, 0x0},
> +	{0x40018, 0x60a},
> +	{0x40038, 0x1a},
> +	{0x40058, 0x1200},
> +	{0x40078, 0x0},
> +	{0x40019, 0x642},
> +	{0x40039, 0x1a},
> +	{0x40059, 0x1300},
> +	{0x40079, 0x0},
> +	{0x4001a, 0x4808},
> +	{0x4003a, 0x880},
> +	{0x4005a, 0x0},
> +	{0x4007a, 0x0},
> +	{0x900a4, 0x0},
> +	{0x900a5, 0x790},
> +	{0x900a6, 0x11a},
> +	{0x900a7, 0x8},
> +	{0x900a8, 0x7aa},
> +	{0x900a9, 0x2a},
> +	{0x900aa, 0x10},
> +	{0x900ab, 0x7b2},
> +	{0x900ac, 0x2a},
> +	{0x900ad, 0x0},
> +	{0x900ae, 0x7c8},
> +	{0x900af, 0x109},
> +	{0x900b0, 0x10},
> +	{0x900b1, 0x10},
> +	{0x900b2, 0x109},
> +	{0x900b3, 0x10},
> +	{0x900b4, 0x2a8},
> +	{0x900b5, 0x129},
> +	{0x900b6, 0x8},
> +	{0x900b7, 0x370},
> +	{0x900b8, 0x129},
> +	{0x900b9, 0xa},
> +	{0x900ba, 0x3c8},
> +	{0x900bb, 0x1a9},
> +	{0x900bc, 0xc},
> +	{0x900bd, 0x408},
> +	{0x900be, 0x199},
> +	{0x900bf, 0x14},
> +	{0x900c0, 0x790},
> +	{0x900c1, 0x11a},
> +	{0x900c2, 0x8},
> +	{0x900c3, 0x4},
> +	{0x900c4, 0x18},
> +	{0x900c5, 0xe},
> +	{0x900c6, 0x408},
> +	{0x900c7, 0x199},
> +	{0x900c8, 0x8},
> +	{0x900c9, 0x8568},
> +	{0x900ca, 0x108},
> +	{0x900cb, 0x18},
> +	{0x900cc, 0x790},
> +	{0x900cd, 0x16a},
> +	{0x900ce, 0x8},
> +	{0x900cf, 0x1d8},
> +	{0x900d0, 0x169},
> +	{0x900d1, 0x10},
> +	{0x900d2, 0x8558},
> +	{0x900d3, 0x168},
> +	{0x900d4, 0x70},
> +	{0x900d5, 0x788},
> +	{0x900d6, 0x16a},
> +	{0x900d7, 0x1ff8},
> +	{0x900d8, 0x85a8},
> +	{0x900d9, 0x1e8},
> +	{0x900da, 0x50},
> +	{0x900db, 0x798},
> +	{0x900dc, 0x16a},
> +	{0x900dd, 0x60},
> +	{0x900de, 0x7a0},
> +	{0x900df, 0x16a},
> +	{0x900e0, 0x8},
> +	{0x900e1, 0x8310},
> +	{0x900e2, 0x168},
> +	{0x900e3, 0x8},
> +	{0x900e4, 0xa310},
> +	{0x900e5, 0x168},
> +	{0x900e6, 0xa},
> +	{0x900e7, 0x408},
> +	{0x900e8, 0x169},
> +	{0x900e9, 0x6e},
> +	{0x900ea, 0x0},
> +	{0x900eb, 0x68},
> +	{0x900ec, 0x0},
> +	{0x900ed, 0x408},
> +	{0x900ee, 0x169},
> +	{0x900ef, 0x0},
> +	{0x900f0, 0x8310},
> +	{0x900f1, 0x168},
> +	{0x900f2, 0x0},
> +	{0x900f3, 0xa310},
> +	{0x900f4, 0x168},
> +	{0x900f5, 0x1ff8},
> +	{0x900f6, 0x85a8},
> +	{0x900f7, 0x1e8},
> +	{0x900f8, 0x68},
> +	{0x900f9, 0x798},
> +	{0x900fa, 0x16a},
> +	{0x900fb, 0x78},
> +	{0x900fc, 0x7a0},
> +	{0x900fd, 0x16a},
> +	{0x900fe, 0x68},
> +	{0x900ff, 0x790},
> +	{0x90100, 0x16a},
> +	{0x90101, 0x8},
> +	{0x90102, 0x8b10},
> +	{0x90103, 0x168},
> +	{0x90104, 0x8},
> +	{0x90105, 0xab10},
> +	{0x90106, 0x168},
> +	{0x90107, 0xa},
> +	{0x90108, 0x408},
> +	{0x90109, 0x169},
> +	{0x9010a, 0x58},
> +	{0x9010b, 0x0},
> +	{0x9010c, 0x68},
> +	{0x9010d, 0x0},
> +	{0x9010e, 0x408},
> +	{0x9010f, 0x169},
> +	{0x90110, 0x0},
> +	{0x90111, 0x8b10},
> +	{0x90112, 0x168},
> +	{0x90113, 0x1},
> +	{0x90114, 0xab10},
> +	{0x90115, 0x168},
> +	{0x90116, 0x0},
> +	{0x90117, 0x1d8},
> +	{0x90118, 0x169},
> +	{0x90119, 0x80},
> +	{0x9011a, 0x790},
> +	{0x9011b, 0x16a},
> +	{0x9011c, 0x18},
> +	{0x9011d, 0x7aa},
> +	{0x9011e, 0x6a},
> +	{0x9011f, 0xa},
> +	{0x90120, 0x0},
> +	{0x90121, 0x1e9},
> +	{0x90122, 0x8},
> +	{0x90123, 0x8080},
> +	{0x90124, 0x108},
> +	{0x90125, 0xf},
> +	{0x90126, 0x408},
> +	{0x90127, 0x169},
> +	{0x90128, 0xc},
> +	{0x90129, 0x0},
> +	{0x9012a, 0x68},
> +	{0x9012b, 0x9},
> +	{0x9012c, 0x0},
> +	{0x9012d, 0x1a9},
> +	{0x9012e, 0x0},
> +	{0x9012f, 0x408},
> +	{0x90130, 0x169},
> +	{0x90131, 0x0},
> +	{0x90132, 0x8080},
> +	{0x90133, 0x108},
> +	{0x90134, 0x8},
> +	{0x90135, 0x7aa},
> +	{0x90136, 0x6a},
> +	{0x90137, 0x0},
> +	{0x90138, 0x8568},
> +	{0x90139, 0x108},
> +	{0x9013a, 0xb7},
> +	{0x9013b, 0x790},
> +	{0x9013c, 0x16a},
> +	{0x9013d, 0x1f},
> +	{0x9013e, 0x0},
> +	{0x9013f, 0x68},
> +	{0x90140, 0x8},
> +	{0x90141, 0x8558},
> +	{0x90142, 0x168},
> +	{0x90143, 0xf},
> +	{0x90144, 0x408},
> +	{0x90145, 0x169},
> +	{0x90146, 0xd},
> +	{0x90147, 0x0},
> +	{0x90148, 0x68},
> +	{0x90149, 0x0},
> +	{0x9014a, 0x408},
> +	{0x9014b, 0x169},
> +	{0x9014c, 0x0},
> +	{0x9014d, 0x8558},
> +	{0x9014e, 0x168},
> +	{0x9014f, 0x8},
> +	{0x90150, 0x3c8},
> +	{0x90151, 0x1a9},
> +	{0x90152, 0x3},
> +	{0x90153, 0x370},
> +	{0x90154, 0x129},
> +	{0x90155, 0x20},
> +	{0x90156, 0x2aa},
> +	{0x90157, 0x9},
> +	{0x90158, 0x8},
> +	{0x90159, 0xe8},
> +	{0x9015a, 0x109},
> +	{0x9015b, 0x0},
> +	{0x9015c, 0x8140},
> +	{0x9015d, 0x10c},
> +	{0x9015e, 0x10},
> +	{0x9015f, 0x8138},
> +	{0x90160, 0x104},
> +	{0x90161, 0x8},
> +	{0x90162, 0x448},
> +	{0x90163, 0x109},
> +	{0x90164, 0xf},
> +	{0x90165, 0x7c0},
> +	{0x90166, 0x109},
> +	{0x90167, 0x0},
> +	{0x90168, 0xe8},
> +	{0x90169, 0x109},
> +	{0x9016a, 0x47},
> +	{0x9016b, 0x630},
> +	{0x9016c, 0x109},
> +	{0x9016d, 0x8},
> +	{0x9016e, 0x618},
> +	{0x9016f, 0x109},
> +	{0x90170, 0x8},
> +	{0x90171, 0xe0},
> +	{0x90172, 0x109},
> +	{0x90173, 0x0},
> +	{0x90174, 0x7c8},
> +	{0x90175, 0x109},
> +	{0x90176, 0x8},
> +	{0x90177, 0x8140},
> +	{0x90178, 0x10c},
> +	{0x90179, 0x0},
> +	{0x9017a, 0x478},
> +	{0x9017b, 0x109},
> +	{0x9017c, 0x0},
> +	{0x9017d, 0x1},
> +	{0x9017e, 0x8},
> +	{0x9017f, 0x8},
> +	{0x90180, 0x4},
> +	{0x90181, 0x0},
> +	{0x90006, 0x8},
> +	{0x90007, 0x7c8},
> +	{0x90008, 0x109},
> +	{0x90009, 0x0},
> +	{0x9000a, 0x400},
> +	{0x9000b, 0x106},
> +	{0xd00e7, 0x400},
> +	{0x90017, 0x0},
> +	{0x9001f, 0x29},
> +	{0x90026, 0x68},
> +	{0x400d0, 0x0},
> +	{0x400d1, 0x101},
> +	{0x400d2, 0x105},
> +	{0x400d3, 0x107},
> +	{0x400d4, 0x10f},
> +	{0x400d5, 0x202},
> +	{0x400d6, 0x20a},
> +	{0x400d7, 0x20b},
> +	{0x2003a, 0x2},
> +	{0x200be, 0x3},
> +	{0x2000b, 0x465},
> +	{0x2000c, 0xfa},
> +	{0x2000d, 0x9c4},
> +	{0x2000e, 0x2c},
> +	{0x12000b, 0x71},
> +	{0x12000c, 0x19},
> +	{0x12000d, 0xfa},
> +	{0x12000e, 0x10},
> +	{0x22000b, 0x1d},
> +	{0x22000c, 0x6},
> +	{0x22000d, 0x3e},
> +	{0x22000e, 0x10},
> +	{0x9000c, 0x0},
> +	{0x9000d, 0x173},
> +	{0x9000e, 0x60},
> +	{0x9000f, 0x6110},
> +	{0x90010, 0x2152},
> +	{0x90011, 0xdfbd},
> +	{0x90012, 0x2060},
> +	{0x90013, 0x6152},
> +	{0x20010, 0x5a},
> +	{0x20011, 0x3},
> +	{0x40080, 0xe0},
> +	{0x40081, 0x12},
> +	{0x40082, 0xe0},
> +	{0x40083, 0x12},
> +	{0x40084, 0xe0},
> +	{0x40085, 0x12},
> +	{0x140080, 0xe0},
> +	{0x140081, 0x12},
> +	{0x140082, 0xe0},
> +	{0x140083, 0x12},
> +	{0x140084, 0xe0},
> +	{0x140085, 0x12},
> +	{0x240080, 0xe0},
> +	{0x240081, 0x12},
> +	{0x240082, 0xe0},
> +	{0x240083, 0x12},
> +	{0x240084, 0xe0},
> +	{0x240085, 0x12},
> +	{0x400fd, 0xf},
> +	{0x10011, 0x1},
> +	{0x10012, 0x1},
> +	{0x10013, 0x180},
> +	{0x10018, 0x1},
> +	{0x10002, 0x6209},
> +	{0x100b2, 0x1},
> +	{0x101b4, 0x1},
> +	{0x102b4, 0x1},
> +	{0x103b4, 0x1},
> +	{0x104b4, 0x1},
> +	{0x105b4, 0x1},
> +	{0x106b4, 0x1},
> +	{0x107b4, 0x1},
> +	{0x108b4, 0x1},
> +	{0x11011, 0x1},
> +	{0x11012, 0x1},
> +	{0x11013, 0x180},
> +	{0x11018, 0x1},
> +	{0x11002, 0x6209},
> +	{0x110b2, 0x1},
> +	{0x111b4, 0x1},
> +	{0x112b4, 0x1},
> +	{0x113b4, 0x1},
> +	{0x114b4, 0x1},
> +	{0x115b4, 0x1},
> +	{0x116b4, 0x1},
> +	{0x117b4, 0x1},
> +	{0x118b4, 0x1},
> +	{0x12011, 0x1},
> +	{0x12012, 0x1},
> +	{0x12013, 0x180},
> +	{0x12018, 0x1},
> +	{0x12002, 0x6209},
> +	{0x120b2, 0x1},
> +	{0x121b4, 0x1},
> +	{0x122b4, 0x1},
> +	{0x123b4, 0x1},
> +	{0x124b4, 0x1},
> +	{0x125b4, 0x1},
> +	{0x126b4, 0x1},
> +	{0x127b4, 0x1},
> +	{0x128b4, 0x1},
> +	{0x13011, 0x1},
> +	{0x13012, 0x1},
> +	{0x13013, 0x180},
> +	{0x13018, 0x1},
> +	{0x13002, 0x6209},
> +	{0x130b2, 0x1},
> +	{0x131b4, 0x1},
> +	{0x132b4, 0x1},
> +	{0x133b4, 0x1},
> +	{0x134b4, 0x1},
> +	{0x135b4, 0x1},
> +	{0x136b4, 0x1},
> +	{0x137b4, 0x1},
> +	{0x138b4, 0x1},
> +	{0x20089, 0x1},
> +	{0x20088, 0x19},
> +	{0xc0080, 0x2},
> +	{0xd0000, 0x1},
> +};
> +
> +struct dram_fsp_msg ddr_dram_fsp_msg[] = {
> +	{
> +		/* P0 4000mts 1D */
> +		.drate = 4000,
> +		.fw_type = FW_1D_IMAGE,
> +		.fsp_cfg = ddr_fsp0_cfg,
> +		.fsp_cfg_num = ARRAY_SIZE(ddr_fsp0_cfg),
> +	},
> +	{
> +		/* P1 400mts 1D */
> +		.drate = 400,
> +		.fw_type = FW_1D_IMAGE,
> +		.fsp_cfg = ddr_fsp1_cfg,
> +		.fsp_cfg_num = ARRAY_SIZE(ddr_fsp1_cfg),
> +	},
> +	{
> +		/* P2 100mts 1D */
> +		.drate = 100,
> +		.fw_type = FW_1D_IMAGE,
> +		.fsp_cfg = ddr_fsp2_cfg,
> +		.fsp_cfg_num = ARRAY_SIZE(ddr_fsp2_cfg),
> +	},
> +	{
> +		/* P0 4000mts 2D */
> +		.drate = 4000,
> +		.fw_type = FW_2D_IMAGE,
> +		.fsp_cfg = ddr_fsp0_2d_cfg,
> +		.fsp_cfg_num = ARRAY_SIZE(ddr_fsp0_2d_cfg),
> +	},
> +};
> +
> +/* ddr timing config params */
> +struct dram_timing_info imx8mp_frdm_dram_timing = {
> +	.ddrc_cfg = ddr_ddrc_cfg,
> +	.ddrc_cfg_num = ARRAY_SIZE(ddr_ddrc_cfg),
> +	.ddrphy_cfg = ddr_ddrphy_cfg,
> +	.ddrphy_cfg_num = ARRAY_SIZE(ddr_ddrphy_cfg),
> +	.fsp_msg = ddr_dram_fsp_msg,
> +	.fsp_msg_num = ARRAY_SIZE(ddr_dram_fsp_msg),
> +	.ddrphy_pie = ddr_phy_pie,
> +	.ddrphy_pie_num = ARRAY_SIZE(ddr_phy_pie),
> +	.fsp_table = { 4000, 400, 100, },
> +};
> diff --git a/arch/arm/configs/imx_v8_defconfig b/arch/arm/configs/imx_v8_defconfig
> index af071e4d8365cf26d8c5c5c3447a162c14693ab5..84cca92b4ec434e0a1cedbdb41169956f9247187 100644
> --- a/arch/arm/configs/imx_v8_defconfig
> +++ b/arch/arm/configs/imx_v8_defconfig
> @@ -7,6 +7,7 @@ CONFIG_MACH_NXP_IMX8MM_EVK=y
>  CONFIG_MACH_NXP_IMX8MN_EVK=y
>  CONFIG_MACH_NXP_IMX8MP_EVK=y
>  CONFIG_MACH_NXP_IMX8MQ_EVK=y
> +CONFIG_MACH_NXP_IMX8MP_FRDM=y
>  CONFIG_MACH_PHYTEC_SOM_IMX8MM=y
>  CONFIG_MACH_PHYTEC_SOM_IMX8MQ=y
>  CONFIG_MACH_POLYHEX_DEBIX=y
> diff --git a/arch/arm/configs/multi_v8_defconfig b/arch/arm/configs/multi_v8_defconfig
> index 92ba5eb063bcbe8e455ddfa919363dbaaf4c345f..7c8a7ed85b9f23759160b172a562e5b12d1c61f0 100644
> --- a/arch/arm/configs/multi_v8_defconfig
> +++ b/arch/arm/configs/multi_v8_defconfig
> @@ -16,6 +16,7 @@ CONFIG_MACH_NXP_IMX8MM_EVK=y
>  CONFIG_MACH_NXP_IMX8MN_EVK=y
>  CONFIG_MACH_NXP_IMX8MP_EVK=y
>  CONFIG_MACH_NXP_IMX8MQ_EVK=y
> +CONFIG_MACH_NXP_IMX8MP_FRDM=y
>  CONFIG_MACH_PHYTEC_SOM_IMX8MM=y
>  CONFIG_MACH_PHYTEC_SOM_IMX8MQ=y
>  CONFIG_MACH_POLYHEX_DEBIX=y
> diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
> index 5f50d1a8233ca0e034e5f9b83343a02e7b6a35b8..82410f196633190eef178172b6dd11ce8a3c7c0d 100644
> --- a/arch/arm/mach-imx/Kconfig
> +++ b/arch/arm/mach-imx/Kconfig
> @@ -670,6 +670,16 @@ config MACH_NXP_IMX8MQ_EVK
>  	select ARM_SMCCC
>  	select MCI_IMX_ESDHC_PBL
>  
> +config MACH_NXP_IMX8MP_FRDM
> +	bool "NXP i.MX8MP FRDM Board"
> +	select ARCH_IMX8MP
> +	select FIRMWARE_IMX_LPDDR4_PMU_TRAIN
> +	select FIRMWARE_IMX8MP_ATF
> +	select ARM_SMCCC
> +	select MCI_IMX_ESDHC_PBL
> +	select IMX8M_DRAM
> +	select I2C_IMX_EARLY
> +
>  config MACH_PHYTEC_SOM_IMX8MM
>  	bool "Phytec i.MX8MM SOM"
>  	select ARCH_IMX8MM
> diff --git a/images/Makefile.imx b/images/Makefile.imx
> index 5ae14a5988572f2bada258796e657f14dc936b20..feb2d4a795456ca0d72f1ef759acdd9c92799d8b 100644
> --- a/images/Makefile.imx
> +++ b/images/Makefile.imx
> @@ -478,6 +478,8 @@ $(call build_imx8m_habv4img, CONFIG_MACH_NXP_IMX8MN_EVK, start_nxp_imx8mn_evk, n
>  # ----------------------- i.MX8mp based boards --------------------------
>  $(call build_imx8m_habv4img, CONFIG_MACH_NXP_IMX8MP_EVK, start_nxp_imx8mp_evk, nxp-imx8mp-evk/flash-header-imx8mp-evk, nxp-imx8mp-evk)
>  
> +$(call build_imx8m_habv4img, CONFIG_MACH_NXP_IMX8MP_FRDM, start_nxp_imx8mp_frdm, nxp-imx8mp-frdm/flash-header-imx8mp-frdm, nxp-imx8mp-frdm)
> +
>  $(call build_imx8m_habv4img, CONFIG_MACH_KOENIGBAUER_ALPHAJET, start_koenigbauer_alphajet, congatec-qmx8p/flash-header-congatec-qmx8p, koenigbauer-alphajet)
>  
>  $(call build_imx8m_habv4img, CONFIG_MACH_KARO_QSXP_ML81, start_karo_qsxp_ml81, karo-qsxp-ml81/flash-header-karo-qsxp-ml81, karo-qsxp-ml81)
> 
> -- 
> 2.47.3
> 
> 
> 

-- 
#gernperDu 
#CallMeByMyFirstName

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | https://www.pengutronix.de/ |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-9    |



Delivery-date: Thu, 01 Jun 2023 09:55:12 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4d9N-005VP9-0T
	for lore@lore.pengutronix.de; Thu, 01 Jun 2023 09:55:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4d9G-0005qy-Fd
	for lore@pengutronix.de; Thu, 01 Jun 2023 09:55:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ktG4F8uQJvZD1vzc2CaEDIYyih/gh06B+pqaAG2J0ok=; b=msEFBw2TyUvWX7UO/7bG7G2E8J
	9D4+DiHiEZzlz9xm+UhpZASMhx/lqPRJhPgsNvec+W3/fo6Vu2EIGXkPnPitk0QOyQgmWECDqg4M+
	aVuVwwJUlt43mD+JXgu8ViSh7ZEdNYdGqrmTEEre6OwMeLFnegI7ItGDGypjRKeajjYFJQPF0Pkps
	d5Piy4sVfKnNIOConKhJRotmiddqLFkn/rGTjy4O364+nWcmBk1Pghw7++OYXNfmyhsdYLS6rIXgh
	6ycPN99Mj3bpxvwfXYRc0cQRFT6PNofyzp9QhDSZyq458BOJPf8DC85eoLo0fCsWIVwgmUxjA7iOd
	N/lH3ZyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4d7X-002RF9-2v;
	Thu, 01 Jun 2023 07:53:19 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4d7O-002RBs-0V
	for barebox@lists.infradead.org;
	Thu, 01 Jun 2023 07:53:18 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1q4d7G-0005iu-JK; Thu, 01 Jun 2023 09:53:02 +0200
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1q4d7G-0002dE-Bl; Thu, 01 Jun 2023 09:53:02 +0200
Date: Thu, 1 Jun 2023 09:53:02 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Johannes Zink <j.zink@pengutronix.de>
Cc: barebox@lists.infradead.org, patchwork-jzi@pengutronix.de,
	Juergen Borleis <j.borleis@pengutronix.de>
Message-ID: <20230601075302.3w6efekd6xf7o2ce@pengutronix.de>
References: <20230601-koenigbauer-alphajet-upstreaming-v1-1-bcdcc1f1382e@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230601-koenigbauer-alphajet-upstreaming-v1-1-bcdcc1f1382e@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230601_005310_835079_FF957928 
X-CRM114-Status: GOOD (  34.01  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: i.MX8MP: add Koenig+Bauer Alphajet board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Johannes,

On 23-06-01, Johannes Zink wrote:
> Add basic support for Koenig+Bauer Alphajet, based on a Congatec QMX8MP
> SoM with a i.MX8MP SoC in the Industrial Temperature Grade 4GB Variant,
> no inline ECC used.
> 
> Co-Developed-by: Juergen Borleis <j.borleis@pengutronix.de>
> Signed-off-by: Juergen Borleis <j.borleis@pengutronix.de>
> Signed-off-by: Johannes Zink <j.zink@pengutronix.de>
> ---
> Koenig+Bauer Alphajet is based on the Congatec QMX8MP, which is an
> i.MX8MP based SoC. Building barebox for this target requires the usual
> bl31 and lpddr4 training data in /firmware as described in [1].
> 
> The Congatec SoM is strapped and fused to boot from QSPI NOR flash,
> which can easily be updated using the registered barebox update handler.
> 
> [1] https://www.barebox.org/doc/latest/boards/imx/nxp-imx8mp-evk.html
> 
> Best regards
> Johannes
> ---
> Bootlog:
> 
> barebox 2023.05.0-00196-g24e000914af6-dirty #151 Thu Jun 1 09:36:02 CEST
> 2023
> 
> Board: Koenig+Bauer Alphajet
> deep-probe: supported due to kb,alphajet
> detected i.MX8MP revision 1.1
> i.MX8MP unique ID: 3a13efb20002aaff
> netconsole: registered as netconsole-1
> psci psci.of: detected version 1.1
> imx-esdhc 30b40000.mmc@30b40000.of: registered as mmc0
> mmc0: detected SD card version 2.0
> mmc0: registered mmc0
> imx-esdhc 30b60000.mmc@30b60000.of: registered as mmc2
> mmc2: detected MMC card version 5.1
> mmc2: registered mmc2.boot0
> mmc2: registered mmc2.boot1
> mmc2: registered mmc2
> mdio_bus: miibus0: probed
> xHCI xHCI0: USB XHCI 1.10
> state: New state registered 'state'
> state: Using bucket 0@0x00000000
> malloc space: 0xbfcfbe80 -> 0xffcfbe7f (size 1 GiB)
> found force-builtin environment, using defaultenv
> 
> Hit m for menu or any to stop autoboot:    3
> barebox@Koenig+Bauer Alphajet:/
> 
> Signed-off-by: Johannes Zink <j.zink@pengutronix.de>
> ---
>  arch/arm/boards/Makefile                           |    1 +
>  arch/arm/boards/kb-imx8mp-alphajet/Makefile        |    4 +
>  arch/arm/boards/kb-imx8mp-alphajet/board.c         |   60 +
>  .../flash-header-imx8mp-cgtqx8p.imxcfg             |   10 +
>  arch/arm/boards/kb-imx8mp-alphajet/lowlevel.c      |  127 ++
>  arch/arm/boards/kb-imx8mp-alphajet/lpddr4-timing.c | 1832 ++++++++++++++++++++
>  arch/arm/dts/Makefile                              |    1 +
>  arch/arm/dts/imx8mp-cgtqx8p.dtsi                   | 1060 +++++++++++
>  arch/arm/dts/imx8mp-koenigbauer-alphajet.dts       |  180 ++
>  arch/arm/mach-imx/Kconfig                          |   10 +
>  images/Makefile.imx                                |    5 +
>  11 files changed, 3290 insertions(+)
> 
> diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
> index 2877debad535..67b2fc07a395 100644
> --- a/arch/arm/boards/Makefile
> +++ b/arch/arm/boards/Makefile
> @@ -81,6 +81,7 @@ obj-$(CONFIG_MACH_NXP_IMX8MQ_EVK)		+= nxp-imx8mq-evk/
>  obj-$(CONFIG_MACH_NXP_IMX8MM_EVK)		+= nxp-imx8mm-evk/
>  obj-$(CONFIG_MACH_NXP_IMX8MN_EVK)		+= nxp-imx8mn-evk/
>  obj-$(CONFIG_MACH_NXP_IMX8MP_EVK)		+= nxp-imx8mp-evk/
> +obj-$(CONFIG_MACH_KB_ALPHAJET)			+= kb-imx8mp-alphajet/
>  obj-$(CONFIG_MACH_TQ_MBA8MPXL)			+= tqma8mpxl/
>  obj-$(CONFIG_MACH_OMAP343xSDP)			+= omap343xdsp/
>  obj-$(CONFIG_MACH_OMAP3EVM)			+= omap3evm/
> diff --git a/arch/arm/boards/kb-imx8mp-alphajet/Makefile b/arch/arm/boards/kb-imx8mp-alphajet/Makefile
> new file mode 100644
> index 000000000000..b3ae72be3e3b
> --- /dev/null
> +++ b/arch/arm/boards/kb-imx8mp-alphajet/Makefile
> @@ -0,0 +1,4 @@
> +# SPDX-License-Identifier:      GPL-2.0+
> +
> +obj-y += board.o
> +lwl-y += lowlevel.o lpddr4-timing.o
> diff --git a/arch/arm/boards/kb-imx8mp-alphajet/board.c b/arch/arm/boards/kb-imx8mp-alphajet/board.c
> new file mode 100644
> index 000000000000..78cc60e2c3b1
> --- /dev/null
> +++ b/arch/arm/boards/kb-imx8mp-alphajet/board.c
> @@ -0,0 +1,60 @@
> +// SPDX-License-Identifier: GPL-2.0
> +// SPDX-FileCopyrightText: 2023 Juergen Borleis, Pengutronix
> +// SPDX-FileCopyrightText: 2023 Johannes Zink, Pengutronix
> +
> +#include <asm/memory.h>
> +#include <bootsource.h>
> +#include <common.h>
> +#include <deep-probe.h>
> +#include <init.h>
> +#include <linux/phy.h>
> +#include <linux/sizes.h>
> +#include <mach/imx/bbu.h>
> +#include <mach/imx/generic.h>
> +#include <mach/imx/iomux-mx8mp.h>
> +#include <gpio.h>
> +#include <envfs.h>
> +
> +#define EQOS_PWR_PIN IMX_GPIO_NR(1, 5) /* ENET_PWREN# */
> +static void setup_ethernet_phy(void)
> +{
> +	u32 val;
> +
> +	of_device_ensure_probed_by_alias("gpio0");
> +
> +	if (gpio_direction_output(EQOS_PWR_PIN, 0))
> +	{

Nit:
	if () {
	}

Apart this and a few minor dts(i) style issues the patch lgtm. The
dts(i) style issues can be fixed while upstreaming the dts(i). Feel
free to add my:

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>

> +		pr_err("eqos phy power: failed to request pin\n");
> +		return;
> +	}
> +
> +	/* the phy needs roughly 200ms delay after power-on */
> +	mdelay(200);
> +
> +	/* Enable RGMII TX clk output */
> +	val = readl(MX8MP_IOMUXC_GPR_BASE_ADDR + MX8MP_IOMUXC_GPR1);
> +	val |= MX8MP_IOMUXC_GPR1_ENET1_RGMII_EN;
> +	writel(val, MX8MP_IOMUXC_GPR_BASE_ADDR + MX8MP_IOMUXC_GPR1);
> +}
> +
> +static int kb_alphajet_probe(struct device *dev)
> +{
> +	setup_ethernet_phy();
> +
> +	imx8m_bbu_internal_flexspi_nor_register_handler("QSPI", "/dev/m25p0.boot", BBU_HANDLER_FLAG_DEFAULT);
> +
> +	return 0;
> +}
> +
> +static const struct of_device_id kb_alphajet_of_match[] = {
> +	{ .compatible = "kb,alphajet" },
> +	{ /* Sentinel */ }
> +};
> +BAREBOX_DEEP_PROBE_ENABLE(kb_alphajet_of_match);
> +
> +static struct driver kb_alphajet_board_driver = {
> +	.name = "board-kb-alphajet",
> +	.probe = kb_alphajet_probe,
> +	.of_compatible = kb_alphajet_of_match,
> +};
> +coredevice_platform_driver(kb_alphajet_board_driver);
> diff --git a/arch/arm/boards/kb-imx8mp-alphajet/flash-header-imx8mp-cgtqx8p.imxcfg b/arch/arm/boards/kb-imx8mp-alphajet/flash-header-imx8mp-cgtqx8p.imxcfg
> new file mode 100644
> index 000000000000..70c57768ebac
> --- /dev/null
> +++ b/arch/arm/boards/kb-imx8mp-alphajet/flash-header-imx8mp-cgtqx8p.imxcfg
> @@ -0,0 +1,10 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +
> +soc imx8mp
> +
> +loadaddr 0x920000
> +max_load_size 0x3f000
> +ivtofs 0x0
> +
> +flexspi_ivtofs 0x0
> +flexspi_fcfbofs 0x400
> diff --git a/arch/arm/boards/kb-imx8mp-alphajet/lowlevel.c b/arch/arm/boards/kb-imx8mp-alphajet/lowlevel.c
> new file mode 100644
> index 000000000000..ca9569b8fb09
> --- /dev/null
> +++ b/arch/arm/boards/kb-imx8mp-alphajet/lowlevel.c
> @@ -0,0 +1,127 @@
> +// SPDX-License-Identifier: GPL-2.0
> +
> +#include <common.h>
> +#include <debug_ll.h>
> +#include <asm/barebox-arm.h>
> +#include <asm/barebox-arm-head.h>
> +#include <asm/cache.h>
> +#include <asm/mmu.h>
> +#include <asm/sections.h>
> +#include <image-metadata.h>
> +#include <mach/imx/atf.h>
> +#include <mach/imx/debug_ll.h>
> +#include <mach/imx/esdctl.h>
> +#include <mach/imx/generic.h>
> +#include <mach/imx/iomux-mx8mp.h>
> +#include <mach/imx/imx8mp-regs.h>
> +#include <mach/imx/imx8m-ccm-regs.h>
> +#include <mach/imx/xload.h>
> +#include <mfd/pca9450.h>
> +#include <pbl/i2c.h>
> +#include <pbl/pmic.h>
> +#include <soc/fsl/fsl_udc.h>
> +#include <soc/imx8m/ddr.h>
> +
> +extern char __dtb_z_imx8mp_koenigbauer_alphajet_start[];
> +
> +#define UART_PAD_CTRL   MUX_PAD_CTRL(MX8MP_PAD_CTL_DSE6 | \
> +				     MX8MP_PAD_CTL_FSEL)
> +/*
> + * SoC UART 1 is the standard console on the KB base board
> + */
> +static void setup_uart(void)
> +{
> +	void __iomem *uart = IOMEM(MX8M_UART1_BASE_ADDR);
> +
> +	imx8m_early_setup_uart_clock();
> +
> +	imx8mp_setup_pad(MX8MP_PAD_UART1_TXD__UART1_DCE_TX | UART_PAD_CTRL);
> +	imx8mp_setup_pad(MX8MP_PAD_UART1_RXD__UART1_DCE_RX | UART_PAD_CTRL);
> +	imx8m_uart_setup(uart);
> +
> +	pbl_set_putc(imx_uart_putc, uart);
> +
> +	putc_ll('>');
> +}
> +
> +#define I2C_PAD_CTRL	MUX_PAD_CTRL(MX8MP_PAD_CTL_DSE6 | \
> +				     MX8MP_PAD_CTL_HYS | \
> +				     MX8MP_PAD_CTL_PUE | \
> +				     MX8MP_PAD_CTL_PE)
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
> +	/* Kernel uses OD/OD freq for SOC */
> +	/* To avoid timing risk from SOC to ARM, increase
> +	 * VDD_ARM to OD voltage 0.95v
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
> +	imx8mp_early_clock_init();
> +	imx8m_ccgr_clock_enable(IMX8M_CCM_CCGR_I2C1);
> +
> +	i2c = imx8m_i2c_early_init(IOMEM(MX8MP_I2C1_BASE_ADDR));
> +
> +	pmic_configure(i2c, 0x25, pca9450_cfg, ARRAY_SIZE(pca9450_cfg));
> +}
> +
> +extern struct dram_timing_info dram_timing_4g;
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
> +	imx8mp_ddr_init(&dram_timing_4g, DRAM_TYPE_LPDDR4);
> +
> +	imx8mp_load_and_start_image_via_tfa();
> +}
> +
> +static __noreturn noinline void kb_alphajet_start(void)
> +{
> +	setup_uart();
> +
> +	start_atf();
> +
> +	/*
> +	 * Standard entry we hit once we initialized both DDR and ATF
> +	 */
> +	imx8mp_barebox_entry(__dtb_z_imx8mp_koenigbauer_alphajet_start);
> +}
> +
> +ENTRY_FUNCTION(start_kb_alphajet, r0, r1, r2)
> +{
> +	imx8mp_cpu_lowlevel_init();
> +
> +	relocate_to_current_adr();
> +	setup_c();
> +
> +	kb_alphajet_start();
> +}
> diff --git a/arch/arm/boards/kb-imx8mp-alphajet/lpddr4-timing.c b/arch/arm/boards/kb-imx8mp-alphajet/lpddr4-timing.c
> new file mode 100644
> index 000000000000..6d10b530baf4
> --- /dev/null
> +++ b/arch/arm/boards/kb-imx8mp-alphajet/lpddr4-timing.c
> @@ -0,0 +1,1832 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +// SPDX-FileCopyrightText: 2019 NXP
> +
> +#include <common.h>
> +#include <soc/imx8m/ddr.h>
> +
> +static struct dram_cfg_param ddr_ddrc_cfg_4g[] = {
> +	/** Initialize DDRC registers **/
> +	{ 0x3d400304, 0x1 },
> +	{ 0x3d400030, 0x1 },
> +	{ 0x3d400000, 0xa3080020 },
> +	{ 0x3d400020, 0x1322 },
> +	{ 0x3d400024, 0x1e84800 },
> +	{ 0x3d400064, 0x3d0118 },
> +	{ 0x3d400070, 0x61027f10 },
> +	{ 0x3d400074, 0x7b0 },
> +	{ 0x3d4000d0, 0xc00307a3 },
> +	{ 0x3d4000d4, 0xc50000 },
> +	{ 0x3d4000dc, 0xf4003f },
> +	{ 0x3d4000e0, 0x330000 },
> +	{ 0x3d4000e8, 0x660048 },
> +	{ 0x3d4000ec, 0x160048 },
> +	{ 0x3d400100, 0x2028112a },
> +	{ 0x3d400104, 0x8083f },
> +	{ 0x3d40010c, 0xe0e000 },
> +	{ 0x3d400110, 0x12040a12 },
> +	{ 0x3d400114, 0x2050f0f },
> +	{ 0x3d400118, 0x1010009 },
> +	{ 0x3d40011c, 0x501 },
> +	{ 0x3d400130, 0x20800 },
> +	{ 0x3d400134, 0xe100002 },
> +	{ 0x3d400138, 0x120 },
> +	{ 0x3d400144, 0xc80064 },
> +	{ 0x3d400180, 0x3e8001e },
> +	{ 0x3d400184, 0x3207a12 },
> +	{ 0x3d400188, 0x0 },
> +	{ 0x3d400190, 0x49f820e },
> +	{ 0x3d400194, 0x80303 },
> +	{ 0x3d4001b4, 0x1f0e },
> +	{ 0x3d4001a0, 0xe0400018 },
> +	{ 0x3d4001a4, 0xdf00e4 },
> +	{ 0x3d4001a8, 0x80000000 },
> +	{ 0x3d4001b0, 0x11 },
> +	{ 0x3d4001c0, 0x1 },
> +	{ 0x3d4001c4, 0x1 },
> +	{ 0x3d4000f4, 0xc99 },
> +	{ 0x3d400108, 0x9121c1c },
> +	{ 0x3d400200, 0x17 },
> +	{ 0x3d40020c, 0x0 },
> +	{ 0x3d400210, 0x1f1f },
> +	{ 0x3d400204, 0x80808 },
> +	{ 0x3d400214, 0x7070707 },
> +	{ 0x3d400218, 0x7070707 },
> +	{ 0x3d40021c, 0xf0f },
> +	{ 0x3d400250, 0x1705 },
> +	{ 0x3d400254, 0x2c },
> +	{ 0x3d40025c, 0x4000030 },
> +	{ 0x3d400264, 0x900093e7 },
> +	{ 0x3d40026c, 0x2005574 },
> +	{ 0x3d400400, 0x111 },
> +	{ 0x3d400404, 0x72ff },
> +	{ 0x3d400408, 0x72ff },
> +	{ 0x3d400494, 0x2100e07 },
> +	{ 0x3d400498, 0x620096 },
> +	{ 0x3d40049c, 0x1100e07 },
> +	{ 0x3d4004a0, 0xc8012c },
> +	{ 0x3d402020, 0x1020 },
> +	{ 0x3d402024, 0x30d400 },
> +	{ 0x3d402050, 0x20d000 },
> +	{ 0x3d402064, 0x6001c },
> +	{ 0x3d4020dc, 0x840000 },
> +	{ 0x3d4020e0, 0x330000 },
> +	{ 0x3d4020e8, 0x660048 },
> +	{ 0x3d4020ec, 0x160048 },
> +	{ 0x3d402100, 0xa040105 },
> +	{ 0x3d402104, 0x30407 },
> +	{ 0x3d402108, 0x203060b },
> +	{ 0x3d40210c, 0x505000 },
> +	{ 0x3d402110, 0x2040202 },
> +	{ 0x3d402114, 0x2030202 },
> +	{ 0x3d402118, 0x1010004 },
> +	{ 0x3d40211c, 0x301 },
> +	{ 0x3d402130, 0x20300 },
> +	{ 0x3d402134, 0xa100002 },
> +	{ 0x3d402138, 0x1d },
> +	{ 0x3d402144, 0x14000a },
> +	{ 0x3d402180, 0x640004 },
> +	{ 0x3d402190, 0x3818200 },
> +	{ 0x3d402194, 0x80303 },
> +	{ 0x3d4021b4, 0x100 },
> +	{ 0x3d4020f4, 0xc99 },
> +	{ 0x3d403020, 0x1020 },
> +	{ 0x3d403024, 0xc3500 },
> +	{ 0x3d403050, 0x20d000 },
> +	{ 0x3d403064, 0x30007 },
> +	{ 0x3d4030dc, 0x840000 },
> +	{ 0x3d4030e0, 0x330000 },
> +	{ 0x3d4030e8, 0x660048 },
> +	{ 0x3d4030ec, 0x160048 },
> +	{ 0x3d403100, 0xa010102 },
> +	{ 0x3d403104, 0x30404 },
> +	{ 0x3d403108, 0x203060b },
> +	{ 0x3d40310c, 0x505000 },
> +	{ 0x3d403110, 0x2040202 },
> +	{ 0x3d403114, 0x2030202 },
> +	{ 0x3d403118, 0x1010004 },
> +	{ 0x3d40311c, 0x301 },
> +	{ 0x3d403130, 0x20300 },
> +	{ 0x3d403134, 0xa100002 },
> +	{ 0x3d403138, 0x8 },
> +	{ 0x3d403144, 0x50003 },
> +	{ 0x3d403180, 0x190004 },
> +	{ 0x3d403190, 0x3818200 },
> +	{ 0x3d403194, 0x80303 },
> +	{ 0x3d4031b4, 0x100 },
> +	{ 0x3d4030f4, 0xc99 },
> +	{ 0x3d400028, 0x0 },
> +};
> +
> +/* PHY Initialize Configuration */
> +static struct dram_cfg_param ddr_ddrphy_cfg[] = {
> +	{ 0x100a0, 0x0 },
> +	{ 0x100a1, 0x1 },
> +	{ 0x100a2, 0x2 },
> +	{ 0x100a3, 0x3 },
> +	{ 0x100a4, 0x4 },
> +	{ 0x100a5, 0x5 },
> +	{ 0x100a6, 0x6 },
> +	{ 0x100a7, 0x7 },
> +	{ 0x110a0, 0x0 },
> +	{ 0x110a1, 0x1 },
> +	{ 0x110a2, 0x3 },
> +	{ 0x110a3, 0x4 },
> +	{ 0x110a4, 0x5 },
> +	{ 0x110a5, 0x2 },
> +	{ 0x110a6, 0x7 },
> +	{ 0x110a7, 0x6 },
> +	{ 0x120a0, 0x0 },
> +	{ 0x120a1, 0x1 },
> +	{ 0x120a2, 0x3 },
> +	{ 0x120a3, 0x2 },
> +	{ 0x120a4, 0x5 },
> +	{ 0x120a5, 0x4 },
> +	{ 0x120a6, 0x7 },
> +	{ 0x120a7, 0x6 },
> +	{ 0x130a0, 0x0 },
> +	{ 0x130a1, 0x1 },
> +	{ 0x130a2, 0x2 },
> +	{ 0x130a3, 0x3 },
> +	{ 0x130a4, 0x4 },
> +	{ 0x130a5, 0x5 },
> +	{ 0x130a6, 0x6 },
> +	{ 0x130a7, 0x7 },
> +	{ 0x1005f, 0x1ff },
> +	{ 0x1015f, 0x1ff },
> +	{ 0x1105f, 0x1ff },
> +	{ 0x1115f, 0x1ff },
> +	{ 0x1205f, 0x1ff },
> +	{ 0x1215f, 0x1ff },
> +	{ 0x1305f, 0x1ff },
> +	{ 0x1315f, 0x1ff },
> +	{ 0x11005f, 0x1ff },
> +	{ 0x11015f, 0x1ff },
> +	{ 0x11105f, 0x1ff },
> +	{ 0x11115f, 0x1ff },
> +	{ 0x11205f, 0x1ff },
> +	{ 0x11215f, 0x1ff },
> +	{ 0x11305f, 0x1ff },
> +	{ 0x11315f, 0x1ff },
> +	{ 0x21005f, 0x1ff },
> +	{ 0x21015f, 0x1ff },
> +	{ 0x21105f, 0x1ff },
> +	{ 0x21115f, 0x1ff },
> +	{ 0x21205f, 0x1ff },
> +	{ 0x21215f, 0x1ff },
> +	{ 0x21305f, 0x1ff },
> +	{ 0x21315f, 0x1ff },
> +	{ 0x55, 0x1ff },
> +	{ 0x1055, 0x1ff },
> +	{ 0x2055, 0x1ff },
> +	{ 0x3055, 0x1ff },
> +	{ 0x4055, 0x1ff },
> +	{ 0x5055, 0x1ff },
> +	{ 0x6055, 0x1ff },
> +	{ 0x7055, 0x1ff },
> +	{ 0x8055, 0x1ff },
> +	{ 0x9055, 0x1ff },
> +	{ 0x200c5, 0x18 },
> +	{ 0x1200c5, 0x7 },
> +	{ 0x2200c5, 0x7 },
> +	{ 0x2002e, 0x2 },
> +	{ 0x12002e, 0x2 },
> +	{ 0x22002e, 0x2 },
> +	{ 0x90204, 0x0 },
> +	{ 0x190204, 0x0 },
> +	{ 0x290204, 0x0 },
> +	{ 0x20024, 0x1e3 },
> +	{ 0x2003a, 0x2 },
> +	{ 0x120024, 0x1e3 },
> +	{ 0x2003a, 0x2 },
> +	{ 0x220024, 0x1e3 },
> +	{ 0x2003a, 0x2 },
> +	{ 0x20056, 0x3 },
> +	{ 0x120056, 0x3 },
> +	{ 0x220056, 0x3 },
> +	{ 0x1004d, 0xe00 },
> +	{ 0x1014d, 0xe00 },
> +	{ 0x1104d, 0xe00 },
> +	{ 0x1114d, 0xe00 },
> +	{ 0x1204d, 0xe00 },
> +	{ 0x1214d, 0xe00 },
> +	{ 0x1304d, 0xe00 },
> +	{ 0x1314d, 0xe00 },
> +	{ 0x11004d, 0xe00 },
> +	{ 0x11014d, 0xe00 },
> +	{ 0x11104d, 0xe00 },
> +	{ 0x11114d, 0xe00 },
> +	{ 0x11204d, 0xe00 },
> +	{ 0x11214d, 0xe00 },
> +	{ 0x11304d, 0xe00 },
> +	{ 0x11314d, 0xe00 },
> +	{ 0x21004d, 0xe00 },
> +	{ 0x21014d, 0xe00 },
> +	{ 0x21104d, 0xe00 },
> +	{ 0x21114d, 0xe00 },
> +	{ 0x21204d, 0xe00 },
> +	{ 0x21214d, 0xe00 },
> +	{ 0x21304d, 0xe00 },
> +	{ 0x21314d, 0xe00 },
> +	{ 0x10049, 0xeba },
> +	{ 0x10149, 0xeba },
> +	{ 0x11049, 0xeba },
> +	{ 0x11149, 0xeba },
> +	{ 0x12049, 0xeba },
> +	{ 0x12149, 0xeba },
> +	{ 0x13049, 0xeba },
> +	{ 0x13149, 0xeba },
> +	{ 0x110049, 0xeba },
> +	{ 0x110149, 0xeba },
> +	{ 0x111049, 0xeba },
> +	{ 0x111149, 0xeba },
> +	{ 0x112049, 0xeba },
> +	{ 0x112149, 0xeba },
> +	{ 0x113049, 0xeba },
> +	{ 0x113149, 0xeba },
> +	{ 0x210049, 0xeba },
> +	{ 0x210149, 0xeba },
> +	{ 0x211049, 0xeba },
> +	{ 0x211149, 0xeba },
> +	{ 0x212049, 0xeba },
> +	{ 0x212149, 0xeba },
> +	{ 0x213049, 0xeba },
> +	{ 0x213149, 0xeba },
> +	{ 0x43, 0x63 },
> +	{ 0x1043, 0x63 },
> +	{ 0x2043, 0x63 },
> +	{ 0x3043, 0x63 },
> +	{ 0x4043, 0x63 },
> +	{ 0x5043, 0x63 },
> +	{ 0x6043, 0x63 },
> +	{ 0x7043, 0x63 },
> +	{ 0x8043, 0x63 },
> +	{ 0x9043, 0x63 },
> +	{ 0x20018, 0x3 },
> +	{ 0x20075, 0x4 },
> +	{ 0x20050, 0x0 },
> +	{ 0x20008, 0x3e8 },
> +	{ 0x120008, 0x64 },
> +	{ 0x220008, 0x19 },
> +	{ 0x20088, 0x9 },
> +	{ 0x200b2, 0x104 },
> +	{ 0x10043, 0x5a1 },
> +	{ 0x10143, 0x5a1 },
> +	{ 0x11043, 0x5a1 },
> +	{ 0x11143, 0x5a1 },
> +	{ 0x12043, 0x5a1 },
> +	{ 0x12143, 0x5a1 },
> +	{ 0x13043, 0x5a1 },
> +	{ 0x13143, 0x5a1 },
> +	{ 0x1200b2, 0x104 },
> +	{ 0x110043, 0x5a1 },
> +	{ 0x110143, 0x5a1 },
> +	{ 0x111043, 0x5a1 },
> +	{ 0x111143, 0x5a1 },
> +	{ 0x112043, 0x5a1 },
> +	{ 0x112143, 0x5a1 },
> +	{ 0x113043, 0x5a1 },
> +	{ 0x113143, 0x5a1 },
> +	{ 0x2200b2, 0x104 },
> +	{ 0x210043, 0x5a1 },
> +	{ 0x210143, 0x5a1 },
> +	{ 0x211043, 0x5a1 },
> +	{ 0x211143, 0x5a1 },
> +	{ 0x212043, 0x5a1 },
> +	{ 0x212143, 0x5a1 },
> +	{ 0x213043, 0x5a1 },
> +	{ 0x213143, 0x5a1 },
> +	{ 0x200fa, 0x1 },
> +	{ 0x1200fa, 0x1 },
> +	{ 0x2200fa, 0x1 },
> +	{ 0x20019, 0x1 },
> +	{ 0x120019, 0x1 },
> +	{ 0x220019, 0x1 },
> +	{ 0x200f0, 0x660 },
> +	{ 0x200f1, 0x0 },
> +	{ 0x200f2, 0x4444 },
> +	{ 0x200f3, 0x8888 },
> +	{ 0x200f4, 0x5665 },
> +	{ 0x200f5, 0x0 },
> +	{ 0x200f6, 0x0 },
> +	{ 0x200f7, 0xf000 },
> +	{ 0x20025, 0x0 },
> +	{ 0x2002d, 0x0 },
> +	{ 0x12002d, 0x0 },
> +	{ 0x22002d, 0x0 },
> +	{ 0x2007d, 0x212 },
> +	{ 0x12007d, 0x212 },
> +	{ 0x22007d, 0x212 },
> +	{ 0x2007c, 0x61 },
> +	{ 0x12007c, 0x61 },
> +	{ 0x22007c, 0x61 },
> +	{ 0x1004a, 0x500 },
> +	{ 0x1104a, 0x500 },
> +	{ 0x1204a, 0x500 },
> +	{ 0x1304a, 0x500 },
> +	{ 0x2002c, 0x0 },
> +};
> +
> +/* ddr phy trained csr */
> +static struct dram_cfg_param ddr_ddrphy_trained_csr[] = {
> +	{ 0x200b2, 0x0 },
> +	{ 0x1200b2, 0x0 },
> +	{ 0x2200b2, 0x0 },
> +	{ 0x200cb, 0x0 },
> +	{ 0x10043, 0x0 },
> +	{ 0x110043, 0x0 },
> +	{ 0x210043, 0x0 },
> +	{ 0x10143, 0x0 },
> +	{ 0x110143, 0x0 },
> +	{ 0x210143, 0x0 },
> +	{ 0x11043, 0x0 },
> +	{ 0x111043, 0x0 },
> +	{ 0x211043, 0x0 },
> +	{ 0x11143, 0x0 },
> +	{ 0x111143, 0x0 },
> +	{ 0x211143, 0x0 },
> +	{ 0x12043, 0x0 },
> +	{ 0x112043, 0x0 },
> +	{ 0x212043, 0x0 },
> +	{ 0x12143, 0x0 },
> +	{ 0x112143, 0x0 },
> +	{ 0x212143, 0x0 },
> +	{ 0x13043, 0x0 },
> +	{ 0x113043, 0x0 },
> +	{ 0x213043, 0x0 },
> +	{ 0x13143, 0x0 },
> +	{ 0x113143, 0x0 },
> +	{ 0x213143, 0x0 },
> +	{ 0x80, 0x0 },
> +	{ 0x100080, 0x0 },
> +	{ 0x200080, 0x0 },
> +	{ 0x1080, 0x0 },
> +	{ 0x101080, 0x0 },
> +	{ 0x201080, 0x0 },
> +	{ 0x2080, 0x0 },
> +	{ 0x102080, 0x0 },
> +	{ 0x202080, 0x0 },
> +	{ 0x3080, 0x0 },
> +	{ 0x103080, 0x0 },
> +	{ 0x203080, 0x0 },
> +	{ 0x4080, 0x0 },
> +	{ 0x104080, 0x0 },
> +	{ 0x204080, 0x0 },
> +	{ 0x5080, 0x0 },
> +	{ 0x105080, 0x0 },
> +	{ 0x205080, 0x0 },
> +	{ 0x6080, 0x0 },
> +	{ 0x106080, 0x0 },
> +	{ 0x206080, 0x0 },
> +	{ 0x7080, 0x0 },
> +	{ 0x107080, 0x0 },
> +	{ 0x207080, 0x0 },
> +	{ 0x8080, 0x0 },
> +	{ 0x108080, 0x0 },
> +	{ 0x208080, 0x0 },
> +	{ 0x9080, 0x0 },
> +	{ 0x109080, 0x0 },
> +	{ 0x209080, 0x0 },
> +	{ 0x10080, 0x0 },
> +	{ 0x110080, 0x0 },
> +	{ 0x210080, 0x0 },
> +	{ 0x10180, 0x0 },
> +	{ 0x110180, 0x0 },
> +	{ 0x210180, 0x0 },
> +	{ 0x11080, 0x0 },
> +	{ 0x111080, 0x0 },
> +	{ 0x211080, 0x0 },
> +	{ 0x11180, 0x0 },
> +	{ 0x111180, 0x0 },
> +	{ 0x211180, 0x0 },
> +	{ 0x12080, 0x0 },
> +	{ 0x112080, 0x0 },
> +	{ 0x212080, 0x0 },
> +	{ 0x12180, 0x0 },
> +	{ 0x112180, 0x0 },
> +	{ 0x212180, 0x0 },
> +	{ 0x13080, 0x0 },
> +	{ 0x113080, 0x0 },
> +	{ 0x213080, 0x0 },
> +	{ 0x13180, 0x0 },
> +	{ 0x113180, 0x0 },
> +	{ 0x213180, 0x0 },
> +	{ 0x10081, 0x0 },
> +	{ 0x110081, 0x0 },
> +	{ 0x210081, 0x0 },
> +	{ 0x10181, 0x0 },
> +	{ 0x110181, 0x0 },
> +	{ 0x210181, 0x0 },
> +	{ 0x11081, 0x0 },
> +	{ 0x111081, 0x0 },
> +	{ 0x211081, 0x0 },
> +	{ 0x11181, 0x0 },
> +	{ 0x111181, 0x0 },
> +	{ 0x211181, 0x0 },
> +	{ 0x12081, 0x0 },
> +	{ 0x112081, 0x0 },
> +	{ 0x212081, 0x0 },
> +	{ 0x12181, 0x0 },
> +	{ 0x112181, 0x0 },
> +	{ 0x212181, 0x0 },
> +	{ 0x13081, 0x0 },
> +	{ 0x113081, 0x0 },
> +	{ 0x213081, 0x0 },
> +	{ 0x13181, 0x0 },
> +	{ 0x113181, 0x0 },
> +	{ 0x213181, 0x0 },
> +	{ 0x100d0, 0x0 },
> +	{ 0x1100d0, 0x0 },
> +	{ 0x2100d0, 0x0 },
> +	{ 0x101d0, 0x0 },
> +	{ 0x1101d0, 0x0 },
> +	{ 0x2101d0, 0x0 },
> +	{ 0x110d0, 0x0 },
> +	{ 0x1110d0, 0x0 },
> +	{ 0x2110d0, 0x0 },
> +	{ 0x111d0, 0x0 },
> +	{ 0x1111d0, 0x0 },
> +	{ 0x2111d0, 0x0 },
> +	{ 0x120d0, 0x0 },
> +	{ 0x1120d0, 0x0 },
> +	{ 0x2120d0, 0x0 },
> +	{ 0x121d0, 0x0 },
> +	{ 0x1121d0, 0x0 },
> +	{ 0x2121d0, 0x0 },
> +	{ 0x130d0, 0x0 },
> +	{ 0x1130d0, 0x0 },
> +	{ 0x2130d0, 0x0 },
> +	{ 0x131d0, 0x0 },
> +	{ 0x1131d0, 0x0 },
> +	{ 0x2131d0, 0x0 },
> +	{ 0x100d1, 0x0 },
> +	{ 0x1100d1, 0x0 },
> +	{ 0x2100d1, 0x0 },
> +	{ 0x101d1, 0x0 },
> +	{ 0x1101d1, 0x0 },
> +	{ 0x2101d1, 0x0 },
> +	{ 0x110d1, 0x0 },
> +	{ 0x1110d1, 0x0 },
> +	{ 0x2110d1, 0x0 },
> +	{ 0x111d1, 0x0 },
> +	{ 0x1111d1, 0x0 },
> +	{ 0x2111d1, 0x0 },
> +	{ 0x120d1, 0x0 },
> +	{ 0x1120d1, 0x0 },
> +	{ 0x2120d1, 0x0 },
> +	{ 0x121d1, 0x0 },
> +	{ 0x1121d1, 0x0 },
> +	{ 0x2121d1, 0x0 },
> +	{ 0x130d1, 0x0 },
> +	{ 0x1130d1, 0x0 },
> +	{ 0x2130d1, 0x0 },
> +	{ 0x131d1, 0x0 },
> +	{ 0x1131d1, 0x0 },
> +	{ 0x2131d1, 0x0 },
> +	{ 0x10068, 0x0 },
> +	{ 0x10168, 0x0 },
> +	{ 0x10268, 0x0 },
> +	{ 0x10368, 0x0 },
> +	{ 0x10468, 0x0 },
> +	{ 0x10568, 0x0 },
> +	{ 0x10668, 0x0 },
> +	{ 0x10768, 0x0 },
> +	{ 0x10868, 0x0 },
> +	{ 0x11068, 0x0 },
> +	{ 0x11168, 0x0 },
> +	{ 0x11268, 0x0 },
> +	{ 0x11368, 0x0 },
> +	{ 0x11468, 0x0 },
> +	{ 0x11568, 0x0 },
> +	{ 0x11668, 0x0 },
> +	{ 0x11768, 0x0 },
> +	{ 0x11868, 0x0 },
> +	{ 0x12068, 0x0 },
> +	{ 0x12168, 0x0 },
> +	{ 0x12268, 0x0 },
> +	{ 0x12368, 0x0 },
> +	{ 0x12468, 0x0 },
> +	{ 0x12568, 0x0 },
> +	{ 0x12668, 0x0 },
> +	{ 0x12768, 0x0 },
> +	{ 0x12868, 0x0 },
> +	{ 0x13068, 0x0 },
> +	{ 0x13168, 0x0 },
> +	{ 0x13268, 0x0 },
> +	{ 0x13368, 0x0 },
> +	{ 0x13468, 0x0 },
> +	{ 0x13568, 0x0 },
> +	{ 0x13668, 0x0 },
> +	{ 0x13768, 0x0 },
> +	{ 0x13868, 0x0 },
> +	{ 0x10069, 0x0 },
> +	{ 0x10169, 0x0 },
> +	{ 0x10269, 0x0 },
> +	{ 0x10369, 0x0 },
> +	{ 0x10469, 0x0 },
> +	{ 0x10569, 0x0 },
> +	{ 0x10669, 0x0 },
> +	{ 0x10769, 0x0 },
> +	{ 0x10869, 0x0 },
> +	{ 0x11069, 0x0 },
> +	{ 0x11169, 0x0 },
> +	{ 0x11269, 0x0 },
> +	{ 0x11369, 0x0 },
> +	{ 0x11469, 0x0 },
> +	{ 0x11569, 0x0 },
> +	{ 0x11669, 0x0 },
> +	{ 0x11769, 0x0 },
> +	{ 0x11869, 0x0 },
> +	{ 0x12069, 0x0 },
> +	{ 0x12169, 0x0 },
> +	{ 0x12269, 0x0 },
> +	{ 0x12369, 0x0 },
> +	{ 0x12469, 0x0 },
> +	{ 0x12569, 0x0 },
> +	{ 0x12669, 0x0 },
> +	{ 0x12769, 0x0 },
> +	{ 0x12869, 0x0 },
> +	{ 0x13069, 0x0 },
> +	{ 0x13169, 0x0 },
> +	{ 0x13269, 0x0 },
> +	{ 0x13369, 0x0 },
> +	{ 0x13469, 0x0 },
> +	{ 0x13569, 0x0 },
> +	{ 0x13669, 0x0 },
> +	{ 0x13769, 0x0 },
> +	{ 0x13869, 0x0 },
> +	{ 0x1008c, 0x0 },
> +	{ 0x11008c, 0x0 },
> +	{ 0x21008c, 0x0 },
> +	{ 0x1018c, 0x0 },
> +	{ 0x11018c, 0x0 },
> +	{ 0x21018c, 0x0 },
> +	{ 0x1108c, 0x0 },
> +	{ 0x11108c, 0x0 },
> +	{ 0x21108c, 0x0 },
> +	{ 0x1118c, 0x0 },
> +	{ 0x11118c, 0x0 },
> +	{ 0x21118c, 0x0 },
> +	{ 0x1208c, 0x0 },
> +	{ 0x11208c, 0x0 },
> +	{ 0x21208c, 0x0 },
> +	{ 0x1218c, 0x0 },
> +	{ 0x11218c, 0x0 },
> +	{ 0x21218c, 0x0 },
> +	{ 0x1308c, 0x0 },
> +	{ 0x11308c, 0x0 },
> +	{ 0x21308c, 0x0 },
> +	{ 0x1318c, 0x0 },
> +	{ 0x11318c, 0x0 },
> +	{ 0x21318c, 0x0 },
> +	{ 0x1008d, 0x0 },
> +	{ 0x11008d, 0x0 },
> +	{ 0x21008d, 0x0 },
> +	{ 0x1018d, 0x0 },
> +	{ 0x11018d, 0x0 },
> +	{ 0x21018d, 0x0 },
> +	{ 0x1108d, 0x0 },
> +	{ 0x11108d, 0x0 },
> +	{ 0x21108d, 0x0 },
> +	{ 0x1118d, 0x0 },
> +	{ 0x11118d, 0x0 },
> +	{ 0x21118d, 0x0 },
> +	{ 0x1208d, 0x0 },
> +	{ 0x11208d, 0x0 },
> +	{ 0x21208d, 0x0 },
> +	{ 0x1218d, 0x0 },
> +	{ 0x11218d, 0x0 },
> +	{ 0x21218d, 0x0 },
> +	{ 0x1308d, 0x0 },
> +	{ 0x11308d, 0x0 },
> +	{ 0x21308d, 0x0 },
> +	{ 0x1318d, 0x0 },
> +	{ 0x11318d, 0x0 },
> +	{ 0x21318d, 0x0 },
> +	{ 0x100c0, 0x0 },
> +	{ 0x1100c0, 0x0 },
> +	{ 0x2100c0, 0x0 },
> +	{ 0x101c0, 0x0 },
> +	{ 0x1101c0, 0x0 },
> +	{ 0x2101c0, 0x0 },
> +	{ 0x102c0, 0x0 },
> +	{ 0x1102c0, 0x0 },
> +	{ 0x2102c0, 0x0 },
> +	{ 0x103c0, 0x0 },
> +	{ 0x1103c0, 0x0 },
> +	{ 0x2103c0, 0x0 },
> +	{ 0x104c0, 0x0 },
> +	{ 0x1104c0, 0x0 },
> +	{ 0x2104c0, 0x0 },
> +	{ 0x105c0, 0x0 },
> +	{ 0x1105c0, 0x0 },
> +	{ 0x2105c0, 0x0 },
> +	{ 0x106c0, 0x0 },
> +	{ 0x1106c0, 0x0 },
> +	{ 0x2106c0, 0x0 },
> +	{ 0x107c0, 0x0 },
> +	{ 0x1107c0, 0x0 },
> +	{ 0x2107c0, 0x0 },
> +	{ 0x108c0, 0x0 },
> +	{ 0x1108c0, 0x0 },
> +	{ 0x2108c0, 0x0 },
> +	{ 0x110c0, 0x0 },
> +	{ 0x1110c0, 0x0 },
> +	{ 0x2110c0, 0x0 },
> +	{ 0x111c0, 0x0 },
> +	{ 0x1111c0, 0x0 },
> +	{ 0x2111c0, 0x0 },
> +	{ 0x112c0, 0x0 },
> +	{ 0x1112c0, 0x0 },
> +	{ 0x2112c0, 0x0 },
> +	{ 0x113c0, 0x0 },
> +	{ 0x1113c0, 0x0 },
> +	{ 0x2113c0, 0x0 },
> +	{ 0x114c0, 0x0 },
> +	{ 0x1114c0, 0x0 },
> +	{ 0x2114c0, 0x0 },
> +	{ 0x115c0, 0x0 },
> +	{ 0x1115c0, 0x0 },
> +	{ 0x2115c0, 0x0 },
> +	{ 0x116c0, 0x0 },
> +	{ 0x1116c0, 0x0 },
> +	{ 0x2116c0, 0x0 },
> +	{ 0x117c0, 0x0 },
> +	{ 0x1117c0, 0x0 },
> +	{ 0x2117c0, 0x0 },
> +	{ 0x118c0, 0x0 },
> +	{ 0x1118c0, 0x0 },
> +	{ 0x2118c0, 0x0 },
> +	{ 0x120c0, 0x0 },
> +	{ 0x1120c0, 0x0 },
> +	{ 0x2120c0, 0x0 },
> +	{ 0x121c0, 0x0 },
> +	{ 0x1121c0, 0x0 },
> +	{ 0x2121c0, 0x0 },
> +	{ 0x122c0, 0x0 },
> +	{ 0x1122c0, 0x0 },
> +	{ 0x2122c0, 0x0 },
> +	{ 0x123c0, 0x0 },
> +	{ 0x1123c0, 0x0 },
> +	{ 0x2123c0, 0x0 },
> +	{ 0x124c0, 0x0 },
> +	{ 0x1124c0, 0x0 },
> +	{ 0x2124c0, 0x0 },
> +	{ 0x125c0, 0x0 },
> +	{ 0x1125c0, 0x0 },
> +	{ 0x2125c0, 0x0 },
> +	{ 0x126c0, 0x0 },
> +	{ 0x1126c0, 0x0 },
> +	{ 0x2126c0, 0x0 },
> +	{ 0x127c0, 0x0 },
> +	{ 0x1127c0, 0x0 },
> +	{ 0x2127c0, 0x0 },
> +	{ 0x128c0, 0x0 },
> +	{ 0x1128c0, 0x0 },
> +	{ 0x2128c0, 0x0 },
> +	{ 0x130c0, 0x0 },
> +	{ 0x1130c0, 0x0 },
> +	{ 0x2130c0, 0x0 },
> +	{ 0x131c0, 0x0 },
> +	{ 0x1131c0, 0x0 },
> +	{ 0x2131c0, 0x0 },
> +	{ 0x132c0, 0x0 },
> +	{ 0x1132c0, 0x0 },
> +	{ 0x2132c0, 0x0 },
> +	{ 0x133c0, 0x0 },
> +	{ 0x1133c0, 0x0 },
> +	{ 0x2133c0, 0x0 },
> +	{ 0x134c0, 0x0 },
> +	{ 0x1134c0, 0x0 },
> +	{ 0x2134c0, 0x0 },
> +	{ 0x135c0, 0x0 },
> +	{ 0x1135c0, 0x0 },
> +	{ 0x2135c0, 0x0 },
> +	{ 0x136c0, 0x0 },
> +	{ 0x1136c0, 0x0 },
> +	{ 0x2136c0, 0x0 },
> +	{ 0x137c0, 0x0 },
> +	{ 0x1137c0, 0x0 },
> +	{ 0x2137c0, 0x0 },
> +	{ 0x138c0, 0x0 },
> +	{ 0x1138c0, 0x0 },
> +	{ 0x2138c0, 0x0 },
> +	{ 0x100c1, 0x0 },
> +	{ 0x1100c1, 0x0 },
> +	{ 0x2100c1, 0x0 },
> +	{ 0x101c1, 0x0 },
> +	{ 0x1101c1, 0x0 },
> +	{ 0x2101c1, 0x0 },
> +	{ 0x102c1, 0x0 },
> +	{ 0x1102c1, 0x0 },
> +	{ 0x2102c1, 0x0 },
> +	{ 0x103c1, 0x0 },
> +	{ 0x1103c1, 0x0 },
> +	{ 0x2103c1, 0x0 },
> +	{ 0x104c1, 0x0 },
> +	{ 0x1104c1, 0x0 },
> +	{ 0x2104c1, 0x0 },
> +	{ 0x105c1, 0x0 },
> +	{ 0x1105c1, 0x0 },
> +	{ 0x2105c1, 0x0 },
> +	{ 0x106c1, 0x0 },
> +	{ 0x1106c1, 0x0 },
> +	{ 0x2106c1, 0x0 },
> +	{ 0x107c1, 0x0 },
> +	{ 0x1107c1, 0x0 },
> +	{ 0x2107c1, 0x0 },
> +	{ 0x108c1, 0x0 },
> +	{ 0x1108c1, 0x0 },
> +	{ 0x2108c1, 0x0 },
> +	{ 0x110c1, 0x0 },
> +	{ 0x1110c1, 0x0 },
> +	{ 0x2110c1, 0x0 },
> +	{ 0x111c1, 0x0 },
> +	{ 0x1111c1, 0x0 },
> +	{ 0x2111c1, 0x0 },
> +	{ 0x112c1, 0x0 },
> +	{ 0x1112c1, 0x0 },
> +	{ 0x2112c1, 0x0 },
> +	{ 0x113c1, 0x0 },
> +	{ 0x1113c1, 0x0 },
> +	{ 0x2113c1, 0x0 },
> +	{ 0x114c1, 0x0 },
> +	{ 0x1114c1, 0x0 },
> +	{ 0x2114c1, 0x0 },
> +	{ 0x115c1, 0x0 },
> +	{ 0x1115c1, 0x0 },
> +	{ 0x2115c1, 0x0 },
> +	{ 0x116c1, 0x0 },
> +	{ 0x1116c1, 0x0 },
> +	{ 0x2116c1, 0x0 },
> +	{ 0x117c1, 0x0 },
> +	{ 0x1117c1, 0x0 },
> +	{ 0x2117c1, 0x0 },
> +	{ 0x118c1, 0x0 },
> +	{ 0x1118c1, 0x0 },
> +	{ 0x2118c1, 0x0 },
> +	{ 0x120c1, 0x0 },
> +	{ 0x1120c1, 0x0 },
> +	{ 0x2120c1, 0x0 },
> +	{ 0x121c1, 0x0 },
> +	{ 0x1121c1, 0x0 },
> +	{ 0x2121c1, 0x0 },
> +	{ 0x122c1, 0x0 },
> +	{ 0x1122c1, 0x0 },
> +	{ 0x2122c1, 0x0 },
> +	{ 0x123c1, 0x0 },
> +	{ 0x1123c1, 0x0 },
> +	{ 0x2123c1, 0x0 },
> +	{ 0x124c1, 0x0 },
> +	{ 0x1124c1, 0x0 },
> +	{ 0x2124c1, 0x0 },
> +	{ 0x125c1, 0x0 },
> +	{ 0x1125c1, 0x0 },
> +	{ 0x2125c1, 0x0 },
> +	{ 0x126c1, 0x0 },
> +	{ 0x1126c1, 0x0 },
> +	{ 0x2126c1, 0x0 },
> +	{ 0x127c1, 0x0 },
> +	{ 0x1127c1, 0x0 },
> +	{ 0x2127c1, 0x0 },
> +	{ 0x128c1, 0x0 },
> +	{ 0x1128c1, 0x0 },
> +	{ 0x2128c1, 0x0 },
> +	{ 0x130c1, 0x0 },
> +	{ 0x1130c1, 0x0 },
> +	{ 0x2130c1, 0x0 },
> +	{ 0x131c1, 0x0 },
> +	{ 0x1131c1, 0x0 },
> +	{ 0x2131c1, 0x0 },
> +	{ 0x132c1, 0x0 },
> +	{ 0x1132c1, 0x0 },
> +	{ 0x2132c1, 0x0 },
> +	{ 0x133c1, 0x0 },
> +	{ 0x1133c1, 0x0 },
> +	{ 0x2133c1, 0x0 },
> +	{ 0x134c1, 0x0 },
> +	{ 0x1134c1, 0x0 },
> +	{ 0x2134c1, 0x0 },
> +	{ 0x135c1, 0x0 },
> +	{ 0x1135c1, 0x0 },
> +	{ 0x2135c1, 0x0 },
> +	{ 0x136c1, 0x0 },
> +	{ 0x1136c1, 0x0 },
> +	{ 0x2136c1, 0x0 },
> +	{ 0x137c1, 0x0 },
> +	{ 0x1137c1, 0x0 },
> +	{ 0x2137c1, 0x0 },
> +	{ 0x138c1, 0x0 },
> +	{ 0x1138c1, 0x0 },
> +	{ 0x2138c1, 0x0 },
> +	{ 0x10020, 0x0 },
> +	{ 0x110020, 0x0 },
> +	{ 0x210020, 0x0 },
> +	{ 0x11020, 0x0 },
> +	{ 0x111020, 0x0 },
> +	{ 0x211020, 0x0 },
> +	{ 0x12020, 0x0 },
> +	{ 0x112020, 0x0 },
> +	{ 0x212020, 0x0 },
> +	{ 0x13020, 0x0 },
> +	{ 0x113020, 0x0 },
> +	{ 0x213020, 0x0 },
> +	{ 0x20072, 0x0 },
> +	{ 0x20073, 0x0 },
> +	{ 0x20074, 0x0 },
> +	{ 0x100aa, 0x0 },
> +	{ 0x110aa, 0x0 },
> +	{ 0x120aa, 0x0 },
> +	{ 0x130aa, 0x0 },
> +	{ 0x20010, 0x0 },
> +	{ 0x120010, 0x0 },
> +	{ 0x220010, 0x0 },
> +	{ 0x20011, 0x0 },
> +	{ 0x120011, 0x0 },
> +	{ 0x220011, 0x0 },
> +	{ 0x100ae, 0x0 },
> +	{ 0x1100ae, 0x0 },
> +	{ 0x2100ae, 0x0 },
> +	{ 0x100af, 0x0 },
> +	{ 0x1100af, 0x0 },
> +	{ 0x2100af, 0x0 },
> +	{ 0x110ae, 0x0 },
> +	{ 0x1110ae, 0x0 },
> +	{ 0x2110ae, 0x0 },
> +	{ 0x110af, 0x0 },
> +	{ 0x1110af, 0x0 },
> +	{ 0x2110af, 0x0 },
> +	{ 0x120ae, 0x0 },
> +	{ 0x1120ae, 0x0 },
> +	{ 0x2120ae, 0x0 },
> +	{ 0x120af, 0x0 },
> +	{ 0x1120af, 0x0 },
> +	{ 0x2120af, 0x0 },
> +	{ 0x130ae, 0x0 },
> +	{ 0x1130ae, 0x0 },
> +	{ 0x2130ae, 0x0 },
> +	{ 0x130af, 0x0 },
> +	{ 0x1130af, 0x0 },
> +	{ 0x2130af, 0x0 },
> +	{ 0x20020, 0x0 },
> +	{ 0x120020, 0x0 },
> +	{ 0x220020, 0x0 },
> +	{ 0x100a0, 0x0 },
> +	{ 0x100a1, 0x0 },
> +	{ 0x100a2, 0x0 },
> +	{ 0x100a3, 0x0 },
> +	{ 0x100a4, 0x0 },
> +	{ 0x100a5, 0x0 },
> +	{ 0x100a6, 0x0 },
> +	{ 0x100a7, 0x0 },
> +	{ 0x110a0, 0x0 },
> +	{ 0x110a1, 0x0 },
> +	{ 0x110a2, 0x0 },
> +	{ 0x110a3, 0x0 },
> +	{ 0x110a4, 0x0 },
> +	{ 0x110a5, 0x0 },
> +	{ 0x110a6, 0x0 },
> +	{ 0x110a7, 0x0 },
> +	{ 0x120a0, 0x0 },
> +	{ 0x120a1, 0x0 },
> +	{ 0x120a2, 0x0 },
> +	{ 0x120a3, 0x0 },
> +	{ 0x120a4, 0x0 },
> +	{ 0x120a5, 0x0 },
> +	{ 0x120a6, 0x0 },
> +	{ 0x120a7, 0x0 },
> +	{ 0x130a0, 0x0 },
> +	{ 0x130a1, 0x0 },
> +	{ 0x130a2, 0x0 },
> +	{ 0x130a3, 0x0 },
> +	{ 0x130a4, 0x0 },
> +	{ 0x130a5, 0x0 },
> +	{ 0x130a6, 0x0 },
> +	{ 0x130a7, 0x0 },
> +	{ 0x2007c, 0x0 },
> +	{ 0x12007c, 0x0 },
> +	{ 0x22007c, 0x0 },
> +	{ 0x2007d, 0x0 },
> +	{ 0x12007d, 0x0 },
> +	{ 0x22007d, 0x0 },
> +	{ 0x400fd, 0x0 },
> +	{ 0x400c0, 0x0 },
> +	{ 0x90201, 0x0 },
> +	{ 0x190201, 0x0 },
> +	{ 0x290201, 0x0 },
> +	{ 0x90202, 0x0 },
> +	{ 0x190202, 0x0 },
> +	{ 0x290202, 0x0 },
> +	{ 0x90203, 0x0 },
> +	{ 0x190203, 0x0 },
> +	{ 0x290203, 0x0 },
> +	{ 0x90204, 0x0 },
> +	{ 0x190204, 0x0 },
> +	{ 0x290204, 0x0 },
> +	{ 0x90205, 0x0 },
> +	{ 0x190205, 0x0 },
> +	{ 0x290205, 0x0 },
> +	{ 0x90206, 0x0 },
> +	{ 0x190206, 0x0 },
> +	{ 0x290206, 0x0 },
> +	{ 0x90207, 0x0 },
> +	{ 0x190207, 0x0 },
> +	{ 0x290207, 0x0 },
> +	{ 0x90208, 0x0 },
> +	{ 0x190208, 0x0 },
> +	{ 0x290208, 0x0 },
> +	{ 0x10062, 0x0 },
> +	{ 0x10162, 0x0 },
> +	{ 0x10262, 0x0 },
> +	{ 0x10362, 0x0 },
> +	{ 0x10462, 0x0 },
> +	{ 0x10562, 0x0 },
> +	{ 0x10662, 0x0 },
> +	{ 0x10762, 0x0 },
> +	{ 0x10862, 0x0 },
> +	{ 0x11062, 0x0 },
> +	{ 0x11162, 0x0 },
> +	{ 0x11262, 0x0 },
> +	{ 0x11362, 0x0 },
> +	{ 0x11462, 0x0 },
> +	{ 0x11562, 0x0 },
> +	{ 0x11662, 0x0 },
> +	{ 0x11762, 0x0 },
> +	{ 0x11862, 0x0 },
> +	{ 0x12062, 0x0 },
> +	{ 0x12162, 0x0 },
> +	{ 0x12262, 0x0 },
> +	{ 0x12362, 0x0 },
> +	{ 0x12462, 0x0 },
> +	{ 0x12562, 0x0 },
> +	{ 0x12662, 0x0 },
> +	{ 0x12762, 0x0 },
> +	{ 0x12862, 0x0 },
> +	{ 0x13062, 0x0 },
> +	{ 0x13162, 0x0 },
> +	{ 0x13262, 0x0 },
> +	{ 0x13362, 0x0 },
> +	{ 0x13462, 0x0 },
> +	{ 0x13562, 0x0 },
> +	{ 0x13662, 0x0 },
> +	{ 0x13762, 0x0 },
> +	{ 0x13862, 0x0 },
> +	{ 0x20077, 0x0 },
> +	{ 0x10001, 0x0 },
> +	{ 0x11001, 0x0 },
> +	{ 0x12001, 0x0 },
> +	{ 0x13001, 0x0 },
> +	{ 0x10040, 0x0 },
> +	{ 0x10140, 0x0 },
> +	{ 0x10240, 0x0 },
> +	{ 0x10340, 0x0 },
> +	{ 0x10440, 0x0 },
> +	{ 0x10540, 0x0 },
> +	{ 0x10640, 0x0 },
> +	{ 0x10740, 0x0 },
> +	{ 0x10840, 0x0 },
> +	{ 0x10030, 0x0 },
> +	{ 0x10130, 0x0 },
> +	{ 0x10230, 0x0 },
> +	{ 0x10330, 0x0 },
> +	{ 0x10430, 0x0 },
> +	{ 0x10530, 0x0 },
> +	{ 0x10630, 0x0 },
> +	{ 0x10730, 0x0 },
> +	{ 0x10830, 0x0 },
> +	{ 0x11040, 0x0 },
> +	{ 0x11140, 0x0 },
> +	{ 0x11240, 0x0 },
> +	{ 0x11340, 0x0 },
> +	{ 0x11440, 0x0 },
> +	{ 0x11540, 0x0 },
> +	{ 0x11640, 0x0 },
> +	{ 0x11740, 0x0 },
> +	{ 0x11840, 0x0 },
> +	{ 0x11030, 0x0 },
> +	{ 0x11130, 0x0 },
> +	{ 0x11230, 0x0 },
> +	{ 0x11330, 0x0 },
> +	{ 0x11430, 0x0 },
> +	{ 0x11530, 0x0 },
> +	{ 0x11630, 0x0 },
> +	{ 0x11730, 0x0 },
> +	{ 0x11830, 0x0 },
> +	{ 0x12040, 0x0 },
> +	{ 0x12140, 0x0 },
> +	{ 0x12240, 0x0 },
> +	{ 0x12340, 0x0 },
> +	{ 0x12440, 0x0 },
> +	{ 0x12540, 0x0 },
> +	{ 0x12640, 0x0 },
> +	{ 0x12740, 0x0 },
> +	{ 0x12840, 0x0 },
> +	{ 0x12030, 0x0 },
> +	{ 0x12130, 0x0 },
> +	{ 0x12230, 0x0 },
> +	{ 0x12330, 0x0 },
> +	{ 0x12430, 0x0 },
> +	{ 0x12530, 0x0 },
> +	{ 0x12630, 0x0 },
> +	{ 0x12730, 0x0 },
> +	{ 0x12830, 0x0 },
> +	{ 0x13040, 0x0 },
> +	{ 0x13140, 0x0 },
> +	{ 0x13240, 0x0 },
> +	{ 0x13340, 0x0 },
> +	{ 0x13440, 0x0 },
> +	{ 0x13540, 0x0 },
> +	{ 0x13640, 0x0 },
> +	{ 0x13740, 0x0 },
> +	{ 0x13840, 0x0 },
> +	{ 0x13030, 0x0 },
> +	{ 0x13130, 0x0 },
> +	{ 0x13230, 0x0 },
> +	{ 0x13330, 0x0 },
> +	{ 0x13430, 0x0 },
> +	{ 0x13530, 0x0 },
> +	{ 0x13630, 0x0 },
> +	{ 0x13730, 0x0 },
> +	{ 0x13830, 0x0 },
> +};
> +
> +static struct dram_cfg_param ddr_fsp0_cfg_4g[] = {
> +	{ 0xd0000, 0x0 },
> +	{ 0x54003, 0xfa0 },
> +	{ 0x54004, 0x2 },
> +	{ 0x54005, 0x2228 },
> +	{ 0x54006, 0x14 },
> +	{ 0x54008, 0x131f },
> +	{ 0x54009, 0xc8 },
> +	{ 0x5400b, 0x2 },
> +	{ 0x5400f, 0x100 },
> +	{ 0x54012, 0x310 },
> +	{ 0x54019, 0x3ff4 },
> +	{ 0x5401a, 0x33 },
> +	{ 0x5401b, 0x4866 },
> +	{ 0x5401c, 0x4800 },
> +	{ 0x5401e, 0x16 },
> +	{ 0x5401f, 0x3ff4 },
> +	{ 0x54020, 0x33 },
> +	{ 0x54021, 0x4866 },
> +	{ 0x54022, 0x4800 },
> +	{ 0x54024, 0x16 },
> +	{ 0x5402b, 0x1000 },
> +	{ 0x5402c, 0x3 },
> +	{ 0x54032, 0xf400 },
> +	{ 0x54033, 0x333f },
> +	{ 0x54034, 0x6600 },
> +	{ 0x54035, 0x48 },
> +	{ 0x54036, 0x48 },
> +	{ 0x54037, 0x1600 },
> +	{ 0x54038, 0xf400 },
> +	{ 0x54039, 0x333f },
> +	{ 0x5403a, 0x6600 },
> +	{ 0x5403b, 0x48 },
> +	{ 0x5403c, 0x48 },
> +	{ 0x5403d, 0x1600 },
> +	{ 0xd0000, 0x1 },
> +};
> +
> +static struct dram_cfg_param ddr_fsp1_cfg_4g[] = {
> +	{ 0xd0000, 0x0 },
> +	{ 0x54002, 0x101 },
> +	{ 0x54003, 0x190 },
> +	{ 0x54004, 0x2 },
> +	{ 0x54005, 0x2228 },
> +	{ 0x54006, 0x14 },
> +	{ 0x54008, 0x121f },
> +	{ 0x54009, 0xc8 },
> +	{ 0x5400b, 0x2 },
> +	{ 0x5400f, 0x100 },
> +	{ 0x54012, 0x310 },
> +	{ 0x54019, 0x84 },
> +	{ 0x5401a, 0x33 },
> +	{ 0x5401b, 0x4866 },
> +	{ 0x5401c, 0x4800 },
> +	{ 0x5401e, 0x16 },
> +	{ 0x5401f, 0x84 },
> +	{ 0x54020, 0x33 },
> +	{ 0x54021, 0x4866 },
> +	{ 0x54022, 0x4800 },
> +	{ 0x54024, 0x16 },
> +	{ 0x5402b, 0x1000 },
> +	{ 0x5402c, 0x3 },
> +	{ 0x54032, 0x8400 },
> +	{ 0x54033, 0x3300 },
> +	{ 0x54034, 0x6600 },
> +	{ 0x54035, 0x48 },
> +	{ 0x54036, 0x48 },
> +	{ 0x54037, 0x1600 },
> +	{ 0x54038, 0x8400 },
> +	{ 0x54039, 0x3300 },
> +	{ 0x5403a, 0x6600 },
> +	{ 0x5403b, 0x48 },
> +	{ 0x5403c, 0x48 },
> +	{ 0x5403d, 0x1600 },
> +	{ 0xd0000, 0x1 },
> +};
> +
> +static struct dram_cfg_param ddr_fsp2_cfg_4g[] = {
> +	{ 0xd0000, 0x0 },
> +	{ 0x54002, 0x102 },
> +	{ 0x54003, 0x64 },
> +	{ 0x54004, 0x2 },
> +	{ 0x54005, 0x2228 },
> +	{ 0x54006, 0x14 },
> +	{ 0x54008, 0x121f },
> +	{ 0x54009, 0xc8 },
> +	{ 0x5400b, 0x2 },
> +	{ 0x5400f, 0x100 },
> +	{ 0x54012, 0x310 },
> +	{ 0x54019, 0x84 },
> +	{ 0x5401a, 0x33 },
> +	{ 0x5401b, 0x4866 },
> +	{ 0x5401c, 0x4800 },
> +	{ 0x5401e, 0x16 },
> +	{ 0x5401f, 0x84 },
> +	{ 0x54020, 0x33 },
> +	{ 0x54021, 0x4866 },
> +	{ 0x54022, 0x4800 },
> +	{ 0x54024, 0x16 },
> +	{ 0x5402b, 0x1000 },
> +	{ 0x5402c, 0x3 },
> +	{ 0x54032, 0x8400 },
> +	{ 0x54033, 0x3300 },
> +	{ 0x54034, 0x6600 },
> +	{ 0x54035, 0x48 },
> +	{ 0x54036, 0x48 },
> +	{ 0x54037, 0x1600 },
> +	{ 0x54038, 0x8400 },
> +	{ 0x54039, 0x3300 },
> +	{ 0x5403a, 0x6600 },
> +	{ 0x5403b, 0x48 },
> +	{ 0x5403c, 0x48 },
> +	{ 0x5403d, 0x1600 },
> +	{ 0xd0000, 0x1 },
> +};
> +
> +static struct dram_cfg_param ddr_fsp0_2d_cfg_4g[] = {
> +	{ 0xd0000, 0x0 },
> +	{ 0x54003, 0xfa0 },
> +	{ 0x54004, 0x2 },
> +	{ 0x54005, 0x2228 },
> +	{ 0x54006, 0x14 },
> +	{ 0x54008, 0x61 },
> +	{ 0x54009, 0xc8 },
> +	{ 0x5400b, 0x2 },
> +	{ 0x5400f, 0x100 },
> +	{ 0x54010, 0x1f7f },
> +	{ 0x54012, 0x310 },
> +	{ 0x54019, 0x3ff4 },
> +	{ 0x5401a, 0x33 },
> +	{ 0x5401b, 0x4866 },
> +	{ 0x5401c, 0x4800 },
> +	{ 0x5401e, 0x16 },
> +	{ 0x5401f, 0x3ff4 },
> +	{ 0x54020, 0x33 },
> +	{ 0x54021, 0x4866 },
> +	{ 0x54022, 0x4800 },
> +	{ 0x54024, 0x16 },
> +	{ 0x5402b, 0x1000 },
> +	{ 0x5402c, 0x3 },
> +	{ 0x54032, 0xf400 },
> +	{ 0x54033, 0x333f },
> +	{ 0x54034, 0x6600 },
> +	{ 0x54035, 0x48 },
> +	{ 0x54036, 0x48 },
> +	{ 0x54037, 0x1600 },
> +	{ 0x54038, 0xf400 },
> +	{ 0x54039, 0x333f },
> +	{ 0x5403a, 0x6600 },
> +	{ 0x5403b, 0x48 },
> +	{ 0x5403c, 0x48 },
> +	{ 0x5403d, 0x1600 },
> +	{ 0xd0000, 0x1 },
> +};
> +
> +/* DRAM PHY init engine image */
> +static struct dram_cfg_param ddr_phy_pie[] = {
> +	{ 0xd0000, 0x0 },
> +	{ 0x90000, 0x10 },
> +	{ 0x90001, 0x400 },
> +	{ 0x90002, 0x10e },
> +	{ 0x90003, 0x0 },
> +	{ 0x90004, 0x0 },
> +	{ 0x90005, 0x8 },
> +	{ 0x90029, 0xb },
> +	{ 0x9002a, 0x480 },
> +	{ 0x9002b, 0x109 },
> +	{ 0x9002c, 0x8 },
> +	{ 0x9002d, 0x448 },
> +	{ 0x9002e, 0x139 },
> +	{ 0x9002f, 0x8 },
> +	{ 0x90030, 0x478 },
> +	{ 0x90031, 0x109 },
> +	{ 0x90032, 0x0 },
> +	{ 0x90033, 0xe8 },
> +	{ 0x90034, 0x109 },
> +	{ 0x90035, 0x2 },
> +	{ 0x90036, 0x10 },
> +	{ 0x90037, 0x139 },
> +	{ 0x90038, 0xb },
> +	{ 0x90039, 0x7c0 },
> +	{ 0x9003a, 0x139 },
> +	{ 0x9003b, 0x44 },
> +	{ 0x9003c, 0x633 },
> +	{ 0x9003d, 0x159 },
> +	{ 0x9003e, 0x14f },
> +	{ 0x9003f, 0x630 },
> +	{ 0x90040, 0x159 },
> +	{ 0x90041, 0x47 },
> +	{ 0x90042, 0x633 },
> +	{ 0x90043, 0x149 },
> +	{ 0x90044, 0x4f },
> +	{ 0x90045, 0x633 },
> +	{ 0x90046, 0x179 },
> +	{ 0x90047, 0x8 },
> +	{ 0x90048, 0xe0 },
> +	{ 0x90049, 0x109 },
> +	{ 0x9004a, 0x0 },
> +	{ 0x9004b, 0x7c8 },
> +	{ 0x9004c, 0x109 },
> +	{ 0x9004d, 0x0 },
> +	{ 0x9004e, 0x1 },
> +	{ 0x9004f, 0x8 },
> +	{ 0x90050, 0x0 },
> +	{ 0x90051, 0x45a },
> +	{ 0x90052, 0x9 },
> +	{ 0x90053, 0x0 },
> +	{ 0x90054, 0x448 },
> +	{ 0x90055, 0x109 },
> +	{ 0x90056, 0x40 },
> +	{ 0x90057, 0x633 },
> +	{ 0x90058, 0x179 },
> +	{ 0x90059, 0x1 },
> +	{ 0x9005a, 0x618 },
> +	{ 0x9005b, 0x109 },
> +	{ 0x9005c, 0x40c0 },
> +	{ 0x9005d, 0x633 },
> +	{ 0x9005e, 0x149 },
> +	{ 0x9005f, 0x8 },
> +	{ 0x90060, 0x4 },
> +	{ 0x90061, 0x48 },
> +	{ 0x90062, 0x4040 },
> +	{ 0x90063, 0x633 },
> +	{ 0x90064, 0x149 },
> +	{ 0x90065, 0x0 },
> +	{ 0x90066, 0x4 },
> +	{ 0x90067, 0x48 },
> +	{ 0x90068, 0x40 },
> +	{ 0x90069, 0x633 },
> +	{ 0x9006a, 0x149 },
> +	{ 0x9006b, 0x10 },
> +	{ 0x9006c, 0x4 },
> +	{ 0x9006d, 0x18 },
> +	{ 0x9006e, 0x0 },
> +	{ 0x9006f, 0x4 },
> +	{ 0x90070, 0x78 },
> +	{ 0x90071, 0x549 },
> +	{ 0x90072, 0x633 },
> +	{ 0x90073, 0x159 },
> +	{ 0x90074, 0xd49 },
> +	{ 0x90075, 0x633 },
> +	{ 0x90076, 0x159 },
> +	{ 0x90077, 0x94a },
> +	{ 0x90078, 0x633 },
> +	{ 0x90079, 0x159 },
> +	{ 0x9007a, 0x441 },
> +	{ 0x9007b, 0x633 },
> +	{ 0x9007c, 0x149 },
> +	{ 0x9007d, 0x42 },
> +	{ 0x9007e, 0x633 },
> +	{ 0x9007f, 0x149 },
> +	{ 0x90080, 0x1 },
> +	{ 0x90081, 0x633 },
> +	{ 0x90082, 0x149 },
> +	{ 0x90083, 0x0 },
> +	{ 0x90084, 0xe0 },
> +	{ 0x90085, 0x109 },
> +	{ 0x90086, 0xa },
> +	{ 0x90087, 0x10 },
> +	{ 0x90088, 0x109 },
> +	{ 0x90089, 0x9 },
> +	{ 0x9008a, 0x3c0 },
> +	{ 0x9008b, 0x149 },
> +	{ 0x9008c, 0x9 },
> +	{ 0x9008d, 0x3c0 },
> +	{ 0x9008e, 0x159 },
> +	{ 0x9008f, 0x18 },
> +	{ 0x90090, 0x10 },
> +	{ 0x90091, 0x109 },
> +	{ 0x90092, 0x0 },
> +	{ 0x90093, 0x3c0 },
> +	{ 0x90094, 0x109 },
> +	{ 0x90095, 0x18 },
> +	{ 0x90096, 0x4 },
> +	{ 0x90097, 0x48 },
> +	{ 0x90098, 0x18 },
> +	{ 0x90099, 0x4 },
> +	{ 0x9009a, 0x58 },
> +	{ 0x9009b, 0xb },
> +	{ 0x9009c, 0x10 },
> +	{ 0x9009d, 0x109 },
> +	{ 0x9009e, 0x1 },
> +	{ 0x9009f, 0x10 },
> +	{ 0x900a0, 0x109 },
> +	{ 0x900a1, 0x5 },
> +	{ 0x900a2, 0x7c0 },
> +	{ 0x900a3, 0x109 },
> +	{ 0x40000, 0x811 },
> +	{ 0x40020, 0x880 },
> +	{ 0x40040, 0x0 },
> +	{ 0x40060, 0x0 },
> +	{ 0x40001, 0x4008 },
> +	{ 0x40021, 0x83 },
> +	{ 0x40041, 0x4f },
> +	{ 0x40061, 0x0 },
> +	{ 0x40002, 0x4040 },
> +	{ 0x40022, 0x83 },
> +	{ 0x40042, 0x51 },
> +	{ 0x40062, 0x0 },
> +	{ 0x40003, 0x811 },
> +	{ 0x40023, 0x880 },
> +	{ 0x40043, 0x0 },
> +	{ 0x40063, 0x0 },
> +	{ 0x40004, 0x720 },
> +	{ 0x40024, 0xf },
> +	{ 0x40044, 0x1740 },
> +	{ 0x40064, 0x0 },
> +	{ 0x40005, 0x16 },
> +	{ 0x40025, 0x83 },
> +	{ 0x40045, 0x4b },
> +	{ 0x40065, 0x0 },
> +	{ 0x40006, 0x716 },
> +	{ 0x40026, 0xf },
> +	{ 0x40046, 0x2001 },
> +	{ 0x40066, 0x0 },
> +	{ 0x40007, 0x716 },
> +	{ 0x40027, 0xf },
> +	{ 0x40047, 0x2800 },
> +	{ 0x40067, 0x0 },
> +	{ 0x40008, 0x716 },
> +	{ 0x40028, 0xf },
> +	{ 0x40048, 0xf00 },
> +	{ 0x40068, 0x0 },
> +	{ 0x40009, 0x720 },
> +	{ 0x40029, 0xf },
> +	{ 0x40049, 0x1400 },
> +	{ 0x40069, 0x0 },
> +	{ 0x4000a, 0xe08 },
> +	{ 0x4002a, 0xc15 },
> +	{ 0x4004a, 0x0 },
> +	{ 0x4006a, 0x0 },
> +	{ 0x4000b, 0x625 },
> +	{ 0x4002b, 0x15 },
> +	{ 0x4004b, 0x0 },
> +	{ 0x4006b, 0x0 },
> +	{ 0x4000c, 0x4028 },
> +	{ 0x4002c, 0x80 },
> +	{ 0x4004c, 0x0 },
> +	{ 0x4006c, 0x0 },
> +	{ 0x4000d, 0xe08 },
> +	{ 0x4002d, 0xc1a },
> +	{ 0x4004d, 0x0 },
> +	{ 0x4006d, 0x0 },
> +	{ 0x4000e, 0x625 },
> +	{ 0x4002e, 0x1a },
> +	{ 0x4004e, 0x0 },
> +	{ 0x4006e, 0x0 },
> +	{ 0x4000f, 0x4040 },
> +	{ 0x4002f, 0x80 },
> +	{ 0x4004f, 0x0 },
> +	{ 0x4006f, 0x0 },
> +	{ 0x40010, 0x2604 },
> +	{ 0x40030, 0x15 },
> +	{ 0x40050, 0x0 },
> +	{ 0x40070, 0x0 },
> +	{ 0x40011, 0x708 },
> +	{ 0x40031, 0x5 },
> +	{ 0x40051, 0x0 },
> +	{ 0x40071, 0x2002 },
> +	{ 0x40012, 0x8 },
> +	{ 0x40032, 0x80 },
> +	{ 0x40052, 0x0 },
> +	{ 0x40072, 0x0 },
> +	{ 0x40013, 0x2604 },
> +	{ 0x40033, 0x1a },
> +	{ 0x40053, 0x0 },
> +	{ 0x40073, 0x0 },
> +	{ 0x40014, 0x708 },
> +	{ 0x40034, 0xa },
> +	{ 0x40054, 0x0 },
> +	{ 0x40074, 0x2002 },
> +	{ 0x40015, 0x4040 },
> +	{ 0x40035, 0x80 },
> +	{ 0x40055, 0x0 },
> +	{ 0x40075, 0x0 },
> +	{ 0x40016, 0x60a },
> +	{ 0x40036, 0x15 },
> +	{ 0x40056, 0x1200 },
> +	{ 0x40076, 0x0 },
> +	{ 0x40017, 0x61a },
> +	{ 0x40037, 0x15 },
> +	{ 0x40057, 0x1300 },
> +	{ 0x40077, 0x0 },
> +	{ 0x40018, 0x60a },
> +	{ 0x40038, 0x1a },
> +	{ 0x40058, 0x1200 },
> +	{ 0x40078, 0x0 },
> +	{ 0x40019, 0x642 },
> +	{ 0x40039, 0x1a },
> +	{ 0x40059, 0x1300 },
> +	{ 0x40079, 0x0 },
> +	{ 0x4001a, 0x4808 },
> +	{ 0x4003a, 0x880 },
> +	{ 0x4005a, 0x0 },
> +	{ 0x4007a, 0x0 },
> +	{ 0x900a4, 0x0 },
> +	{ 0x900a5, 0x790 },
> +	{ 0x900a6, 0x11a },
> +	{ 0x900a7, 0x8 },
> +	{ 0x900a8, 0x7aa },
> +	{ 0x900a9, 0x2a },
> +	{ 0x900aa, 0x10 },
> +	{ 0x900ab, 0x7b2 },
> +	{ 0x900ac, 0x2a },
> +	{ 0x900ad, 0x0 },
> +	{ 0x900ae, 0x7c8 },
> +	{ 0x900af, 0x109 },
> +	{ 0x900b0, 0x10 },
> +	{ 0x900b1, 0x10 },
> +	{ 0x900b2, 0x109 },
> +	{ 0x900b3, 0x10 },
> +	{ 0x900b4, 0x2a8 },
> +	{ 0x900b5, 0x129 },
> +	{ 0x900b6, 0x8 },
> +	{ 0x900b7, 0x370 },
> +	{ 0x900b8, 0x129 },
> +	{ 0x900b9, 0xa },
> +	{ 0x900ba, 0x3c8 },
> +	{ 0x900bb, 0x1a9 },
> +	{ 0x900bc, 0xc },
> +	{ 0x900bd, 0x408 },
> +	{ 0x900be, 0x199 },
> +	{ 0x900bf, 0x14 },
> +	{ 0x900c0, 0x790 },
> +	{ 0x900c1, 0x11a },
> +	{ 0x900c2, 0x8 },
> +	{ 0x900c3, 0x4 },
> +	{ 0x900c4, 0x18 },
> +	{ 0x900c5, 0xe },
> +	{ 0x900c6, 0x408 },
> +	{ 0x900c7, 0x199 },
> +	{ 0x900c8, 0x8 },
> +	{ 0x900c9, 0x8568 },
> +	{ 0x900ca, 0x108 },
> +	{ 0x900cb, 0x18 },
> +	{ 0x900cc, 0x790 },
> +	{ 0x900cd, 0x16a },
> +	{ 0x900ce, 0x8 },
> +	{ 0x900cf, 0x1d8 },
> +	{ 0x900d0, 0x169 },
> +	{ 0x900d1, 0x10 },
> +	{ 0x900d2, 0x8558 },
> +	{ 0x900d3, 0x168 },
> +	{ 0x900d4, 0x70 },
> +	{ 0x900d5, 0x788 },
> +	{ 0x900d6, 0x16a },
> +	{ 0x900d7, 0x1ff8 },
> +	{ 0x900d8, 0x85a8 },
> +	{ 0x900d9, 0x1e8 },
> +	{ 0x900da, 0x50 },
> +	{ 0x900db, 0x798 },
> +	{ 0x900dc, 0x16a },
> +	{ 0x900dd, 0x60 },
> +	{ 0x900de, 0x7a0 },
> +	{ 0x900df, 0x16a },
> +	{ 0x900e0, 0x8 },
> +	{ 0x900e1, 0x8310 },
> +	{ 0x900e2, 0x168 },
> +	{ 0x900e3, 0x8 },
> +	{ 0x900e4, 0xa310 },
> +	{ 0x900e5, 0x168 },
> +	{ 0x900e6, 0xa },
> +	{ 0x900e7, 0x408 },
> +	{ 0x900e8, 0x169 },
> +	{ 0x900e9, 0x6e },
> +	{ 0x900ea, 0x0 },
> +	{ 0x900eb, 0x68 },
> +	{ 0x900ec, 0x0 },
> +	{ 0x900ed, 0x408 },
> +	{ 0x900ee, 0x169 },
> +	{ 0x900ef, 0x0 },
> +	{ 0x900f0, 0x8310 },
> +	{ 0x900f1, 0x168 },
> +	{ 0x900f2, 0x0 },
> +	{ 0x900f3, 0xa310 },
> +	{ 0x900f4, 0x168 },
> +	{ 0x900f5, 0x1ff8 },
> +	{ 0x900f6, 0x85a8 },
> +	{ 0x900f7, 0x1e8 },
> +	{ 0x900f8, 0x68 },
> +	{ 0x900f9, 0x798 },
> +	{ 0x900fa, 0x16a },
> +	{ 0x900fb, 0x78 },
> +	{ 0x900fc, 0x7a0 },
> +	{ 0x900fd, 0x16a },
> +	{ 0x900fe, 0x68 },
> +	{ 0x900ff, 0x790 },
> +	{ 0x90100, 0x16a },
> +	{ 0x90101, 0x8 },
> +	{ 0x90102, 0x8b10 },
> +	{ 0x90103, 0x168 },
> +	{ 0x90104, 0x8 },
> +	{ 0x90105, 0xab10 },
> +	{ 0x90106, 0x168 },
> +	{ 0x90107, 0xa },
> +	{ 0x90108, 0x408 },
> +	{ 0x90109, 0x169 },
> +	{ 0x9010a, 0x58 },
> +	{ 0x9010b, 0x0 },
> +	{ 0x9010c, 0x68 },
> +	{ 0x9010d, 0x0 },
> +	{ 0x9010e, 0x408 },
> +	{ 0x9010f, 0x169 },
> +	{ 0x90110, 0x0 },
> +	{ 0x90111, 0x8b10 },
> +	{ 0x90112, 0x168 },
> +	{ 0x90113, 0x1 },
> +	{ 0x90114, 0xab10 },
> +	{ 0x90115, 0x168 },
> +	{ 0x90116, 0x0 },
> +	{ 0x90117, 0x1d8 },
> +	{ 0x90118, 0x169 },
> +	{ 0x90119, 0x80 },
> +	{ 0x9011a, 0x790 },
> +	{ 0x9011b, 0x16a },
> +	{ 0x9011c, 0x18 },
> +	{ 0x9011d, 0x7aa },
> +	{ 0x9011e, 0x6a },
> +	{ 0x9011f, 0xa },
> +	{ 0x90120, 0x0 },
> +	{ 0x90121, 0x1e9 },
> +	{ 0x90122, 0x8 },
> +	{ 0x90123, 0x8080 },
> +	{ 0x90124, 0x108 },
> +	{ 0x90125, 0xf },
> +	{ 0x90126, 0x408 },
> +	{ 0x90127, 0x169 },
> +	{ 0x90128, 0xc },
> +	{ 0x90129, 0x0 },
> +	{ 0x9012a, 0x68 },
> +	{ 0x9012b, 0x9 },
> +	{ 0x9012c, 0x0 },
> +	{ 0x9012d, 0x1a9 },
> +	{ 0x9012e, 0x0 },
> +	{ 0x9012f, 0x408 },
> +	{ 0x90130, 0x169 },
> +	{ 0x90131, 0x0 },
> +	{ 0x90132, 0x8080 },
> +	{ 0x90133, 0x108 },
> +	{ 0x90134, 0x8 },
> +	{ 0x90135, 0x7aa },
> +	{ 0x90136, 0x6a },
> +	{ 0x90137, 0x0 },
> +	{ 0x90138, 0x8568 },
> +	{ 0x90139, 0x108 },
> +	{ 0x9013a, 0xb7 },
> +	{ 0x9013b, 0x790 },
> +	{ 0x9013c, 0x16a },
> +	{ 0x9013d, 0x1f },
> +	{ 0x9013e, 0x0 },
> +	{ 0x9013f, 0x68 },
> +	{ 0x90140, 0x8 },
> +	{ 0x90141, 0x8558 },
> +	{ 0x90142, 0x168 },
> +	{ 0x90143, 0xf },
> +	{ 0x90144, 0x408 },
> +	{ 0x90145, 0x169 },
> +	{ 0x90146, 0xd },
> +	{ 0x90147, 0x0 },
> +	{ 0x90148, 0x68 },
> +	{ 0x90149, 0x0 },
> +	{ 0x9014a, 0x408 },
> +	{ 0x9014b, 0x169 },
> +	{ 0x9014c, 0x0 },
> +	{ 0x9014d, 0x8558 },
> +	{ 0x9014e, 0x168 },
> +	{ 0x9014f, 0x8 },
> +	{ 0x90150, 0x3c8 },
> +	{ 0x90151, 0x1a9 },
> +	{ 0x90152, 0x3 },
> +	{ 0x90153, 0x370 },
> +	{ 0x90154, 0x129 },
> +	{ 0x90155, 0x20 },
> +	{ 0x90156, 0x2aa },
> +	{ 0x90157, 0x9 },
> +	{ 0x90158, 0x8 },
> +	{ 0x90159, 0xe8 },
> +	{ 0x9015a, 0x109 },
> +	{ 0x9015b, 0x0 },
> +	{ 0x9015c, 0x8140 },
> +	{ 0x9015d, 0x10c },
> +	{ 0x9015e, 0x10 },
> +	{ 0x9015f, 0x8138 },
> +	{ 0x90160, 0x104 },
> +	{ 0x90161, 0x8 },
> +	{ 0x90162, 0x448 },
> +	{ 0x90163, 0x109 },
> +	{ 0x90164, 0xf },
> +	{ 0x90165, 0x7c0 },
> +	{ 0x90166, 0x109 },
> +	{ 0x90167, 0x0 },
> +	{ 0x90168, 0xe8 },
> +	{ 0x90169, 0x109 },
> +	{ 0x9016a, 0x47 },
> +	{ 0x9016b, 0x630 },
> +	{ 0x9016c, 0x109 },
> +	{ 0x9016d, 0x8 },
> +	{ 0x9016e, 0x618 },
> +	{ 0x9016f, 0x109 },
> +	{ 0x90170, 0x8 },
> +	{ 0x90171, 0xe0 },
> +	{ 0x90172, 0x109 },
> +	{ 0x90173, 0x0 },
> +	{ 0x90174, 0x7c8 },
> +	{ 0x90175, 0x109 },
> +	{ 0x90176, 0x8 },
> +	{ 0x90177, 0x8140 },
> +	{ 0x90178, 0x10c },
> +	{ 0x90179, 0x0 },
> +	{ 0x9017a, 0x478 },
> +	{ 0x9017b, 0x109 },
> +	{ 0x9017c, 0x0 },
> +	{ 0x9017d, 0x1 },
> +	{ 0x9017e, 0x8 },
> +	{ 0x9017f, 0x8 },
> +	{ 0x90180, 0x4 },
> +	{ 0x90181, 0x0 },
> +	{ 0x90006, 0x8 },
> +	{ 0x90007, 0x7c8 },
> +	{ 0x90008, 0x109 },
> +	{ 0x90009, 0x0 },
> +	{ 0x9000a, 0x400 },
> +	{ 0x9000b, 0x106 },
> +	{ 0xd00e7, 0x400 },
> +	{ 0x90017, 0x0 },
> +	{ 0x9001f, 0x29 },
> +	{ 0x90026, 0x68 },
> +	{ 0x400d0, 0x0 },
> +	{ 0x400d1, 0x101 },
> +	{ 0x400d2, 0x105 },
> +	{ 0x400d3, 0x107 },
> +	{ 0x400d4, 0x10f },
> +	{ 0x400d5, 0x202 },
> +	{ 0x400d6, 0x20a },
> +	{ 0x400d7, 0x20b },
> +	{ 0x2003a, 0x2 },
> +	{ 0x200be, 0x3 },
> +	{ 0x2000b, 0x7d },
> +	{ 0x2000c, 0xfa },
> +	{ 0x2000d, 0x9c4 },
> +	{ 0x2000e, 0x2c },
> +	{ 0x12000b, 0xc },
> +	{ 0x12000c, 0x19 },
> +	{ 0x12000d, 0xfa },
> +	{ 0x12000e, 0x10 },
> +	{ 0x22000b, 0x3 },
> +	{ 0x22000c, 0x6 },
> +	{ 0x22000d, 0x3e },
> +	{ 0x22000e, 0x10 },
> +	{ 0x9000c, 0x0 },
> +	{ 0x9000d, 0x173 },
> +	{ 0x9000e, 0x60 },
> +	{ 0x9000f, 0x6110 },
> +	{ 0x90010, 0x2152 },
> +	{ 0x90011, 0xdfbd },
> +	{ 0x90012, 0x2060 },
> +	{ 0x90013, 0x6152 },
> +	{ 0x20010, 0x5a },
> +	{ 0x20011, 0x3 },
> +	{ 0x40080, 0xe0 },
> +	{ 0x40081, 0x12 },
> +	{ 0x40082, 0xe0 },
> +	{ 0x40083, 0x12 },
> +	{ 0x40084, 0xe0 },
> +	{ 0x40085, 0x12 },
> +	{ 0x140080, 0xe0 },
> +	{ 0x140081, 0x12 },
> +	{ 0x140082, 0xe0 },
> +	{ 0x140083, 0x12 },
> +	{ 0x140084, 0xe0 },
> +	{ 0x140085, 0x12 },
> +	{ 0x240080, 0xe0 },
> +	{ 0x240081, 0x12 },
> +	{ 0x240082, 0xe0 },
> +	{ 0x240083, 0x12 },
> +	{ 0x240084, 0xe0 },
> +	{ 0x240085, 0x12 },
> +	{ 0x400fd, 0xf },
> +	{ 0x10011, 0x1 },
> +	{ 0x10012, 0x1 },
> +	{ 0x10013, 0x180 },
> +	{ 0x10018, 0x1 },
> +	{ 0x10002, 0x6209 },
> +	{ 0x100b2, 0x1 },
> +	{ 0x101b4, 0x1 },
> +	{ 0x102b4, 0x1 },
> +	{ 0x103b4, 0x1 },
> +	{ 0x104b4, 0x1 },
> +	{ 0x105b4, 0x1 },
> +	{ 0x106b4, 0x1 },
> +	{ 0x107b4, 0x1 },
> +	{ 0x108b4, 0x1 },
> +	{ 0x11011, 0x1 },
> +	{ 0x11012, 0x1 },
> +	{ 0x11013, 0x180 },
> +	{ 0x11018, 0x1 },
> +	{ 0x11002, 0x6209 },
> +	{ 0x110b2, 0x1 },
> +	{ 0x111b4, 0x1 },
> +	{ 0x112b4, 0x1 },
> +	{ 0x113b4, 0x1 },
> +	{ 0x114b4, 0x1 },
> +	{ 0x115b4, 0x1 },
> +	{ 0x116b4, 0x1 },
> +	{ 0x117b4, 0x1 },
> +	{ 0x118b4, 0x1 },
> +	{ 0x12011, 0x1 },
> +	{ 0x12012, 0x1 },
> +	{ 0x12013, 0x180 },
> +	{ 0x12018, 0x1 },
> +	{ 0x12002, 0x6209 },
> +	{ 0x120b2, 0x1 },
> +	{ 0x121b4, 0x1 },
> +	{ 0x122b4, 0x1 },
> +	{ 0x123b4, 0x1 },
> +	{ 0x124b4, 0x1 },
> +	{ 0x125b4, 0x1 },
> +	{ 0x126b4, 0x1 },
> +	{ 0x127b4, 0x1 },
> +	{ 0x128b4, 0x1 },
> +	{ 0x13011, 0x1 },
> +	{ 0x13012, 0x1 },
> +	{ 0x13013, 0x180 },
> +	{ 0x13018, 0x1 },
> +	{ 0x13002, 0x6209 },
> +	{ 0x130b2, 0x1 },
> +	{ 0x131b4, 0x1 },
> +	{ 0x132b4, 0x1 },
> +	{ 0x133b4, 0x1 },
> +	{ 0x134b4, 0x1 },
> +	{ 0x135b4, 0x1 },
> +	{ 0x136b4, 0x1 },
> +	{ 0x137b4, 0x1 },
> +	{ 0x138b4, 0x1 },
> +	{ 0x20089, 0x1 },
> +	{ 0x20088, 0x19 },
> +	{ 0xc0080, 0x2 },
> +	{ 0xd0000, 0x1 }
> +};
> +
> +static struct dram_fsp_msg ddr_dram_fsp_msg_4g[] = {
> +	{
> +		/* P0 4000mts 1D */
> +		.drate = 4000,
> +		.fw_type = FW_1D_IMAGE,
> +		.fsp_cfg = ddr_fsp0_cfg_4g,
> +		.fsp_cfg_num = ARRAY_SIZE(ddr_fsp0_cfg_4g),
> +	}, {
> +		/* P1 400mts 1D */
> +		.drate = 400,
> +		.fw_type = FW_1D_IMAGE,
> +		.fsp_cfg = ddr_fsp1_cfg_4g,
> +		.fsp_cfg_num = ARRAY_SIZE(ddr_fsp1_cfg_4g),
> +	}, {
> +		/* P2 100mts 1D */
> +		.drate = 100,
> +		.fw_type = FW_1D_IMAGE,
> +		.fsp_cfg = ddr_fsp2_cfg_4g,
> +		.fsp_cfg_num = ARRAY_SIZE(ddr_fsp2_cfg_4g),
> +	}, {
> +		/* P0 4000mts 2D */
> +		.drate = 4000,
> +		.fw_type = FW_2D_IMAGE,
> +		.fsp_cfg = ddr_fsp0_2d_cfg_4g,
> +		.fsp_cfg_num = ARRAY_SIZE(ddr_fsp0_2d_cfg_4g),
> +	},
> +};
> +
> +struct dram_timing_info dram_timing_4g = {
> +	.ddrc_cfg = ddr_ddrc_cfg_4g,
> +	.ddrc_cfg_num = ARRAY_SIZE(ddr_ddrc_cfg_4g),
> +	.ddrphy_cfg = ddr_ddrphy_cfg,
> +	.ddrphy_cfg_num = ARRAY_SIZE(ddr_ddrphy_cfg),
> +	.fsp_msg = ddr_dram_fsp_msg_4g,
> +	.fsp_msg_num = ARRAY_SIZE(ddr_dram_fsp_msg_4g),
> +	.ddrphy_trained_csr = ddr_ddrphy_trained_csr,
> +	.ddrphy_trained_csr_num = ARRAY_SIZE(ddr_ddrphy_trained_csr),
> +	.ddrphy_pie = ddr_phy_pie,
> +	.ddrphy_pie_num = ARRAY_SIZE(ddr_phy_pie),
> +	.fsp_table = { 4000, 400, 100, },
> +};
> diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
> index 98f4c4e0194b..3527b67366b7 100644
> --- a/arch/arm/dts/Makefile
> +++ b/arch/arm/dts/Makefile
> @@ -85,6 +85,7 @@ lwl-$(CONFIG_MACH_PINE64_QUARTZ64) += rk3566-quartz64-a.dtb.o
>  lwl-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_AX3) += armada-xp-openblocks-ax3-4-bb.dtb.o
>  lwl-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_A6) += kirkwood-openblocks_a6-bb.dtb.o
>  lwl-$(CONFIG_MACH_POLYHEX_DEBIX) += imx8mp-debix-model-a.dtb.o
> +lwl-$(CONFIG_MACH_KB_ALPHAJET) += imx8mp-koenigbauer-alphajet.dtb.o
>  lwl-$(CONFIG_MACH_PROTONIC_IMX6) += \
>  	imx6q-prti6q.dtb.o \
>  	imx6q-prtwd2.dtb.o \
> diff --git a/arch/arm/dts/imx8mp-cgtqx8p.dtsi b/arch/arm/dts/imx8mp-cgtqx8p.dtsi
> new file mode 100644
> index 000000000000..ea64efb28590
> --- /dev/null
> +++ b/arch/arm/dts/imx8mp-cgtqx8p.dtsi
> @@ -0,0 +1,1060 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright 2019 NXP
> + * Copyright 2022 congatec GmbH
> + * Copyright 2023 Pengutronix, Johannes Zink <j.zink@pengutronix.de>
> + */
> +
> +#include <arm64/freescale/imx8mp.dtsi>
> +#include "imx8mp.dtsi"
> +#include <dt-bindings/usb/pd.h>
> +#include <dt-bindings/phy/phy-imx8-pcie.h>
> +#include <dt-bindings/net/ti-dp83867.h>
> +
> +/ {
> +	model = "conga-QMX8-Plus";
> +	compatible = "cgt,qx8p", "fsl,imx8mp";
> +
> +	aliases {
> +		ethernet0 = &eqos;
> +		rtc0 = &rtc_ext;	/* Use external I2C RTC M4162 as rtc0 */
> +		rtc1 = &snvs_rtc;	/* And the internal one as rtc1 */
> +	};
> +
> +	pcie0_refclk: pcie0-reclk {
> +		compatible = "fixed-clock";
> +		#clock-cells= <0>;
> +		clock-frequency = <100000000>;
> +	};
> +
> +	reg_usb1_host_vbus: regulator-usb1-vbus {
> +		compatible = "regulator-fixed";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_usb1_vbus>;
> +		regulator-name = "usb1_host_vbus";
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +		gpio = <&gpio4 17 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +	};
> +
> +	reg_usb2_host_vbus: regulator-usb2-vbus {
> +		compatible = "regulator-fixed";
> +		regulator-name = "usb2_host_vbus";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_usb2_vbus>;
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +		gpio = <&gpio4 16 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +	};
> +
> +	/* reset line for SD1 (Q7 sd) interface */
> +	reg_usdhc1_vmmc: regulator-usdhc1 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "3v3-sd1";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_reg_usdhc1_vmmc>;
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		gpio = <&gpio2 10 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +		startup-delay-us = <100>;
> +		off-on-delay-us = <12000>;
> +	};
> +
> +	/* reset line for SD2 (onboard usd) interface */
> +	reg_usdhc2_vmmc: regulator-usdhc2 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "3v3-sd2";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_reg_usdhc2_vmmc>;
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		gpio = <&gpio2 19 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +		startup-delay-us = <100>;
> +		off-on-delay-us = <12000>;
> +	};
> +
> +	/* reset line for SD3 (onboard emmc) interface */
> +	reg_usdhc3_vmmc: regulator-usdhc3 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "3v3-sd3";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_reg_usdhc3_vmmc>;
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		gpio = <&gpio3 16 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +		startup-delay-us = <100>;
> +		off-on-delay-us = <12000>;
> +	};
> +
> +	reg_lfp_vdd: regulator-lfp-vdd {
> +		compatible = "regulator-fixed";
> +		regulator-name = "Display_Panel_Vdd";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_display_vdd_en>;
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		gpio = <&gpio4 1 GPIO_ACTIVE_HIGH>; // LFP0_VDD_EN
> +	};
> +
> +	reg_backlight_enable: regulator-backlight {
> +		compatible = "regulator-fixed";
> +		regulator-name = "backlight";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_lvds0_backlight>;
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		gpio =  <&gpio4 0 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +	};
> +
> +
> +	lvds0_backlight: lvds0-backlight {
> +		compatible = "pwm-backlight";
> +		pwms = <&pwm2 0 100000 0>;
> +		power-supply = <&reg_backlight_enable>;
> +		brightness-levels = <0 100>;
> +		num-interpolated-steps = <100>;
> +		default-brightness-level = <80>;
> +	};
> +
> +	fan0: pwm-fan {
> +		compatible = "pwm-fan";
> +		pwms = <&pwm4 4 100000 0>;
> +		/* Tacho- input */
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_interrupt_fan_in>;
> +		#cooling-cells = <2>;
> +		interrupt-parent = <&gpio5>;
> +		interrupts = <0 IRQ_TYPE_EDGE_FALLING>;
> +		status = "disabled";
> +	};
> +};
> +
> +&A53_0 {
> +	cpu-supply = <&buck2>;
> +};
> +
> +&A53_1 {
> +	cpu-supply = <&buck2>;
> +};
> +
> +&A53_2 {
> +	cpu-supply = <&buck2>;
> +};
> +
> +&A53_3 {
> +	cpu-supply = <&buck2>;
> +};
> +
> +&pwm1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_pwm1>;
> +};
> +
> +&pwm2 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_pwm2>;
> +};
> +
> +&pwm4 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_pwm4>;
> +};
> +
> +&ecspi1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_ecspi1 &pinctrl_ecspi1_cs>;
> +	cs-gpios = <&gpio5 9 GPIO_ACTIVE_LOW>;
> +	#address-cells = <1>;
> +	#size-cells = <0>;
> +};
> +
> +&ecspi2 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_ecspi2 &pinctrl_ecspi2_cs0>;
> +	cs-gpios = <&gpio5 13 GPIO_ACTIVE_LOW>;
> +};
> +
> +
> +&eqos {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_eqos>, <&pinctrl_gbe0_rst>;
> +	phy-mode = "rgmii-id";
> +	phy-handle = <&ethphy0>;
> +
> +	mdio {
> +		compatible = "snps,dwmac-mdio";
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		/* on-SoM phy */
> +		ethphy0: ethernet-phy@0 {
> +			compatible = "ethernet-phy-ieee802.3-c22";
> +			reg = <0>;
> +			reset-gpios = <&gpio4 25 GPIO_ACTIVE_LOW>;
> +			reset-assert-us = <1000>;
> +			reset-deassert-us = <1000>;
> +			ti,rx-internal-delay = <DP83867_RGMIIDCTL_2_00_NS>;
> +			ti,tx-internal-delay = <DP83867_RGMIIDCTL_2_00_NS>;
> +			ti,fifo-depth = <DP83867_PHYCR_FIFO_DEPTH_8_B_NIB>;
> +			ti,clk-output-sel = <DP83867_CLK_O_SEL_OFF>;
> +		};
> +	};
> +};
> +
> +&flexspi {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_flexspi0>;
> +	status = "okay";
> +
> +	w25q64fw: flash@0 {
> +		compatible = "jedec,spi-nor";
> +		reg = <0>;
> +		spi-max-frequency = <80000000>;
> +		spi-tx-bus-width = <4>;
> +		spi-rx-bus-width = <4>;
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +
> +		partition@0 {
> +			label = "boot";
> +			reg = <0x0000000 0x400000>;
> +		};
> +
> +		partition@400000 {
> +			label = "failsafe";
> +			reg = <0x400000 0x3e0000>;
> +		};
> +
> +		partition@7e0000 {
> +			label = "reserved";
> +			reg = <0x7e0000 0x20000>;
> +			read-only;
> +		};
> +	};
> +};
> +
> +&flexcan1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_flexcan1>;
> +};
> +
> +&flexcan2 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_flexcan2>;
> +};
> +
> +&i2c1 {
> +	clock-frequency = <400000>;
> +	pinctrl-names = "default", "gpio";
> +	pinctrl-0 = <&pinctrl_i2c1>;
> +	pinctrl-1 = <&pinctrl_i2c1_gpio>;
> +	scl-gpios = <&gpio5 14 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
> +	sda-gpios = <&gpio5 15 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
> +	status = "okay";
> +
> +	pca9450: pmic@25 {
> +		compatible = "nxp,pca9450c";
> +		reg = <0x25>;
> +		pinctrl-0 = <&pinctrl_pmic>;
> +		interrupt-parent = <&gpio4>; /* PMIC_nINT */
> +		interrupts = <5 IRQ_TYPE_LEVEL_LOW>;
> +
> +		regulators {
> +			buck1: BUCK1 {
> +				regulator-name = "BUCK1";
> +				regulator-min-microvolt = <600000>;
> +				regulator-max-microvolt = <2187500>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +				regulator-ramp-delay = <3125>;
> +			};
> +
> +			buck2: BUCK2 {
> +				regulator-name = "BUCK2";
> +				regulator-min-microvolt = <600000>;
> +				regulator-max-microvolt = <2187500>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +				regulator-ramp-delay = <3125>;
> +			};
> +
> +			buck3: BUCK3 {
> +				regulator-name = "BUCK3";
> +				regulator-min-microvolt = <600000>;
> +				regulator-max-microvolt = <3400000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			buck5: BUCK5 {
> +				regulator-name = "BUCK5";
> +				regulator-min-microvolt = <600000>;
> +				regulator-max-microvolt = <3400000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			buck6: BUCK6 {
> +				regulator-name = "BUCK6";
> +				regulator-min-microvolt = <600000>;
> +				regulator-max-microvolt = <3400000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			ldo1: LDO1 {
> +				regulator-name = "LDO1";
> +				regulator-min-microvolt = <1600000>;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			ldo2: LDO2 {
> +				regulator-name = "LDO2";
> +				regulator-min-microvolt = <800000>;
> +				regulator-max-microvolt = <1150000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			ldo3: LDO3 {
> +				regulator-name = "LDO3";
> +				regulator-min-microvolt = <800000>;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			ldo4: LDO4 {
> +				regulator-name = "LDO4";
> +				regulator-min-microvolt = <800000>;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			ldo5: LDO5 {
> +				regulator-name = "LDO5";
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <3300000>;
> +			};
> +		};
> +	};
> +};
> +
> +&i2c2 {
> +	pinctrl-names = "default", "gpio";
> +	pinctrl-0 = <&pinctrl_i2c2>;
> +	pinctrl-1 = <&pinctrl_i2c2_gpio>;
> +	scl-gpios = <&gpio5 16 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
> +	sda-gpios = <&gpio5 17 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
> +};
> +
> +&i2c3 {
> +	pinctrl-names = "default", "gpio";
> +	pinctrl-0 = <&pinctrl_i2c3>;
> +	pinctrl-1 = <&pinctrl_i2c3_gpio>;
> +	scl-gpios = <&gpio5 18 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
> +	sda-gpios = <&gpio5 19 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
> +};
> +
> +/* i2c-5: RTC */
> +&i2c5 {
> +	clock-frequency = <100000>;
> +	pinctrl-names = "default", "gpio";
> +	pinctrl-0 = <&pinctrl_i2c5>;
> +	pinctrl-1 = <&pinctrl_i2c5_gpio>;
> +	scl-gpios = <&gpio5 3 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
> +	sda-gpios = <&gpio5 4 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
> +	status = "okay";
> +
> +	rtc_ext: rtc@68 {
> +		compatible = "microcrystal,rv4162";
> +		reg = <0x68>;
> +	};
> +};
> +
> +/* i2c-6: i2c splitter */
> +&i2c6 {
> +	clock-frequency = <100000>;
> +	pinctrl-names = "default", "gpio";
> +	pinctrl-0 = <&pinctrl_i2c6>;
> +	pinctrl-1 = <&pinctrl_i2c6_gpio>;
> +	scl-gpios = <&gpio3 19 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
> +	sda-gpios = <&gpio3 20 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
> +
> +	status = "okay";
> +
> +	mux@70 {
> +		compatible = "nxp,pca9548";
> +		reg = <0x70>;
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		/* MIPI CSI 1 */
> +		imux0: i2c@0 {
> +			reg = <0>;
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +		};
> +
> +		/* MIPI CSI 2 */
> +		imux1: i2c@1 {
> +			reg = <1>;
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +		};
> +
> +		/* Q-Seven LVDS_DID */
> +		imux2: i2c@2 {
> +			reg = <2>;
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +		};
> +
> +		/* Q-Seven LVDS_BLC */
> +		imux3: i2c@3 {
> +			reg = <3>;
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +		};
> +
> +		/* Ports 4 .. 7 not used */
> +	};
> +};
> +
> +&pcie {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_pcie>;
> +	reset-gpio = <&gpio4 12 GPIO_ACTIVE_LOW>;
> +	fsl,max-link-speed = <2>;
> +};
> +
> +&pcie_phy {
> +	fsl,refclk-pad-mode = <IMX8_PCIE_REFCLK_PAD_INPUT>;
> +	clocks = <&pcie0_refclk>;
> +	clock-names= "ref";
> +};
> +
> +&uart1 { /* UART0-Connector on Qseven */
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_uart1>;
> +	uart-has-rtscts;
> +};
> +
> +&uart2 {
> +	/* console - on-SoM connector */
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_uart2>;
> +	status = "okay";
> +};
> +
> +&uart4 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_uart4>;
> +	status = "okay";
> +};
> +
> +&usb3_phy0 { /* On-SoM Hub */
> +	fsl,phy-tx-vref-tune = <8>;		//note: downstream
> +	fsl,phy-tx-preemp-amp-tune = <3>;	//note: downstream
> +	vbus-supply = <&reg_usb1_host_vbus>;
> +	status = "okay";
> +};
> +
> +&usb3_0 {
> +	status = "okay";
> +};
> +
> +&usb_dwc3_0 { /* Q7 USB_P1 */
> +	dr_mode = "otg";
> +	usb-role-switch;
> +	role-switch-default-mode = "host";
> +
> +	connector {
> +		compatible = "gpio-usb-b-connector", "usb-b-connector";
> +		id-gpios = <&gpio1 10 GPIO_ACTIVE_HIGH>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_usb1>, <&pinctrl_usb_overcurrent>;
> +	};
> +};
> +
> +&usb3_phy1 {
> +	vbus-supply = <&reg_usb2_host_vbus>;
> +	status = "okay";
> +};
> +
> +&usb3_1 {
> +	status = "okay";
> +};
> +
> +&usb_dwc3_1 { /* Q7 USB_P0 */
> +	dr_mode = "host";
> +	status = "okay";
> +};
> +
> +/* Q7 SD-Card interface */
> +&usdhc1 {
> +	pinctrl-names = "default", "state_100mhz", "state_200mhz";
> +	pinctrl-0 = <&pinctrl_usdhc1>, <&pinctrl_usdhc1_gpio>;
> +	pinctrl-1 = <&pinctrl_usdhc1_100mhz>, <&pinctrl_usdhc1_gpio>;
> +	pinctrl-2 = <&pinctrl_usdhc1_200mhz>, <&pinctrl_usdhc1_gpio>;
> +	cd-gpios = <&gpio1 6 GPIO_ACTIVE_LOW>;
> +	wp-gpios = <&gpio1 7 GPIO_ACTIVE_HIGH>;
> +	vmmc-supply = <&reg_usdhc1_vmmc>;
> +	bus-width = <4>;
> +};
> +
> +/* onboard micro-SD card slot */
> +&usdhc2 {
> +	pinctrl-names = "default", "state_100mhz", "state_200mhz";
> +	pinctrl-0 = <&pinctrl_usdhc2>, <&pinctrl_usdhc2_gpio>;
> +	pinctrl-1 = <&pinctrl_usdhc2_100mhz>, <&pinctrl_usdhc2_gpio>;
> +	pinctrl-2 = <&pinctrl_usdhc2_200mhz>, <&pinctrl_usdhc2_gpio>;
> +	cd-gpios = <&gpio2 12 GPIO_ACTIVE_LOW>;
> +	vmmc-supply = <&reg_usdhc2_vmmc>;
> +	bus-width = <4>;
> +	status = "okay";
> +};
> +
> +/* onboard emmc */
> +&usdhc3 {
> +	pinctrl-names = "default", "state_100mhz", "state_200mhz";
> +	pinctrl-0 = <&pinctrl_usdhc3>;
> +	pinctrl-1 = <&pinctrl_usdhc3_100mhz>;
> +	pinctrl-2 = <&pinctrl_usdhc3_200mhz>;
> +	vmmc-supply = <&reg_usdhc3_vmmc>;
> +	bus-width = <8>;
> +	non-removable;
> +	no-sd;
> +	no-sdio;
> +	status = "okay";
> +};
> +
> +&wdog1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_wdog>;
> +	fsl,ext-reset-output;
> +	status = "okay";
> +};
> +
> +&gpio1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_gbe0_phy_reg>;
> +};
> +
> +&gpio4 {
> +	stby_en-hog {
> +		gpio-hog;
> +		gpios = <11 GPIO_ACTIVE_HIGH>;
> +		output-high;
> +		line-name = "CB_STBY_EN";
> +	};
> +};
> +
> +&iomuxc {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_hog>, <&pinctrl_android_buttons>, <&pinctrl_pm>, <&pinctrl_q7_suspend>, <&pinctrl_q7_wdt>;
> +
> +				/* Peripheral */
> +	pinctrl_hog: hog-grp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_SAI1_RXD7__GPIO4_IO09			0x01C0 /* PM_WAKE#	(X19:32) */
> +			MX8MP_IOMUXC_SAI1_TXD7__GPIO4_IO19			0x01C0 /* SMB_ALERT# (X19:20) */
> +			MX8MP_IOMUXC_SAI3_TXFS__GPIO4_IO31			0x01C0 /* I2S_RST# */
> +		>;
> +	};
> +
> +	pinctrl_display_vdd_en: lvds-vdd-enable-grp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_SAI1_RXC__GPIO4_IO01			0x0100 /* LFP_VDD_EN */
> +		>;
> +	};
> +
> +	pinctrl_hdmi: hdmi-grp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_HDMI_DDC_SCL__HDMIMIX_HDMI_SCL		0x400001c3
> +			MX8MP_IOMUXC_HDMI_DDC_SDA__HDMIMIX_HDMI_SDA		0x400001c3
> +			MX8MP_IOMUXC_HDMI_HPD__HDMIMIX_HDMI_HPD			0x40000019
> +			MX8MP_IOMUXC_HDMI_CEC__HDMIMIX_HDMI_CEC			0x40000019
> +		>;
> +	};
> +
> +	/* On module Android buttons (X7) */
> +	pinctrl_android_buttons: androidbutton-grp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_SAI1_RXD5__GPIO4_IO07	0x01C0 /* X7-2: Btn Vol Up */
> +			MX8MP_IOMUXC_SD1_DATA4__GPIO2_IO06	0x01C0 /* X7-3: Btn Home */
> +			MX8MP_IOMUXC_SD1_DATA5__GPIO2_IO07	0x01C0 /* X7-4: Btn Search */
> +			MX8MP_IOMUXC_SD1_DATA6__GPIO2_IO08	0x01C0 /* X7-5: Btn Back */
> +			MX8MP_IOMUXC_SAI1_RXD6__GPIO4_IO08	0x01C0 /* X7-6: Btn Menu */
> +			MX8MP_IOMUXC_SD1_DATA7__GPIO2_IO09	0x01C0 /* X7-7: Btn Vol Down */
> +		>;
> +	};
> +
> +	/* Q-Seven PM signals */
> +	pinctrl_pm: pm-grp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_SAI1_RXD0__GPIO4_IO02	0x01C0 /* Q7-21: Sleep Btn */
> +			MX8MP_IOMUXC_SAI1_TXFS__GPIO4_IO10	0x01C0 /* Q7-22: Lid Btn */
> +			MX8MP_IOMUXC_SAI1_RXD4__GPIO4_IO06	0x01C0 /* Q7-27: Bat Low */
> +			MX8MP_IOMUXC_SAI1_RXD1__GPIO4_IO03	0x01C0 /* Q7-69: Thrm */
> +			MX8MP_IOMUXC_SAI1_MCLK__GPIO4_IO20	0x01C0 /* Q7-71: Thrm Trip (X19:19) */
> +		>;
> +	};
> +
> +	/* Q-Seven WDT */
> +	pinctrl_q7_wdt: q7-wdt-grp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_SAI1_RXD2__GPIO4_IO04	0x01C0 /* Q7-70: WDT Trig */
> +			MX8MP_IOMUXC_SAI1_TXD1__GPIO4_IO13	0x0100 /* Q7-72: WDT Out */
> +		>;
> +	};
> +
> +	/* Q-Seven Suspend signals */
> +	pinctrl_q7_suspend: q7-suspend-grp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_SAI1_TXC__GPIO4_IO11	0x0100 /* Q7-18: SUS_S3# (enable signal from pmic) */
> +			MX8MP_IOMUXC_SAI3_TXD__GPIO5_IO01	0x0100 /* Q7-19: SUS_STAT | GP_OUT0*/
> +		>;
> +	};
> +
> +	/* USB OverCurrent */
> +	pinctrl_usb_overcurrent: usb-overcurrent-grp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_GPIO1_IO13__USB1_OTG_OC	0x01C0
> +			MX8MP_IOMUXC_SAI3_RXC__GPIO4_IO29	0x01C0 /* USB1 OC as gpio */
> +		>;
> +	};
> +
> +	pinctrl_pwm1: pwm1-grp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_SPDIF_EXT_CLK__PWM1_OUT	0x116
> +		>;
> +	};
> +
> +	pinctrl_pwm2: pwm2-grp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_SAI5_RXD0__PWM2_OUT	0x116
> +		>;
> +	};
> +
> +	pinctrl_pwm4: pwm4-grp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_SAI3_MCLK__PWM4_OUT	0x116
> +		>;
> +	};
> +
> +	pinctrl_ecspi1: ecspi1-grp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_ECSPI1_SCLK__ECSPI1_SCLK		0x82
> +			MX8MP_IOMUXC_ECSPI1_MOSI__ECSPI1_MOSI		0x82
> +			MX8MP_IOMUXC_ECSPI1_MISO__ECSPI1_MISO		0x82
> +		>;
> +	};
> +
> +	pinctrl_ecspi1_cs: ecspi1cs-grp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_ECSPI1_SS0__GPIO5_IO09		0x01C0
> +		>;
> +	};
> +
> +	pinctrl_ecspi2: ecspi2-grp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_ECSPI2_SCLK__ECSPI2_SCLK		0x82
> +			MX8MP_IOMUXC_ECSPI2_MOSI__ECSPI2_MOSI		0x82
> +			MX8MP_IOMUXC_ECSPI2_MISO__ECSPI2_MISO		0x82
> +		>;
> +	};
> +
> +	pinctrl_ecspi2_cs0: ecspi2cs0-grp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_ECSPI2_SS0__GPIO5_IO13		0x01C0
> +		>;
> +	};
> +
> +	pinctrl_ecspi2_cs1: ecspi2cs1-grp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_SAI5_MCLK__GPIO3_IO25		0x01C0
> +		>;
> +	};
> +
> +	pinctrl_eqos: eqos-grp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_ENET_MDC__ENET_QOS_MDC                         0x3
> +			MX8MP_IOMUXC_ENET_MDIO__ENET_QOS_MDIO                       0x3
> +			MX8MP_IOMUXC_ENET_RD0__ENET_QOS_RGMII_RD0                   0x91
> +			MX8MP_IOMUXC_ENET_RD1__ENET_QOS_RGMII_RD1                   0x91
> +			MX8MP_IOMUXC_ENET_RD2__ENET_QOS_RGMII_RD2                   0x91
> +			MX8MP_IOMUXC_ENET_RD3__ENET_QOS_RGMII_RD3                   0x91
> +			MX8MP_IOMUXC_ENET_RXC__CCM_ENET_QOS_CLOCK_GENERATE_RX_CLK   0x91
> +			MX8MP_IOMUXC_ENET_RX_CTL__ENET_QOS_RGMII_RX_CTL	            0x91
> +			MX8MP_IOMUXC_ENET_TD0__ENET_QOS_RGMII_TD0                   0x1f
> +			MX8MP_IOMUXC_ENET_TD1__ENET_QOS_RGMII_TD1                   0x1f
> +			MX8MP_IOMUXC_ENET_TD2__ENET_QOS_RGMII_TD2                   0x1f
> +			MX8MP_IOMUXC_ENET_TD3__ENET_QOS_RGMII_TD3                   0x1f
> +			MX8MP_IOMUXC_ENET_TX_CTL__ENET_QOS_RGMII_TX_CTL	            0x1f
> +			MX8MP_IOMUXC_ENET_TXC__CCM_ENET_QOS_CLOCK_GENERATE_TX_CLK   0x1f
> +
> +			/* PTP capture INT */
> +			MX8MP_IOMUXC_SAI2_TXD0__ENET_QOS_1588_EVENT2_IN             0x1c0
> +		>;
> +	};
> +
> +	pinctrl_flexcan1: flexcan1-grp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_SAI5_RXD2__CAN1_RX          0x150
> +			MX8MP_IOMUXC_SAI5_RXD1__CAN1_TX          0x150
> +		>;
> +	};
> +
> +	pinctrl_flexcan2: flexcan2-grp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_UART3_TXD__CAN2_RX          0x150
> +			MX8MP_IOMUXC_UART3_RXD__CAN2_TX          0x150
> +		>;
> +	};
> +
> +	pinctrl_flexspi0: flexspi0-grp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_NAND_ALE__FLEXSPI_A_SCLK		0x1c0
> +			MX8MP_IOMUXC_NAND_CE0_B__FLEXSPI_A_SS0_B	0x82
> +			MX8MP_IOMUXC_NAND_DATA00__FLEXSPI_A_DATA00	0x82
> +			MX8MP_IOMUXC_NAND_DATA01__FLEXSPI_A_DATA01	0x82
> +			MX8MP_IOMUXC_NAND_DATA02__FLEXSPI_A_DATA02	0x82
> +			MX8MP_IOMUXC_NAND_DATA03__FLEXSPI_A_DATA03	0x82
> +		>;
> +	};
> +
> +	pinctrl_i2c1: i2c1-grp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_I2C1_SCL__I2C1_SCL		0x400001c3
> +			MX8MP_IOMUXC_I2C1_SDA__I2C1_SDA		0x400001c3
> +		>;
> +	};
> +
> +	pinctrl_i2c1_gpio: i2c1-gpio-grp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_I2C1_SCL__GPIO5_IO14        	0x400001c3
> +			MX8MP_IOMUXC_I2C1_SDA__GPIO5_IO15        	0x400001c3
> +		>;
> +	};
> +
> +	pinctrl_i2c2: i2c2-grp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_I2C2_SCL__I2C2_SCL			0x400001c3
> +			MX8MP_IOMUXC_I2C2_SDA__I2C2_SDA			0x400001c3
> +		>;
> +	};
> +
> +	pinctrl_i2c3: i2c3-grp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_I2C3_SCL__I2C3_SCL			0x400001c3
> +			MX8MP_IOMUXC_I2C3_SDA__I2C3_SDA			0x400001c3
> +		>;
> +	};
> +
> +	pinctrl_i2c5: i2c5-grp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_SPDIF_TX__I2C5_SCL			0x400001c3
> +			MX8MP_IOMUXC_SPDIF_RX__I2C5_SDA			0x400001c3
> +		>;
> +	};
> +
> +	pinctrl_i2c6: i2c6-grp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_SAI5_RXFS__I2C6_SCL		0x400001c3
> +			MX8MP_IOMUXC_SAI5_RXC__I2C6_SDA			0x400001c3
> +		>;
> +	};
> +
> +	pinctrl_i2c2_gpio: i2c2grp-gpio-grp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_I2C2_SCL__GPIO5_IO16        	0x400001c3
> +			MX8MP_IOMUXC_I2C2_SDA__GPIO5_IO17        	0x400001c3
> +		>;
> +	};
> +
> +	pinctrl_i2c3_gpio: i2c3grp-gpio-grp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_I2C3_SCL__GPIO5_IO18        	0x400001c3
> +			MX8MP_IOMUXC_I2C3_SDA__GPIO5_IO19        	0x400001c3
> +		>;
> +	};
> +
> +	pinctrl_i2c5_gpio: i2c5grp-gpio-grp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_SPDIF_TX__GPIO5_IO03        	0x400001c3
> +			MX8MP_IOMUXC_SPDIF_RX__GPIO5_IO04        	0x400001c3
> +		>;
> +	};
> +
> +	pinctrl_i2c6_gpio: i2c6grp-gpio-grp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_SAI5_RXFS__GPIO3_IO19        	0x400001c3
> +			MX8MP_IOMUXC_SAI5_RXC__GPIO3_IO20        	0x400001c3
> +		>;
> +	};
> +
> +	pinctrl_pcie: pcie-grp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_I2C4_SCL__PCIE_CLKREQ_B            0x160	/* #OE of on-SoM PCIe clk generator */
> +			MX8MP_IOMUXC_I2C4_SDA__GPIO5_IO21		0x41    /* WAKE */
> +			MX8MP_IOMUXC_SAI1_TXD0__GPIO4_IO12		0x0100  /* reset */
> +		>;
> +	};
> +
> +	pinctrl_pmic: pmicirq-grp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_SAI1_RXD3__GPIO4_IO05	0x41
> +		>;
> +	};
> +
> +	pinctrl_sai5: sai5-grp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_SAI2_MCLK__AUDIOMIX_SAI5_MCLK		0xd6
> +			MX8MP_IOMUXC_SAI2_RXC__AUDIOMIX_SAI5_TX_BCLK		0xd6
> +			MX8MP_IOMUXC_SAI2_RXFS__AUDIOMIX_SAI5_TX_SYNC		0xd6
> +			MX8MP_IOMUXC_SAI3_RXD__AUDIOMIX_SAI5_RX_DATA00		0xd6
> +			MX8MP_IOMUXC_SAI5_RXD3__AUDIOMIX_SAI5_TX_DATA00		0xd6
> +		>;
> +	};
> +
> +	pinctrl_uart1: uart1-grp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_UART1_RXD__UART1_DCE_RX	0x49
> +			MX8MP_IOMUXC_UART1_TXD__UART1_DCE_TX	0x49
> +			MX8MP_IOMUXC_SAI2_RXD0__UART1_DCE_RTS	0x49
> +			MX8MP_IOMUXC_SAI2_TXFS__UART1_DCE_CTS	0x49
> +		>;
> +	};
> +
> +	pinctrl_uart2: uart2-grp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_UART2_RXD__UART2_DCE_RX	0x49
> +			MX8MP_IOMUXC_UART2_TXD__UART2_DCE_TX	0x49
> +		>;
> +	};
> +
> +	pinctrl_uart4: uart4-grp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_UART4_RXD__UART4_DCE_RX	0x49
> +			MX8MP_IOMUXC_UART4_TXD__UART4_DCE_TX	0x49
> +		>;
> +	};
> +
> +	pinctrl_usb1: usb1-grp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_GPIO1_IO10__GPIO1_IO10	0x140	/* USB1 ID */
> +		>;
> +	};
> +
> +	/* Q7 sd-card interface */
> +	pinctrl_usdhc1: usdhc1-grp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_SD1_CLK__USDHC1_CLK	0x190
> +			MX8MP_IOMUXC_SD1_CMD__USDHC1_CMD	0x1d0
> +			MX8MP_IOMUXC_SD1_DATA0__USDHC1_DATA0	0x1d0
> +			MX8MP_IOMUXC_SD1_DATA1__USDHC1_DATA1	0x1d0
> +			MX8MP_IOMUXC_SD1_DATA2__USDHC1_DATA2	0x1d0
> +			MX8MP_IOMUXC_SD1_DATA3__USDHC1_DATA3	0x1d0
> +			MX8MP_IOMUXC_GPIO1_IO03__USDHC1_VSELECT	0xc1
> +		>;
> +	};
> +
> +	pinctrl_usdhc1_100mhz: usdhc1-100mhz-grp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_SD1_CLK__USDHC1_CLK	0x194
> +			MX8MP_IOMUXC_SD1_CMD__USDHC1_CMD	0x1d4
> +			MX8MP_IOMUXC_SD1_DATA0__USDHC1_DATA0	0x1d4
> +			MX8MP_IOMUXC_SD1_DATA1__USDHC1_DATA1	0x1d4
> +			MX8MP_IOMUXC_SD1_DATA2__USDHC1_DATA2	0x1d4
> +			MX8MP_IOMUXC_SD1_DATA3__USDHC1_DATA3	0x1d4
> +			MX8MP_IOMUXC_GPIO1_IO03__USDHC1_VSELECT 0xc1
> +		>;
> +	};
> +
> +	pinctrl_usdhc1_200mhz: usdhc1-200mhz-grp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_SD1_CLK__USDHC1_CLK	0x196
> +			MX8MP_IOMUXC_SD1_CMD__USDHC1_CMD	0x1d6
> +			MX8MP_IOMUXC_SD1_DATA0__USDHC1_DATA0	0x1d6
> +			MX8MP_IOMUXC_SD1_DATA1__USDHC1_DATA1	0x1d6
> +			MX8MP_IOMUXC_SD1_DATA2__USDHC1_DATA2	0x1d6
> +			MX8MP_IOMUXC_SD1_DATA3__USDHC1_DATA3	0x1d6
> +			MX8MP_IOMUXC_GPIO1_IO03__USDHC1_VSELECT 0xc1
> +		>;
> +	};
> +
> +	pinctrl_usdhc1_gpio: usdhc1-gpio-grp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_GPIO1_IO06__GPIO1_IO06    0x1c4 /* Q7-43: SD CD*/
> +			MX8MP_IOMUXC_GPIO1_IO07__GPIO1_IO07    0x1c4 /* Q7-46: SD WP*/
> +		>;
> +	};
> +
> +	pinctrl_reg_usdhc1_vmmc: usdhc1-vmmc-grp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_SD1_RESET_B__GPIO2_IO10	0x41	/* reset */
> +		>;
> +	};
> +
> +	/* onboard usd-slot */
> +	pinctrl_usdhc2: usdhc2-grp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_SD2_CLK__USDHC2_CLK	0x190
> +			MX8MP_IOMUXC_SD2_CMD__USDHC2_CMD	0x1d0
> +			MX8MP_IOMUXC_SD2_DATA0__USDHC2_DATA0	0x1d0
> +			MX8MP_IOMUXC_SD2_DATA1__USDHC2_DATA1	0x1d0
> +			MX8MP_IOMUXC_SD2_DATA2__USDHC2_DATA2	0x1d0
> +			MX8MP_IOMUXC_SD2_DATA3__USDHC2_DATA3	0x1d0
> +			MX8MP_IOMUXC_GPIO1_IO04__USDHC2_VSELECT	0xc1
> +		>;
> +	};
> +
> +	pinctrl_usdhc2_100mhz: usdhc2-100mhz-grp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_SD2_CLK__USDHC2_CLK	0x194
> +			MX8MP_IOMUXC_SD2_CMD__USDHC2_CMD	0x1d4
> +			MX8MP_IOMUXC_SD2_DATA0__USDHC2_DATA0	0x1d4
> +			MX8MP_IOMUXC_SD2_DATA1__USDHC2_DATA1	0x1d4
> +			MX8MP_IOMUXC_SD2_DATA2__USDHC2_DATA2	0x1d4
> +			MX8MP_IOMUXC_SD2_DATA3__USDHC2_DATA3	0x1d4
> +			MX8MP_IOMUXC_GPIO1_IO04__USDHC2_VSELECT 0xc1
> +		>;
> +	};
> +
> +	pinctrl_usdhc2_200mhz: usdhc2-200mhz-grp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_SD2_CLK__USDHC2_CLK	0x196
> +			MX8MP_IOMUXC_SD2_CMD__USDHC2_CMD	0x1d6
> +			MX8MP_IOMUXC_SD2_DATA0__USDHC2_DATA0	0x1d6
> +			MX8MP_IOMUXC_SD2_DATA1__USDHC2_DATA1	0x1d6
> +			MX8MP_IOMUXC_SD2_DATA2__USDHC2_DATA2	0x1d6
> +			MX8MP_IOMUXC_SD2_DATA3__USDHC2_DATA3	0x1d6
> +			MX8MP_IOMUXC_GPIO1_IO04__USDHC2_VSELECT 0xc1
> +		>;
> +	};
> +
> +	pinctrl_usdhc2_gpio: usdhc2-gpio-grp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_SD2_CD_B__GPIO2_IO12 	0x1c4
> +		>;
> +	};
> +
> +	pinctrl_reg_usdhc2_vmmc: usdhc2-vmmc-grp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_SD2_RESET_B__GPIO2_IO19	0x41
> +		>;
> +	};
> +
> +	/* eMMC */
> +	pinctrl_usdhc3: usdhc3-grp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_NAND_WE_B__USDHC3_CLK	0x190
> +			MX8MP_IOMUXC_NAND_WP_B__USDHC3_CMD	0x1d0
> +			MX8MP_IOMUXC_NAND_DATA04__USDHC3_DATA0	0x1d0
> +			MX8MP_IOMUXC_NAND_DATA05__USDHC3_DATA1	0x1d0
> +			MX8MP_IOMUXC_NAND_DATA06__USDHC3_DATA2	0x1d0
> +			MX8MP_IOMUXC_NAND_DATA07__USDHC3_DATA3	0x1d0
> +			MX8MP_IOMUXC_NAND_RE_B__USDHC3_DATA4	0x1d0
> +			MX8MP_IOMUXC_NAND_CE2_B__USDHC3_DATA5	0x1d0
> +			MX8MP_IOMUXC_NAND_CE3_B__USDHC3_DATA6	0x1d0
> +			MX8MP_IOMUXC_NAND_CLE__USDHC3_DATA7	0x1d0
> +			MX8MP_IOMUXC_NAND_CE1_B__USDHC3_STROBE	0x190
> +		>;
> +	};
> +
> +	pinctrl_usdhc3_100mhz: usdhc3-100mhz-grp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_NAND_WE_B__USDHC3_CLK	0x194
> +			MX8MP_IOMUXC_NAND_WP_B__USDHC3_CMD	0x1d4
> +			MX8MP_IOMUXC_NAND_DATA04__USDHC3_DATA0	0x1d4
> +			MX8MP_IOMUXC_NAND_DATA05__USDHC3_DATA1	0x1d4
> +			MX8MP_IOMUXC_NAND_DATA06__USDHC3_DATA2	0x1d4
> +			MX8MP_IOMUXC_NAND_DATA07__USDHC3_DATA3	0x1d4
> +			MX8MP_IOMUXC_NAND_RE_B__USDHC3_DATA4	0x1d4
> +			MX8MP_IOMUXC_NAND_CE2_B__USDHC3_DATA5	0x1d4
> +			MX8MP_IOMUXC_NAND_CE3_B__USDHC3_DATA6	0x1d4
> +			MX8MP_IOMUXC_NAND_CLE__USDHC3_DATA7	0x1d4
> +			MX8MP_IOMUXC_NAND_CE1_B__USDHC3_STROBE	0x194
> +		>;
> +	};
> +
> +	pinctrl_usdhc3_200mhz: usdhc3-200mhz-grp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_NAND_WE_B__USDHC3_CLK	0x196
> +			MX8MP_IOMUXC_NAND_WP_B__USDHC3_CMD	0x1d6
> +			MX8MP_IOMUXC_NAND_DATA04__USDHC3_DATA0	0x1d6
> +			MX8MP_IOMUXC_NAND_DATA05__USDHC3_DATA1	0x1d6
> +			MX8MP_IOMUXC_NAND_DATA06__USDHC3_DATA2	0x1d6
> +			MX8MP_IOMUXC_NAND_DATA07__USDHC3_DATA3	0x1d6
> +			MX8MP_IOMUXC_NAND_RE_B__USDHC3_DATA4	0x1d6
> +			MX8MP_IOMUXC_NAND_CE2_B__USDHC3_DATA5	0x1d6
> +			MX8MP_IOMUXC_NAND_CE3_B__USDHC3_DATA6	0x1d6
> +			MX8MP_IOMUXC_NAND_CLE__USDHC3_DATA7	0x1d6
> +			MX8MP_IOMUXC_NAND_CE1_B__USDHC3_STROBE	0x196
> +		>;
> +	};
> +
> +	pinctrl_reg_usdhc3_vmmc: usdhc3-gpio-grp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_NAND_READY_B__GPIO3_IO16	0x41
> +		>;
> +	};
> +
> +	pinctrl_wdog: wdog-grp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_GPIO1_IO02__WDOG1_WDOG_B	0xc6
> +		>;
> +	};
> +
> +	pinctrl_gpt1_capture1: gpt1-capture1-grp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_SAI3_TXC__GPT1_CAPTURE1	0x01C0
> +		>;
> +	};
> +
> +	pinctrl_interrupt_fan_in: fan-in-grp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_SAI3_TXC__GPIO5_IO00	0x01C0
> +		>;
> +	};
> +
> +	pinctrl_usb1_vbus: usb1-vbus-grp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_SAI1_TXD5__GPIO4_IO17	0x0100 /* USB1_PWR */
> +		>;
> +	};
> +
> +	pinctrl_usb2_vbus: usb2-vbus-grp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_SAI1_TXD4__GPIO4_IO16	0x0100 /* USB0S_PWR */
> +		>;
> +	};
> +
> +	pinctrl_gbe0_phy_reg: gbe0-phy-reg-grp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_GPIO1_IO05__GPIO1_IO05	0x01C0 /* GBE0_PWR_EN# */
> +		>;
> +	};
> +
> +	pinctrl_gbe0_rst: gbe0-rst-grp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_SAI2_TXC__GPIO4_IO25	0x01C0 /* GBE0_RST# */
> +		>;
> +	};
> +
> +	pinctrl_lvds0_backlight: lvds0-backlight-grp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_SAI1_RXFS__GPIO4_IO00	0x0100 /* BL_EN */
> +		>;
> +	};
> +};
> diff --git a/arch/arm/dts/imx8mp-koenigbauer-alphajet.dts b/arch/arm/dts/imx8mp-koenigbauer-alphajet.dts
> new file mode 100644
> index 000000000000..1b2e8272aad6
> --- /dev/null
> +++ b/arch/arm/dts/imx8mp-koenigbauer-alphajet.dts
> @@ -0,0 +1,180 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright 2023 Pengutronix, Johannes Zink <j.zink@pengutronix.de>
> + */
> +/dts-v1/;
> +
> +#include "imx8mp-cgtqx8p.dtsi"
> +
> +/ {
> +	model = "Koenig+Bauer Alphajet";
> +	compatible = "kb,alphajet", "cgt,qxp8p", "fsl,imx8mp";
> +
> +	aliases {
> +		state = &state_emmc;
> +	};
> +
> +	chosen {
> +		stdout-path = &uart1; // labeled UART0 on baseboard, on connector J12
> +		environment-emmc {
> +			compatible = "barebox,environment";
> +			device-path = &env_emmc;
> +		};
> +	};
> +
> +	display {
> +		compatible = "innolux,g101ice-l01";
> +		backlight = <&lvds0_backlight>;
> +		power-supply = <&reg_lfp_vdd>;
> +
> +		port {
> +			panel_in_lvds0: endpoint {
> +				remote-endpoint = <&ldb_lvds_ch0>;
> +			};
> +		};
> +	};
> +
> +        state_emmc: state {
> +		compatible = "barebox,state";
> +		magic = <0xabff4b1f>;
> +		backend-type = "raw";
> +		backend = <&backend_state_emmc>;
> +		backend-storage-type="direct";
> +		backend-stridesize = <0x40>;
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +
> +		bootstate {
> +			#address-cells = <1>;
> +			#size-cells = <1>;
> +
> +			system0 {
> +				#address-cells = <1>;
> +				#size-cells = <1>;
> +
> +				remaining_attempts@0 {
> +					reg = <0x0 0x4>;
> +					type = "uint32";
> +					default = <2>;
> +				};
> +
> +				priority@4 {
> +					reg = <0x4 0x4>;
> +					type= "uint32";
> +					default = <21>;
> +				};
> +			};
> +
> +			system1 {
> +				#address-cells = <1>;
> +				#size-cells = <1>;
> +
> +				remaining_attempts@8 {
> +					reg = <0x8 0x4>;
> +					type = "uint32";
> +					default = <2>;
> +				};
> +
> +				priority@c {
> +					reg = <0xC 0x4>;
> +					type= "uint32";
> +					default = <20>;
> +				};
> +			};
> +
> +			last_chosen@10 {
> +				reg = <0x10 0x4>;
> +				type = "uint32";
> +			};
> +
> +		};
> +
> +	};
> +};
> +
> +&eqos { /* baseboard connects to on-SoM PHY  */
> +	status = "okay";
> +};
> +
> +&gpu2d {
> +        status = "okay";
> +};
> +
> +&gpu3d {
> +        status = "okay";
> +};
> +
> +&lcdif2 {
> +	assigned-clock-rates = <0>, <995400000>; /* pin IMX8MP_VIDEO_PLL1 to provide bitclock needed by lvds panel */
> + 	status = "okay";
> +};
> +
> +&lvds0_backlight {
> +	status = "okay";
> +};
> +
> +&lvds_bridge {
> +	status = "okay";
> +
> +	ports {
> +		port@1 {
> +			ldb_lvds_ch0: endpoint {
> +				remote-endpoint = <&panel_in_lvds0>;
> +			};
> +		};
> +	};
> +};
> +
> +&pcie {
> +	status = "okay";
> +};
> +
> +&pcie_phy {
> +	status = "okay";
> +};
> +
> +
> +&pwm2 { /* for PWM Backlight */
> +	status = "okay";
> +};
> +
> +&uart1 { /* labeled UART0 on base board */
> +	/delete-property/ uart-has-rtscts; //not connected on baseboard
> +	status = "okay";
> +};
> +
> +&usb_dwc3_0 { /* Baseboard J13 Top Connector */
> +	//fixme: overcurrent Pin is handled via TUSB8041 (which one?)
> +	status = "okay";
> +};
> +
> +&usdhc1 {  /* Baseboard J8 - uSD card slot  */
> +	status = "okay";
> +	/delete-property/ cd-gpios; /* no CD is tied to GND on baseboard */
> +	/delete-property/ wp-gpios; /* no WP is tied to GND on baseboard */
> +	broken-cd;                  /* do not wait for CD interrupt */
> +};
> +
> +&usdhc2 { /* on-SoM micro-SD card slot is not used*/
> +	status = "disabled";
> +};
> +
> +&usdhc3 { /* on-SoM emmc */
> +	#address-cells = <1>;
> +	#size-cells = <1>;
> +
> +	partition@0 {
> +		label = "barebox";
> +		reg = <0x0 0xe0000>;
> +	};
> +
> +	env_emmc: partition@e0000 {
> +		label = "barebox-environment";
> +		reg = <0xe0000 0x20000>;
> +	};
> +
> +	backend_state_emmc: partition@100000 {
> +		label = "state";
> +		reg = <0x100000 0x20000>;
> +	};
> +};
> diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
> index 4c93c1244a6a..058f0625addf 100644
> --- a/arch/arm/mach-imx/Kconfig
> +++ b/arch/arm/mach-imx/Kconfig
> @@ -653,6 +653,16 @@ config MACH_NXP_IMX8MQ_EVK
>  	select ARM_SMCCC
>  	select MCI_IMX_ESDHC_PBL
>  
> +config MACH_KB_ALPHAJET
> +	bool "Koenig+Bauer AlphaJet Board"
> +	select ARCH_IMX8MP
> +	select FIRMWARE_IMX_LPDDR4_PMU_TRAIN
> +	select FIRMWARE_IMX8MP_ATF
> +	select ARM_SMCCC
> +	select MCI_IMX_ESDHC_PBL
> +	select IMX8M_DRAM
> +	select I2C_IMX_EARLY
> +
>  config MACH_PHYTEC_SOM_IMX8MQ
>  	bool "Phytec i.MX8M SOM"
>  	select ARCH_IMX8MQ
> diff --git a/images/Makefile.imx b/images/Makefile.imx
> index 9e70ba50a162..bfb2fcdd8ede 100644
> --- a/images/Makefile.imx
> +++ b/images/Makefile.imx
> @@ -473,6 +473,11 @@ CFG_start_variscite_imx8mp_dart.pblb.imximg = $(board)/variscite-dt8mcustomboard
>  FILE_barebox-variscite-imx8mp-dart-cb.img = start_variscite_imx8mp_dart.pblb.pimximg
>  image-$(CONFIG_MACH_VARISCITE_DT8MCUSTOMBOARD_IMX8MP) += barebox-variscite-imx8mp-dart-cb.img
>  
> +pblb-$(CONFIG_MACH_KB_ALPHAJET) += start_congatec_qx8p
> +CFG_start_kb_alphajet.pblb.imximg = $(board)/kb-imx8mp-alphajet/flash-header-imx8mp-cgtqx8p.imxcfg
> +FILE_barebox-kb-alphajet.img = start_kb_alphajet.pblb.pimximg
> +image-$(CONFIG_MACH_KB_ALPHAJET) += barebox-kb-alphajet.img
> +
>  # ----------------------- i.MX8mq based boards --------------------------
>  pblb-$(CONFIG_MACH_NXP_IMX8MQ_EVK) += start_nxp_imx8mq_evk
>  CFG_start_nxp_imx8mq_evk.pblb.imximg = $(board)/nxp-imx8mq-evk/flash-header-imx8mq-evk.imxcfg
> 
> ---
> base-commit: 64c528dd0bff0953192d90fbbc34b3d45d8116d0
> change-id: 20230601-koenigbauer-alphajet-upstreaming-2085dc8b9f77
> 
> Best regards,
> -- 
> Johannes Zink <j.zink@pengutronix.de>
> 
> 
> 



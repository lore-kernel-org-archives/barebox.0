Delivery-date: Thu, 01 Jun 2023 10:50:48 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4e1B-005YfB-DO
	for lore@lore.pengutronix.de; Thu, 01 Jun 2023 10:50:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4e18-00078O-23
	for lore@pengutronix.de; Thu, 01 Jun 2023 10:50:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DPsvz2G7UpNf6kV4LwCq0hS5EXN16vkNnRa06BvKVpk=; b=e6bHi7MZ3yT8L1atghvUZInRu/
	GlCF6IVUz7mHnTUQep+c1LgqRipHqrvJgJ6mM1J7ot32q8qFVwMc0i6OpN5nE17AX1HFukC1Fz64K
	ohP1he4dR/btEY2sI4xMHKACdm09RnH5ntBovbVV4TDVJ+tCJnZIZYd3W8rt7XsyuDpPYnVq+bvIM
	uqDdUklvZMxTOAahzOiz6f4WNxgjkGCgiBDgbm6sP2hfm1vrj8TG49oSEvRYNtKe1z+MWCOyaib5a
	m2xAJ3lmaVTDWXx7n7wYvcnhV8tcGCu+OKDdK/7TgLszbpUtTeAMxLcLYNcRQI+NwU+urUF+sq6F4
	jRBzp3ug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4dzz-002cck-0F;
	Thu, 01 Jun 2023 08:49:35 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4dzv-002cbp-14
	for barebox@lists.infradead.org;
	Thu, 01 Jun 2023 08:49:33 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1q4dzs-0006hk-Ep; Thu, 01 Jun 2023 10:49:28 +0200
Message-ID: <e6a958d3-2ba4-95c6-23d3-a3b9d953435b@pengutronix.de>
Date: Thu, 1 Jun 2023 10:49:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: Johannes Zink <j.zink@pengutronix.de>, barebox@lists.infradead.org
Cc: patchwork-jzi@pengutronix.de, Juergen Borleis <j.borleis@pengutronix.de>
References: <20230601-koenigbauer-alphajet-upstreaming-v1-1-bcdcc1f1382e@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230601-koenigbauer-alphajet-upstreaming-v1-1-bcdcc1f1382e@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230601_014931_524654_21AAAE93 
X-CRM114-Status: GOOD (  31.08  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: i.MX8MP: add Koenig+Bauer Alphajet board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Johannes,

On 01.06.23 09:40, Johannes Zink wrote:
> diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
> index 2877debad535..67b2fc07a395 100644
> --- a/arch/arm/boards/Makefile
> +++ b/arch/arm/boards/Makefile
> @@ -81,6 +81,7 @@ obj-$(CONFIG_MACH_NXP_IMX8MQ_EVK)		+= nxp-imx8mq-evk/
>  obj-$(CONFIG_MACH_NXP_IMX8MM_EVK)		+= nxp-imx8mm-evk/
>  obj-$(CONFIG_MACH_NXP_IMX8MN_EVK)		+= nxp-imx8mn-evk/
>  obj-$(CONFIG_MACH_NXP_IMX8MP_EVK)		+= nxp-imx8mp-evk/
> +obj-$(CONFIG_MACH_KB_ALPHAJET)			+= kb-imx8mp-alphajet/

Could you rename this after the SoM instead? This would make it easier
to share code. Alphajet specific stuff you can do by matching against
the alphajet compatible.

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

Is anything of the above really alphajet specific? If both PHY and QSPI flash
are on SOM, you should match against SoM compatible here.

> +	{ /* Sentinel */ }
> +};
> +BAREBOX_DEEP_PROBE_ENABLE(kb_alphajet_of_match);
> +
> +static struct driver kb_alphajet_board_driver = {
> +	.name = "board-kb-alphajet",
> +	.probe = kb_alphajet_probe,
> +	.of_compatible = kb_alphajet_of_match,
> +};

> +static void power_init_board(void)
> +{
> +	struct pbl_i2c *i2c;
> +
> +	imx8mp_setup_pad(MX8MP_PAD_I2C1_SCL__I2C1_SCL | I2C_PAD_CTRL);
> +	imx8mp_setup_pad(MX8MP_PAD_I2C1_SDA__I2C1_SDA | I2C_PAD_CTRL);
> +
> +	imx8mp_early_clock_init();

Move this above power_init_board(). See

  https://lore.barebox.org/barebox/20230523095330.3475712-1-a.fatoum@pengutronix.de/

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

> diff --git a/arch/arm/dts/imx8mp-koenigbauer-alphajet.dts b/arch/arm/dts/imx8mp-koenigbauer-alphajet.dts
> new file mode 100644
> index 000000000000..1b2e8272aad6
> --- /dev/null
> +++ b/arch/arm/dts/imx8mp-koenigbauer-alphajet.dts

You will have an easier time if you split this up into

imx8mp-koenigbauer-alphajet.dtsi

which is your kernel DT

and 

imx8mp-koenigbauer-alphajet.dts

which just contains your barebox overrides.

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


Is 8p correct or should this be 8mp?

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

We want to avoid future boards with Congatec modules needing to duplicate
code. Can you split this up:

config MACH_CONGATEC_QX8MP
	bool "Koenig+Bauer AlphaJet Board"
	select ARCH_IMX8MP
	select FIRMWARE_IMX_LPDDR4_PMU_TRAIN
	select FIRMWARE_IMX8MP_ATF
	select ARM_SMCCC
	select MCI_IMX_ESDHC_PBL
	select IMX8M_DRAM
	select I2C_IMX_EARLY

config MACH_KB_ALPHAJET
	bool "Koenig+Bauer AlphaJet Board"
	select MACH_CONGATEC_QX8MP

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

This is defined no where. Should this be qx8mp too?

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

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |




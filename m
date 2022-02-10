Delivery-date: Thu, 10 Feb 2022 16:56:37 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nIBoD-00BwVS-Av
	for lore@lore.pengutronix.de; Thu, 10 Feb 2022 16:56:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nIBoB-0004Nr-Op
	for lore@pengutronix.de; Thu, 10 Feb 2022 16:56:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hYZ9VoojbfMOK2Nsh/WMBF0YJF5wQ5gFjpyg1t991BM=; b=fOsd/ANIculmcS
	RejXBem+qZQYtp5ciTGIRQqFdNkGK4VszRyWpp8LVoHbKxtVh8YlcYK84zhrHOjr7rhT+p4Dk75cW
	aFkD4fUuVl5eqJhjQ8ayUQXG0o94OZVsGtZcIeml/pdvtuBpwdyYKD0xR8PUjS1fqMJliXlH2n5Hq
	5CwXFci8An0QzmP9gajJwIxU+Tjzi3/mtYFbYK2HEuwvawZSIiQevUswWjHWkefsHSdpDvXP5xt8g
	RdfhNPNw7u5LoxPFhFKkFqR+ZRgRGXweevf7+7TPWJAGRPnAhfD3h6B5vSUrYLGNmn4K9Xg8DG8un
	mkPNJCDNh1JUjOUzPL/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nIBmr-004Gpj-V9; Thu, 10 Feb 2022 15:55:14 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nIBml-004Gnr-Ri
 for barebox@lists.infradead.org; Thu, 10 Feb 2022 15:55:11 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nIBmi-00043U-JY; Thu, 10 Feb 2022 16:55:04 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nIBmh-0003kk-H3; Thu, 10 Feb 2022 16:55:03 +0100
Date: Thu, 10 Feb 2022 16:55:03 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Frank Wunderlich <frank-w@public-files.de>
Cc: Frank Wunderlich <linux@fw-web.de>, barebox@lists.infradead.org
Message-ID: <20220210155503.GC18637@pengutronix.de>
References: <20220123165149.158515-1-linux@fw-web.de>
 <20220124085513.GX23490@pengutronix.de>
 <trinity-428345f2-04d4-4905-9cf6-42ed3b3f5d4c-1644506542395@3c-app-gmx-bs17>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <trinity-428345f2-04d4-4905-9cf6-42ed3b3f5d4c-1644506542395@3c-app-gmx-bs17>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 16:48:42 up 62 days, 34 min, 85 users,  load average: 0.18, 0.14,
 0.13
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220210_075507_925364_B19190CC 
X-CRM114-Status: GOOD (  34.17  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: Re: [PATCH v1] ARM: Rockchip: Add rk3568 BananaPi R2 Pro board
 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Feb 10, 2022 at 04:22:22PM +0100, Frank Wunderlich wrote:
> 
> > Gesendet: Montag, 24. Januar 2022 um 09:55 Uhr
> > Von: "Sascha Hauer" <s.hauer@pengutronix.de>
> 
> > I saw this device tree looks different from the one you sent for kernel
> > inclusion. This is not a problem now, but once the kernel dts is
> > upstream it will show up in dts/ in the barebox tree. We then usually
> > include the upstream dts from the barebox board dts, so that only the
> > barebox specific additions are in the barebox dts. Given that it would
> > be nice if you could minimize the differences now already, so that later
> > inclusion of the upstream dts becomes easier.
> 
> Hi,
> 
> after dts got merged to linux i used it to find differences and minimized them.
> 
> have not added io-domain as i don't know if they change in future and they are not needed in barebox.
> 
> needed to add tsadc+pinctrl and spi3 to rk3568*.dtsi as they are referenced in my linux board dts
> 
> can you look if the dts is now ok for upstreaming?
> 
> https://github.com/frank-w/barebox-r2pro/blob/r2pro/arch/arm/dts/rk3568-bpi-r2-pro.dts

Here's the diff for the two files. Most stuff looks ok, but some there
are a few things:

> --- rk3568-bpi-r2-pro.dts	2022-02-10 16:44:02.512408386 +0100
> +++ bb.dts	2022-02-10 16:44:41.880348199 +0100
> @@ -15,13 +15,29 @@
>  	compatible = "rockchip,rk3568-bpi-r2pro", "rockchip,rk3568";
>  
>  	aliases {
> -		ethernet0 = &gmac0;
> -		mmc0 = &sdmmc0;
> -		mmc1 = &sdhci;
> +		emmc = &sdhci;
> +		sd = &sdmmc0;
>  	};
>  
> -	chosen: chosen {
> +	chosen {
>  		stdout-path = "serial2:1500000n8";
> +
> +		environment-sd {
> +			compatible = "barebox,environment";
> +			device-path = &environment_sd;
> +			status = "disabled";
> +		};
> +
> +		environment-emmc {
> +			compatible = "barebox,environment";
> +			device-path = &environment_emmc;
> +			status = "disabled";
> +		};
> +	};
> +
> +	memory@a00000 {
> +		device_type = "memory";
> +		reg = <0x0 0x00a00000 0x0 0x7f600000>;
>  	};
>  
>  	leds {
> @@ -72,11 +88,42 @@
>  		regulator-max-microvolt = <5000000>;
>  		vin-supply = <&dc_12v>;
>  	};
> +
> +	vcc3v3_lcd0_n: vcc3v3-lcd0-n {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc3v3_lcd0_n";
> +		regulator-boot-on;
> +
> +		regulator-state-mem {
> +			regulator-off-in-suspend;
> +		};
> +	};
> +
> +	vcc3v3_lcd1_n: vcc3v3-lcd1-n {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc3v3_lcd1_n";
> +		regulator-boot-on;
> +
> +		regulator-state-mem {
> +			regulator-off-in-suspend;
> +		};
> +	};
> +
> +	vcc5v0_host: vcc5v0-host-regulator {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc5v0_host";
> +		enable-active-high;
> +		gpio = <&gpio0 RK_PA5 GPIO_ACTIVE_HIGH>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&vcc5v0_host_en>;
> +		regulator-always-on;
> +	};
>  };
>  
>  &gmac0 {
>  	assigned-clocks = <&cru SCLK_GMAC0_RX_TX>, <&cru SCLK_GMAC0>;
>  	assigned-clock-parents = <&cru SCLK_GMAC0_RGMII_SPEED>, <&cru CLK_MAC0_2TOP>;
> +	assigned-clock-rates = <0>, <125000000>;
>  	clock_in_out = "input";
>  	phy-handle = <&rgmii_phy0>;
>  	phy-mode = "rgmii";
> @@ -86,10 +133,6 @@
>  		     &gmac0_rx_bus2
>  		     &gmac0_rgmii_clk
>  		     &gmac0_rgmii_bus>;
> -	snps,reset-gpio = <&gpio3 RK_PB7 GPIO_ACTIVE_LOW>;
> -	snps,reset-active-low;
> -	/* Reset time is 20ms, 100ms for rtl8211f */
> -	snps,reset-delays-us = <0 20000 100000>;

Why is this removed?

>  	tx_delay = <0x3c>;
>  	rx_delay = <0x2f>;
>  	status = "okay";
> @@ -106,6 +149,11 @@
>  		#clock-cells = <1>;
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&pmic_int>;
> +
> +		clock-output-names = "rk808-clkout1", "rk808-clkout2";
> +		/* 1: rst regs (default in codes), 0: rst the pmic */
> +		pmic-reset-func = <0>;
> +
>  		rockchip,system-power-controller;
>  		vcc1-supply = <&vcc3v3_sys>;
>  		vcc2-supply = <&vcc3v3_sys>;
> @@ -118,6 +166,10 @@
>  		vcc9-supply = <&vcc3v3_sys>;
>  		wakeup-source;
>  
> +		pwrkey {
> +			status = "okay";
> +		};

This is unused in barebox, right? If so, please drop.

> +
>  		regulators {
>  			vdd_logic: DCDC_REG1 {
>  				regulator-name = "vdd_logic";
> @@ -337,19 +389,28 @@
>  			rockchip,pins =
>  				<0 RK_PA3 RK_FUNC_GPIO &pcfg_pull_up>;
>  		};
> +
> +		soc_slppin_gpio: soc_slppin_gpio {
> +			rockchip,pins =
> +				<0 RK_PA2 RK_FUNC_GPIO &pcfg_output_low>;
> +		};
> +
> +		soc_slppin_slp: soc_slppin_slp {
> +			rockchip,pins =
> +				<0 RK_PA2 1 &pcfg_pull_none>;
> +		};
> +
> +		soc_slppin_rst: soc_slppin_rst {
> +			rockchip,pins =
> +				<0 RK_PA2 2 &pcfg_pull_none>;
> +		};

These are unused.

>  	};
> -};
>  
> -&pmu_io_domains {
> -	pmuio1-supply = <&vcc3v3_pmu>;
> -	pmuio2-supply = <&vcc3v3_pmu>;
> -	vccio1-supply = <&vccio_acodec>;
> -	vccio3-supply = <&vccio_sd>;
> -	vccio4-supply = <&vcc_1v8>;
> -	vccio5-supply = <&vcc_3v3>;
> -	vccio6-supply = <&vcc_3v3>;
> -	vccio7-supply = <&vcc_3v3>;
> -	status = "okay";
> +	usb {
> +		vcc5v0_host_en: vcc5v0-host-en {
> +			rockchip,pins = <0 RK_PA5 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
>  };
>  
>  &pwm8 {
> @@ -404,22 +465,46 @@
>  	bus-width = <8>;
>  	max-frequency = <200000000>;
>  	non-removable;
> +	no-sd;
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&emmc_bus8 &emmc_clk &emmc_cmd &emmc_datastrobe>;
>  	status = "okay";
> +
> +	partitions {
> +		compatible = "fixed-partitions";
> +		#address-cells = <2>;
> +		#size-cells = <2>;
> +
> +		environment_emmc: partition@408000 {
> +			label = "barebox-environment";
> +			reg = <0x0 0x408000 0x0 0x8000>;
> +		};
> +	};
>  };
>  
>  &sdmmc0 {
>  	bus-width = <4>;
>  	cap-sd-highspeed;
> -	cd-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_LOW>;

Could be added to barebox dts as well.

>  	disable-wp;
> +	max-frequency = <150000000>;
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&sdmmc0_bus4 &sdmmc0_clk &sdmmc0_cmd &sdmmc0_det>;
>  	sd-uhs-sdr104;
> +	supports-sd;

Please drop. This is used nowhere.

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


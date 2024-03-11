Delivery-date: Mon, 11 Mar 2024 15:23:50 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rjgZC-001AYF-1h
	for lore@lore.pengutronix.de;
	Mon, 11 Mar 2024 15:23:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rjgZB-0007dm-IT
	for lore@pengutronix.de; Mon, 11 Mar 2024 15:23:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=obqufD4orVxa94jveuIcuw5DVdzQRtMNpLfq8YViPK0=; b=dcWZaQeIOPdpRBctOj2y4gLmel
	/s3bbD33dTc0l9szFcEH31qSpdqK1XjaVTBDu02KuDtbIXPNRLLFP+WF+ydSQUOfu6GAdEMCd8Zgv
	XEUXpFOgQ9OGjZa/eBSKx9XTZZNLR7st5NPFoud48zIiZ+gH/ejPWyr9TjFD5jANW+c43b8WAVfTr
	vlJVhieqDeur9f6XC2pBJ9EhjO018e090VRkwYubwMo2p/g8pDm78LyBtX1vNKjtHKaSslNaU4mFO
	hJjZIa+JW0YNYe3UAjmiS9Z3L6URMaIJWIs/V2+VF/E555JM6DhVVwl5HU/QjEOuHFTchyyVU5QGe
	xMI+Yekw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjgYi-00000001mmZ-3sbi;
	Mon, 11 Mar 2024 14:23:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjgYf-00000001mm2-2TA2
	for barebox@lists.infradead.org;
	Mon, 11 Mar 2024 14:23:19 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPV6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.92)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1rjgYe-00079X-7h; Mon, 11 Mar 2024 15:23:16 +0100
Message-ID: <2fc64924-48e5-4265-950e-0527c034628b@pengutronix.de>
Date: Mon, 11 Mar 2024 15:23:15 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US, de-DE
To: Ahmad Fatoum <a.fatoum@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20240311-karo-imx8mp-som-board-upstreaming-v1-0-7c77f9ba02e5@pengutronix.de>
 <20240311-karo-imx8mp-som-board-upstreaming-v1-4-7c77f9ba02e5@pengutronix.de>
 <c77f0333-386e-4201-b7d1-4cf186b15666@pengutronix.de>
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
In-Reply-To: <c77f0333-386e-4201-b7d1-4cf186b15666@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240311_072317_876324_B6AE1889 
X-CRM114-Status: GOOD (  22.13  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 4/6] arm: dts: karo: import dts for karo-qsxp-ml81
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Ahmad,

On 11.03.24 11:02, Ahmad Fatoum wrote:
> Hello Stefan,
> 
> On 11.03.24 10:10, Stefan Kerkmann wrote:
>> From: Marc Kleine-Budde <mkl@pengutronix.de>
>>
>> This imports the device tree for the Ka-Ro QSXP, which is a i.MX8M Plus
>> solder down system on module. The sources have been adapted from the
>> offical Ka-Ro github[1], commit a49b38ec97854c0cd9cd83a9f4ae3b56e99a58b6.
>>
>> [1]: https://github.com/karo-electronics/meta-karo-nxp.git
> 
> To make it easier to sync with Linux, once the device tree goes upstream,
> could you separate the barebox-specific changes into a separate file?
> 

Ack.

>> +	model = "Ka-Ro electronics QSXP-ML81 (NXP i.MX8MP) module";
>> +	compatible = "karo,imx8mp-qsxp-ml81", "fsl,imx8mp";
> 
> Add a compatible for the SoM here: "karo,imx8mp-qsxp".
> 

See reply to patch 5/6, the full manufacturer part number is `QSXP-ML81`
therefore I don't think that dropping the `ml81` part is necessary here?

>> +&usb_dwc3_0 {
>> +	dr_mode = "peripheral";
> 
> I think this should rather be moved into the DTS, because it's a property
> of the baseboard, how he OTG is usd.
> 
> 

Ack.

>> +&usdhc3 { /* eMMC */
>> +	assigned-clocks = <&clk IMX8MP_CLK_USDHC3>;
>> +	assigned-clock-rates = <400000000>;
>> +	pinctrl-names = "default", "state_100mhz", "state_200mhz";
>> +	pinctrl-0 = <&pinctrl_usdhc3>;
>> +	pinctrl-1 = <&pinctrl_usdhc3_100mhz>;
>> +	pinctrl-2 = <&pinctrl_usdhc3_200mhz>;
>> +	bus-width = <8>;
>> +	no-sd;
>> +	no-sdio;
>> +	vmmc-supply = <&reg_vdd_3v3>;
>> +	vqmmc-supply = <&reg_nvcc_nand>;
>> +	voltage-ranges = <3300 3300>;
> 
> I never used voltage-ranges, but this might be wrong. You can't do
> 200MHz with 3.3v and vqmmc-supply is fixed already at 1.8v, so here
> seem to be no voltage shifters involved at all?
> 

You're right, AFAIK the eMMC JEDEC standard mandates 1.8V IOs for HS200
mode. For DDR mode the IO voltage can be 3.3V or 1.8V, according to the
datasheet of the used THGBMNG5D1LBAIL eMMC (if the product pictures are
anything to go by). So the correct voltage ranges property would be
`voltage-ranges = <1800 1800 3300 3300>`?

The line itself was copied verbatim from
https://github.com/karo-electronics/meta-karo-nxp/blob/mickledore/recipes-kernel/linux/linux-karo-6.1/mx8-nxp-bsp/dts/freescale/imx8mp-karo.dtsi#L263


> Either way, it doesn't matter to barebox.
So in the end we just delete it?

>> +	non-removable;
>> +	status = "okay";
>> +};
>> +
>> +&wdog1 {
>> +	pinctrl-names = "default";
>> +	pinctrl-0 = <&pinctrl_wdog>;
>> +	fsl,ext-reset-output;
>> +	status = "okay";
>> +};
>> +
>> +&iomuxc {
>> +	pinctrl_i2c1: i2c1grp {
>> +		fsl,pins = <
>> +			MX8MP_IOMUXC_I2C1_SCL__I2C1_SCL			0x400001c2
>> +			MX8MP_IOMUXC_I2C1_SDA__I2C1_SDA			0x400001c2
>> +		>;
>> +	};
>> +
>> +	pinctrl_i2c1_gpio: i2c1-gpiogrp {
>> +		fsl,pins = <
>> +			MX8MP_IOMUXC_I2C1_SCL__GPIO5_IO14		0x400001c2
>> +			MX8MP_IOMUXC_I2C1_SDA__GPIO5_IO15		0x400001c2
>> +		>;
>> +	};
>> +
>> +	pinctrl_i2c2: i2c2grp {
>> +		fsl,pins = <
>> +			MX8MP_IOMUXC_I2C2_SCL__I2C2_SCL			0x400001c2
>> +			MX8MP_IOMUXC_I2C2_SDA__I2C2_SDA			0x400001c2
>> +		>;
>> +	};
>> +
>> +	pinctrl_i2c2_gpio: i2c2-gpiogrp {
>> +		fsl,pins = <
>> +			MX8MP_IOMUXC_I2C2_SCL__GPIO5_IO16		0x400001c2
>> +			MX8MP_IOMUXC_I2C2_SDA__GPIO5_IO17		0x400001c2
>> +		>;
>> +	};
>> +
>> +	pinctrl_i2c3: i2c3grp {
>> +		fsl,pins = <
>> +			MX8MP_IOMUXC_I2C3_SCL__I2C3_SCL			0x400001c2
>> +			MX8MP_IOMUXC_I2C3_SDA__I2C3_SDA			0x400001c2
>> +		>;
>> +	};
>> +
>> +	pinctrl_i2c3_gpio: i2c3-gpiogrp {
>> +		fsl,pins = <
>> +			MX8MP_IOMUXC_I2C3_SCL__GPIO5_IO18		0x400001c2
>> +			MX8MP_IOMUXC_I2C3_SDA__GPIO5_IO19		0x400001c2
>> +		>;
>> +	};
>> +
>> +	pinctrl_i2c4: i2c4grp {
>> +		fsl,pins = <
>> +			MX8MP_IOMUXC_I2C4_SCL__I2C4_SCL			0x400001c2
>> +			MX8MP_IOMUXC_I2C4_SDA__I2C4_SDA			0x400001c2
>> +		>;
>> +	};
>> +
>> +	pinctrl_i2c4_gpio: i2c4-gpiogrp {
>> +		fsl,pins = <
>> +			MX8MP_IOMUXC_I2C4_SCL__GPIO5_IO20		0x400001c2
>> +			MX8MP_IOMUXC_I2C4_SDA__GPIO5_IO21		0x400001c2
>> +		>;
>> +	};
>> +
>> +	pinctrl_pmic: pmicgrp {
>> +		fsl,pins = <
>> +			MX8MP_IOMUXC_GPIO1_IO03__GPIO1_IO03		0x1c0
>> +		>;
>> +	};
>> +
>> +	pinctrl_uart1: uart1grp {
>> +		fsl,pins = <
>> +			MX8MP_IOMUXC_UART1_RXD__UART1_DCE_RX		0x140
>> +			MX8MP_IOMUXC_UART1_TXD__UART1_DCE_TX		0x140
>> +		>;
>> +	};
>> +
>> +	pinctrl_uart1_rtscts: uart1-rtsctsgrp {
>> +		fsl,pins = <
>> +			MX8MP_IOMUXC_UART3_TXD__UART1_DCE_RTS		0x140
>> +			MX8MP_IOMUXC_UART3_RXD__UART1_DCE_CTS		0x140
>> +		>;
>> +	};
>> +
>> +	pinctrl_uart2: uart2grp {
>> +		fsl,pins = <
>> +			MX8MP_IOMUXC_UART2_RXD__UART2_DCE_RX		0x140
>> +			MX8MP_IOMUXC_UART2_TXD__UART2_DCE_TX		0x140
>> +		>;
>> +	};
>> +
>> +	pinctrl_uart4: uart4grp {
>> +		fsl,pins = <
>> +			MX8MP_IOMUXC_UART4_RXD__UART4_DCE_RX		0x140
>> +			MX8MP_IOMUXC_UART4_TXD__UART4_DCE_TX		0x140
>> +		>;
>> +	};
>> +
>> +	pinctrl_usdhc2: usdhc2grp {
>> +		fsl,pins = <
>> +			MX8MP_IOMUXC_SD2_CLK__USDHC2_CLK		0x190
>> +			MX8MP_IOMUXC_SD2_CMD__USDHC2_CMD		0x1d0
>> +			MX8MP_IOMUXC_SD2_DATA0__USDHC2_DATA0		0x1d0
>> +			MX8MP_IOMUXC_SD2_DATA1__USDHC2_DATA1		0x1d0
>> +			MX8MP_IOMUXC_SD2_DATA2__USDHC2_DATA2		0x1d0
>> +			MX8MP_IOMUXC_SD2_DATA3__USDHC2_DATA3		0x1d0
>> +		>;
>> +	};
>> +
>> +	pinctrl_usdhc2_cd: usdhc2-cdgrp {
>> +		fsl,pins = <
>> +			MX8MP_IOMUXC_SD2_CD_B__GPIO2_IO12		0x1c0
>> +		>;
>> +	};
>> +
>> +	pinctrl_usdhc3: usdhc3grp {
>> +		fsl,pins = <
>> +			MX8MP_IOMUXC_NAND_WE_B__USDHC3_CLK		0x190
>> +			MX8MP_IOMUXC_NAND_WP_B__USDHC3_CMD		0x1d0
>> +			MX8MP_IOMUXC_NAND_DATA04__USDHC3_DATA0		0x1d0
>> +			MX8MP_IOMUXC_NAND_DATA05__USDHC3_DATA1		0x1d0
>> +			MX8MP_IOMUXC_NAND_DATA06__USDHC3_DATA2		0x1d0
>> +			MX8MP_IOMUXC_NAND_DATA07__USDHC3_DATA3		0x1d0
>> +			MX8MP_IOMUXC_NAND_RE_B__USDHC3_DATA4		0x1d0
>> +			MX8MP_IOMUXC_NAND_CE2_B__USDHC3_DATA5		0x1d0
>> +			MX8MP_IOMUXC_NAND_CE3_B__USDHC3_DATA6		0x1d0
>> +			MX8MP_IOMUXC_NAND_CLE__USDHC3_DATA7		0x1d0
>> +			MX8MP_IOMUXC_NAND_CE1_B__USDHC3_STROBE		0x190
>> +		>;
>> +	};
>> +
>> +	pinctrl_usdhc3_100mhz: usdhc3-100mhzgrp {
>> +		fsl,pins = <
>> +			MX8MP_IOMUXC_NAND_WE_B__USDHC3_CLK		0x194
>> +			MX8MP_IOMUXC_NAND_WP_B__USDHC3_CMD		0x1d4
>> +			MX8MP_IOMUXC_NAND_DATA04__USDHC3_DATA0		0x1d4
>> +			MX8MP_IOMUXC_NAND_DATA05__USDHC3_DATA1		0x1d4
>> +			MX8MP_IOMUXC_NAND_DATA06__USDHC3_DATA2		0x1d4
>> +			MX8MP_IOMUXC_NAND_DATA07__USDHC3_DATA3		0x1d4
>> +			MX8MP_IOMUXC_NAND_RE_B__USDHC3_DATA4		0x1d4
>> +			MX8MP_IOMUXC_NAND_CE2_B__USDHC3_DATA5		0x1d4
>> +			MX8MP_IOMUXC_NAND_CE3_B__USDHC3_DATA6		0x1d4
>> +			MX8MP_IOMUXC_NAND_CLE__USDHC3_DATA7		0x1d4
>> +			MX8MP_IOMUXC_NAND_CE1_B__USDHC3_STROBE		0x194
>> +		>;
>> +	};
>> +
>> +	pinctrl_usdhc3_200mhz: usdhc3-200mhzgrp {
>> +		fsl,pins = <
>> +			MX8MP_IOMUXC_NAND_WE_B__USDHC3_CLK		0x196
>> +			MX8MP_IOMUXC_NAND_WP_B__USDHC3_CMD		0x1d6
>> +			MX8MP_IOMUXC_NAND_DATA04__USDHC3_DATA0		0x1d6
>> +			MX8MP_IOMUXC_NAND_DATA05__USDHC3_DATA1		0x1d6
>> +			MX8MP_IOMUXC_NAND_DATA06__USDHC3_DATA2		0x1d6
>> +			MX8MP_IOMUXC_NAND_DATA07__USDHC3_DATA3		0x1d6
>> +			MX8MP_IOMUXC_NAND_RE_B__USDHC3_DATA4		0x1d6
>> +			MX8MP_IOMUXC_NAND_CE2_B__USDHC3_DATA5		0x1d6
>> +			MX8MP_IOMUXC_NAND_CE3_B__USDHC3_DATA6		0x1d6
>> +			MX8MP_IOMUXC_NAND_CLE__USDHC3_DATA7		0x1d6
>> +			MX8MP_IOMUXC_NAND_CE1_B__USDHC3_STROBE		0x196
>> +		>;
>> +	};
>> +
>> +	pinctrl_wdog: wdoggrp {
>> +		fsl,pins = <
>> +			MX8MP_IOMUXC_GPIO1_IO02__WDOG1_WDOG_B		0xc6
>> +		>;
>> +	};
>> +};
>>
> 

Cheers,
Stefan

-- 
Pengutronix e.K.                       | Stefan Kerkmann             |
Steuerwalder Str. 21                   | https://www.pengutronix.de/ |
31137 Hildesheim, Germany              | Phone: +49-5121-206917-128  |
Amtsgericht Hildesheim, HRA 2686       | Fax:   +49-5121-206917-9    |



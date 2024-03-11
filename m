Delivery-date: Mon, 11 Mar 2024 11:05:55 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rjcXb-000sdm-1b
	for lore@lore.pengutronix.de;
	Mon, 11 Mar 2024 11:05:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rjcXX-0004rq-Mh
	for lore@pengutronix.de; Mon, 11 Mar 2024 11:05:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CJ5Y7phjr3weeaCvPE5GQ6/q600MjVr05T2vHAvZ7MI=; b=RYtC6B4T121I3K/3lv08wqOD7m
	RmazQ1cYZsOsIZwXGAhurBsqGaX1l/Ps5CwPhGJD2oys/A4BANaxZbaFdDvnSnVp2LaVsoT9Uq9ln
	x+9UT4pGHMF4JLL/Nhj2EhmbNLvxXVeZtbX+51m4yxFzJKpX+iQuKpX9xrvKZKT9MgrjvMtNNGAaX
	ByXsW+HmbF8NqBrmAMqQGLpUsENut+HwPsd+OJUAztfvaupK9cTTlc53P8PzB6kDSLDxV9dcbW5er
	N2rCcn/+DzqlcYLLBTLItl1l9A0Ud+JRDdgXR5Y/ktev8dTXjjBkQDURdRbxR0UwSVUWq1veSrlWT
	h0PjA1hA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjcWx-00000000zz1-1IgA;
	Mon, 11 Mar 2024 10:05:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjcWt-00000000zxU-21NK
	for barebox@lists.infradead.org;
	Mon, 11 Mar 2024 10:05:13 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rjcWs-00041f-7a; Mon, 11 Mar 2024 11:05:10 +0100
Message-ID: <b7b5f896-0b67-42fb-85ac-e00fdb97387b@pengutronix.de>
Date: Mon, 11 Mar 2024 11:05:09 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Stefan Kerkmann <s.kerkmann@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20240311-karo-imx8mp-som-board-upstreaming-v1-0-7c77f9ba02e5@pengutronix.de>
 <20240311-karo-imx8mp-som-board-upstreaming-v1-5-7c77f9ba02e5@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240311-karo-imx8mp-som-board-upstreaming-v1-5-7c77f9ba02e5@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240311_030511_637500_9D842A42 
X-CRM114-Status: GOOD (  11.19  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,UPPERCASE_50_75 autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 5/6] arm: dts: karo: add karo imx8mp-karo-qsxp-qsbase4
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 11.03.24 10:10, Stefan Kerkmann wrote:
> +/dts-v1/;
> +
> +#include "imx8mp-karo-qsxp-ml81.dts"
> +
> +&{/} {

While not wrong, this is unnecessary. We know that there is a / already.

> +	model = "Ka-Ro electronics QSXP-ML81-QSBASE4 (NXP i.MX8MP) Board";
> +	compatible = "karo,imx8mp-qsxp-ml81-qsbase4", "karo,imx8mp-qsxp-ml81", "fsl,imx8mp";

Ok, this confuses me. I thought QSXP is the SoM. What's ML81?


> +&usdhc2 {
> +	status = "disabled";
> +};

Nitpick: Should be disabled in SoM, as it requires outside hardware to be functional.

> +
> +&iomuxc {
> +	pinctrl_eqos: eqosgrp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_SAI2_RXC__GPIO4_IO22 0x140					/* PHY reset */
> +			MX8MP_IOMUXC_ENET_MDC__ENET_QOS_MDC 0x142
> +			MX8MP_IOMUXC_ENET_MDIO__ENET_QOS_MDIO 0x142
> +			MX8MP_IOMUXC_ENET_TXC__CCM_ENET_QOS_CLOCK_GENERATE_TX_CLK 0x40000016
> +			MX8MP_IOMUXC_ENET_TD0__ENET_QOS_RGMII_TD0 0x016
> +			MX8MP_IOMUXC_ENET_TD1__ENET_QOS_RGMII_TD1 0x016
> +			MX8MP_IOMUXC_ENET_TD2__ENET_QOS_RGMII_TD2 0x016
> +			MX8MP_IOMUXC_ENET_TD3__ENET_QOS_RGMII_TD3 0x016
> +			MX8MP_IOMUXC_ENET_TX_CTL__ENET_QOS_RGMII_TX_CTL 0x016
> +			MX8MP_IOMUXC_ENET_RD0__ENET_QOS_RGMII_RD0 0x110				/* MODE0 */
> +			MX8MP_IOMUXC_ENET_RD1__ENET_QOS_RGMII_RD1 0x150				/* MODE1 */
> +			MX8MP_IOMUXC_ENET_RD2__ENET_QOS_RGMII_RD2 0x150				/* MODE2 */
> +			MX8MP_IOMUXC_ENET_RD3__ENET_QOS_RGMII_RD3 0x150				/* MODE3 */
> +			MX8MP_IOMUXC_ENET_RXC__CCM_ENET_QOS_CLOCK_GENERATE_RX_CLK 0x156		/* PHYAD2 */
> +			MX8MP_IOMUXC_ENET_RX_CTL__ENET_QOS_RGMII_RX_CTL 0x000			/* CLK125_EN */
> +			MX8MP_IOMUXC_GPIO1_IO00__CCM_ENET_PHY_REF_CLK_ROOT 0x110		/* LED_MODE */
> +		>;
> +	};
> +
> +	pinctrl_eqos_sleep: eqos-sleep-grp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_SAI2_RXC__GPIO4_IO22 0x120
> +			MX8MP_IOMUXC_ENET_MDC__GPIO1_IO16 0x120
> +			MX8MP_IOMUXC_ENET_MDIO__GPIO1_IO17 0x120
> +			MX8MP_IOMUXC_ENET_TXC__GPIO1_IO23 0x120
> +			MX8MP_IOMUXC_ENET_TD0__GPIO1_IO21 0x120
> +			MX8MP_IOMUXC_ENET_TD1__GPIO1_IO20 0x120
> +			MX8MP_IOMUXC_ENET_TD2__GPIO1_IO19 0x120
> +			MX8MP_IOMUXC_ENET_TD3__GPIO1_IO18 0x120
> +			MX8MP_IOMUXC_ENET_TX_CTL__GPIO1_IO22 0x120
> +			MX8MP_IOMUXC_ENET_RD0__GPIO1_IO26 0x120
> +			MX8MP_IOMUXC_ENET_RD1__GPIO1_IO27 0x120
> +			MX8MP_IOMUXC_ENET_RD2__GPIO1_IO28 0x120
> +			MX8MP_IOMUXC_ENET_RD3__GPIO1_IO29 0x120
> +			MX8MP_IOMUXC_ENET_RXC__GPIO1_IO25 0x120
> +			MX8MP_IOMUXC_ENET_RX_CTL__GPIO1_IO24 0x120
> +			MX8MP_IOMUXC_GPIO1_IO00__GPIO1_IO00 0x120
> +		>;
> +	};
> +};
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |




Delivery-date: Wed, 25 Jan 2023 09:07:32 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKaof-001Hgz-Ig
	for lore@lore.pengutronix.de; Wed, 25 Jan 2023 09:07:32 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKaod-0003V0-0T
	for lore@pengutronix.de; Wed, 25 Jan 2023 09:07:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=R125j9J+NUZaK/k51I0W0knmUCRkw45nUxqeshOVIBc=; b=JYowClv85yhy+ChfZCE1atLwWA
	osortTvnPucmBwFcNc047w236bk2U3nKt72/611Zv76E85pke2zM665MNwelewrJwATQVJVNDMEy/
	wJJopbm92qkqgLOH+XB+fupfR5mMyEoDBhyistR3TXI5msEZIWMR5rg8GCQYISzA8g7WMylA+g8la
	21PM/qtMt/2gZL409qBsRPBi2PUPDILmED5AIDdeK3NVYEafykQOFmO2TppOPhcd5vAlNIo26XESY
	S/xUs27gONPjwnuMsyGZ+wHmX8CHC67G+ERASnGKXzpdHZFL7uBu8pmp1pbVgux7LZsuKJR3Iuz6h
	XBzG2i1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKanT-006K15-8z; Wed, 25 Jan 2023 08:06:19 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKanO-006K0U-1d
	for barebox@lists.infradead.org; Wed, 25 Jan 2023 08:06:15 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pKanL-0003Hh-00; Wed, 25 Jan 2023 09:06:11 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pKan9-0001yu-0l; Wed, 25 Jan 2023 09:05:59 +0100
Date: Wed, 25 Jan 2023 09:05:58 +0100
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org, johannes.schneider@leica-geosystems.com
Message-ID: <20230125080558.GX24755@pengutronix.de>
References: <20230119155602.3144835-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230119155602.3144835-1-m.felsch@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230125_000614_110150_6904EDA8 
X-CRM114-Status: GOOD (  24.39  )
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
Subject: Re: [PATCH v3 1/2] ARM: i.MX8MM: split barebox dts into dtsi file
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Jan 19, 2023 at 04:56:01PM +0100, Marco Felsch wrote:
> Move the dts file into a dtsi file. This is in preparation for the
> imx8mm-evkb support which will reuse the config. No functional change.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
> v3:
> - new in this series
> 
>  arch/arm/dts/imx8mm-evk.dts  | 54 +--------------------------------
>  arch/arm/dts/imx8mm-evk.dtsi | 58 ++++++++++++++++++++++++++++++++++++
>  2 files changed, 59 insertions(+), 53 deletions(-)
>  create mode 100644 arch/arm/dts/imx8mm-evk.dtsi

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/dts/imx8mm-evk.dts b/arch/arm/dts/imx8mm-evk.dts
> index 3ced5a934c..abe0a2e450 100644
> --- a/arch/arm/dts/imx8mm-evk.dts
> +++ b/arch/arm/dts/imx8mm-evk.dts
> @@ -8,56 +8,4 @@
>  
>  #include <arm64/freescale/imx8mm-evk.dts>
>  #include "imx8mm.dtsi"
> -
> -/ {
> -	chosen {
> -		environment-sd {
> -			compatible = "barebox,environment";
> -			device-path = &env_sd2;
> -			status = "disabled";
> -		};
> -		environment-emmc {
> -			compatible = "barebox,environment";
> -			device-path = &env_sd3;
> -			status = "disabled";
> -		};
> -	};
> -};
> -
> -&reg_usdhc2_vmmc {
> -	off-on-delay-us = <20000>;
> -};
> -
> -&usdhc2 {
> -	#address-cells = <1>;
> -	#size-cells = <1>;
> -
> -	partition@0 {
> -		label = "barebox";
> -		reg = <0x0 0xe0000>;
> -	};
> -
> -	env_sd2: partition@e0000 {
> -		label = "barebox-environment";
> -		reg = <0xe0000 0x20000>;
> -	};
> -};
> -
> -&usdhc3 {
> -	#address-cells = <1>;
> -	#size-cells = <1>;
> -
> -	partition@0 {
> -		label = "barebox";
> -		reg = <0x0 0xe0000>;
> -	};
> -
> -	env_sd3: partition@e0000 {
> -		label = "barebox-environment";
> -		reg = <0xe0000 0x20000>;
> -	};
> -};
> -
> -&ocotp {
> -	barebox,provide-mac-address = <&fec1 0x640>;
> -};
> +#include "imx8mm-evk.dtsi"
> diff --git a/arch/arm/dts/imx8mm-evk.dtsi b/arch/arm/dts/imx8mm-evk.dtsi
> new file mode 100644
> index 0000000000..4d64dcad1c
> --- /dev/null
> +++ b/arch/arm/dts/imx8mm-evk.dtsi
> @@ -0,0 +1,58 @@
> +// SPDX-License-Identifier: (GPL-2.0 OR MIT)
> +/*
> + * Copyright 2017 NXP
> + * Copyright (C) 2017 Pengutronix, Lucas Stach <kernel@pengutronix.de>
> + */
> +
> +/ {
> +	chosen {
> +		environment-sd {
> +			compatible = "barebox,environment";
> +			device-path = &env_sd2;
> +			status = "disabled";
> +		};
> +		environment-emmc {
> +			compatible = "barebox,environment";
> +			device-path = &env_sd3;
> +			status = "disabled";
> +		};
> +	};
> +};
> +
> +&reg_usdhc2_vmmc {
> +	off-on-delay-us = <20000>;
> +};
> +
> +&usdhc2 {
> +	#address-cells = <1>;
> +	#size-cells = <1>;
> +
> +	partition@0 {
> +		label = "barebox";
> +		reg = <0x0 0xe0000>;
> +	};
> +
> +	env_sd2: partition@e0000 {
> +		label = "barebox-environment";
> +		reg = <0xe0000 0x20000>;
> +	};
> +};
> +
> +&usdhc3 {
> +	#address-cells = <1>;
> +	#size-cells = <1>;
> +
> +	partition@0 {
> +		label = "barebox";
> +		reg = <0x0 0xe0000>;
> +	};
> +
> +	env_sd3: partition@e0000 {
> +		label = "barebox-environment";
> +		reg = <0xe0000 0x20000>;
> +	};
> +};
> +
> +&ocotp {
> +	barebox,provide-mac-address = <&fec1 0x640>;
> +};
> -- 
> 2.30.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



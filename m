Delivery-date: Mon, 21 Oct 2024 09:41:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t2n34-006zAn-2U
	for lore@lore.pengutronix.de;
	Mon, 21 Oct 2024 09:41:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t2n34-0008R4-7X
	for lore@pengutronix.de; Mon, 21 Oct 2024 09:41:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=loF7WvBXvZK+HnkOOxXJAVC0uqHZpD9hoPQU5ec39y4=; b=CSvTIxpJbUl+kPSivI7kwhPvq0
	nAXJ+CySAnWyV2YbV8fQTkwcyaBDtkvyXaOCARj8Qqngvp9+i2FUxlEzXMikMbZg0BYiWghsmfmDB
	3j5qiinz8sIqJSErIkD+8Y9ipZqR2/+CnZj6nS/Ld5bV1L7JdIy+cibUeiuEwYSqVwplgHbY0YMUe
	iyWQwm7vQ+jmEdGaydvxf99Hz4vvEao4ljroZIEwGT63knrA4PJHMNPIRrx4WHVw9geKd5JFLvlTD
	tIX1l6yv93ugJD6K1hBfA0VeqQmxQCS03vdIlwrzGe/qYCcdBD3OznEj8x5prMFnbIlmS7ofBujq8
	2mHXITew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t2n2Y-00000006PkW-20GK;
	Mon, 21 Oct 2024 07:41:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t2mus-00000006NyN-18IR
	for barebox@lists.infradead.org;
	Mon, 21 Oct 2024 07:33:27 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPV6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t2mup-0007KM-HI; Mon, 21 Oct 2024 09:33:23 +0200
Message-ID: <3435d9d4-2a71-48b6-879a-1dbf043ff6d7@pengutronix.de>
Date: Mon, 21 Oct 2024 09:33:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 "open list:BAREBOX" <barebox@lists.infradead.org>
References: <20241021-arm-layerscape-tfa-v1-0-0980697b6f66@pengutronix.de>
 <20241021-arm-layerscape-tfa-v1-9-0980697b6f66@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20241021-arm-layerscape-tfa-v1-9-0980697b6f66@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241021_003326_344098_F286697B 
X-CRM114-Status: GOOD (  17.41  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 9/9] ARM: Layerscape: LS1046a: add PSCI node
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

On 21.10.24 09:21, Sascha Hauer wrote:
> Unlike other SoCs the LS1046a upstream dtsi files do not have a PSCI
> node. Add one for barebox and Linux to find the PSCI support.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

I am wondering how powering CPUs on and off worked before?
I see no enable-method = "spin-table" in the kernel DT for the SoC.

Anyhow, barebox should probably fixup enable-method = "psci" into each
CPU in /cpus in the kernel DT.

Cheers,
Ahmad

> ---
>  arch/arm/dts/fsl-ls1046a.dtsi | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/arch/arm/dts/fsl-ls1046a.dtsi b/arch/arm/dts/fsl-ls1046a.dtsi
> index a661cb0c89..2dc24ba8c7 100644
> --- a/arch/arm/dts/fsl-ls1046a.dtsi
> +++ b/arch/arm/dts/fsl-ls1046a.dtsi
> @@ -4,4 +4,9 @@ / {
>  	aliases {
>  		mmc0 = &esdhc;
>  	};
> +
> +	psci {
> +		compatible = "arm,psci-1.0";
> +		method = "smc";
> +	};
>  };
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



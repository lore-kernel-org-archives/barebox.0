Delivery-date: Wed, 06 Sep 2023 16:11:31 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qdtFk-0062tY-Sf
	for lore@lore.pengutronix.de; Wed, 06 Sep 2023 16:11:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qdtFi-00080q-Sg
	for lore@pengutronix.de; Wed, 06 Sep 2023 16:11:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=F+cKDahLXkKOxFSvqaMNpcvz6OKllymcclfLFRlx+yw=; b=hMTeMz2m4sR8LGlpR/YjP9vS2J
	Fz6X9o82qI7ZXWi+IZBq6NUysVMUqPw65Vw3o+Uxr6kSZ5oioX1t1w4Z2fnZkdDyozOIjYQY1Lr3C
	e03fqy3izvRYqv/DfpxRyPLenKXTpGir3w7lcHCWX8bThDQnAsxKscoeh6+UtF/vCRUQEqFaXSjQQ
	KxoJzVv5adtpBuzispZcCgA0T5lKMrhUt9qddU1nnCIRfq3qunUCXhpOce6dMrUaI1uylfal7d98K
	OhgVGXsnZQcV9Pj6TZfewRl2DEh8ZdZf891ThoDUm1WaO/2EXDKd7nzfNOVa5QbgRa+IwNZyxbkcP
	nDKNfsPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qdtEa-00ABaI-1r;
	Wed, 06 Sep 2023 14:10:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qdtEW-00ABZF-1z
	for barebox@lists.infradead.org;
	Wed, 06 Sep 2023 14:10:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qdtEV-0007d4-Eq; Wed, 06 Sep 2023 16:10:15 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qdtEV-004Rkw-2X; Wed, 06 Sep 2023 16:10:15 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qdtEU-002GEg-Cy; Wed, 06 Sep 2023 16:10:14 +0200
Date: Wed, 6 Sep 2023 16:10:14 +0200
To: Bastian Krause <bst@pengutronix.de>
Cc: barebox@lists.infradead.org, afa@pengutronix.de
Message-ID: <20230906141014.GD492117@pengutronix.de>
References: <20230906131113.1593228-1-bst@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230906131113.1593228-1-bst@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230906_071016_652931_EF72B8C0 
X-CRM114-Status: GOOD (  18.27  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: dts: i.MX8: add pwm aliases
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Sep 06, 2023 at 03:11:13PM +0200, Bastian Krause wrote:
> Signed-off-by: Bastian Krause <bst@pengutronix.de>
> ---
>  arch/arm/dts/imx8mm.dtsi | 4 ++++
>  arch/arm/dts/imx8mn.dtsi | 9 +++++++++
>  arch/arm/dts/imx8mp.dtsi | 7 +++++++
>  3 files changed, 20 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/dts/imx8mm.dtsi b/arch/arm/dts/imx8mm.dtsi
> index 22ae01a20a2..982174375ec 100644
> --- a/arch/arm/dts/imx8mm.dtsi
> +++ b/arch/arm/dts/imx8mm.dtsi
> @@ -5,6 +5,10 @@
>  / {
>  	aliases {
>  		gpr.reboot_mode = &reboot_mode_gpr;
> +		pwm0 = &pwm1;
> +		pwm1 = &pwm2;
> +		pwm2 = &pwm3;
> +		pwm3 = &pwm4;
>  	};
>  };
>  
> diff --git a/arch/arm/dts/imx8mn.dtsi b/arch/arm/dts/imx8mn.dtsi
> index 17e8f78bf2d..098bf0a3671 100644
> --- a/arch/arm/dts/imx8mn.dtsi
> +++ b/arch/arm/dts/imx8mn.dtsi
> @@ -2,6 +2,15 @@
>  
>  #include <dt-bindings/features/imx8m.h>
>  
> +/ {
> +	aliases {
> +		pwm0 = &pwm1;
> +		pwm1 = &pwm2;
> +		pwm2 = &pwm3;
> +		pwm3 = &pwm4;
> +	};
> +};
> +
>  feat: &ocotp {
>  	#feature-cells = <1>;
>  	barebox,feature-controller;
> diff --git a/arch/arm/dts/imx8mp.dtsi b/arch/arm/dts/imx8mp.dtsi
> index 0059c7b87b6..04767ad382c 100644
> --- a/arch/arm/dts/imx8mp.dtsi
> +++ b/arch/arm/dts/imx8mp.dtsi
> @@ -8,6 +8,13 @@ remoteproc_cm7: remoteproc-cm7 {
>  		clocks = <&clk IMX8MP_CLK_M7_CORE>;
>  		syscon = <&src>;
>  	};
> +
> +	aliases {
> +		pwm0 = &pwm1;
> +		pwm1 = &pwm2;
> +		pwm2 = &pwm3;
> +		pwm3 = &pwm4;
> +	};
>  };
>  
>  /* Temporary workaround until snps,gfladj-refclk-lpm-sel-quirk is supported */
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



Delivery-date: Wed, 23 Jun 2021 10:25:40 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvyCa-0008Ny-DL
	for lore@lore.pengutronix.de; Wed, 23 Jun 2021 10:25:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvyCZ-0004ZE-HD
	for lore@pengutronix.de; Wed, 23 Jun 2021 10:25:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xpbBGLju3MSjcnVTVTqxuiF28ovtjRAgCamFJvQS7vw=; b=mWe70kfJ1avjIZFo8FGd6+ThI1
	cQ0uIP9bNcNBQcdBi+Jhk5e/yQgaQlRmRlo3UKRGw1ZLmrhyPVZ3p8uvuTEqoTU4iGs/AnQpjGmnX
	qNajji4mUNS9zsrzOKSRFJgMquwX70WM2bXvebhLfZZSoQs1Gi8yY0VluuIYnF5SOX01Je5jp3I0+
	XSae6/NkzwKhdGng2qkUnBmktNdvV5Ii5NO7JonI/H62h306z0ueL7Nr6Tb1FvbIbSdy53XHCFIiF
	FeW47UpFvB6t8AWLdQ6UVCxV80Tf+ydigwe2BGdWm0x/uXPtjw1aucBG3bwejWOnda1QrPyDez5rw
	MgH263Qw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvyBP-009vUq-Fa; Wed, 23 Jun 2021 08:24:27 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvyBK-009vUQ-T1
 for barebox@lists.infradead.org; Wed, 23 Jun 2021 08:24:24 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[127.0.0.1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lvyBJ-0004J6-Mp; Wed, 23 Jun 2021 10:24:21 +0200
To: Michael Riesch <michael.riesch@wolfvision.net>, barebox@lists.infradead.org
References: <20210623075201.5328-1-michael.riesch@wolfvision.net>
 <20210623075201.5328-3-michael.riesch@wolfvision.net>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <d65e99bc-b934-8dd2-0040-e9843a206099@pengutronix.de>
Date: Wed, 23 Jun 2021 10:24:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.2
MIME-Version: 1.0
In-Reply-To: <20210623075201.5328-3-michael.riesch@wolfvision.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210623_012422_987775_80E3E205 
X-CRM114-Status: GOOD (  19.50  )
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
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 2/2] arm: rk3568-evb1: add support for Rockchip SARADC
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)



On 23.06.21 09:52, Michael Riesch wrote:
> Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
> ---
> v2:
> - add initial version
> 
>  arch/arm/dts/rk3568-evb1-v10.dts |  5 +++++
>  arch/arm/dts/rk3568.dtsi         | 12 ++++++++++++
>  2 files changed, 17 insertions(+)
> 
> diff --git a/arch/arm/dts/rk3568-evb1-v10.dts b/arch/arm/dts/rk3568-evb1-v10.dts
> index ca6f9c280..b8b4c85bf 100644
> --- a/arch/arm/dts/rk3568-evb1-v10.dts
> +++ b/arch/arm/dts/rk3568-evb1-v10.dts
> @@ -485,3 +485,8 @@
>  &uart2 {
>  	status = "okay";
>  };
> +
> +&saradc {
> +	vref-supply = <&vcca_1v8>;
> +	status = "okay";
> +};
> diff --git a/arch/arm/dts/rk3568.dtsi b/arch/arm/dts/rk3568.dtsi
> index 34d0b8a08..8a75a7e96 100644
> --- a/arch/arm/dts/rk3568.dtsi
> +++ b/arch/arm/dts/rk3568.dtsi
> @@ -817,6 +817,18 @@
>  		status = "disabled";
>  	};
> 
> +	saradc: saradc@fe720000 {
> +		compatible = "rockchip,rk3568-saradc";
> +		reg = <0x0 0xfe720000 0x0 0x100>;
> +		interrupts = <GIC_SPI 93 IRQ_TYPE_LEVEL_HIGH>;
> +		clocks = <&cru CLK_SARADC>, <&cru PCLK_SARADC>;
> +		clock-names = "saradc", "apb_pclk";
> +		resets = <&cru SRST_P_SARADC>;
> +		reset-names = "saradc-apb";

Keep in mind the driver you added does _not_ trigger this reset.

> +		#io-channel-cells = <1>;
> +		status = "disabled";
> +	};
> +
>  	pinctrl: pinctrl {
>  		compatible = "rockchip,rk3568-pinctrl";
>  		rockchip,grf = <&grf>;
> --
> 2.20.1
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


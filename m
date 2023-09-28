Delivery-date: Thu, 28 Sep 2023 22:15:29 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qlxQ2-00FTnV-9C
	for lore@lore.pengutronix.de; Thu, 28 Sep 2023 22:15:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qlxQ0-0006K8-IU
	for lore@pengutronix.de; Thu, 28 Sep 2023 22:15:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=agrRpsZNPgxas1cOd5D7lGxQPqn3+zgbZWHJQyigmVw=; b=pz1PbwD2uWQdmJ3JtoMT8fIW9X
	YpxfItD/NUw5wgrxKutSnQcbACWFjIvdt7GcWS/8GCK+Es1MU3d5DKMzW0l8o/8Cf7nG1O7BRkRbC
	OPw4DgVIMTpcZqFa7f7SVthkUBazCPUhEkJA9wYhW5FoxXsfMnOpPzZheOqsAuhc4qRHPnmEzhpyM
	v4xAuD9TIt63QmgDHfzCq5K4cG9N/4PujUI4wYCNqoksmcWvHGLGoQrWD12FpCeCdGIuoLq3BHlSg
	DRyVuH8gFLMswz5mvnsja1gRuE1F0GQisHzwcMFw0yxSEPkIft9ShsN5kCtvXQG2xx0cFdVlNcnUk
	6/4DIjCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qlxOU-006cm7-2p;
	Thu, 28 Sep 2023 20:13:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qlxOQ-006ckj-36
	for barebox@lists.infradead.org;
	Thu, 28 Sep 2023 20:13:53 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1qlxOK-0005j3-RH; Thu, 28 Sep 2023 22:13:44 +0200
Message-ID: <b2771224-215c-8fef-ae10-0abb25292e0e@pengutronix.de>
Date: Thu, 28 Sep 2023 22:13:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Oleksij Rempel <o.rempel@pengutronix.de>, barebox@lists.infradead.org
References: <20230928105837.2512555-1-o.rempel@pengutronix.de>
 <20230928105837.2512555-4-o.rempel@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230928105837.2512555-4-o.rempel@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230928_131351_016987_86B910D0 
X-CRM114-Status: GOOD (  17.34  )
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
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v1 4/7] arm: dts: imx8mp-skov: Simplify SD partition
 definition to 1 cell
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Oleksij,

On 28.09.23 12:58, Oleksij Rempel wrote:
> Update the partition definitions for SD card in imx8mp-skov to use
> single cell for address and size, streamlining the format.

Is your eMMC really smaller than 4G? If it's >= 4G, barebox will fix it up in
the kernel DT as 2/2 cells, so keeping it 2/2 in barebox removes some noise
in of_diff - + output.

Cheers,
Ahmad

> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  arch/arm/dts/imx8mp-skov.dts | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/arch/arm/dts/imx8mp-skov.dts b/arch/arm/dts/imx8mp-skov.dts
> index 1d4738dbd7..b94b9dd51d 100644
> --- a/arch/arm/dts/imx8mp-skov.dts
> +++ b/arch/arm/dts/imx8mp-skov.dts
> @@ -88,17 +88,17 @@ reg_usdhc2_vmmc: regulator-usdhc2 {
>  &usdhc2 {
>  	partitions {
>  		compatible = "fixed-partitions";
> -		#address-cells = <2>;
> -		#size-cells = <2>;
> +		#address-cells = <1>;
> +		#size-cells = <1>;
>  
>  		partition@0 {
>  			label = "barebox";
> -			reg = <0x0 0x0 0x0 0x100000>;
> +			reg = <0x0 0x100000>;
>  		};
>  
> -		env_sd: partition@e0000 {
> +		env_sd: partition@100000 {
>  			label = "barebox-environment";
> -			reg = <0x0 0x100000 0x0 0x100000>;
> +			reg = <0x100000 0x100000>;
>  		};
>  	};
>  };

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |




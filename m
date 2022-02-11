Delivery-date: Fri, 11 Feb 2022 11:53:40 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nITYa-00Ckww-4g
	for lore@lore.pengutronix.de; Fri, 11 Feb 2022 11:53:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nITYY-0001tI-9T
	for lore@pengutronix.de; Fri, 11 Feb 2022 11:53:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=GCwlIQs8AOKN5NLd6458pRUQkY9Apq1pKGMeC0aRlyc=; b=dsFXbHajG4eD3gE26VySOF3mz4
	k8A018od/tvrMkOjXeLfZ37V2UZOoP7C35Rq0l3HV3KS5iYzkwGkecBT/2VGJj/UHXo0UFZmOOLoi
	Xd0/VN8a4ngMUIf3zLDOHI3kaMxH5sjJGIGGFyI4qsoDVmmVHa8UpTiFa/fhikHg/I8k611G0bxS5
	YRMX0aY6vgRQALOAuQ5AjNzGwcKA3Ppppk6pWXbnycANFP5qzWwQFTMFhkyhZqP8vKoNW5eUJ1EBE
	VRGXEntQU3tsOM7kGZMPo9KT1y9Oqlo60bofifjuZFzQJRHPGFHGzgqjgZKTsiFGPlXq1buthn9lb
	7FGfMsSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nITX5-006haT-Nv; Fri, 11 Feb 2022 10:52:08 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nITP1-006eIV-7n
 for barebox@lists.infradead.org; Fri, 11 Feb 2022 10:43:49 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nITOz-0000Kw-Hx; Fri, 11 Feb 2022 11:43:45 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nITOy-0003T6-RA; Fri, 11 Feb 2022 11:43:44 +0100
Date: Fri, 11 Feb 2022 11:43:44 +0100
To: Frank Wunderlich <linux@fw-web.de>
Cc: barebox@lists.infradead.org, Frank Wunderlich <frank-w@public-files.de>
Message-ID: <20220211104344.GG18637@pengutronix.de>
References: <20220211091114.11220-1-linux@fw-web.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220211091114.11220-1-linux@fw-web.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 11:40:45 up 62 days, 19:26, 87 users,  load average: 0.22, 0.18, 0.18
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220211_024347_329970_35A53DAB 
X-CRM114-Status: GOOD (  23.48  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] ARM: Rockchip: rk3568: add tsadc and spi
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Frank,

On Fri, Feb 11, 2022 at 10:11:14AM +0100, Frank Wunderlich wrote:
> From: Frank Wunderlich <frank-w@public-files.de>
> 
> Add tsadc and spi node from linux.
> 
> Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
> ---
>  arch/arm/dts/rk3568-pinctrl.dtsi |  9 ++++++++
>  arch/arm/dts/rk3568.dtsi         | 35 ++++++++++++++++++++++++++++++++
>  2 files changed, 44 insertions(+)
> 
> diff --git a/arch/arm/dts/rk3568-pinctrl.dtsi b/arch/arm/dts/rk3568-pinctrl.dtsi
> index a588ca95ace2..8f90c66dd9e9 100644
> --- a/arch/arm/dts/rk3568-pinctrl.dtsi
> +++ b/arch/arm/dts/rk3568-pinctrl.dtsi
> @@ -3108,4 +3108,13 @@
>  				<4 RK_PA0 3 &pcfg_pull_none_drv_level_2>;
>  		};
>  	};
> +
> +	tsadc {
> +		/omit-if-no-ref/
> +		tsadc_pin: tsadc-pin {
> +			rockchip,pins =
> +				/* tsadc_pin */
> +				<0 RK_PA1 0 &pcfg_pull_none>;
> +		};
> +	};
>  };
> diff --git a/arch/arm/dts/rk3568.dtsi b/arch/arm/dts/rk3568.dtsi
> index 0f19d3f0c0c3..6afd95b01c0c 100644
> --- a/arch/arm/dts/rk3568.dtsi
> +++ b/arch/arm/dts/rk3568.dtsi
> @@ -772,6 +772,21 @@
>  		clock-names = "tclk", "pclk";
>  	};
>  
> +	spi3: spi@fe640000 {
> +		compatible = "rockchip,rk3568-spi", "rockchip,rk3066-spi";
> +		reg = <0x0 0xfe640000 0x0 0x1000>;
> +		interrupts = <GIC_SPI 106 IRQ_TYPE_LEVEL_HIGH>;
> +		clocks = <&cru CLK_SPI3>, <&cru PCLK_SPI3>;
> +		clock-names = "spiclk", "apb_pclk";
> +		dmas = <&dmac0 26>, <&dmac0 27>;
> +		dma-names = "tx", "rx";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&spi3m0_cs0 &spi3m0_cs1 &spi3m0_pins>;
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		status = "disabled";
> +	};

When you asked me if you should keep tsadc/spi3 in your board dts I
didn't understand that these are missing in rk3568.dtsi.
Adding these nodes when barebox doesn't use them has no gain for us. I
won't take this patch and removed references to spi3/tsadc from your
board patch while applying.

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


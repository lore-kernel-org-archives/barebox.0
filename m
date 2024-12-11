Delivery-date: Wed, 11 Dec 2024 07:53:02 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tLGaj-006gOh-2s
	for lore@lore.pengutronix.de;
	Wed, 11 Dec 2024 07:53:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tLGaj-0005fk-QX
	for lore@pengutronix.de; Wed, 11 Dec 2024 07:53:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=r/1+30wgDExaHbwdEyzVEKtdes9IEObXZwStfZxpYdA=; b=JMrQZhgOryb7Q9YatLcz3Ht/Se
	rxFLXCH4PB744Vt6VYYDsmaa+cAFCjGsZD/iPSX6RQlDUeV5NKhhKJPdsOfhAZkK0uHdRw2gYVSMV
	WTintgmYg13VpgWk18cVb8CxISN28wy4gdbL9+oviPQv87gRKLp+Spu/oFSqs9NfMpKiRkTg9GQL/
	7P2YEuosEj/O1iaHZSiuSRCG74/gZ3Lx4k7KGIIU/0wF6ShAk4QdCMubA2+YKgOBx713nA/2yYPVy
	fFEBE6qG6G7j+6lTgNZoTkNzJptBaLaFwgeFwCSJUAdyfqTMK2G8kh8KRBQ7VDjrOU8khuGYPzrom
	wmlCprEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLGaD-0000000Dyox-3OEw;
	Wed, 11 Dec 2024 06:52:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tLGZh-0000000Dylv-2vA3
	for barebox@lists.infradead.org;
	Wed, 11 Dec 2024 06:51:59 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tLGZf-0005XU-On; Wed, 11 Dec 2024 07:51:55 +0100
Message-ID: <21e1572a-2b18-45c8-b367-ef147c4a1dce@pengutronix.de>
Date: Wed, 11 Dec 2024 07:51:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Alexander Shiyan <eagle.alexander923@gmail.com>,
 barebox@lists.infradead.org
References: <20241211063248.4774-1-eagle.alexander923@gmail.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20241211063248.4774-1-eagle.alexander923@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241210_225157_737146_D27D9DD4 
X-CRM114-Status: GOOD (  21.56  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: dts: rk356x: Use RNG node from upstream DTSI
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 11.12.24 07:32, Alexander Shiyan wrote:
> Since the RNG node was added to the upstream DTSI, let's reuse it.
> Keep the compatibility string to support the barebox HWRNG driver.
> 
> Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
> ---
>  arch/arm/dts/rk356x.dtsi | 12 ++++--------
>  1 file changed, 4 insertions(+), 8 deletions(-)
> 
> diff --git a/arch/arm/dts/rk356x.dtsi b/arch/arm/dts/rk356x.dtsi
> index fbabf2a6a6..1a51b9f1b9 100644
> --- a/arch/arm/dts/rk356x.dtsi
> +++ b/arch/arm/dts/rk356x.dtsi
> @@ -44,14 +44,6 @@ cpu_id: id@a {
>  			reg = <0x0a 0x10>;
>  		};
>  	};
> -
> -	rng: rng@fe388000 {
> -		compatible = "rockchip,rk3568-rng", "rockchip,cryptov2-rng";
> -		reg = <0x0 0xfe388000 0x0 0x2000>;
> -		clocks = <&cru CLK_TRNG_NS>, <&cru HCLK_TRNG_NS>;
> -		clock-names = "trng_clk", "trng_hclk";
> -		resets = <&cru SRST_TRNG_NS>;
> -	};
>  };
>  
>  &pmugrf {
> @@ -62,3 +54,7 @@ reboot_mode_pmugrf: reboot-mode {
>  		mode-serial = <0xef08a53c>; /* rk-usb-loader */
>  	};
>  };
> +
> +&rng {
> +	compatible = "rockchip,rk3568-rng", "rockchip,cryptov2-rng";

Now that there is an upstream compatible binding, I think we should
just add "rockchip,rk3568-rng" compatible to the RNG driver
and drop our DT override completely.

Interestingly, upstream enables the node only for the rk3568 and not
the rk3566. The reasoning appears to be that the rk3566 has way lower
quality than expected and enabling it is unsafe[1].

I think we should follow suit in barebox, but it's appropriate for
the commit message to point out that this change disables the
HWRNG on the RK3566.

[1]: https://lore.kernel.org/all/302bdae2f4defeefe88ea4018a0be11f@manjaro.org/

Cheers,
Ahmad

> +};


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



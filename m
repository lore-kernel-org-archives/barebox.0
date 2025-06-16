Delivery-date: Mon, 16 Jun 2025 14:51:21 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uR9J3-007vMV-1U
	for lore@lore.pengutronix.de;
	Mon, 16 Jun 2025 14:51:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uR9J2-0005xC-Pg
	for lore@pengutronix.de; Mon, 16 Jun 2025 14:51:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0NZsd6+8WODi1NNIzqo6Cf8FC4Xo89EF8O89sPyVQGg=; b=Hj7pGDIhWeTKGhr/3mCBKXxil8
	/rKVwhwpvQfv4yV3dYZ428rxXiCfJXT6Afa/5JKzBai/VU6Ts93b2ZAymEC34n55lrymNdCdyhTYD
	ZDwAOr1zT1k8CFdya0KhKvjQRyQTYSQf7NDiCpbVvdwKDywrYzJQb43JvHW4U87PznBaRIsmttXEK
	IMt+VqTwZC14Qn04GVGaoDRzF3yfHPReV4cMd+enYprT6uDuhfUX87NaIUsmHqJJCF1w3+Cussemz
	u59+/Dfb2mHpQ8SljzZ+akirJ6mX6lG6TeKavVe6K08N4OagEOTlXaw0THyYP/GeZZcpIjEY7BtD8
	cpc0UVpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uR9IQ-00000004QfL-1wzX;
	Mon, 16 Jun 2025 12:50:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uR8DG-00000004ESA-2MZt
	for barebox@lists.infradead.org;
	Mon, 16 Jun 2025 11:41:20 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uR8DF-0003mR-9l; Mon, 16 Jun 2025 13:41:17 +0200
Message-ID: <7ee7b7ea-af1d-4026-865c-e7bb8b49feef@pengutronix.de>
Date: Mon, 16 Jun 2025 13:41:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
References: <20250605-arm-k3-am62l-v2-0-53257d4b2dd2@pengutronix.de>
 <20250605-arm-k3-am62l-v2-5-53257d4b2dd2@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250605-arm-k3-am62l-v2-5-53257d4b2dd2@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250616_044118_604709_2AA102C7 
X-CRM114-Status: GOOD (  20.38  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 05/33] ARM: dts: am62l: Fix assigned-clock-parents
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On 6/5/25 14:42, Sascha Hauer wrote:
> The AM62l device trees we imported to barebox have problems with the
> clock parents which is described in [1] and [2].
> 
> There is no way the Kernel or barebox SCMI clk drivers can work with the
> current way the clk parents are specified in the downstream TF-A. This
> problem is acknowledged by TI and will hopefully be fixed.
> 
> This patch fixes the clk parents the way that I hope TI will do it as
> well. Currently this only works with a patched downstream TF-A.

Sounds like worth mentioning that in the barebox K3 documentation?

> 
> [1] https://lore.kernel.org/all/aCcSG5ah12N0yOwi@pengutronix.de/
> [2] https://review.trustedfirmware.org/c/TF-A/trusted-firmware-a/+/34834/1/plat/ti/k3/common/drivers/scmi/scmi_clock.c#165
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/dts/k3-am62l-main.dtsi | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)
> 
> diff --git a/arch/arm/dts/k3-am62l-main.dtsi b/arch/arm/dts/k3-am62l-main.dtsi
> index f6fbaaede8c36ac0aab92bef7763202bb0ab30dc..d161df3215c35a2d3de67e8ca021b9a9a89edb80 100644
> --- a/arch/arm/dts/k3-am62l-main.dtsi
> +++ b/arch/arm/dts/k3-am62l-main.dtsi
> @@ -217,7 +217,7 @@ rti0: watchdog@e000000 {
>  		clocks = <&scmi_clk 273>;
>  		power-domains = <&scmi_pds 60>;
>  		assigned-clocks = <&scmi_clk 273>;
> -		assigned-clock-parents = <&scmi_clk 1>;
> +		assigned-clock-parents = <&scmi_clk 275>;
>  	};
>  
>  	rti1: watchdog@e010000 {
> @@ -226,7 +226,7 @@ rti1: watchdog@e010000 {
>  		clocks = <&scmi_clk 279>;
>  		power-domains = <&scmi_pds 61>;
>  		assigned-clocks = <&scmi_clk 279>;
> -		assigned-clock-parents = <&scmi_clk 1>;
> +		assigned-clock-parents = <&scmi_clk 281>;
>  	};
>  
>  	fss: bus@fc00000 {
> @@ -317,7 +317,7 @@ sdhci0: mmc@fa10000 {
>  		clocks = <&scmi_clk 122>, <&scmi_clk 123>;
>  		clock-names = "clk_ahb", "clk_xin";
>  		assigned-clocks = <&scmi_clk 123>;
> -		assigned-clock-parents = <&scmi_clk 0>;
> +		assigned-clock-parents = <&scmi_clk 124>;
>  		bus-width = <8>;
>  		ti,clkbuf-sel = <0x7>;
>  		ti,otap-del-sel-legacy = <0x0>;
> @@ -334,7 +334,7 @@ sdhci1: mmc@fa00000 {
>  		clocks = <&scmi_clk 106>, <&scmi_clk 107>;
>  		clock-names = "clk_ahb", "clk_xin";
>  		assigned-clocks = <&scmi_clk 107>;
> -		assigned-clock-parents = <&scmi_clk 0>;
> +		assigned-clock-parents = <&scmi_clk 108>;
>  		bus-width = <4>;
>  		ti,clkbuf-sel = <0x7>;
>  		ti,otap-del-sel-legacy = <0x0>;
> @@ -351,7 +351,7 @@ sdhci2: mmc@fa20000 {
>  		clocks = <&scmi_clk 114>, <&scmi_clk 115>;
>  		clock-names = "clk_ahb", "clk_xin";
>  		assigned-clocks = <&scmi_clk 115>;
> -		assigned-clock-parents = <&scmi_clk 0>;
> +		assigned-clock-parents = <&scmi_clk 116>;
>  		bus-width = <4>;
>  		ti,clkbuf-sel = <0x7>;
>  		ti,otap-del-sel-legacy = <0x0>;
> @@ -600,7 +600,7 @@ tscadc0: tscadc@28001000 {
>  		power-domains = <&scmi_pds 0>;
>  		clocks = <&scmi_clk 0>;
>  		assigned-clocks = <&scmi_clk 0>;
> -		assigned-clock-parents = <&scmi_clk 2>;
> +		assigned-clock-parents = <&scmi_clk 3>;
>  		assigned-clock-rates = <60000000>;
>  		clock-names = "fck";
>  		status = "disabled";
> @@ -618,7 +618,7 @@ dphy_tx0: phy@301c0000 {
>  		clock-names = "psm", "pll_ref";
>  		power-domains = <&scmi_pds 86>;
>  		assigned-clocks = <&scmi_clk 341>;
> -		assigned-clock-parents = <&scmi_clk 0>;
> +		assigned-clock-parents = <&scmi_clk 342>;
>  		assigned-clock-rates = <25000000>;
>  		#phy-cells = <0>;
>  		status = "disabled";
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |




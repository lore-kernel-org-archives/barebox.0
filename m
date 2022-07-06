Delivery-date: Wed, 06 Jul 2022 07:47:02 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o8xsI-007Kkr-Vi
	for lore@lore.pengutronix.de; Wed, 06 Jul 2022 07:47:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o8xsL-0000Os-6O
	for lore@pengutronix.de; Wed, 06 Jul 2022 07:47:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sLCtPA7EWBwzUIIP/bS6Yq9ZdKMV3mDQtHyv0sayQf0=; b=rWRzELeGpvVbO29ZSQkiOLcGWM
	jWU7hz16hDErcMydKJLHRLTOJOGZ72gvClV3O7+8Nt5pdTQiJCZTL1LNh84+efWIHtoi2Gk86y9WG
	FeUCFh68WFFY/IqJVP0cAAtK1QijyzQeRdRL83gYCHnSHgJgf8ypL90hYvpd9Cuz2X29Q9pVO1PTV
	czrCKKskGIc70LUaR2HtgF9wgmk7faVcRvIz16dd+P08rJgZX8DDjYQTAmsz2TYcr+kXSzKnXSG6K
	Q/8QV1aEcIi93+24UF9S6tySDjIY2BQQoWAzLkFo0YQpb/VFJbKT4rbaFrndP7l6d/AzH9h4IIzfl
	v8a9MeWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8xqT-006Hr3-3D; Wed, 06 Jul 2022 05:45:05 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8xqO-006Hlm-3m
	for barebox@lists.infradead.org; Wed, 06 Jul 2022 05:45:01 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1o8xqK-0008V7-D3; Wed, 06 Jul 2022 07:44:56 +0200
Message-ID: <3a5f9fec-30ff-cd06-7333-ea1e56236322@pengutronix.de>
Date: Wed, 6 Jul 2022 07:44:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: yegorslists@googlemail.com, barebox@lists.infradead.org
Cc: sha@pengutronix.de
References: <20220704114959.15635-1-yegorslists@googlemail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220704114959.15635-1-yegorslists@googlemail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_224500_203729_0D8D18A3 
X-CRM114-Status: GOOD (  18.90  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] ARM: dts: am335x: update cpsw nodes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Yegor,

On 04.07.22 13:49, yegorslists@googlemail.com wrote:
> From: Yegor Yefremov <yegorslists@googlemail.com>
> 
> Switch to cpsw switchdev definition.

Both bindings should be supported by the same driver in barebox.
Is this just to align with your Linux DT or did you experience breakage?

Cheers,
Ahmad

> 
> Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>
> ---
>  arch/arm/dts/am335x-baltos-minimal.dts | 29 ++++++++++++++++----------
>  1 file changed, 18 insertions(+), 11 deletions(-)
> 
> diff --git a/arch/arm/dts/am335x-baltos-minimal.dts b/arch/arm/dts/am335x-baltos-minimal.dts
> index dff901f050..e55a2d7cbb 100644
> --- a/arch/arm/dts/am335x-baltos-minimal.dts
> +++ b/arch/arm/dts/am335x-baltos-minimal.dts
> @@ -399,33 +399,40 @@
>  	};
>  };
>  
> -&mac {
> +&mac_sw {
>  	pinctrl-names = "default", "sleep";
>  	pinctrl-0 = <&cpsw_default>;
>  	pinctrl-1 = <&cpsw_sleep>;
> -	dual_emac = <1>;
>  
>  	status = "okay";
>  };
>  
> -&davinci_mdio {
> +&davinci_mdio_sw {
> +	status = "okay";
>  	pinctrl-names = "default", "sleep";
>  	pinctrl-0 = <&davinci_mdio_default>;
>  	pinctrl-1 = <&davinci_mdio_sleep>;
>  
> -	status = "okay";
> +	phy1: ethernet-phy@1 {
> +		reg = <7>;
> +		eee-broken-100tx;
> +		eee-broken-1000t;
> +	};
>  };
>  
> -&cpsw_emac0 {
> -	phy_id = <&davinci_mdio>, <0>;
> +&cpsw_port1 {
>  	phy-mode = "rmii";
> -	dual_emac_res_vlan = <1>;
> +	ti,dual-emac-pvid = <1>;
> +	fixed-link {
> +		speed = <100>;
> +		full-duplex;
> +	};
>  };
>  
> -&cpsw_emac1 {
> -	phy_id = <&davinci_mdio>, <7>;
> -	phy-mode = "rgmii-txid";
> -	dual_emac_res_vlan = <2>;
> +&cpsw_port2 {
> +	phy-mode = "rgmii-id";
> +	ti,dual-emac-pvid = <2>;
> +	phy-handle = <&phy1>;
>  };
>  
>  &mmc1 {


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



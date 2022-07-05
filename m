Delivery-date: Tue, 05 Jul 2022 05:55:29 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o8Zen-0068A3-OK
	for lore@lore.pengutronix.de; Tue, 05 Jul 2022 05:55:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o8Zep-0005SG-NR
	for lore@pengutronix.de; Tue, 05 Jul 2022 05:55:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EwoHg0k3y/JrFzxEjV+sqSdYwPzDmPCDANdtSTrxP+g=; b=AK8pcAQSTAjJG7uQo8Z7rSjOTV
	PwradGaJHavhNIHd8Jgqpc+I4YkGHEt/6JtJ5rsXjI3ynDgWYRGV/4yqcZZBvi+WTT9b1HxmErOMW
	NIm2n26jhxIwDr44Y1kJqOjMGNgcewFnqb9iQSRjx9NNBuIZpqkty1c+DQuMVZCfA32yd8vbtPrIx
	1bXd8voeRVFa8hKq1mTPgYKUuh/crelWCwsXKiLA3Ag4Ilg62yE0CYD6ICcIWhD6SPVWp1BdGZQI9
	JsvGWs6NicvLg9YXOzBiPjDcWcvrqyRUUs9fi9GJB7zhszn84GhEuCO+TjCZ+Re4/LroDkA+4djHc
	VNPuOCrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8Zd6-00EJyB-4P; Tue, 05 Jul 2022 03:53:40 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8Zd2-00EJwS-4O
	for barebox@lists.infradead.org; Tue, 05 Jul 2022 03:53:37 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1o8Zcw-0005MP-Ka; Tue, 05 Jul 2022 05:53:30 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1o8Zcw-0006BG-B2; Tue, 05 Jul 2022 05:53:30 +0200
Date: Tue, 5 Jul 2022 05:53:30 +0200
From: Sascha Hauer <sha@pengutronix.de>
To: yegorslists@googlemail.com
Cc: barebox@lists.infradead.org
Message-ID: <20220705035330.GI2387@pengutronix.de>
References: <20220704114959.15635-1-yegorslists@googlemail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220704114959.15635-1-yegorslists@googlemail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 05:53:19 up 96 days, 16:22, 63 users,  load average: 0.01, 0.05,
 0.07
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220704_205336_213264_FEF173E5 
X-CRM114-Status: GOOD (  21.65  )
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] ARM: dts: am335x: update cpsw nodes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jul 04, 2022 at 01:49:59PM +0200, yegorslists@googlemail.com wrote:
> From: Yegor Yefremov <yegorslists@googlemail.com>
> 
> Switch to cpsw switchdev definition.
> 
> Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>
> ---
>  arch/arm/dts/am335x-baltos-minimal.dts | 29 ++++++++++++++++----------
>  1 file changed, 18 insertions(+), 11 deletions(-)

Applied, thanks

Sascha

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
> -- 
> 2.17.0
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



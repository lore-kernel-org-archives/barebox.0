Delivery-date: Thu, 14 Apr 2022 09:36:11 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1neu1U-001Rsl-Pn
	for lore@lore.pengutronix.de; Thu, 14 Apr 2022 09:36:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1neu1S-0001Fn-32
	for lore@pengutronix.de; Thu, 14 Apr 2022 09:36:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=67YlOvwDctqFs0WgCeYLRfSA2ATQ/UPAbndA/Vd/x74=; b=TKu8DSPXWcCi49
	0xwE3Y/YM/eIwaJJLBPOIdDIxKxm6jZ636Ei9zSqFjqT0mVPKWJY0RMmtvX+ueB7NeC0mmbYZKru2
	MOCBfTIkyRvcmQOXB8smj2mliS1/H3mZmUOs1eQI0NzMlEb5wS1Ec0mKd8CvlpXKm2Xu72x7C56dP
	N1vI/41uEjJ9tWPqsa2kv5suLrufsvXSfqQtQ6IvxK039uoLfja3u2R+Y2JV87bKuz8pxRgB+YGi6
	dthArEduicUNPgq0EWWcW3hJQjhUANkzFk3enMUobzGyu/7dwNAlln1NxvzwT84xbMMRhBrJwWkuB
	KwAUANfQQOEmGMrO8QYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1netzz-004MbI-H3; Thu, 14 Apr 2022 07:34:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1netzs-004MYM-AT
 for barebox@lists.infradead.org; Thu, 14 Apr 2022 07:34:35 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1netzj-0000yx-8z; Thu, 14 Apr 2022 09:34:23 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1netzi-0008TQ-LX; Thu, 14 Apr 2022 09:34:22 +0200
Date: Thu, 14 Apr 2022 09:34:22 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Frank Wunderlich <linux@fw-web.de>
Cc: barebox@lists.infradead.org, Frank Wunderlich <frank-w@public-files.de>
Message-ID: <20220414073422.GE4012@pengutronix.de>
References: <20220411114447.20488-1-linux@fw-web.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220411114447.20488-1-linux@fw-web.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:33:57 up 14 days, 20:03, 57 users,  load average: 0.02, 0.08, 0.08
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220414_003432_397652_7343F68D 
X-CRM114-Status: GOOD (  22.50  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] ARM: Rockchip: Update DTS for BPI-R2Pro for new HW-Rev
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Apr 11, 2022 at 01:44:47PM +0200, Frank Wunderlich wrote:
> From: Frank Wunderlich <frank-w@public-files.de>
> 
> New Hardware revision swapped the gmacs (wan is now gmac1).
> Previous Revision (v00) was not in public sale so devicetree
> can be savely changed.
> 
> Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
> ---
>  arch/arm/dts/rk3568-bpi-r2-pro.dts | 28 ++++++++++++++--------------
>  1 file changed, 14 insertions(+), 14 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/dts/rk3568-bpi-r2-pro.dts b/arch/arm/dts/rk3568-bpi-r2-pro.dts
> index ef2e0c33e663..cc1bab37074a 100644
> --- a/arch/arm/dts/rk3568-bpi-r2-pro.dts
> +++ b/arch/arm/dts/rk3568-bpi-r2-pro.dts
> @@ -120,20 +120,20 @@
>  	};
>  };
>  
> -&gmac0 {
> -	assigned-clocks = <&cru SCLK_GMAC0_RX_TX>, <&cru SCLK_GMAC0>;
> -	assigned-clock-parents = <&cru SCLK_GMAC0_RGMII_SPEED>, <&cru CLK_MAC0_2TOP>;
> -	assigned-clock-rates = <0>, <125000000>;
> -	clock_in_out = "input";
> -	phy-handle = <&rgmii_phy0>;
> +&gmac1 {
> +	assigned-clocks = <&cru SCLK_GMAC1_RX_TX>, <&cru SCLK_GMAC1>;
> +	assigned-clock-parents = <&cru SCLK_GMAC1_RGMII_SPEED>, <&cru CLK_MAC1_2TOP>;
> +	clock_in_out = "output";
> +	phy-handle = <&rgmii_phy1>;
>  	phy-mode = "rgmii";
>  	pinctrl-names = "default";
> -	pinctrl-0 = <&gmac0_miim
> -		     &gmac0_tx_bus2
> -		     &gmac0_rx_bus2
> -		     &gmac0_rgmii_clk
> -		     &gmac0_rgmii_bus>;
> -	snps,reset-gpio = <&gpio3 RK_PB7 GPIO_ACTIVE_LOW>;
> +	pinctrl-0 = <&gmac1m1_miim
> +		     &gmac1m1_tx_bus2
> +		     &gmac1m1_rx_bus2
> +		     &gmac1m1_rgmii_clk
> +		     &gmac1m1_rgmii_bus>;
> +
> +	snps,reset-gpio = <&gpio3 RK_PB0 GPIO_ACTIVE_LOW>;
>  	snps,reset-active-low;
>  	/* Reset time is 20ms, 100ms for rtl8211f */
>  	snps,reset-delays-us = <0 20000 100000>;
> @@ -367,8 +367,8 @@
>  	status = "disabled";
>  };
>  
> -&mdio0 {
> -	rgmii_phy0: ethernet-phy@0 {
> +&mdio1 {
> +	rgmii_phy1: ethernet-phy@0 {
>  		compatible = "ethernet-phy-ieee802.3-c22";
>  		reg = <0x0>;
>  	};
> -- 
> 2.25.1
> 
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


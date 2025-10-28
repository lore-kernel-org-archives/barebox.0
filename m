Delivery-date: Tue, 28 Oct 2025 11:01:12 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDgVr-00Ce5A-39
	for lore@lore.pengutronix.de;
	Tue, 28 Oct 2025 11:01:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDgVr-0000Cu-Ct
	for lore@pengutronix.de; Tue, 28 Oct 2025 11:01:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bDNvMdrRoSy8aJ8ZE/8lHpFo+adIqJ9IzZat00a5jKw=; b=4Nd59HCkzjhhMih7MuYWDaBvlw
	gmtuKYBvKNm4dRwPpn8FVdWJeyMtyIZzc+z/uzB0osvDmvfc1vYpqCqiDglVbvILKVNl5OShUEYQe
	dxXB5wAM6ZxFUvqZC/rofHPVMXZ6ekxDlHdDc7PBJ8dqSgwIwbYo9QtUfaOw6u9JgmP5KUy2V/bLG
	Z9I7URlOHaj9lIeyBdnFRYcuT7+vkyTk6O4Oidd9KQBDs7kDpBWXdgqnbuHo39iffsQ3ESc5IHgj5
	OYHOtNWtoQ4ZIsW+wT9pTrRblN6G4rqwmIqEdGuU/ndxetEpyNkWdleXz+Xqdaz+bhe5cKgLbsDl8
	oxkHXn8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDgVN-0000000Fi1t-3vsn;
	Tue, 28 Oct 2025 10:00:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDgVL-0000000Fi1D-1QwD
	for barebox@lists.infradead.org;
	Tue, 28 Oct 2025 10:00:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mtr@pengutronix.de>)
	id 1vDgVI-000068-CH; Tue, 28 Oct 2025 11:00:36 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mtr@pengutronix.de>)
	id 1vDgVI-005qxh-0c;
	Tue, 28 Oct 2025 11:00:36 +0100
Received: from mtr by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mtr@pengutronix.de>)
	id 1vDgVI-0051eP-0B;
	Tue, 28 Oct 2025 11:00:36 +0100
Date: Tue, 28 Oct 2025 11:00:36 +0100
From: Michael Tretter <mtr@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>,
	Alexander Shiyan <eagle.alexander923@gmail.com>
Message-ID: <aQCURB33C504EtJ7@pengutronix.de>
References: <20251028072625.2781087-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20251028072625.2781087-1-s.hauer@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251028_030039_383154_7942B34E 
X-CRM114-Status: GOOD (  24.94  )
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
X-Spam-Status: No, score=-2.9 required=4.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] clk: rockchip rk3588: configure CPLL in driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, 28 Oct 2025 08:26:25 +0100, Sascha Hauer wrote:
> The rk3588 CPLL should be configured to 1.5GHz and 09c87c85e0 ("ARM:
> dts: rockchip: Set CPLL frequency for RK3588") does this. It does it
> however after the assigned-clocks/assigned-clock-rates properties of the
> "rockchip,rk3588-cru" node have been evaluated which contain a setting
> of CLK_150M_SRC which is a child clock of the CPLL.  Configuring the
> CPLL after CLK_150M_SRC alters the setting of the just configured 150M
> clock again.
> 
> We must make sure to configure the CPLL before its child clocks. For
> this we could overwrite the assigned-* properties in the
> "rockchip,rk3588-cru" node, but with that we would miss future updates
> to this property, so configure the CPLL in the driver code instead right
> before we call into of_clk_add_provider().
> 
> Fixes: 09c87c85e0 ("ARM: dts: rockchip: Set CPLL frequency for RK3588")
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Tested-by: Michael Tretter <m.tretter@pengutronix.de>

> ---
> 
> Changes since v1:
> - actually use CPLL
> 
>  arch/arm/dts/rk3588.dtsi          | 3 ---
>  drivers/clk/rockchip/clk-rk3588.c | 7 +++++++
>  2 files changed, 7 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm/dts/rk3588.dtsi b/arch/arm/dts/rk3588.dtsi
> index 42d692a9bd..416700cf0e 100644
> --- a/arch/arm/dts/rk3588.dtsi
> +++ b/arch/arm/dts/rk3588.dtsi
> @@ -1,9 +1,6 @@
>  // SPDX-License-Identifier: (GPL-2.0+ OR MIT)
>  
>  / {
> -	assigned-clocks = <&cru PLL_CPLL>;
> -	assigned-clock-rates = <1500000000>;
> -
>  	dmc: memory-controller {
>  		compatible = "rockchip,rk3588-dmc";
>  		rockchip,pmu = <&pmu1grf>;
> diff --git a/drivers/clk/rockchip/clk-rk3588.c b/drivers/clk/rockchip/clk-rk3588.c
> index 5aecfb3b1b..eb6b4fde14 100644
> --- a/drivers/clk/rockchip/clk-rk3588.c
> +++ b/drivers/clk/rockchip/clk-rk3588.c
> @@ -2500,6 +2500,13 @@ static void __init rk3588_clk_init(struct device_node *np)
>  
>  	rockchip_register_restart_notifier(ctx, RK3588_GLB_SRST_FST);
>  
> +	/*
> +	 * CPLL must run at 1.5GHz. Do this here instead via assigned-clocks
> +	 * in the device tree so that we do not have to overwrite the properties
> +	 * in the upstream device tree.
> +	 */
> +	clk_set_rate(ctx->clk_data.clks[PLL_CPLL], 1500000000);
> +
>  	rockchip_clk_of_add_provider(np, ctx);
>  }
>  
> -- 
> 2.47.3
> 
> 



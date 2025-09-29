Delivery-date: Mon, 29 Sep 2025 10:13:24 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v390e-002LyR-2m
	for lore@lore.pengutronix.de;
	Mon, 29 Sep 2025 10:13:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v390e-00034Q-97
	for lore@pengutronix.de; Mon, 29 Sep 2025 10:13:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wcbSU2NbbH4vsAiy6r2PNQ4Hn0nRoNR8+ncCREijB10=; b=c/+Y2Pi9hNwLE6ENVJG9UmFPU4
	2dGjINQxTjktZNumZnOtDBK/rSbSKwUfpKaAG/gDHFWOioR14i+DHvEGKsKyOI2hTVWq2Aw1YUDMv
	2rZ0Pv5noE4kTLYtpQB66NZdzW//UFDc7KQOlbMjRpe6NoZF2eorU97DB//s1T1SznriXZAgifOPJ
	gZLUCGwrNTgqIehV3FqT7ovxtgpaySAZ4XCSd69u2geUr8ezqvjvi7o9zEdYOVSf26/TyNG+uaq/a
	ZbhxI8+JlZNO8WrzQmWlONTHFSdVCh2kkJGOeBwmdylUIJyw9vYnwC+gpbe1c22VykYrPX/Ra+NDJ
	SmeS4Nfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v390E-00000001klb-2gMP;
	Mon, 29 Sep 2025 08:12:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v390C-00000001kgj-2Mf8
	for barebox@lists.infradead.org;
	Mon, 29 Sep 2025 08:12:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1v390A-0002uY-VZ; Mon, 29 Sep 2025 10:12:54 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1v390A-0012fL-2Z;
	Mon, 29 Sep 2025 10:12:54 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1v390A-002XeJ-2E;
	Mon, 29 Sep 2025 10:12:54 +0200
Date: Mon, 29 Sep 2025 10:12:54 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <aNo_htA1L8khUehc@pengutronix.de>
References: <20250926131514.673245-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250926131514.673245-1-eagle.alexander923@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250929_011256_601865_D8507DE9 
X-CRM114-Status: GOOD (  25.07  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [RFC] clk: rockchip: Fix CPLL setup issue
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Fri, Sep 26, 2025 at 04:15:14PM +0300, Alexander Shiyan wrote:
> This is a dirty patch to solve the RK3588 CPLL clock setup issue.
> It's taken from the Rockchip U-Boot repository [1].
> Any ideas on how to improve it?
> 
> [1] https://github.com/rockchip-linux/u-boot/commit/bd11beba4f997b62809d24eba30a8713c8bbeb81
> 
> Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
> ---
>  drivers/clk/rockchip/clk-pll.c | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 
> diff --git a/drivers/clk/rockchip/clk-pll.c b/drivers/clk/rockchip/clk-pll.c
> index 904d70d5d4..4b92639e1b 100644
> --- a/drivers/clk/rockchip/clk-pll.c
> +++ b/drivers/clk/rockchip/clk-pll.c
> @@ -940,6 +940,13 @@ static int rockchip_rk3588_pll_set_params(struct rockchip_clk_pll *pll,
>  		}
>  	}
>  
> +	/* Barebox addition */
> +	if (pll->reg_base - pll->ctx->reg_base == 0x1a0) {
> +		/* Determine CPLL clock and patch clk_bisrintf_pllsrc_en */
> +		writel(HIWORD_UPDATE(BIT(1), BIT(1), 0),
> +		       pll->ctx->reg_base + 0x84c);
> +	}
> +
>  	/* set pll power down */
>  	writel(HIWORD_UPDATE(RK3588_PLLCON1_PWRDOWN,
>  			     RK3588_PLLCON1_PWRDOWN, 0),
> @@ -971,6 +978,13 @@ static int rockchip_rk3588_pll_set_params(struct rockchip_clk_pll *pll,
>  	if ((pll->type == pll_rk3588) && rate_change_remuxed)
>  		pll_mux_ops->set_parent(&pll_mux->hw, PLL_MODE_NORM);
>  
> +	/* Barebox addition */
> +	if (pll->reg_base - pll->ctx->reg_base == 0x1a0) {
> +		/* Determine CPLL clock and patch clk_bisrintf_pllsrc_en back */
> +		writel(HIWORD_UPDATE(0, BIT(1), 0),
> +		       pll->ctx->reg_base + 0x84c);
> +	}

Resetting this bit is not in the U-Boot patch you reference. Do we need
this?

If yes, please add a variable insted of duplicating this test, like for
example

	bool need_pll3_fix = pll->reg_base == pll->ctx->reg_base + 0x1a0;

Other than that the itself looks ok. Polish the commit message a bit and
we are good to go.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



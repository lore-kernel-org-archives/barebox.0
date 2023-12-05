Delivery-date: Tue, 05 Dec 2023 09:25:07 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rAQjr-003wgX-0i
	for lore@lore.pengutronix.de;
	Tue, 05 Dec 2023 09:25:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rAQjr-00072M-4i
	for lore@pengutronix.de; Tue, 05 Dec 2023 09:25:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/QLj337QKyAg/BWxBgs5f5AoHBFcxx1LAUmqy3g+aD4=; b=gScOXlWNXG6gOY5x6Xnxuwodtg
	i98c5NR6D3NGLxEkmpwIut0EBs3dFc9slURvE2SZa1tpK/fJ1krsuCiH/CFqYepB5LiEPgcq8Y1NT
	0iX+S1szG1ozekb5ezB7/gqTbIRQZNk5GurIWe5WDRJ4MBvL3RiwPhikaqlGSwR8RaoNrcgcqbNiB
	I+QaZ+TWl9xOsCiQEE9azv1uJ5TvZpZ89DX/7+TbPmngdgGrrk3w2LIuFFVmv7krc+wbL16cH5N/k
	6onmE+u4htrPS5Su+DhB4KDUdIX4UDy06KgbXLQW79PjFtBBUwYshMrwOXrrsUnkE7Iq4WzBXrGkm
	fmNPS+vg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rAQib-006dlz-39;
	Tue, 05 Dec 2023 08:23:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rAQiY-006dlR-2K
	for barebox@lists.infradead.org;
	Tue, 05 Dec 2023 08:23:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rAQiX-0006pm-As; Tue, 05 Dec 2023 09:23:45 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rAQiW-00DhYG-UL; Tue, 05 Dec 2023 09:23:44 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rAQiW-005M2l-SG; Tue, 05 Dec 2023 09:23:44 +0100
Date: Tue, 5 Dec 2023 09:23:44 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20231205082344.GT1057032@pengutronix.de>
References: <20231205081052.4145979-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231205081052.4145979-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231205_002346_760516_F477C2D2 
X-CRM114-Status: GOOD (  21.93  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH master] clk: rockchip: pll fix out of bounds read
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Dec 05, 2023 at 09:10:52AM +0100, Ahmad Fatoum wrote:
> parent_names[1] is only valid for PLLs that are not of the type pll_rk3328.
> Yet, the code references it anyway unconditionally, triggering a KASan
> error. Fix this by slightly reworking the code.
> 
> This issue also seems to exist upstream in Linux.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/clk/rockchip/clk-pll.c | 16 +++++++++-------
>  1 file changed, 9 insertions(+), 7 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/clk/rockchip/clk-pll.c b/drivers/clk/rockchip/clk-pll.c
> index ee0603557567..b4152b03b19f 100644
> --- a/drivers/clk/rockchip/clk-pll.c
> +++ b/drivers/clk/rockchip/clk-pll.c
> @@ -1101,19 +1101,21 @@ struct clk *rockchip_clk_register_pll(struct rockchip_clk_provider *ctx,
>  	    pll_type == pll_rk3588_core)
>  		pll_mux->flags |= CLK_MUX_HIWORD_MASK;
>  
> -	/* the actual muxing is xin24m, pll-output, xin32k */
> -	pll_parents[0] = parent_names[0];
> -	pll_parents[1] = pll_name;
> -	pll_parents[2] = parent_names[1];
> -
>  	init.name = name;
>  	init.flags = CLK_SET_RATE_PARENT;
>  	init.ops = pll->pll_mux_ops;
>  	init.parent_names = pll_parents;
> -	if (pll_type == pll_rk3328)
> +
> +	/* the actual muxing is xin24m, pll-output, xin32k */
> +	pll_parents[0] = parent_names[0];
> +	pll_parents[1] = pll_name;
> +
> +	if (pll_type == pll_rk3328) {
>  		init.num_parents = 2;
> -	else
> +	} else {
> +		pll_parents[2] = parent_names[1];
>  		init.num_parents = ARRAY_SIZE(pll_parents);
> +	}
>  
>  	mux_clk = clk_register(NULL, &pll_mux->hw);
>  	if (IS_ERR(mux_clk))
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



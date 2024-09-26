Delivery-date: Thu, 26 Sep 2024 16:19:55 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stpLW-003282-1x
	for lore@lore.pengutronix.de;
	Thu, 26 Sep 2024 16:19:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stpLV-0000bE-Sg
	for lore@pengutronix.de; Thu, 26 Sep 2024 16:19:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uJWlI9JtvYLe8fXGeB2qbyMjQHev2Xzndi1rtkSEK2Q=; b=xmNp8ehGEQuZg5fRrk4ubzCDYu
	0T0u7Jrb6kyXo9gsi6vyjPIX4fFeTncQqGxA7E4n1zbmKWCeJHjCezrlgibY6REP4JPAPHNZu59Ap
	m/qCKS9KoeY1YwAlaBx2+UjWOx2ZmyEzydiQlP9uhBvakVsMN65N0mCQSjyrpIq0Fz7DyEL5q1huO
	5Dz5h/tM2yn5QB2mb+PQklLgV4hVYhFR/xdJQ5nN3tZjaFlm1UpeNzrCWR3A19kA/tbm1F9zeDA5J
	znSlGMqYpKeZfDAeKezBpWKZ81jOBi8fyekzFMrslofvHWitb/gVE1JltiUHOuebqZPkxsE18wS/I
	D5Nxwl5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stpL6-00000008ZBw-1jG9;
	Thu, 26 Sep 2024 14:19:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1stpKn-00000008ZAF-07DT
	for barebox@lists.infradead.org;
	Thu, 26 Sep 2024 14:19:10 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1stpKl-0008Vy-Mb; Thu, 26 Sep 2024 16:19:07 +0200
Message-ID: <acdeb727-b324-4acc-b1e2-5f9856264f36@pengutronix.de>
Date: Thu, 26 Sep 2024 16:19:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 "open list:BAREBOX" <barebox@lists.infradead.org>
References: <20240926-vop2-v1-0-fe0581f2020b@pengutronix.de>
 <20240926-vop2-v1-1-fe0581f2020b@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240926-vop2-v1-1-fe0581f2020b@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240926_071909_101772_AFD278DF 
X-CRM114-Status: GOOD (  16.67  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 01/13] clk: rockchip: rk3568: Fix HDMI clocks
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 26.09.24 15:14, Sascha Hauer wrote:
> This is a combination of Linux commits:
> 
> 6e69052f01d91 ("clk: rockchip: Add CLK_SET_RATE_PARENT to the HDMI reference clock on rk3568")
> ff3187eabb5ce ("clk: rockchip: drop CLK_SET_RATE_PARENT from dclk_vop* on rk3568")
> 
> These are needed for proper HDMI clock settings on RK3568.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  drivers/clk/rockchip/clk-rk3568.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/clk/rockchip/clk-rk3568.c b/drivers/clk/rockchip/clk-rk3568.c
> index 50fbf66d23..bd6c8269ca 100644
> --- a/drivers/clk/rockchip/clk-rk3568.c
> +++ b/drivers/clk/rockchip/clk-rk3568.c
> @@ -1050,13 +1050,13 @@ static struct rockchip_clk_branch rk3568_clk_branches[] __initdata = {
>  			RK3568_CLKGATE_CON(20), 8, GFLAGS),
>  	GATE(HCLK_VOP, "hclk_vop", "hclk_vo", 0,
>  			RK3568_CLKGATE_CON(20), 9, GFLAGS),
> -	COMPOSITE(DCLK_VOP0, "dclk_vop0", hpll_vpll_gpll_cpll_p, CLK_SET_RATE_PARENT | CLK_SET_RATE_NO_REPARENT,
> +	COMPOSITE(DCLK_VOP0, "dclk_vop0", hpll_vpll_gpll_cpll_p, CLK_SET_RATE_NO_REPARENT,
>  			RK3568_CLKSEL_CON(39), 10, 2, MFLAGS, 0, 8, DFLAGS,
>  			RK3568_CLKGATE_CON(20), 10, GFLAGS),
> -	COMPOSITE(DCLK_VOP1, "dclk_vop1", hpll_vpll_gpll_cpll_p, CLK_SET_RATE_PARENT | CLK_SET_RATE_NO_REPARENT,
> +	COMPOSITE(DCLK_VOP1, "dclk_vop1", hpll_vpll_gpll_cpll_p, CLK_SET_RATE_NO_REPARENT,
>  			RK3568_CLKSEL_CON(40), 10, 2, MFLAGS, 0, 8, DFLAGS,
>  			RK3568_CLKGATE_CON(20), 11, GFLAGS),
> -	COMPOSITE(DCLK_VOP2, "dclk_vop2", hpll_vpll_gpll_cpll_p, 0,
> +	COMPOSITE(DCLK_VOP2, "dclk_vop2", hpll_vpll_gpll_cpll_p, CLK_SET_RATE_NO_REPARENT,
>  			RK3568_CLKSEL_CON(41), 10, 2, MFLAGS, 0, 8, DFLAGS,
>  			RK3568_CLKGATE_CON(20), 12, GFLAGS),
>  	GATE(CLK_VOP_PWM, "clk_vop_pwm", "xin24m", 0,
> @@ -1574,7 +1574,7 @@ static struct rockchip_clk_branch rk3568_clk_pmu_branches[] __initdata = {
>  			RK3568_PMU_CLKGATE_CON(2), 14, GFLAGS),
>  	GATE(XIN_OSC0_EDPPHY_G, "xin_osc0_edpphy_g", "xin24m", 0,
>  			RK3568_PMU_CLKGATE_CON(2), 15, GFLAGS),
> -	MUX(CLK_HDMI_REF, "clk_hdmi_ref", clk_hdmi_ref_p, 0,
> +	MUX(CLK_HDMI_REF, "clk_hdmi_ref", clk_hdmi_ref_p, CLK_SET_RATE_PARENT,
>  			RK3568_PMU_CLKSEL_CON(8), 7, 1, MFLAGS),
>  };
>  
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



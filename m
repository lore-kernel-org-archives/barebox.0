Delivery-date: Mon, 07 Apr 2025 15:46:36 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u1mo8-009ZWn-35
	for lore@lore.pengutronix.de;
	Mon, 07 Apr 2025 15:46:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u1mo8-0000HN-7D
	for lore@pengutronix.de; Mon, 07 Apr 2025 15:46:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ihvqYA/j0pmrK9/d/GvbKWuWgAWL25mLhFkF/RMzQeM=; b=vxtwoizXgJQbTGwuT1YecIleRW
	vtzvKp6K0BoSOG/UmTZCF6XXeHesd2RqkU7j3UkFjnvQtnOhkcAlOVFHBoXg7DHtQFC2nK4dWXPyJ
	YO/aafOzjuVXhEucRetR/LJjp5bJEK0RFmFFzI01hHqzx5qTZUrNm2G90GzbcgrUbZqvClLQOtkIG
	oLsajS4wF+3d4LC3DSmLlUi/erQwstIRgrNVz7od3OKMcAynLt0c/oU32YB4IixEejF4L+YhHgQhA
	lSMplxga1yaVYqDnvFWKlzbDVdDwb0NKRtCFEQwtcaOetRFnj8suewe1l8pAPtDNwgtSSY7x22bSF
	hG2OCxJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1mnM-00000000aRX-01DE;
	Mon, 07 Apr 2025 13:45:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1mYn-00000000WhP-2mIC
	for barebox@lists.infradead.org;
	Mon, 07 Apr 2025 13:30:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1u1mYm-0005qK-9r; Mon, 07 Apr 2025 15:30:44 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1u1mYl-003lmJ-35;
	Mon, 07 Apr 2025 15:30:43 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1u1mYl-004hqL-2l;
	Mon, 07 Apr 2025 15:30:43 +0200
Date: Mon, 7 Apr 2025 15:30:43 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <Z_PTgzLra3jphpeu@pengutronix.de>
References: <20250331123948.337747-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250331123948.337747-1-eagle.alexander923@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250407_063045_697666_698AF27A 
X-CRM114-Status: GOOD (  30.50  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] clk: rockchip: rk3588: make refclko25m_ethX critical
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Mar 31, 2025 at 03:39:48PM +0300, Alexander Shiyan wrote:
> Ethernet phys normally need a 25MHz refclk input. On a lot of boards
> this is done with a dedicated 25MHz crystal. But the rk3588 CRU also
> provides a means for that via the refclko25m_ethX clock outputs that
> can be used for that function.
> 
> The mdio bus normally probes devices on the bus at runtime, by reading
> specific phy registers. This requires the phy to be running and thus
> also being supplied by its reference clock.
> 
> While there exist the possibility and dt-binding to declare these
> input clocks for each phy in the phy-dt-node, this is only relevant
> _after_ the phy has been detected and during the drivers probe-run.
> 
> This results in a chicken-and-egg-problem. The refclks in the CRU are
> running on boot of course, but phy-probing can very well happen after
> clk_disable_unused has run.
> 
> In the past I tried to make clock-handling part of the mdio bus code [0]
> but that wasn't very well received, due to it being specific to OF and
> clocks with the consensus being that resources needed for detection
> need to be enabled before.
> 
> So to make probing ethernet phys using the internal refclks possible,
> make those 2 clocks critical.

Quite an unfortunate situation. I must say that I don't really like this
patch as it's only helps to solve this on RK3588 and additionally this
change is easily lost when we update the clock drivers from Linux.

I don't see an easy solution for this issue, so I applied this patch for
now. Nevertheless it would be great to solve that generically in the
long run.

Sascha

> 
> [0] https://lore.kernel.org/netdev/13590315.F0gNSz5aLb@diego/T/
> 
> Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
> ---
>  drivers/clk/rockchip/clk-rk3588.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/clk/rockchip/clk-rk3588.c b/drivers/clk/rockchip/clk-rk3588.c
> index 736ce4a543..f6d16ed0cf 100644
> --- a/drivers/clk/rockchip/clk-rk3588.c
> +++ b/drivers/clk/rockchip/clk-rk3588.c
> @@ -794,10 +794,10 @@ static struct rockchip_clk_branch rk3588_clk_branches[] __initdata = {
>  	COMPOSITE(MCLK_GMAC0_OUT, "mclk_gmac0_out", gpll_cpll_p, 0,
>  			RK3588_CLKSEL_CON(15), 7, 1, MFLAGS, 0, 7, DFLAGS,
>  			RK3588_CLKGATE_CON(5), 3, GFLAGS),
> -	COMPOSITE(REFCLKO25M_ETH0_OUT, "refclko25m_eth0_out", gpll_cpll_p, 0,
> +	COMPOSITE(REFCLKO25M_ETH0_OUT, "refclko25m_eth0_out", gpll_cpll_p, CLK_IS_CRITICAL,
>  			RK3588_CLKSEL_CON(15), 15, 1, MFLAGS, 8, 7, DFLAGS,
>  			RK3588_CLKGATE_CON(5), 4, GFLAGS),
> -	COMPOSITE(REFCLKO25M_ETH1_OUT, "refclko25m_eth1_out", gpll_cpll_p, 0,
> +	COMPOSITE(REFCLKO25M_ETH1_OUT, "refclko25m_eth1_out", gpll_cpll_p, CLK_IS_CRITICAL,
>  			RK3588_CLKSEL_CON(16), 7, 1, MFLAGS, 0, 7, DFLAGS,
>  			RK3588_CLKGATE_CON(5), 5, GFLAGS),
>  	COMPOSITE(CLK_CIFOUT_OUT, "clk_cifout_out", gpll_cpll_24m_spll_p, 0,
> -- 
> 2.38.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



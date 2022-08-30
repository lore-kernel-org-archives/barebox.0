Delivery-date: Tue, 30 Aug 2022 17:07:11 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oT2pZ-001nt0-Do
	for lore@lore.pengutronix.de; Tue, 30 Aug 2022 17:07:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oT2pX-00079W-Mm
	for lore@pengutronix.de; Tue, 30 Aug 2022 17:07:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KF4HGCZvrM1ljzIqQoZYf02UmcSmyKgyGUBqPqLA/ho=; b=C6GarQZ+TzcH81RNQBAGUpp1DS
	D8JAhdSNtIet+5fvdieDrf9d6NXIPsvneiSl+uTAaLgyekX1nOixPRG0Ropmo4hEX02xNVyV0Q1jS
	DfiKYPW0pOCe0VRTryWAC/4jx2ixZ29asdzRHHdAfVkUe76cVvwcivBvk7wHmdqtuXNgcLqf+nOU7
	hjPsnynNdAzxnuo/d8w8MC/lv6vnTCQ1aibstM0yJHVt10xhGFLC3gk5eWYx++33TXa5CLTMaEaB6
	z0KoMtouy3A1zITkS5NNmrfJM6f7SJnfya8+Q5ewX6j2pxJ7pnYOzpwmFGT/m9ZBd3zZeIMJWaGIM
	oN0s+CwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oT2o0-000ArX-Cy; Tue, 30 Aug 2022 15:05:32 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oT2nu-000Ap5-O2
	for barebox@lists.infradead.org; Tue, 30 Aug 2022 15:05:28 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oT2nq-0006aW-J4; Tue, 30 Aug 2022 17:05:22 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oT2nq-00017W-9f; Tue, 30 Aug 2022 17:05:22 +0200
Date: Tue, 30 Aug 2022 17:05:22 +0200
To: Johannes Zink <j.zink@pengutronix.de>
Cc: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <20220830150522.GI24324@pengutronix.de>
References: <20220830083937.466171-1-j.zink@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220830083937.466171-1-j.zink@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220830_080526_803135_D4078EED 
X-CRM114-Status: GOOD (  30.53  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] clks: imx7: fix initial clock setup with deep probe
 enabled
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Aug 30, 2022 at 10:39:37AM +0200, Johannes Zink wrote:
> We register the i.MX7 clock controller driver at core_initcall level and
> then do some initial clock setup/reparenting at postcore_initcall level.
> This doesn't work as expected when deep probe is enabled, because while
> the driver is registered at core_initcall level, it's only probed
> later on, currently at postcore_initcall level because it's a dependency
> of the timer for which of_ensure_device_probed is called.
> 
> As the initial clock setup is also at postcore_initcall level, it's no
> longer guaranteed that the code executes in the same order. Fix this by
> directly doing the setup at the end of the probe function.

Does this still work with deep probe disabled?

I am asking because this effectively reverts bce79428773 ("clk: i.MX7: do
clock reparenting when all clocks are initialized"). Switching all
i.MX7 boards to deep probe might be a solution as well.

Sascha


> 
> Co-developed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> Signed-off-by: Johannes Zink <j.zink@pengutronix.de>
> ---
>  drivers/clk/imx/clk-imx7.c | 62 +++++++++++++++++---------------------
>  1 file changed, 27 insertions(+), 35 deletions(-)
> 
> diff --git a/drivers/clk/imx/clk-imx7.c b/drivers/clk/imx/clk-imx7.c
> index ffa39d17b0..67876a8404 100644
> --- a/drivers/clk/imx/clk-imx7.c
> +++ b/drivers/clk/imx/clk-imx7.c
> @@ -358,7 +358,32 @@ static int const clks_init_on[] __initconst = {
>  
>  static struct clk_onecell_data clk_data;
>  
> -static int imx7_clk_initialized;
> +static void imx7_clk_setup(void)
> +{
> +	int i;
> +
> +	clks[IMX7D_OSC_24M_CLK] = clk_lookup("osc");
> +
> +	for (i = 0; i < ARRAY_SIZE(clks_init_on); i++)
> +		clk_enable(clks[clks_init_on[i]]);
> +
> +	/* use old gpt clk setting, gpt1 root clk must be twice as gpt counter freq */
> +	clk_set_parent(clks[IMX7D_GPT1_ROOT_SRC], clks[IMX7D_OSC_24M_CLK]);
> +
> +	/* set uart module clock's parent clock source that must be great then 80MHz */
> +	clk_set_parent(clks[IMX7D_UART1_ROOT_SRC], clks[IMX7D_OSC_24M_CLK]);
> +
> +	clk_set_parent(clks[IMX7D_ENET1_REF_ROOT_SRC], clks[IMX7D_PLL_ENET_MAIN_125M_CLK]);
> +	clk_set_parent(clks[IMX7D_ENET1_TIME_ROOT_SRC], clks[IMX7D_PLL_ENET_MAIN_100M_CLK]);
> +	clk_set_parent(clks[IMX7D_ENET2_REF_ROOT_SRC], clks[IMX7D_PLL_ENET_MAIN_125M_CLK]);
> +	clk_set_parent(clks[IMX7D_ENET2_TIME_ROOT_SRC], clks[IMX7D_PLL_ENET_MAIN_100M_CLK]);
> +
> +	clk_set_rate(clks[IMX7D_PLL_SYS_PFD4_CLK], 392000000);
> +	clk_set_parent(clks[IMX7D_ENET_AXI_ROOT_SRC], clks[IMX7D_PLL_SYS_PFD4_CLK]);
> +	clk_set_rate(clks[IMX7D_ENET_AXI_ROOT_CLK], 197000000);
> +	clk_set_rate(clks[IMX7D_ENET1_TIME_ROOT_CLK], 25000000);
> +	clk_set_rate(clks[IMX7D_ENET2_TIME_ROOT_CLK], 25000000);
> +}
>  
>  static int imx7_ccm_probe(struct device_d *dev)
>  {
> @@ -806,43 +831,10 @@ static int imx7_ccm_probe(struct device_d *dev)
>  	clk_data.clk_num = ARRAY_SIZE(clks);
>  	of_clk_add_provider(dev->device_node, of_clk_src_onecell_get, &clk_data);
>  
> -	imx7_clk_initialized = 1;
> -
> -	return 0;
> -}
> -
> -static int imx7_clk_setup(void)
> -{
> -	int i;
> -
> -	if (!imx7_clk_initialized)
> -		return 0;
> -
> -	clks[IMX7D_OSC_24M_CLK] = clk_lookup("osc");
> -
> -	for (i = 0; i < ARRAY_SIZE(clks_init_on); i++)
> -		clk_enable(clks[clks_init_on[i]]);
> -
> -	/* use old gpt clk setting, gpt1 root clk must be twice as gpt counter freq */
> -	clk_set_parent(clks[IMX7D_GPT1_ROOT_SRC], clks[IMX7D_OSC_24M_CLK]);
> -
> -	/* set uart module clock's parent clock source that must be great then 80MHz */
> -	clk_set_parent(clks[IMX7D_UART1_ROOT_SRC], clks[IMX7D_OSC_24M_CLK]);
> -
> -	clk_set_parent(clks[IMX7D_ENET1_REF_ROOT_SRC], clks[IMX7D_PLL_ENET_MAIN_125M_CLK]);
> -	clk_set_parent(clks[IMX7D_ENET1_TIME_ROOT_SRC], clks[IMX7D_PLL_ENET_MAIN_100M_CLK]);
> -	clk_set_parent(clks[IMX7D_ENET2_REF_ROOT_SRC], clks[IMX7D_PLL_ENET_MAIN_125M_CLK]);
> -	clk_set_parent(clks[IMX7D_ENET2_TIME_ROOT_SRC], clks[IMX7D_PLL_ENET_MAIN_100M_CLK]);
> -
> -	clk_set_rate(clks[IMX7D_PLL_SYS_PFD4_CLK], 392000000);
> -	clk_set_parent(clks[IMX7D_ENET_AXI_ROOT_SRC], clks[IMX7D_PLL_SYS_PFD4_CLK]);
> -	clk_set_rate(clks[IMX7D_ENET_AXI_ROOT_CLK], 197000000);
> -	clk_set_rate(clks[IMX7D_ENET1_TIME_ROOT_CLK], 25000000);
> -	clk_set_rate(clks[IMX7D_ENET2_TIME_ROOT_CLK], 25000000);
> +	imx7_clk_setup();
>  
>  	return 0;
>  }
> -postcore_initcall(imx7_clk_setup);
>  
>  static __maybe_unused struct of_device_id imx7_ccm_dt_ids[] = {
>  	{
> -- 
> 2.30.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



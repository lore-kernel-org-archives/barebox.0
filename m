Delivery-date: Fri, 17 Jun 2022 09:32:56 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o26TP-004x2b-Cw
	for lore@lore.pengutronix.de; Fri, 17 Jun 2022 09:32:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o26TO-0007Qu-9E
	for lore@pengutronix.de; Fri, 17 Jun 2022 09:32:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DYVbdXSL70qpXkINlYBo2/FnEvOrdoOS7DT+agadsqI=; b=rARqwfwgVn+MMRAmfW5anKqQsC
	3VrNmrnz3sDtbZTzMSDePlDXz4Uz0Arfo+yBjUvxqT8Pw4VGrO9Vz9Fl3/RpFxOPAeMjc5DcArQp7
	Mzz4avv5mho6okUYRm/QWYD1PHUn4JtABRHaSnX6R2/0kXaFHDmTfDscWasQQkR0LgVBEgp3pMmBd
	VUe4ZFOpzlzXKMWs59TmARSwjHqFt1FgY2akpmS0vYzwLnEKX63pf9BG8ipr20C005FU5EjOYlETH
	l6KMnK0j2RJtdGMEfM06HVz0myhcMMVPPHrgib9ApI49xDB4+tzu6BoISJz9IMyztzQsj8y8i22mE
	kaV/GDRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o26Ro-005yO1-Bm; Fri, 17 Jun 2022 07:31:17 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o26FD-005uD0-V3
	for barebox@lists.infradead.org; Fri, 17 Jun 2022 07:18:18 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1o26FC-0005BX-MI; Fri, 17 Jun 2022 09:18:14 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1o26FC-0005PV-DZ; Fri, 17 Jun 2022 09:18:14 +0200
Date: Fri, 17 Jun 2022 09:18:14 +0200
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220617071814.GG1615@pengutronix.de>
References: <20220616140521.2263016-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220616140521.2263016-1-m.felsch@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220617_001816_239776_51D25ACC 
X-CRM114-Status: GOOD (  22.83  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/2] clk: imx8mm: remove SYS PLL 1/2 clock gates
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Jun 16, 2022 at 04:05:20PM +0200, Marco Felsch wrote:
> This commit is based on commit dd977acd6 ("clk: imx8mp: remove SYS PLL
> 1/2 clock gates") and adopts kernel commit:
> 
> | commit d25cbd3e392730f459f1fbf5f959c16b460a59ca
> | Author:     Peng Fan <peng.fan@nxp.com>
> | AuthorDate: Fri Feb 25 16:17:31 2022 +0800
> | Commit:     Abel Vesa <abel.vesa@nxp.com>
> | CommitDate: Fri Mar 4 17:06:29 2022 +0200
> |
> |     clk: imx8mm: remove SYS PLL 1/2 clock gates
> |
> |     Remove the PLL 1/2 gates as it make AMP clock management harder without
> |     obvious benifit.
> |
> |     Signed-off-by: Peng Fan <peng.fan@nxp.com>
> |     Reviewed-by: Abel Vesa <abel.vesa@nxp.com>
> |     Link: https://lore.kernel.org/r/20220225081733.2294166-2-peng.fan@oss.nxp.com
> |     Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
> 
> Unlike the original patch this one also makes sure that the removed
> gates are enabled as they are needed for their consumers.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>  drivers/clk/imx/clk-imx8mm.c | 65 ++++++++++++++++++------------------
>  1 file changed, 33 insertions(+), 32 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/clk/imx/clk-imx8mm.c b/drivers/clk/imx/clk-imx8mm.c
> index e6927f58f4..d467062e64 100644
> --- a/drivers/clk/imx/clk-imx8mm.c
> +++ b/drivers/clk/imx/clk-imx8mm.c
> @@ -280,6 +280,7 @@ static int imx8mm_clocks_init(struct device_node *ccm_np)
>  {
>  	struct device_node *anatop_np;
>  	void __iomem *ccm, *ana;
> +	u32 val;
>  	int ret;
>  
>  	anatop_np = of_find_compatible_node(NULL, NULL, "fsl,imx8mm-anatop");
> @@ -340,45 +341,45 @@ static int imx8mm_clocks_init(struct device_node *ccm_np)
>  	clks[IMX8MM_SYS_PLL3_OUT] = imx_clk_gate("sys_pll3_out", "sys_pll3_bypass", ana + 0x114, 11);
>  
>  	/* SYS PLL1 fixed output */
> -	clks[IMX8MM_SYS_PLL1_40M_CG] = imx_clk_gate("sys_pll1_40m_cg", "sys_pll1", ana + 0x94, 27);
> -	clks[IMX8MM_SYS_PLL1_80M_CG] = imx_clk_gate("sys_pll1_80m_cg", "sys_pll1", ana + 0x94, 25);
> -	clks[IMX8MM_SYS_PLL1_100M_CG] = imx_clk_gate("sys_pll1_100m_cg", "sys_pll1", ana + 0x94, 23);
> -	clks[IMX8MM_SYS_PLL1_133M_CG] = imx_clk_gate("sys_pll1_133m_cg", "sys_pll1", ana + 0x94, 21);
> -	clks[IMX8MM_SYS_PLL1_160M_CG] = imx_clk_gate("sys_pll1_160m_cg", "sys_pll1", ana + 0x94, 19);
> -	clks[IMX8MM_SYS_PLL1_200M_CG] = imx_clk_gate("sys_pll1_200m_cg", "sys_pll1", ana + 0x94, 17);
> -	clks[IMX8MM_SYS_PLL1_266M_CG] = imx_clk_gate("sys_pll1_266m_cg", "sys_pll1", ana + 0x94, 15);
> -	clks[IMX8MM_SYS_PLL1_400M_CG] = imx_clk_gate("sys_pll1_400m_cg", "sys_pll1", ana + 0x94, 13);
> +	/*
> +	 * The gates in CCM_ANALOG_SYS_PLL1_GEN_CTRL are not handled by the
> +	 * driver, make sure they are all enabled.
> +	 */
> +	val = readl(ana + 0x94);
> +	val |= BIT(13) | BIT(15) | BIT(17) | BIT(19) | BIT(21) | BIT(23) | BIT(25) | BIT(27);
> +	writel(val, ana + 0x94);
> +
>  	clks[IMX8MM_SYS_PLL1_OUT] = imx_clk_gate("sys_pll1_out", "sys_pll1", ana + 0x94, 11);
>  
> -	clks[IMX8MM_SYS_PLL1_40M] = imx_clk_fixed_factor("sys_pll1_40m", "sys_pll1_40m_cg", 1, 20);
> -	clks[IMX8MM_SYS_PLL1_80M] = imx_clk_fixed_factor("sys_pll1_80m", "sys_pll1_80m_cg", 1, 10);
> -	clks[IMX8MM_SYS_PLL1_100M] = imx_clk_fixed_factor("sys_pll1_100m", "sys_pll1_100m_cg", 1, 8);
> -	clks[IMX8MM_SYS_PLL1_133M] = imx_clk_fixed_factor("sys_pll1_133m", "sys_pll1_133m_cg", 1, 6);
> -	clks[IMX8MM_SYS_PLL1_160M] = imx_clk_fixed_factor("sys_pll1_160m", "sys_pll1_160m_cg", 1, 5);
> -	clks[IMX8MM_SYS_PLL1_200M] = imx_clk_fixed_factor("sys_pll1_200m", "sys_pll1_200m_cg", 1, 4);
> -	clks[IMX8MM_SYS_PLL1_266M] = imx_clk_fixed_factor("sys_pll1_266m", "sys_pll1_266m_cg", 1, 3);
> -	clks[IMX8MM_SYS_PLL1_400M] = imx_clk_fixed_factor("sys_pll1_400m", "sys_pll1_400m_cg", 1, 2);
> +	clks[IMX8MM_SYS_PLL1_40M] = imx_clk_fixed_factor("sys_pll1_40m", "sys_pll1_out", 1, 20);
> +	clks[IMX8MM_SYS_PLL1_80M] = imx_clk_fixed_factor("sys_pll1_80m", "sys_pll1_out", 1, 10);
> +	clks[IMX8MM_SYS_PLL1_100M] = imx_clk_fixed_factor("sys_pll1_100m", "sys_pll1_out", 1, 8);
> +	clks[IMX8MM_SYS_PLL1_133M] = imx_clk_fixed_factor("sys_pll1_133m", "sys_pll1_out", 1, 6);
> +	clks[IMX8MM_SYS_PLL1_160M] = imx_clk_fixed_factor("sys_pll1_160m", "sys_pll1_out", 1, 5);
> +	clks[IMX8MM_SYS_PLL1_200M] = imx_clk_fixed_factor("sys_pll1_200m", "sys_pll1_out", 1, 4);
> +	clks[IMX8MM_SYS_PLL1_266M] = imx_clk_fixed_factor("sys_pll1_266m", "sys_pll1_out", 1, 3);
> +	clks[IMX8MM_SYS_PLL1_400M] = imx_clk_fixed_factor("sys_pll1_400m", "sys_pll1_out", 1, 2);
>  	clks[IMX8MM_SYS_PLL1_800M] = imx_clk_fixed_factor("sys_pll1_800m", "sys_pll1_out", 1, 1);
>  
>  	/* SYS PLL2 fixed output */
> -	clks[IMX8MM_SYS_PLL2_50M_CG] = imx_clk_gate("sys_pll2_50m_cg", "sys_pll2", ana + 0x104, 27);
> -	clks[IMX8MM_SYS_PLL2_100M_CG] = imx_clk_gate("sys_pll2_100m_cg", "sys_pll2", ana + 0x104, 25);
> -	clks[IMX8MM_SYS_PLL2_125M_CG] = imx_clk_gate("sys_pll2_125m_cg", "sys_pll2", ana + 0x104, 23);
> -	clks[IMX8MM_SYS_PLL2_166M_CG] = imx_clk_gate("sys_pll2_166m_cg", "sys_pll2", ana + 0x104, 21);
> -	clks[IMX8MM_SYS_PLL2_200M_CG] = imx_clk_gate("sys_pll2_200m_cg", "sys_pll2", ana + 0x104, 19);
> -	clks[IMX8MM_SYS_PLL2_250M_CG] = imx_clk_gate("sys_pll2_250m_cg", "sys_pll2", ana + 0x104, 17);
> -	clks[IMX8MM_SYS_PLL2_333M_CG] = imx_clk_gate("sys_pll2_333m_cg", "sys_pll2", ana + 0x104, 15);
> -	clks[IMX8MM_SYS_PLL2_500M_CG] = imx_clk_gate("sys_pll2_500m_cg", "sys_pll2", ana + 0x104, 13);
> +	/*
> +	 * The gates in CCM_ANALOG_SYS_PLL2_GEN_CTRL are not handled by the
> +	 * driver, make sure they are all enabled.
> +	 */
> +	val = readl(ana + 0x104);
> +	val |= BIT(13) | BIT(15) | BIT(17) | BIT(19) | BIT(21) | BIT(23) | BIT(25) | BIT(27);
> +	writel(val, ana + 0x104);
> +
>  	clks[IMX8MM_SYS_PLL2_OUT] = imx_clk_gate("sys_pll2_out", "sys_pll2", ana + 0x104, 11);
>  
> -	clks[IMX8MM_SYS_PLL2_50M] = imx_clk_fixed_factor("sys_pll2_50m", "sys_pll2_50m_cg", 1, 20);
> -	clks[IMX8MM_SYS_PLL2_100M] = imx_clk_fixed_factor("sys_pll2_100m", "sys_pll2_100m_cg", 1, 10);
> -	clks[IMX8MM_SYS_PLL2_125M] = imx_clk_fixed_factor("sys_pll2_125m", "sys_pll2_125m_cg", 1, 8);
> -	clks[IMX8MM_SYS_PLL2_166M] = imx_clk_fixed_factor("sys_pll2_166m", "sys_pll2_166m_cg", 1, 6);
> -	clks[IMX8MM_SYS_PLL2_200M] = imx_clk_fixed_factor("sys_pll2_200m", "sys_pll2_200m_cg", 1, 5);
> -	clks[IMX8MM_SYS_PLL2_250M] = imx_clk_fixed_factor("sys_pll2_250m", "sys_pll2_250m_cg", 1, 4);
> -	clks[IMX8MM_SYS_PLL2_333M] = imx_clk_fixed_factor("sys_pll2_333m", "sys_pll2_333m_cg", 1, 3);
> -	clks[IMX8MM_SYS_PLL2_500M] = imx_clk_fixed_factor("sys_pll2_500m", "sys_pll2_500m_cg", 1, 2);
> +	clks[IMX8MM_SYS_PLL2_50M] = imx_clk_fixed_factor("sys_pll2_50m", "sys_pll2_out", 1, 20);
> +	clks[IMX8MM_SYS_PLL2_100M] = imx_clk_fixed_factor("sys_pll2_100m", "sys_pll2_out", 1, 10);
> +	clks[IMX8MM_SYS_PLL2_125M] = imx_clk_fixed_factor("sys_pll2_125m", "sys_pll2_out", 1, 8);
> +	clks[IMX8MM_SYS_PLL2_166M] = imx_clk_fixed_factor("sys_pll2_166m", "sys_pll2_out", 1, 6);
> +	clks[IMX8MM_SYS_PLL2_200M] = imx_clk_fixed_factor("sys_pll2_200m", "sys_pll2_out", 1, 5);
> +	clks[IMX8MM_SYS_PLL2_250M] = imx_clk_fixed_factor("sys_pll2_250m", "sys_pll2_out", 1, 4);
> +	clks[IMX8MM_SYS_PLL2_333M] = imx_clk_fixed_factor("sys_pll2_333m", "sys_pll2_out", 1, 3);
> +	clks[IMX8MM_SYS_PLL2_500M] = imx_clk_fixed_factor("sys_pll2_500m", "sys_pll2_out", 1, 2);
>  	clks[IMX8MM_SYS_PLL2_1000M] = imx_clk_fixed_factor("sys_pll2_1000m", "sys_pll2_out", 1, 1);
>  
>  	/* Core Slice */
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



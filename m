Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dVJ4D-0000tn-Le
 for barebox@lists.infradead.org; Wed, 12 Jul 2017 14:56:43 +0000
Message-ID: <1499871379.5060.120.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Wed, 12 Jul 2017 16:56:19 +0200
In-Reply-To: <20170711093050.23278-1-p.zabel@pengutronix.de>
References: <20170711093050.23278-1-p.zabel@pengutronix.de>
Mime-Version: 1.0
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] i.MX: clk-pllv3: Initially disable PLL_BYPASS bit
To: Philipp Zabel <p.zabel@pengutronix.de>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, barebox@lists.infradead.org

Am Dienstag, den 11.07.2017, 11:30 +0200 schrieb Philipp Zabel:
> Commit cbff8031b491 ("i.MX: clk-pllv3: Do not touch PLL_BYPASS bit")
> overreached a bit by removing the code that disables the PLL_BYPASS bit
> for all architectures instead of making an exception for Vybrid and
> i.MX6SL. This causes the USB controller on i.MX6Q to run at bypass
> frequency and fail:
> 
>     barebox@Boundary Devices i.MX6 Quad Nitrogen6x Board:/ usb
>     usb: USB: scanning bus for devices...
>     usb: Bus 001 Device 001: ID 0000:0000 EHCI Host Controller
>     imx-usb 2184200.usb: port(0) reset error
> 
> Also, the linux clk-pllv3 driver never looks at or touches the
> PLL_BYPASS bit, but expects the bootloader to set it up correctly.

I've applied this change with the above paragraph dropped from the
commit message, as the Linux driver apparently set up the bypass bit.

Regards,
Lucas

> This patch adds code to unconditionally disable the PLL_BYPASS bit
> initially, when the PLL clocks are registered.
> 
> Cc: Andrey Smirnov <andrew.smirnov@gmail.com>
> Cc: Sascha Hauer <s.hauer@pengutronix.de>
> Fixes: cbff8031b491 ("i.MX: clk-pllv3: Do not touch PLL_BYPASS bit")
> Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
> ---
>  drivers/clk/imx/clk-pllv3.c | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/drivers/clk/imx/clk-pllv3.c b/drivers/clk/imx/clk-pllv3.c
> index 0e55a63e9..44642e88f 100644
> --- a/drivers/clk/imx/clk-pllv3.c
> +++ b/drivers/clk/imx/clk-pllv3.c
> @@ -370,6 +370,7 @@ struct clk *imx_clk_pllv3(enum imx_pllv3_type type, const char *name,
>  	struct clk_pllv3 *pll;
>  	const struct clk_ops *ops;
>  	int ret;
> +	u32 val;
>  
>  	pll = xzalloc(sizeof(*pll));
>  
> @@ -414,6 +415,10 @@ struct clk *imx_clk_pllv3(enum imx_pllv3_type type, const char *name,
>  	pll->clk.parent_names = &pll->parent;
>  	pll->clk.num_parents = 1;
>  
> +	val = readl(pll->base);
> +	val &= ~BM_PLL_BYPASS;
> +	writel(val, pll->base);
> +
>  	ret = clk_register(&pll->clk);
>  	if (ret) {
>  		free(pll);



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eFci2-0001qw-Tl
 for barebox@lists.infradead.org; Fri, 17 Nov 2017 09:13:17 +0000
Date: Fri, 17 Nov 2017 10:12:52 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20171117091252.5jgull7xy3pyavrv@pengutronix.de>
References: <20171116211946.17902-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20171116211946.17902-1-l.stach@pengutronix.de>
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
Subject: Re: [PATCH] clk: sp810: hardwire parent to 1MHz clock
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Nov 16, 2017 at 10:19:46PM +0100, Lucas Stach wrote:
> This works around a limitation in our handling of the vexpress
> config bus. For now just hardcode the clock parent to the 1MHz
> clock, which is the default as emulated by QEMU and also the
> setting the Linux kernel will configure later.
> 
> This fixes the vexpress clocksource running at a wrong rate
> leading to bogus delays and sleep times.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---

Applied, thanks

Sascha

>  drivers/clk/vexpress/clk-sp810.c | 20 +++++++-------------
>  1 file changed, 7 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/clk/vexpress/clk-sp810.c b/drivers/clk/vexpress/clk-sp810.c
> index af72c7402..959661e19 100644
> --- a/drivers/clk/vexpress/clk-sp810.c
> +++ b/drivers/clk/vexpress/clk-sp810.c
> @@ -44,10 +44,7 @@ struct clk_sp810 {
>  
>  static int clk_sp810_timerclken_get_parent(struct clk *hw)
>  {
> -	struct clk_sp810_timerclken *timerclken = to_clk_sp810_timerclken(hw);
> -	u32 val = readl(timerclken->sp810->base + SCCTRL);
> -
> -	return !!(val & (1 << SCCTRL_TIMERENnSEL_SHIFT(timerclken->channel)));
> +	return 1;
>  }
>  
>  static int clk_sp810_timerclken_set_parent(struct clk *hw, u8 index)
> @@ -59,6 +56,9 @@ static int clk_sp810_timerclken_set_parent(struct clk *hw, u8 index)
>  	if (WARN_ON(index > 1))
>  		return -EINVAL;
>  
> +	if (index == 0)
> +		return -EINVAL;
> +
>  	val = readl(sp810->base + SCCTRL);
>  	val &= ~(1 << shift);
>  	val |= index << shift;
> @@ -92,7 +92,6 @@ static void clk_sp810_of_setup(struct device_node *node)
>  	char name[12];
>  	static int instance;
>  	int i;
> -	bool deprecated;
>  
>  	if (!sp810)
>  		return;
> @@ -106,8 +105,6 @@ static void clk_sp810_of_setup(struct device_node *node)
>  	sp810->node = node;
>  	sp810->base = of_iomap(node, 0);
>  
> -	deprecated = !of_find_property(node, "assigned-clock-parents", NULL);
> -
>  	for (i = 0; i < ARRAY_SIZE(sp810->timerclken); i++) {
>  		snprintf(name, sizeof(name), "sp810_%d_%d", instance, i);
>  
> @@ -119,13 +116,10 @@ static void clk_sp810_of_setup(struct device_node *node)
>  		sp810->timerclken[i].hw.ops = &clk_sp810_timerclken_ops;
>  
>  		/*
> -		 * If DT isn't setting the parent, force it to be
> -		 * the 1 MHz clock without going through the framework.
> -		 * We do this before clk_register() so that it can determine
> -		 * the parent and setup the tree properly.
> +		 * Always set parent to 1MHz clock to match QEMU emulation
> +		 * and satisfy requirements on real HW.
>  		 */
> -		if (deprecated)
> -			clk_sp810_timerclken_set_parent(&sp810->timerclken[i].hw, 1);
> +		clk_sp810_timerclken_set_parent(&sp810->timerclken[i].hw, 1);
>  
>  		clk_register(&sp810->timerclken[i].hw);
>  	}
> -- 
> 2.13.6
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

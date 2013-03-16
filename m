Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from f216.mail.ru ([94.100.178.208])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UGl51-0005Pt-AE
 for barebox@lists.infradead.org; Sat, 16 Mar 2013 06:59:01 +0000
From: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
Mime-Version: 1.0
Date: Sat, 16 Mar 2013 10:58:54 +0400
Message-ID: <1363417134.599382752@f216.mail.ru>
In-Reply-To: <1363337641-17685-1-git-send-email-s.hauer@pengutronix.de>
References: <1363337641-17685-1-git-send-email-s.hauer@pengutronix.de>
Reply-To: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
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
Subject: =?UTF-8?B?UmU6IFtQQVRDSF0gY2xrOiBBZGQgaXNfZW5hYmxlZCBjYWxsYmFjaw==?=
To: =?UTF-8?B?U2FzY2hhIEhhdWVy?= <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

> This allows us to better detect whether a clk is enabled or not.
> 
> - If we can ask a clk, ask it. If it's enabled, go on and ask parents
> - If we can't ask it, but it can be enabled, depend on the enable_count.
>   if it's positive, go on and ask parents
> - If we can't ask it and it cannot be enabled, assume it is enabled
>   and ask parents.
> 
> This makes the CLK_ALWAYS_ENABLED unnecessary, since the fixed clk now
> always returns 1 in its is_enabled callback.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/clk/clk-fixed.c |  2 +-
>  drivers/clk/clk-gate.c  | 14 ++++++++++++
>  drivers/clk/clk.c       | 61 +++++++++++++++++++++++++++++++++++++------------
>  include/linux/clk.h     |  4 ++--
>  4 files changed, 63 insertions(+), 18 deletions(-)
> 
> diff --git a/drivers/clk/clk-fixed.c b/drivers/clk/clk-fixed.c
> index 5e81e72..e5d36b4 100644
> --- a/drivers/clk/clk-fixed.c
> +++ b/drivers/clk/clk-fixed.c
> @@ -34,6 +34,7 @@ static unsigned long clk_fixed_recalc_rate(struct clk *clk,
>  
>  struct clk_ops clk_fixed_ops = {
>  	.recalc_rate = clk_fixed_recalc_rate,
> +	.is_enabled = clk_is_enabled_always,
>  };
>  
>  struct clk *clk_fixed(const char *name, int rate)
> @@ -44,7 +45,6 @@ struct clk *clk_fixed(const char *name, int rate)
>  	fix->rate = rate;
>  	fix->clk.ops = &clk_fixed_ops;
>  	fix->clk.name = name;
> -	fix->clk.flags = CLK_ALWAYS_ENABLED;
>  
>  	ret = clk_register(&fix->clk);
>  	if (ret) {
> diff --git a/drivers/clk/clk-gate.c b/drivers/clk/clk-gate.c
> index cf1bb1a..a455094 100644
> --- a/drivers/clk/clk-gate.c
> +++ b/drivers/clk/clk-gate.c
> @@ -49,9 +49,23 @@ static void clk_gate_disable(struct clk *clk)
>  	writel(val, g->reg);
>  }
>  
> +static int clk_gate_is_enabled(struct clk *clk)
> +{
> +	struct clk_gate *g = container_of(clk, struct clk_gate, clk);
> +	u32 val;
> +
> +	val = readl(g->reg);
> +
> +	if (val & (1 << g->shift))
> +		return 1;
> +	else
> +		return 0;
> +}

Make it simper, like:
return !!(readl(g->reg) & (1 << g->shift));

>  struct clk_ops clk_gate_ops = {
>  	.enable = clk_gate_enable,
>  	.disable = clk_gate_disable,
> +	.is_enabled = clk_gate_is_enabled,
>  };
>  
>  struct clk *clk_gate(const char *name, const char *parent, void __iomem *reg,
> diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
> index cb94755..690a0c6 100644
> --- a/drivers/clk/clk.c
> +++ b/drivers/clk/clk.c
> @@ -46,9 +46,6 @@ int clk_enable(struct clk *clk)
>  	if (IS_ERR(clk))
>  		return PTR_ERR(clk);
>  
> -	if (clk->flags & CLK_ALWAYS_ENABLED)
> -		return 0;
> -
>  	if (!clk->enable_count) {
>  		ret = clk_parent_enable(clk);
>  		if (ret)
> @@ -73,9 +70,6 @@ void clk_disable(struct clk *clk)
>  	if (IS_ERR(clk))
>  		return;
>  
> -	if (clk->flags & CLK_ALWAYS_ENABLED)
> -		return;
> -
>  	if (!clk->enable_count)
>  		return;
>  
> @@ -211,23 +205,60 @@ int clk_register(struct clk *clk)
>  
>  	list_add_tail(&clk->list, &clks);
>  
> -	if (clk->flags & CLK_ALWAYS_ENABLED) {
> -		clk->enable_count = 1;
> +	return 0;
> +}
> +
> +int clk_is_enabled(struct clk *clk)
> +{
> +	int enabled;
> +
> +	if (IS_ERR(clk))
> +		return 0;
> +
> +	if (clk->ops->is_enabled) {
> +		/*
> +		 * If we can ask a clk, do it
> +		 */
> +		enabled = clk->ops->is_enabled(clk);
> +	} else {
> +		if (clk->ops->enable) {
> +			/*
> +			 * If we can't ask a clk, but it can be enabled,
> +			 * depend on the enable_count.
> +			 */
> +			enabled = clk->enable_count;
> +		} else {
> +			/*
> +			 * We can't ask a clk, it has no enable op,
> +			 * so assume it's enabled and go on and ask
> +			 * the parent.
> +			 */
> +			enabled = 1;
> +		}
>  	}
>  
> -	return 0;
> +	if (!enabled)
> +		return 0;
> +
> +	clk = clk_get_parent(clk);
> +
> +	if (IS_ERR(clk))
> +		return 1;
> +
> +	return clk_is_enabled(clk);
> +}
> +
> +int clk_is_enabled_always(struct clk *clk)
> +{
> +	return 1;
>  }
>  
>  static void dump_one(struct clk *clk, int verbose, int indent)
>  {
>  	struct clk *c;
> -	char *always = "";
> -
> -	if (clk->flags & CLK_ALWAYS_ENABLED)
> -		always = "always ";
>  
> -	printf("%*s%s (rate %ld, %s%sabled)\n", indent * 4, "", clk->name, clk_get_rate(clk),
> -			always, clk->enable_count ? "en" : "dis");
> +	printf("%*s%s (rate %ld, %sabled)\n", indent * 4, "", clk->name, clk_get_rate(clk),
> +			clk_is_enabled(clk) ? "en" : "dis");
>  	if (verbose) {
>  
>  		if (clk->num_parents > 1) {
> diff --git a/include/linux/clk.h b/include/linux/clk.h
> index 4389cf8..37a4813 100644
> --- a/include/linux/clk.h
> +++ b/include/linux/clk.h
> @@ -182,8 +182,6 @@ struct clk {
>  	unsigned long flags;
>  };
>  
> -#define CLK_ALWAYS_ENABLED	(1 << 0)
> -
>  struct clk_div_table {
>  	unsigned int	val;
>  	unsigned int	div;
> @@ -202,6 +200,8 @@ struct clk *clk_mux(const char *name, void __iomem *reg,
>  struct clk *clk_gate(const char *name, const char *parent, void __iomem *reg,
>  		u8 shift);
>  
> +int clk_is_enabled_always(struct clk *clk);

Used only in clk-fixed.c, is it really need to be declared global?

>  int clk_register(struct clk *clk);
>  
>  struct clk *clk_lookup(const char *name);
> -- 
> 1.8.2.rc2
> 
> 

---
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

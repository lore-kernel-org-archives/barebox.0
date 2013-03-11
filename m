Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from eso.teric.us ([69.164.192.171])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UF7Lt-0003jx-3C
 for barebox@lists.infradead.org; Mon, 11 Mar 2013 18:21:37 +0000
Date: Mon, 11 Mar 2013 13:28:09 -0500
From: Josh Cartwright <joshc@eso.teric.us>
Message-ID: <20130311182809.GN16050@kryptos>
References: <1362993306-19262-1-git-send-email-s.trumtrar@pengutronix.de>
 <1362993306-19262-8-git-send-email-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1362993306-19262-8-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: Re: [PATCH 7/9] ARM: zynq: clk: add pll type
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Mar 11, 2013 at 10:15:04AM +0100, Steffen Trumtrar wrote:
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
>  arch/arm/mach-zynq/clk-zynq7000.c | 33 ++++++++++++++++++++++++++++++++-
>  1 file changed, 32 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm/mach-zynq/clk-zynq7000.c b/arch/arm/mach-zynq/clk-zynq7000.c
> index 5a8a12a..0d3c3a8 100644
> --- a/arch/arm/mach-zynq/clk-zynq7000.c
> +++ b/arch/arm/mach-zynq/clk-zynq7000.c
> @@ -33,10 +33,21 @@ enum zynq_clks {
>  	cpu_clk, cpu_6x4x, cpu_3x2x, cpu_2x, cpu_1x, clks_max
>  };
>  
> +enum zynq_pll_type {
> +	ZYNQ_PLL_ARM,
> +	ZYNQ_PLL_DDR,
> +	ZYNQ_PLL_IO,
> +};
> +
> +#define PLL_ARM_LOCK	(1 << 0)
> +#define PLL_DDR_LOCK	(1 << 1)
> +#define PLL_IO_LOCK	(1 << 2)

Having both an enum and the #define's seem like an unnecessary
indirection.  I'd suggest just:

enum zynq_pll_lockbit {
	PLL_ARM_LOCK	= (1 << 0),
	PLL_DDR_LOCK	= (1 << 1),
	PLL_IO_LOCK	= (1 << 2),
};

struct zynq_pll_clk {
	/* ... */
	enum zynq_pll_lockbit lockbit;
};

static inline struct clk *zynq_pll_clk(enum zynq_pll_lockbit lockbit,
				       const char *name,
				       void __iomem *pll_ctrl)
{
	/* ... */
	pll->lockbit = lockbit;	
	/* ... */
}

> +
>  static struct clk *clks[clks_max];
>  
>  struct zynq_pll_clk {
>  	struct clk	clk;
> +	u32		pll_lock;
>  	void __iomem	*pll_ctrl;
>  };
>  
> @@ -51,11 +62,19 @@ static unsigned long zynq_pll_recalc_rate(struct clk *clk,
>  	return parent_rate * PLL_CTRL_FDIV(readl(pll->pll_ctrl));
>  }
>  
> +static int zynq_pll_enable(struct clk *clk)
> +{
> +	return 0;
> +}
> +
>  static struct clk_ops zynq_pll_clk_ops = {
>  	.recalc_rate = zynq_pll_recalc_rate,
> +	.enable = zynq_pll_enable,
>  };
>  
> -static inline struct clk *zynq_pll_clk(const char *name, void __iomem *pll_ctrl)
> +static inline struct clk *zynq_pll_clk(enum zynq_pll_type type,
> +				       const char *name,
> +				       void __iomem *pll_ctrl)
>  {
>  	static const char *pll_parent = "ps_clk";
>  	struct zynq_pll_clk *pll;
> @@ -68,6 +87,18 @@ static inline struct clk *zynq_pll_clk(const char *name, void __iomem *pll_ctrl)
>  	pll->clk.parent_names	= &pll_parent;
>  	pll->clk.num_parents	= 1;
>  
> +	switch(type) {
> +	case ZYNQ_PLL_ARM:
> +		pll->pll_lock = PLL_ARM_LOCK;
> +		break;
> +	case ZYNQ_PLL_DDR:
> +		pll->pll_lock = PLL_DDR_LOCK;
> +		break;
> +	case ZYNQ_PLL_IO:
> +		pll->pll_lock = PLL_IO_LOCK;

Actually, maybe I've gotten a little ahead of myself...you add bits for
the lock, but you never use it!  So, what's the point!  (If it's to be
used in the future, it'd be nice to see that in the commit description).

    Josh

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

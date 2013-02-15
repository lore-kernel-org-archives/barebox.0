Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U6KPA-0002Pl-D7
 for barebox@lists.infradead.org; Fri, 15 Feb 2013 12:28:41 +0000
Date: Fri, 15 Feb 2013 13:28:37 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130215122837.GP1906@pengutronix.de>
References: <1360922975-15256-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1360922975-15256-1-git-send-email-shc_work@mail.ru>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] clk-fixed-factor: Using parent flags
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Fri, Feb 15, 2013 at 02:09:35PM +0400, Alexander Shiyan wrote:
> This patch allow using parent flags for newly created clocks, so if
> parent clock, for example, have flag CLK_ALWAYS_ENABLED, we will use it.
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> ---
>  drivers/clk/clk-fixed-factor.c |    5 +++++
>  1 files changed, 5 insertions(+), 0 deletions(-)
> 
> diff --git a/drivers/clk/clk-fixed-factor.c b/drivers/clk/clk-fixed-factor.c
> index 52e7c16..56aa63e 100644
> --- a/drivers/clk/clk-fixed-factor.c
> +++ b/drivers/clk/clk-fixed-factor.c
> @@ -43,6 +43,7 @@ struct clk *clk_fixed_factor(const char *name,
>  		const char *parent, unsigned int mult, unsigned int div)
>  {
>  	struct clk_fixed_factor *f = xzalloc(sizeof(*f));
> +	struct clk *parent_clk;
>  	int ret;
>  
>  	f->mult = mult;
> @@ -53,6 +54,10 @@ struct clk *clk_fixed_factor(const char *name,
>  	f->clk.parent_names = &f->parent;
>  	f->clk.num_parents = 1;
>  
> +	parent_clk = clk_lookup(parent);
> +	if (!IS_ERR(parent_clk))
> +		f->clk.flags = parent_clk->flags;
> +

So we unconditionally overwrite the fixed factor clock flags. As long as
CLK_ALWAYS_ENABLED is the only flag we have this might be ok, but this
will lead to strange behaviour when we get other flags.

There should rather be some mechanism which detects that a clock must be
enabled because all parents have no disable callback or have the
CLK_ALWAYS_ENABLED flag set.

I have no idea currently though how to implement this.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1co3yk-0006tF-RI
 for barebox@lists.infradead.org; Wed, 15 Mar 2017 08:08:21 +0000
Date: Wed, 15 Mar 2017 09:07:56 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170315080756.oeotdeehkboese26@pengutronix.de>
References: <20170314153735.5323-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170314153735.5323-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH v2] clk: No-op CLK_OF_DECLARE if not enabled
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Mar 14, 2017 at 08:37:35AM -0700, Andrey Smirnov wrote:
> Instead of wrapping each defenition of CLK_OF_DECLARE hook with
> preprocessor guards, change the definition of CLK_OF_DECLARE to expand
> into no-op if COMMON_CLK_OF_PROVIDER is not enabled.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  drivers/clk/clk-fixed-factor.c |  2 --
>  drivers/clk/clk-fixed.c        |  3 +--
>  include/linux/clk.h            | 31 +++++++++++++++++++++++++------
>  3 files changed, 26 insertions(+), 10 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/clk/clk-fixed-factor.c b/drivers/clk/clk-fixed-factor.c
> index a3dbf33..0be4855 100644
> --- a/drivers/clk/clk-fixed-factor.c
> +++ b/drivers/clk/clk-fixed-factor.c
> @@ -93,7 +93,6 @@ struct clk *clk_fixed_factor(const char *name,
>  	return &f->clk;
>  }
>  
> -#if defined(CONFIG_COMMON_CLK_OF_PROVIDER)
>  /**
>   * of_fixed_factor_clk_setup() - Setup function for simple fixed factor clock
>   */
> @@ -127,4 +126,3 @@ static int of_fixed_factor_clk_setup(struct device_node *node)
>  }
>  CLK_OF_DECLARE(fixed_factor_clk, "fixed-factor-clock",
>  		of_fixed_factor_clk_setup);
> -#endif
> diff --git a/drivers/clk/clk-fixed.c b/drivers/clk/clk-fixed.c
> index f0f7fba..9fa9a93 100644
> --- a/drivers/clk/clk-fixed.c
> +++ b/drivers/clk/clk-fixed.c
> @@ -55,7 +55,6 @@ struct clk *clk_fixed(const char *name, int rate)
>  	return &fix->clk;
>  }
>  
> -#if defined(CONFIG_COMMON_CLK_OF_PROVIDER)
>  /**
>   * of_fixed_clk_setup() - Setup function for simple fixed rate clock
>   */
> @@ -76,4 +75,4 @@ static int of_fixed_clk_setup(struct device_node *node)
>  	return of_clk_add_provider(node, of_clk_src_simple_get, clk);
>  }
>  CLK_OF_DECLARE(fixed_clk, "fixed-clock", of_fixed_clk_setup);
> -#endif
> +
> diff --git a/include/linux/clk.h b/include/linux/clk.h
> index a061398..081a859 100644
> --- a/include/linux/clk.h
> +++ b/include/linux/clk.h
> @@ -324,16 +324,13 @@ struct clk *clk_register_composite(const char *name,
>  struct device_node;
>  struct of_phandle_args;
>  
> +#if defined(CONFIG_COMMON_CLK_OF_PROVIDER)
> +
>  #define CLK_OF_DECLARE(name, compat, fn)				\
>  const struct of_device_id __clk_of_table_##name				\
>  __attribute__ ((unused,section (".__clk_of_table"))) \
>  	= { .compatible = compat, .data = fn }
>  
> -#if defined(CONFIG_COMMON_CLK_OF_PROVIDER)
> -int of_clk_add_provider(struct device_node *np,
> -			struct clk *(*clk_src_get)(struct of_phandle_args *args,
> -						   void *data),
> -			void *data);
>  void of_clk_del_provider(struct device_node *np);
>  
>  typedef int (*of_clk_init_cb_t)(struct device_node *);
> @@ -349,11 +346,27 @@ struct clk *of_clk_get(struct device_node *np, int index);
>  struct clk *of_clk_get_by_name(struct device_node *np, const char *name);
>  struct clk *of_clk_get_from_provider(struct of_phandle_args *clkspec);
>  unsigned int of_clk_get_parent_count(struct device_node *np);
> -char *of_clk_get_parent_name(struct device_node *np, unsigned int index);
>  int of_clk_parent_fill(struct device_node *np, const char **parents,
>  		       unsigned int size);
>  int of_clk_init(struct device_node *root, const struct of_device_id *matches);
>  #else
> +
> +
> +/*
> + * Create a dummy variable to avoid 'unused function'
> + * warnings. Compiler should be smart enough to throw it out.
> + */
> +#define CLK_OF_DECLARE(name, compat, fn)				\
> +static const struct of_device_id __clk_of_table_##name			\
> +__attribute__ ((unused)) = { .data = fn }
> +
> +
> +static inline struct clk *
> +of_clk_src_simple_get(struct of_phandle_args *clkspec, void *data)
> +{
> +	return ERR_PTR(-ENOENT);
> +}
> +
>  static inline struct clk *of_clk_get(struct device_node *np, int index)
>  {
>  	return ERR_PTR(-ENOENT);
> @@ -374,4 +387,10 @@ struct string_list;
>  
>  int clk_name_complete(struct string_list *sl, char *instr);
>  
> +int of_clk_add_provider(struct device_node *np,
> +			struct clk *(*clk_src_get)(struct of_phandle_args *args,
> +						   void *data),
> +			void *data);
> +char *of_clk_get_parent_name(struct device_node *np, unsigned int index);
> +
>  #endif
> -- 
> 2.9.3
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

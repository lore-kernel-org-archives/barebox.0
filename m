Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jnfqX-0004WG-RX
 for barebox@lists.infradead.org; Tue, 23 Jun 2020 10:08:06 +0000
Date: Tue, 23 Jun 2020 12:08:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200623100804.GA11869@pengutronix.de>
References: <20200622095352.22991-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200622095352.22991-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH 1/2] clk: sync of_clk_get_parent_name with upstream
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Jun 22, 2020 at 11:53:51AM +0200, Ahmad Fatoum wrote:
> Upstream of_clk_get_parent_name only resorts to node name as a fallback.
> Instead, it uses the name supplied for registered clocks whenever
> possible. On the sama5d2, this results in sckc@f8048050 and slowck,
> respectively. So far, sckc@f8048050 in the parents array couldn't be
> matched with any existing clock, leading to an inaccurate clock tree.
> 
> Port over the v5.8-rc1 state of the function to fix this.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/clk/clk.c   | 49 ++++++++++++++++++++++++++++++++++++++++-----
>  include/linux/clk.h |  2 +-
>  2 files changed, 45 insertions(+), 6 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
> index 4386c95aa9ec..f2e459a76018 100644
> --- a/drivers/clk/clk.c
> +++ b/drivers/clk/clk.c
> @@ -469,21 +469,60 @@ unsigned int of_clk_get_parent_count(struct device_node *np)
>  }
>  EXPORT_SYMBOL_GPL(of_clk_get_parent_count);
>  
> -char *of_clk_get_parent_name(struct device_node *np, unsigned int index)
> +char *of_clk_get_parent_name(const struct device_node *np, int index)
>  {
>  	struct of_phandle_args clkspec;
> +	struct property *prop;
>  	const char *clk_name;
> +	const __be32 *vp;
> +	u32 pv;
>  	int rc;
> +	int count;
> +	struct clk *clk;
>  
>  	rc = of_parse_phandle_with_args(np, "clocks", "#clock-cells", index,
> -			&clkspec);
> +					&clkspec);
>  	if (rc)
>  		return NULL;
>  
> +	index = clkspec.args_count ? clkspec.args[0] : 0;
> +	count = 0;
> +
> +	/* if there is an indices property, use it to transfer the index
> +	 * specified into an array offset for the clock-output-names property.
> +	 */
> +	of_property_for_each_u32(clkspec.np, "clock-indices", prop, vp, pv) {
> +		if (index == pv) {
> +			index = count;
> +			break;
> +		}
> +		count++;
> +	}
> +	/* We went off the end of 'clock-indices' without finding it */
> +	if (prop && !vp)
> +		return NULL;
> +
>  	if (of_property_read_string_index(clkspec.np, "clock-output-names",
> -				clkspec.args_count ? clkspec.args[0] : 0,
> -				&clk_name) < 0)
> -		clk_name = clkspec.np->name;
> +					  index,
> +					  &clk_name) < 0) {
> +		/*
> +		 * Best effort to get the name if the clock has been
> +		 * registered with the framework. If the clock isn't
> +		 * registered, we return the node name as the name of
> +		 * the clock as long as #clock-cells = 0.
> +		 */
> +		clk = of_clk_get_from_provider(&clkspec);
> +		if (IS_ERR(clk)) {
> +			if (clkspec.args_count == 0)
> +				clk_name = clkspec.np->name;
> +			else
> +				clk_name = NULL;
> +		} else {
> +			clk_name = __clk_get_name(clk);
> +			clk_put(clk);
> +		}
> +	}
> +
>  
>  	return xstrdup(clk_name);
>  }
> diff --git a/include/linux/clk.h b/include/linux/clk.h
> index a005e7233de8..d14d8b96a342 100644
> --- a/include/linux/clk.h
> +++ b/include/linux/clk.h
> @@ -556,7 +556,7 @@ struct string_list;
>  
>  int clk_name_complete(struct string_list *sl, char *instr);
>  
> -char *of_clk_get_parent_name(struct device_node *np, unsigned int index);
> +char *of_clk_get_parent_name(const struct device_node *np, int index);
>  
>  static inline void clk_unregister(struct clk *clk)
>  {
> -- 
> 2.27.0
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

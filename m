Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBCzz-0006Ev-1k
 for barebox@lists.infradead.org; Mon, 09 Mar 2020 07:38:52 +0000
Date: Mon, 9 Mar 2020 08:38:49 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200309073849.GH3335@pengutronix.de>
References: <20200306083810.8181-1-r.czerwinski@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200306083810.8181-1-r.czerwinski@pengutronix.de>
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
Subject: Re: [PATCH v2] of: overlay: rework error message for symbols
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Mar 06, 2020 at 09:38:11AM +0100, Rouven Czerwinski wrote:
> Missing symbols for overlay or root tree are valid if the overlay only
> adds paths to the device tree. The code handles this correctly, however
> it still isues a WARNING for the missing symbols. Demote the warning to
> info and move into the of_overlay_apply_symbols() function.
> 
> Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
> ---
>  drivers/of/overlay.c | 18 +++++++-----------
>  1 file changed, 7 insertions(+), 11 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/of/overlay.c b/drivers/of/overlay.c
> index de79e05cbc..fadd072970 100644
> --- a/drivers/of/overlay.c
> +++ b/drivers/of/overlay.c
> @@ -105,7 +105,7 @@ static char *of_overlay_fix_path(struct device_node *root,
>  	return basprintf("%s%s", target->full_name, path_tail);
>  }
>  
> -static int of_overlay_apply_symbols(struct device_node *root,
> +static void of_overlay_apply_symbols(struct device_node *root,
>  				    struct device_node *overlay)
>  {
>  	const char *old_path;
> @@ -115,12 +115,12 @@ static int of_overlay_apply_symbols(struct device_node *root,
>  	struct device_node *overlay_symbols;
>  
>  	root_symbols = of_get_child_by_name(root, "__symbols__");
> -	if (!root_symbols)
> -		return -EINVAL;
> -
>  	overlay_symbols = of_get_child_by_name(overlay, "__symbols__");
> -	if (!overlay_symbols)
> -		return -EINVAL;
> +
> +	if (!overlay_symbols || !root_symbols) {
> +		pr_info("overlay/root doesn't have a __symbols__ node\n");
> +		return;
> +	}
>  
>  	list_for_each_entry(prop, &overlay_symbols->properties, list) {
>  		if (of_prop_cmp(prop->name, "name") == 0)
> @@ -133,8 +133,6 @@ static int of_overlay_apply_symbols(struct device_node *root,
>  			 prop->name, new_path);
>  		of_property_write_string(root_symbols, prop->name, new_path);
>  	}
> -
> -	return 0;
>  }
>  
>  static int of_overlay_apply_fragment(struct device_node *root,
> @@ -171,9 +169,7 @@ int of_overlay_apply_tree(struct device_node *root,
>  		return -EINVAL;
>  
>  	/* Copy symbols from resolved overlay to base device tree */
> -	err = of_overlay_apply_symbols(root, resolved);
> -	if (err)
> -		pr_warn("failed to copy symbols from overlay");
> +	of_overlay_apply_symbols(root, resolved);
>  
>  	/* Copy nodes and properties from resolved overlay to root */
>  	for_each_child_of_node(resolved, fragment) {
> -- 
> 2.25.1
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

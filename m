Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fQ5YE-0007if-SR
 for barebox@lists.infradead.org; Tue, 05 Jun 2018 06:34:41 +0000
Date: Tue, 5 Jun 2018 08:34:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180605063424.hs64tlwjppecziin@pengutronix.de>
References: <20180603233812.2466-1-pvizeli@syshack.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180603233812.2466-1-pvizeli@syshack.ch>
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
Subject: Re: [PATCH 3/3] drivers: of: bugfix local fixups resolving
To: Pascal Vizeli <pvizeli@syshack.ch>
Cc: barebox@lists.infradead.org

On Sun, Jun 03, 2018 at 11:38:12PM +0000, Pascal Vizeli wrote:
> Signed-off-by: Pascal Vizeli <pvizeli@syshack.ch>
> ---
>  drivers/of/resolver.c | 147 +++++++++++++++++-------------------------
>  1 file changed, 60 insertions(+), 87 deletions(-)

Please fold this into the first patch, possibly explaining what you have
fixed. You sent this twice, is this the same as the other patch 3/3 that
you have posted?

Sascha

> 
> diff --git a/drivers/of/resolver.c b/drivers/of/resolver.c
> index 62476093c..fbab565c5 100644
> --- a/drivers/of/resolver.c
> +++ b/drivers/of/resolver.c
> @@ -66,108 +66,73 @@ static void of_adjust_tree_phandles(struct device_node *node,
>   * of the tree. Does not take any devtree locks so make sure you
>   * call this on a tree which is at the detached state.
>   */
> -static int of_adjust_tree_phandle_references(struct device_node *node,
> -		int phandle_delta)
> +static int of_adjust_tree_phandle_references(struct device_node *local_fixups,
> +		struct device_node *overlay, int phandle_delta)
>  {
>  	phandle phandle;
> -	struct device_node *refnode, *child;
> -	struct property *rprop, *sprop;
> -	char *propval, *propcur, *propend, *nodestr, *propstr, *s;
> -	int offset, propcurlen;
> -	int err;
> +	struct device_node *child, *overlay_child;
> +	struct property *fixprop, *prop;
> +	int i, count, err;
> +	unsigned int off;
>  	bool found = false;
>  
> -	/* locate the symbols & fixups nodes on resolve */
> -	for_each_child_of_node(node, child)
> -		if (of_node_cmp(child->name, "__local_fixups__") == 0) {
> -			found = true;
> -			break;
> -		}
> -
> -	/* no local fixups */
> -	if (!found)
> -		return 0;
> -
> -	/* find the local fixups property */
> -	for_each_property_of_node(child, rprop) {
> +	for_each_property_of_node(local_fixups, fixprop) {
>  		/* skip properties added automatically */
> -		if (of_prop_cmp(rprop->name, "name") == 0)
> +		if (!of_prop_cmp(fixprop->name, "name") ||
> +		    !of_prop_cmp(fixprop->name, "phandle") ||
> +		    !of_prop_cmp(fixprop->name, "linux,phandle"))
>  			continue;
>  
> -		/* make a copy */
> -		propval = kmalloc(rprop->length, GFP_KERNEL);
> -		if (propval == NULL) {
> -			pr_err("%s: Could not copy value of '%s'\n",
> -					__func__, rprop->name);
> -			return -ENOMEM;
> -		}
> -		memcpy(propval, rprop->value, rprop->length);
> -
> -		propend = propval + rprop->length;
> -		for (propcur = propval; propcur < propend;
> -				propcur += propcurlen + 1) {
> +		if ((fixprop->length % 4) != 0 || fixprop->length == 0)
> +			return -EINVAL;
> +		count = fixprop->length / sizeof(uint32_t);
>  
> -			propcurlen = strlen(propcur);
> -
> -			nodestr = propcur;
> -			s = strchr(propcur, ':');
> -			if (s == NULL) {
> -				pr_err("%s: Illegal symbol entry '%s' (1)\n",
> -					__func__, propcur);
> -				err = -EINVAL;
> -				goto err_fail;
> -			}
> -			*s++ = '\0';
> -
> -			propstr = s;
> -			s = strchr(s, ':');
> -			if (s == NULL) {
> -				pr_err("%s: Illegal symbol entry '%s' (2)\n",
> -					__func__, (char *)rprop->value);
> -				err = -EINVAL;
> -				goto err_fail;
> +		for_each_property_of_node(overlay, prop) {
> +			if (!of_prop_cmp(fixprop->name, prop->name)) {
> +				found = true;
> +				break;
>  			}
> +		}
>  
> -			*s++ = '\0';
> -			offset = simple_strtoul(s, NULL, 10);
> +		if (!found)
> +			return -EINVAL;
>  
> -			/* look into the resolve node for the full path */
> -			refnode = of_find_node_by_path_from(node, nodestr);
> -			if (refnode == NULL) {
> -				pr_warn("%s: Could not find refnode '%s'\n",
> -					__func__, (char *)rprop->value);
> -				continue;
> -			}
> +		for (i=0; i < count; i++) {
> +			off = be32_to_cpu(((uint32_t *)fixprop->value)[i]);
> +			if ((off + 4) > prop->length)
> +				return -EINVAL;
>  
> -			/* now find the property */
> -			found = false;
> -			for_each_property_of_node(refnode, sprop)
> -				if (of_prop_cmp(sprop->name, propstr) == 0) {
> -					found = true;
> -					break;
> -				}
> +			phandle = be32_to_cpu(*(uint32_t *)(prop->value + off));
> +			phandle += phandle_delta;
> +			*(uint32_t *)(prop->value + off) = cpu_to_be32(phandle);
> +		}
> +	}
>  
> -			if (!found) {
> -				pr_err("%s: Could not find property '%s'\n",
> -					__func__, (char *)rprop->value);
> -				err = -ENOENT;
> -				goto err_fail;
> +	/*
> +	 * These nested loops recurse down two subtrees in parallel, where the
> +	 * node names in the two subtrees match.
> +	 *
> +	 * The roots of the subtrees are the overlay's __local_fixups__ node
> +	 * and the overlay's root node.
> +	 */
> +	for_each_child_of_node(local_fixups, child) {
> +
> +		for_each_child_of_node(overlay, overlay_child)
> +			if (!of_node_cmp(child->name, overlay_child->name)) {
> +				found = true;
> +				break;
>  			}
>  
> -			phandle = be32_to_cpu(*(uint32_t *)
> -					(sprop->value + offset));
> -			*(uint32_t *)(sprop->value + offset) =
> -				cpu_to_be32(phandle + phandle_delta);
> -		}
> +		if (!found)
> +			return -EINVAL;
>  
> -		kfree(propval);
> +		err = of_adjust_tree_phandle_references(child, overlay_child,
> +				phandle_delta);
> +		if (err)
> +			return err;
>  	}
>  
>  	return 0;
> -
> -err_fail:
> -	kfree(propval);
> -	return err;
>  }
>  
>  /**
> @@ -185,7 +150,7 @@ err_fail:
>   */
>  int of_resolve(struct device_node *resolve)
>  {
> -	struct device_node *child, *refnode;
> +	struct device_node *child, *refnode, *local_fixups;
>  	struct device_node *root_sym, *resolve_sym, *resolve_fix;
>  	struct property *rprop, *sprop;
>  	const char *refpath;
> @@ -203,9 +168,17 @@ int of_resolve(struct device_node *resolve)
>  	/* first we need to adjust the phandles */
>  	phandle_delta = of_get_tree_max_phandle(NULL) + 1;
>  	of_adjust_tree_phandles(resolve, phandle_delta);
> -	err = of_adjust_tree_phandle_references(resolve, phandle_delta);
> -	if (err != 0)
> -		return err;
> +
> +	/* second we need lookup local fixups of phandles */
> +	for_each_child_of_node(resolve, local_fixups) {
> +		if (!of_node_cmp(local_fixups->name, "__local_fixups__")) {
> +			err = of_adjust_tree_phandle_references(local_fixups,
> +					resolve, phandle_delta);
> +			if (err != 0)
> +				return err;
> +			break;
> +		}
> +	}
>  
>  	root_sym = NULL;
>  	resolve_sym = NULL;
> -- 
> 2.17.0
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

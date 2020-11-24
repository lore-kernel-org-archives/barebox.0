Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1khTN8-0008QR-79
 for barebox@lists.infradead.org; Tue, 24 Nov 2020 08:08:23 +0000
Date: Tue, 24 Nov 2020 09:08:20 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20201124080820.GP24489@pengutronix.de>
References: <20201120140649.31607-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201120140649.31607-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH 1/2] watchdog: implement watchdog_get_alias_id_from
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Nov 20, 2020 at 03:06:48PM +0100, Ahmad Fatoum wrote:
> On device-tree enabled platforms, the Linux kernel will first attempt
> to use watchdog%d as watchdog name, where %d is the alias id.
> 
> Add a function that given a barebox struct watchdog and the device tree
> root node of the kernel device tree, computes the corresponding kernel
> alias id.
> 
> This may then later be used to pass an appropriate argument on the
> kernel command line.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/of/base.c          | 77 ++++++++++++++++++++++++++++++--------
>  drivers/watchdog/wd_core.c | 19 ++++++++++
>  include/of.h               |  8 ++++
>  include/watchdog.h         |  8 ++++
>  4 files changed, 97 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/of/base.c b/drivers/of/base.c
> index 5b45c2023f3b..85a94f6ef159 100644
> --- a/drivers/of/base.c
> +++ b/drivers/of/base.c
> @@ -149,6 +149,31 @@ static void of_alias_add(struct alias_prop *ap, struct device_node *np,
>  		 ap->alias, ap->stem, ap->id, np->full_name);
>  }
>  
> +static struct device_node *of_alias_resolve(struct device_node *root, struct property *pp)
> +{
> +	/* Skip those we do not want to proceed */
> +	if (!of_prop_cmp(pp->name, "name") ||
> +	    !of_prop_cmp(pp->name, "phandle") ||
> +	    !of_prop_cmp(pp->name, "linux,phandle"))
> +		return NULL;
> +
> +	return of_find_node_by_path_from(root, of_property_get_value(pp));
> +}
> +
> +static int of_alias_id_parse(const char *start, int *len)
> +{
> +	const char *end = start + strlen(start);
> +
> +	/* walk the alias backwards to extract the id and work out
> +	 * the 'stem' string */
> +	while (isdigit(*(end-1)) && end > start)
> +		end--;
> +
> +	*len = end - start;
> +
> +	return simple_strtol(end, NULL, 10);
> +}
> +
>  /**
>   * of_alias_scan - Scan all properties of 'aliases' node
>   *
> @@ -175,28 +200,15 @@ void of_alias_scan(void)
>  
>  	list_for_each_entry(pp, &of_aliases->properties, list) {
>  		const char *start = pp->name;
> -		const char *end = start + strlen(start);
>  		struct device_node *np;
>  		struct alias_prop *ap;
>  		int id, len;
>  
> -		/* Skip those we do not want to proceed */
> -		if (!of_prop_cmp(pp->name, "name") ||
> -		    !of_prop_cmp(pp->name, "phandle") ||
> -		    !of_prop_cmp(pp->name, "linux,phandle"))
> -			continue;
> -
> -		np = of_find_node_by_path(of_property_get_value(pp));
> +		np = of_alias_resolve(root_node, pp);
>  		if (!np)
>  			continue;
>  
> -		/* walk the alias backwards to extract the id and work out
> -		 * the 'stem' string */
> -		while (isdigit(*(end-1)) && end > start)
> -			end--;
> -		len = end - start;
> -
> -		id = simple_strtol(end, NULL, 10);
> +		id = of_alias_id_parse(start, &len);
>  		if (id < 0)
>  			continue;
>  
> @@ -235,6 +247,41 @@ int of_alias_get_id(struct device_node *np, const char *stem)
>  }
>  EXPORT_SYMBOL_GPL(of_alias_get_id);
>  
> +extern int of_alias_get_id_from(struct device_node *root, struct device_node *np,
> +				const char *stem)

extern?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

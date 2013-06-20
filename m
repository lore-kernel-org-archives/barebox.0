Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Upagw-0007gq-EK
 for barebox@lists.infradead.org; Thu, 20 Jun 2013 08:58:08 +0000
Date: Thu, 20 Jun 2013 10:57:43 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130620085743.GR32299@pengutronix.de>
References: <1371576607-8090-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1371632991-1504-7-git-send-email-sebastian.hesselbarth@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1371632991-1504-7-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: Re: [PATCH v2 06/22] OF: base: sync of_find_property with linux OF API
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Jun 19, 2013 at 11:09:35AM +0200, Sebastian Hesselbarth wrote:
> To start synchronizing OF API of barebox with linux OF API, this adds
> a length pointer to of_find_property. Also all current users of that
> function are updated to reflect the API change.
> 
> Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
> ---
> Cc: barebox@lists.infradead.org
> ---
>  commands/of_property.c         |    2 +-
>  drivers/of/base.c              |   38 ++++++++++++++++++--------------------
>  drivers/of/fdt.c               |    5 ++++-
>  drivers/of/of_net.c            |    6 +++---
>  drivers/pinctrl/pinctrl.c      |    4 ++--
>  drivers/spi/spi.c              |   10 +++++-----
>  drivers/usb/imx/chipidea-imx.c |    3 ++-
>  include/of.h                   |   12 ++++++++++--
>  8 files changed, 45 insertions(+), 35 deletions(-)
> 
> diff --git a/commands/of_property.c b/commands/of_property.c
> index 44bb388..d1a9a17 100644
> --- a/commands/of_property.c
> +++ b/commands/of_property.c
> @@ -212,7 +212,7 @@ static int do_of_property(int argc, char *argv[])
>  	if (optind + 1 < argc) {
>  		propname = argv[optind + 1];
>  
> -		pp = of_find_property(node, propname);
> +		pp = of_find_property(node, propname, NULL);
>  		if (!set && !pp) {
>  			printf("Cannot find property %s\n", propname);
>  			return -ENOENT;
> diff --git a/drivers/of/base.c b/drivers/of/base.c
> index 1c9ef58..85199b6 100644
> --- a/drivers/of/base.c
> +++ b/drivers/of/base.c
> @@ -102,16 +102,20 @@ static void of_bus_count_cells(struct device_node *dev,
>  	of_bus_default_count_cells(dev, addrc, sizec);
>  }
>  
> -struct property *of_find_property(const struct device_node *node, const char *name)
> +struct property *of_find_property(const struct device_node *np,
> +				  const char *name, int *lenp)
>  {
>  	struct property *pp;
>  
> -	if (!node)
> +	if (!np)
>  		return NULL;
>  
> -	list_for_each_entry(pp, &node->properties, list)
> -		if (of_prop_cmp(pp->name, name) == 0)
> +	list_for_each_entry(pp, &np->properties, list)
> +		if (of_prop_cmp(pp->name, name) == 0) {
> +			if (lenp)
> +				*lenp = pp->length;
>  			return pp;
> +		}
>  
>  	return NULL;
>  }
> @@ -242,7 +246,7 @@ u64 of_translate_address(struct device_node *node, const __be32 *in_addr)
>  			return addr;
>  
>  		node = node->parent;
> -		p = of_find_property(node, "ranges");
> +		p = of_find_property(node, "ranges", NULL);
>  		if (!p && node->parent)
>  			return OF_BAD_ADDR;
>  		of_bus_count_cells(node, &na, &nc);
> @@ -277,13 +281,7 @@ EXPORT_SYMBOL(of_find_node_by_phandle);
>  const void *of_get_property(const struct device_node *np, const char *name,
>  			 int *lenp)
>  {
> -	struct property *pp = of_find_property(np, name);
> -
> -	if (!pp)
> -		return NULL;
> -
> -	if (lenp)
> -		*lenp = pp->length;
> +	struct property *pp = of_find_property(np, name, lenp);
>  
>  	return pp ? pp->value : NULL;
>  }
> @@ -368,7 +366,7 @@ int of_property_read_u32_array(const struct device_node *np,
>  			       const char *propname, u32 *out_values,
>  			       size_t sz)
>  {
> -	struct property *prop = of_find_property(np, propname);
> +	struct property *prop = of_find_property(np, propname, NULL);
>  	const __be32 *val;
>  
>  	if (!prop)
> @@ -404,7 +402,7 @@ int of_property_write_u32_array(struct device_node *np,
>  				const char *propname, const u32 *values,
>  				size_t sz)
>  {
> -	struct property *prop = of_find_property(np, propname);
> +	struct property *prop = of_find_property(np, propname, NULL);
>  	__be32 *val;
>  
>  	if (!prop)
> @@ -619,7 +617,7 @@ EXPORT_SYMBOL(of_find_node_by_path);
>  int of_property_read_string(struct device_node *np, const char *propname,
>  				const char **out_string)
>  {
> -	struct property *prop = of_find_property(np, propname);
> +	struct property *prop = of_find_property(np, propname, NULL);
>  	if (!prop)
>  		return -EINVAL;
>  	if (!prop->value)
> @@ -652,7 +650,7 @@ EXPORT_SYMBOL_GPL(of_property_read_string);
>  int of_property_read_string_index(struct device_node *np, const char *propname,
>  				  int index, const char **output)
>  {
> -	struct property *prop = of_find_property(np, propname);
> +	struct property *prop = of_find_property(np, propname, NULL);
>  	int i = 0;
>  	size_t l = 0, total = 0;
>  	const char *p;
> @@ -725,7 +723,7 @@ static int of_node_disabled(struct device_node *node)
>  {
>  	struct property *p;
>  
> -	p = of_find_property(node, "status");
> +	p = of_find_property(node, "status", NULL);
>  	if (p) {
>  		if (!strcmp("disabled", p->value))
>  			return 1;
> @@ -833,7 +831,7 @@ int of_set_property(struct device_node *np, const char *name, const void *val, i
>  	if (!np)
>  		return -ENOENT;
>  
> -	pp = of_find_property(np, name);
> +	pp = of_find_property(np, name, NULL);
>  	if (pp) {
>  		void *data;
>  
> @@ -1278,11 +1276,11 @@ int of_add_initrd(struct device_node *root, resource_size_t start,
>  	} else {
>  		struct property *pp;
>  
> -		pp = of_find_property(chosen, "linux,initrd-start");
> +		pp = of_find_property(chosen, "linux,initrd-start", NULL);
>  		if (pp)
>  			of_delete_property(pp);
>  
> -		pp = of_find_property(chosen, "linux,initrd-end");
> +		pp = of_find_property(chosen, "linux,initrd-end", NULL);
>  		if (pp)
>  			of_delete_property(pp);
>  	}
> diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
> index a3ec576..a76396e 100644
> --- a/drivers/of/fdt.c
> +++ b/drivers/of/fdt.c
> @@ -178,7 +178,10 @@ struct device_node *of_unflatten_dtb(struct device_node *root, void *infdt)
>  				goto err;
>  			}
>  
> -			if (merge && (p = of_find_property(node, name))) {
> +			p = NULL;
> +			if (merge)
> +				p = of_find_property(node, name, NULL);
> +			if (merge && p) {
>  				free(p->value);
>  				p->value = xzalloc(len);
>  				memcpy(p->value, nodep, len);
> diff --git a/drivers/of/of_net.c b/drivers/of/of_net.c
> index de93fbc..2bf05e2 100644
> --- a/drivers/of/of_net.c
> +++ b/drivers/of/of_net.c
> @@ -76,15 +76,15 @@ const void *of_get_mac_address(struct device_node *np)
>  {
>  	struct property *pp;
>  
> -	pp = of_find_property(np, "mac-address");
> +	pp = of_find_property(np, "mac-address", NULL);
>  	if (pp && (pp->length == 6) && is_valid_ether_addr(pp->value))
>  		return pp->value;
>  
> -	pp = of_find_property(np, "local-mac-address");
> +	pp = of_find_property(np, "local-mac-address", NULL);
>  	if (pp && (pp->length == 6) && is_valid_ether_addr(pp->value))
>  		return pp->value;
>  
> -	pp = of_find_property(np, "address");
> +	pp = of_find_property(np, "address", NULL);
>  	if (pp && (pp->length == 6) && is_valid_ether_addr(pp->value))
>  		return pp->value;
>  
> diff --git a/drivers/pinctrl/pinctrl.c b/drivers/pinctrl/pinctrl.c
> index fa979a1..7c797d3 100644
> --- a/drivers/pinctrl/pinctrl.c
> +++ b/drivers/pinctrl/pinctrl.c
> @@ -64,14 +64,14 @@ int pinctrl_select_state(struct device_d *dev, const char *name)
>  	if (!np)
>  		return 0;
>  
> -	if (!of_find_property(np, "pinctrl-0"))
> +	if (!of_find_property(np, "pinctrl-0", NULL))
>  		return 0;
>  
>  	/* For each defined state ID */
>  	for (state = 0; ; state++) {
>  		/* Retrieve the pinctrl-* property */
>  		propname = asprintf("pinctrl-%d", state);
> -		prop = of_find_property(np, propname);
> +		prop = of_find_property(np, propname, NULL);
>  		free(propname);
>  
>  		if (!prop) {
> diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
> index f460a7a..eebf64c 100644
> --- a/drivers/spi/spi.c
> +++ b/drivers/spi/spi.c
> @@ -112,17 +112,17 @@ void spi_of_register_slaves(struct spi_master *master, struct device_node *node)
>  		chip.name = xstrdup(n->name);
>  		chip.bus_num = master->bus_num;
>  		/* Mode (clock phase/polarity/etc.) */
> -		if (of_find_property(n, "spi-cpha"))
> +		if (of_find_property(n, "spi-cpha", NULL))
>  			chip.mode |= SPI_CPHA;
> -		if (of_find_property(n, "spi-cpol"))
> +		if (of_find_property(n, "spi-cpol", NULL))
>  			chip.mode |= SPI_CPOL;
> -		if (of_find_property(n, "spi-cs-high"))
> +		if (of_find_property(n, "spi-cs-high", NULL))
>  			chip.mode |= SPI_CS_HIGH;
> -		if (of_find_property(n, "spi-3wire"))
> +		if (of_find_property(n, "spi-3wire", NULL))
>  			chip.mode |= SPI_3WIRE;
>  		of_property_read_u32(n, "spi-max-frequency",
>  				&chip.max_speed_hz);
> -		reg = of_find_property(n, "reg");
> +		reg = of_find_property(n, "reg", NULL);
>  		if (!reg)
>  			continue;
>  		chip.chip_select = of_read_number(reg->value, 1);
> diff --git a/drivers/usb/imx/chipidea-imx.c b/drivers/usb/imx/chipidea-imx.c
> index 4ee7610..32b05aa 100644
> --- a/drivers/usb/imx/chipidea-imx.c
> +++ b/drivers/usb/imx/chipidea-imx.c
> @@ -108,7 +108,8 @@ static int imx_chipidea_probe_dt(struct imx_chipidea *ci)
>  		return -EINVAL;
>  	}
>  
> -	if (of_find_property(ci->dev->device_node, "disable-over-current"))
> +	if (of_find_property(ci->dev->device_node,
> +				"disable-over-current"), NULL)

This needs to be:

+     if (of_find_property(ci->dev->device_node,
+                             "disable-over-current", NULL))

(I'll fix this up while applying if there's no other showstopper for this
series)

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
